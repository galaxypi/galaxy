#!/bin/bash
set -e

# ask for consent
echo "This script will remove previously installed directories of galaxycli and galaxyd."
read -p "Are you ok with that? (y/N): " choice

case "$choice" in
    y|Y) echo -e "Continuing with install. Just bear with me for a moment.\n";;
    *) echo "Aborting."; exit 1;;
esac

# REMOVES EXISTING INSTALL
rm -rf ~/galaxy
rm -rf ~/.galaxyd
rm -rf ~/.galaxycli

# puts the daemon and CLI into ~/galaxy, which is on the PATH
echo "DOWNLOADING DAEMON AND CLI"
mkdir ~/galaxy
cd ~/galaxy
curl -LO#f https://github.com/galaxypi/galaxy/releases/download/fourth/galaxyd_Darwin_x86_64 
curl -LO#f https://github.com/galaxypi/galaxy/releases/download/fourth/galaxycli_Darwin_x86_64
mv galaxyd_Darwin_x86_64 galaxyd
mv galaxycli_Darwin_x86_64 galaxycli
chmod +x galaxycli
chmod +x galaxyd

echo "INITALIZING BLOCKCHAIN"

# initalizes the blockchain
galaxyd init

echo "FETCHING GENESIS BLOCK"
# fetches genesis.json
wget -O ~/.galaxyd/config/genesis.json https://github.com/galaxypi/galaxy/raw/develop/genesis.json

echo "SETTING SEED NODES"
# find-and-replace on config.toml to set seed node
original_string='seeds = ""'
replace_string='seeds = "a0cd321854769978eea1ffb57d341ecaf6551905@149.28.45.92:26656,ea7ff5667f65c52e8c673bc96885a66fe6c1ec7b@98.118.185.162:26656,642f7a68f1af520a1b05134382fe97ba7513ee41@45.77.36.79:26656"'
sed -i -e "s/$original_string/$replace_string/g" ~/.galaxyd/config/config.toml

# get moniker
echo "Now I need a name to distinguish your node from others (e.g. giantchicken or mygalaxynode)."
read -p "Please tell me a name and press enter: " name
moniker_original="moniker = \"\""
moniker_actual="moniker = \"$name\""
sed -i -e "s/$moniker_original/$moniker_actual/g" "$HOME/.galaxyd/config/config.toml"

# summary
echo -e "\nSuccessfully installed and set up the Galaxy Blockchain."
echo "You can now open a terminal in ~/galaxy and run \`./galaxyd start\` to start your node."

# Thanks the user
echo "Thank you for testing our blockchain!