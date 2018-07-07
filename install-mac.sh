#!/bin/bash
# DO NOT USE THIS.  IT IS NOT YET DONE.
# Creates the "galaxy" folder, where our binaries live
mkdir ~/galaxy
# adds the galaxy binaries to the PATH
echo 'export PATH=$PATH:~/galaxy' >> ~/.bash_profile
# allow us to issue commands against ~/galaxy without resetting the terminal session
export PATH=$PATH:~/galaxy
# puts the daemon and CLI into ~/galaxy, which is on the PATH
curl https://github.com/galaxypi/galaxy/releases/download/second/basecoind_mac -O ~/galaxy/basecoind
curl https://github.com/galaxypi/galaxy/releases/download/second/basecli_mac -O ~/galaxy/basecli
# initalizes the blockchain
basecoind init
# fetches genesis.json
curl https://github.com/galaxypi/galaxy/raw/master/genesis.json -O ~/.basecoind/config/genesis.json
# find-and-replace on config.toml to set seed node
replace_string='seeds = "c4fc01b8bffd197a0badcc2370641d665c2df6c3@163.172.161.82:26656"'
sed -i -e "s/seeds =/$replace_string/g" ~/.basecoind/config/config.toml
# sync the blockchain
basecoind start
# Provides Uninstall instructions
echo "to permanently remove all traces of this software, type * rm -rf ~/galaxy ~/basecoind"
echo "and then it will all be gone.  This install script did not run as root, and did not install anything outside of the folders ~/galaxy, ~/basecoind, and ~/basecli (if you have chosen to interact with the chain using the CLI)"
echo "it did, however, take the liberty of adding ~/galaxy as a PATH in your ~/.bash_profile, which you can remove by editing your ~/.bash_profile"
echo "EVERYONE AT GALAXY THINKS YOU'RE AWESOME, BECAUSE YOU'VE RUN OUR CHAIN!"
echo "please don't be afraid to file issues if our software isn't working for you."
