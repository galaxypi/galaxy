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
        if [ "$name" == "basecli_$ARCH" ] || [ "$name" == "basecoind_$ARCH" ]; then
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
    echo "Could not find a matching release of basecli and/or basecoind for your architecture ($ARCH)."
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
echo "This script will remove previously installed directories of basecli and basecoind."
read -p "Are you ok with that? (y/N): " choice

case "$choice" in
    y|Y) echo -e "Continuing with install. Just bear with me for a moment.\n";;
    *) echo "Aborting."; exit 1;;
esac


# create install dir (if necessary) and change into it
[[ ! -d "$INSTALL_DIR" ]] && mkdir "$INSTALL_DIR"
cd "$INSTALL_DIR"


# clear old files
echo "Clearing leftovers from basecli and basecoind."
[[ -f "./basecli" ]] && rm "./basecli"
[[ -f "./basecoind" ]] && rm "./basecoind"
[[ -d "$HOME/.basecli" ]] && rm -r "$HOME/.basecli"
[[ -d "$HOME/.basecoind" ]] && rm -r "$HOME/.basecoind"


# download the (previously) matched release assets
echo "Downloading and installing basecli and/or basecoind."
downloadAssets $urls

# move the binaries to not include the arch and make them executable
mv "basecli_$ARCH" "basecli"
mv "basecoind_$ARCH" "basecoind"
chmod +x "basecli"
chmod +x "basecoind"


# intialize basecoin
echo "Initializing basecoind."
./basecoind init &>/dev/null


# add seeds
echo "Adding seeds to config."
original_string="seeds = \"\""
replace_string="seeds = \"$SEEDS\""
sed -i -e "s/$original_string/$replace_string/g" "$HOME/.basecoind/config/config.toml"


# fetch the genesis block
echo "Fetching genesis block."
curl -Os "https://raw.githubusercontent.com/galaxypi/galaxy/master/genesis.json"
mv "genesis.json" "$HOME/.basecoind/config/genesis.json"


# summary
echo -e "\nSuccessfully installed and set up the Galaxy Blockchain."
echo "You can now open a terminal in \"$INSTALL_DIR\" and run \`./basecoind start\` to start your node."
