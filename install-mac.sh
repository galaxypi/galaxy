#!/bin/bash
set -e

# Galaxy ACII graphic with newline for better UI
echo -e "
                                                       +
                                     +
                      +                       +
                              +
                                 +        +
                  +
                          +     +                +
                       +          +
    Galaxy                  +
                +                       +
                      +
        +                +         +
                              +
                   +
"

# Ask for consent with line breaks for better readability
echo -e "This script will remove previously installed directories:
- galaxycli
- galaxyd"

read -p "Are you ok with that? (y/N): " choice

case "$choice" in
    y|Y) echo -e "Continuing with install... This could take a moment.\n";;
    *) echo "Aborting."; exit 1;;
esac

# REMOVES EXISTING INSTALL
rm -rf ~/galaxy
rm -rf ~/.galaxyd
rm -rf ~/.galaxycli

# puts the daemon and CLI into ~/galaxy
echo "Downloading and installing.... galaxycli and galaxyd."
mkdir ~/galaxy
cd ~/galaxy
curl -LO#f https://github.com/galaxypi/galaxy/releases/download/fourth/galaxyd_Darwin_x86_64
curl -LO#f https://github.com/galaxypi/galaxy/releases/download/fourth/galaxycli_Darwin_x86_64
mv galaxyd_Darwin_x86_64 galaxyd
mv galaxycli_Darwin_x86_64 galaxycli
chmod +x galaxycli
chmod +x galaxyd

echo "Initializing galaxyd...."

# initalizes the blockchain
./galaxyd init &>/dev/null

echo "Fetching genesis block...."
# fetches genesis.json
curl -LO#f https://github.com/galaxypi/galaxy/raw/master/genesis.json
mv genesis.json ~/.galaxyd/config/genesis.json

echo "Adding seeds to config...."
# find-and-replace on config.toml to set seed node
original_string='seeds = ""'
replace_string='seeds = "a0cd321854769978eea1ffb57d341ecaf6551905@149.28.45.92:26656,ea7ff5667f65c52e8c673bc96885a66fe6c1ec7b@98.118.185.162:26656,642f7a68f1af520a1b05134382fe97ba7513ee41@45.77.36.79:26656"'
sed -i -e "s/$original_string/$replace_string/g" ~/.galaxyd/config/config.toml

# get moniker
echo -e "Galaxy needs to distinguish individual nodes from one another. This is \naccomplished by having users choose a Galaxy node name. \n\nRecommended name: 'galaxy-node'\n"
read -p "Name your galaxy node: " name
moniker_original="moniker = \"\""
moniker_actual="moniker = \"$name\""
sed -i -e "s/$moniker_original/$moniker_actual/g" "$HOME/.galaxyd/config/config.toml"

# summary
echo -e "\n\nCongratulations! \xF0\x9F\x8E\x89 \xF0\x9F\x8C\x8C \n
Galaxy blockchain is now installed and ready to sync......

\nNavigate into the galaxy directory by typing the following;

cd ~/galaxy
"

echo -e "Then open a new terminal tab and sync your Galaxy Node by typing....
~/galaxy
./galaxyd start

Note: Syncing your Galaxy Node can take a while."