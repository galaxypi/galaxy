#!/bin/bash
set -e

DEPENDENCIES="curl"

ARCH="$(uname -s)_$(uname -m)"
INSTALL_DIR="$HOME/galaxy"
SEEDS=$(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/seeds)


function getMatchingAssets {
    # the following sed/grep block of magic transforms the api response from GitHub into a list of
    # the assets of the latest release, the list consists of the asset name and then its url,
    # all separated by newlines; this got make `jq` obsolete as dependency
    assets=$(curl -s https://api.github.com/repos/galaxypi/galaxy/releases/latest | \
      sed -n '/"assets": \[/,/\]/p' | \
      sed -n '/"\(name\|browser_download_url\)": "/p' | \
      sed 's/\s*"name": "//g' | \
      sed 's/^\s*"browser_download_url": "//g' | \
      sed 's/",$//g' | \
      sed 's/"$//g')
    # meta: the following comments document the commands from above line by line (because of the `\` it's not possible to document them above)
    # downloads JSON for the last release
    # greps the relevant asset block
    # greps all relevant lines (asset names and asset urls)
    # removes the `"name": "` at the beginning of a line
    # removes the `"browser_download_url": "` at the beginning of a line
    # removes the `",` at the end of a line
    # removes the `"` at the end of a line


    urls=""
    index=0
    take_next=false

    # go through the list
    while read -r line; do
        if [ $(( $index % 2 )) -eq 0 ]; then
            # `line` is a asset name

            # set `take_next` to true to add it to `urls` in the next iteration
            if [ "$line" == "galaxycli_$ARCH" ] || [ "$line" == "galaxyd_$ARCH" ]; then
                take_next=true
            fi
        else
            # `line` is a asset url

            # add the asset url to `urls` and reset `take_next`
            if [ "$take_next" = true ]; then
                urls+="$line "
            fi
            take_next=false
        fi

        let index=index+1
    done <<< $assets

    echo "$urls"
}


function downloadAssets {
    urls="$@"
    for url in $urls; do
        curl -LO#f "$url"
    done
}

# download and parse latest release information from GitHub
urls="$(getMatchingAssets)"

# fail if there wasn't a matching architecture in the release assets
if [ -z "$urls" ]; then
    echo "Could not find a matching release of galaxycli and/or galaxyd for your architecture ($ARCH)."
    echo "If you know what you're doing and think it should work on your architecture, you can set your architecture manually at the beginning of this script and then run it again."
    exit 1
fi


# check for needed dependencies
for dependency in $DEPENDENCIES; do
    if ! command -v "$dependency" &>/dev/null; then
        echo "It seems that \"$dependency\" isn't installed but I really need it :/"
        echo "Please install it and re-run this script."
        exit 1
    fi
done


# ask for consent
echo "This script will remove previously installed directories of galaxycli and galaxyd."
read -p "Are you ok with that? (y/N): " choice

case "$choice" in
    y|Y) echo -e "Continuing with install. Just bear with me for a moment.\n";;
    *) echo "Aborting."; exit 1;;
esac


# create install dir (if necessary) and change into it
[[ ! -d "$INSTALL_DIR" ]] && mkdir "$INSTALL_DIR"
cd "$INSTALL_DIR"


# clear old files
echo "Clearing leftovers from galaxycli and galaxyd."
[[ -f "./galaxycli" ]] && rm "./galaxycli"
[[ -f "./galaxyd" ]] && rm "./galaxyd"
[[ -d "$HOME/.galaxycli" ]] && rm -r "$HOME/.galaxycli"
[[ -d "$HOME/.galaxyd" ]] && rm -r "$HOME/.galaxyd"


# download the (previously) matched release assets
echo "Downloading and installing galaxycli and/or galaxyd."
downloadAssets $urls

# move the binaries to not include the arch and make them executable
mv "galaxycli_$ARCH" "galaxycli"
mv "galaxyd_$ARCH" "galaxyd"
chmod +x "galaxycli"
chmod +x "galaxyd"


# intialize basecoin
echo "Initializing galaxyd."
./galaxyd init &>/dev/null


# add seeds
echo "Adding seeds to config."
original_string="seeds = \"\""
replace_string="seeds = \"$SEEDS\""
sed -i -e "s/$original_string/$replace_string/g" "$HOME/.galaxyd/config/config.toml"

# get moniker
echo "Now I need a name to distinguish your node from others (e.g. giantchicken or mygalaxynode)."
read -p "Please tell me a name and press enter: " name
moniker_original="moniker = \"\""
moniker_actual="moniker = \"$name\""
sed -i -e "s/$moniker_original/$moniker_actual/g" "$HOME/.galaxyd/config/config.toml"

# fetch the genesis block
echo "Fetching genesis block."
curl -Os "https://raw.githubusercontent.com/galaxypi/galaxy/master/genesis.json"
mv "genesis.json" "$HOME/.galaxyd/config/genesis.json"


# summary
echo -e "\nSuccessfully installed and set up the Galaxy Blockchain."
echo "You can now open a terminal in \"$INSTALL_DIR\" and run \`./galaxyd start\` to start your node."
