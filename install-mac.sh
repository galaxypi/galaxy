#!/bin/bash
# DEPENDENCIES:
# * homebrew | to install:  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" )
# * wget     | You can "brew install wget"

# REMOVES EXISTING INSTALL
rm /usr/local/bin/basecoind
rm /usr/local/bin/basecli
rm -rf ~/.basecoind
rm -rf ~/.basecli

# puts the daemon and CLI into ~/galaxy, which is on the PATH
echo "DOWNLOADING DAEMON AND CLI"
wget -O /usr/local/bin/basecoind https://github.com/galaxypi/galaxy/releases/download/second/basecoind_mac 
wget -O /usr/local/bin/basecli https://github.com/galaxypi/galaxy/releases/download/second/basecli_mac
chmod +x /usr/local/bin/basecoind
chmod +x /usr/local/bin/basecli

echo "INITALIZING BLOCKCHAIN"
sleep 10

# initalizes the blockchain
basecoind init

sleep 10

echo "FETCHING GENESIS BLOCK"
# fetches genesis.json
wget -O ~/.basecoind/config/genesis.json https://github.com/galaxypi/galaxy/raw/master/genesis.json

sleep 10


echo "SETTING SEED NODE"
# find-and-replace on config.toml to set seed node
original_string='seeds = ""'
replace_string='seeds = "fa2dfb4969ac84726b8969781cf06fdacb979678@98.118.185.162:26656"'
sed -i -e "s/$original_string/$replace_string/g" ~/.basecoind/config/config.toml

sleep 10

echo "LAUNCHING THE BLOCKCHAIN"

# sync the blockchain
basecoind start

# Thanks the user
echo "Thank you for testing our blockchain!
