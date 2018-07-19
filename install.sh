#!/bin/bash

DEPENDENCIES="curl jq"

KERNEL="$(uname -s)"
MACHINE="$(uname -m)"
ARCH="${KERNEL,,}_${MACHINE,,}" # lowercase(`uname -s`) + _ + lowercase(`uname -m`)
INSTALL_DIR="$HOME/galaxy"
SEEDS=$(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/master/seeds)



function getMatchingAssets {
    json=$(curl -s "https://api.github.com/repos/galaxypi/galaxy/releases/latest")
    releaseAssets=$(echo "$json" | jq --raw-output '.assets' | jq --compact-output '.[]')
    urls=""

    # go through all release assets
    while read -r release; do
        name=$(echo "$release" | jq --raw-output '.name')

        # add asset url to urls if we found a matching release
        if [ "$name" == "galaxycli_$ARCH" ] || [ "$name" == "galaxyd_$ARCH" ]; then
            url=$(echo "$release" | jq --raw-output '.browser_download_url')
            urls+="$url "
        fi
    done <<< "$releaseAssets"

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


# fetch the genesis block
echo "Fetching genesis block."
curl -Os "https://raw.githubusercontent.com/galaxypi/galaxy/master/genesis.json"
mv "genesis.json" "$HOME/.galaxyd/config/genesis.json"


# summary
echo -e "\nSuccessfully installed and set up the Galaxy Blockchain."
echo "You can now open a terminal in \"$INSTALL_DIR\" and run \`./galaxyd start\` to start your node."
