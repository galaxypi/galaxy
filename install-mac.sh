#!/bin/bash
# DEPENDENCIES:
# * homebrew | to install:  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" )
# * wget     | You can "brew install wget"

# puts the daemon and CLI into ~/galaxy, which is on the PATH
wget -O /usr/local/bin/basecoind https://github.com/galaxypi/galaxy/releases/download/second/basecoind_mac 
wget -O /usr/local/bin/basecli https://github.com/galaxypi/galaxy/releases/download/second/basecli_mac 

# initalizes the blockchain
basecoind init

# fetches genesis.json
wget -O ~/.basecoind/config/genesis.json https://github.com/galaxypi/galaxy/raw/master/genesis.json

# find-and-replace on config.toml to set seed node
replace_string='seeds = "c4fc01b8bffd197a0badcc2370641d665c2df6c3@163.172.161.82:26656"'
sed -i -e "s/seeds =/$replace_string/g" ~/.basecoind/config/config.toml

# sync the blockchain
basecoind start

# Thanks the user
echo "Thank you for testing our blockchain!"
