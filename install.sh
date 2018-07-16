#!/bin/bash

DEPENDENCIES="curl jq"

KERNEL="$(uname -s)"
MACHINE="$(uname -m)"
ARCH="${KERNEL,,}_${MACHINE,,}" # lowercase(`uname -s`) + _ + lowercase(`uname -m`)
REPO="galaxypi/galaxy"
INSTALL_DIR="$HOME/galaxy"
SEEDS=$(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/master/seeds)



# download latest release information from GitHub
json=$(curl -s "https://api.github.com/repos/$REPO/releases/latest")
releases=$(echo "$json" | jq --raw-output '.assets' | jq --compact-output '.[]')


# go through all release assets and search for a matching release
release_found=false
while read -r release; do
    name=$(echo "$release" | jq --raw-output '.name')

    # set release_found to true if we found a matching release
    if [ "$name" == "basecli_$ARCH" ] || [ "$name" == "basecoind_$ARCH" ]; then
      release_found=true
    fi
done <<< "$releases"

if [ "$release_found" = false ]; then
    echo "Could not find a matching release of basecli and/or basecoind for your architecture ($ARCH)."
    echo "If you know what you're doing and think it should work on your architecture, you can set your architecture manually at the beginning of this script and then run it again."
    exit 1
fi


# check for needed dependencies
for dependency in $DEPENDENCIES; do
    if ! command -v "$dependency" &>/dev/null; then
        echo "It seems that $dependency isn't installed but I really need it :/"
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
[[ ! -f "./basecli" ]] && rm "./basecli"
[[ ! -f "./basecoind" ]] && rm "./basecoind"
[[ -d "$HOME/.basecli" ]] && rm -r "$HOME/.basecli"
[[ -d "$HOME/.basecoind" ]] && rm -r "$HOME/.basecoind"


# go through all release assets and download the matching ones
echo "Downloading and installing basecli and/or basecoind."
while read -r release; do
    name=$(echo "$release" | jq --raw-output '.name')

    # download if the release asset is what we searched
    if [ "$name" == "basecli_$ARCH" ] || [ "$name" == "basecoind_$ARCH" ]; then
        url=$(echo "$release" | jq --raw-output '.browser_download_url')
        curl -LO# "$url"
    fi
done <<< "$releases"


# move the binaries to not include the arch and make it executable
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
curl -LOs "https://github.com/$REPO/raw/master/genesis.json"
mv "genesis.json" "$HOME/.basecoind/config/genesis.json"


# summary
echo -e "\nSuccessfully installed and set up the Galaxy Blockchain."
echo "You can now open a terminal in \"$INSTALL_DIR\" and run \`./basecoind start\` to start your node."
