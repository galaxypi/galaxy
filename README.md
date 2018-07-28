<p align="center">
  <br/>

  <h1 align="center">Galaxy</h1>

  <p align="center">
    Galaxy Pi Project
    <br/>
    <a href="http://galaxy.ooo"><strong>galaxy.ooo</strong></a>
    <br/>
    <br/>
    <a href="https://github.com/galaxypi/">Explore</a>
  </p>
</p>

<br/>

Galaxy is a network of tiny computers running various decentralized and crypto services, cryptocurrencies and networks around the world. These tiny computers provide networks to quickly bootstrap to a galaxy of nodes.

## Install Instructions for Mac and Linux (Pi and x86 varieties)

First: Install `jq` in a manner appropriate to your platform, like:

```
apt install jq
brew install jq
pacman -S jq
```
or similar.  

Then, open a terminal and run:

```
bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install.sh)
```

Then you can do a `cd ~/galaxy` and you're ready to run the program!

The installer should prompt you to type `./galaxyd start` when it is finished.  This will
start syncing the blockchain, and your computer will become a part of the world's biggest network of nodes.

After the blockchain syncs, you can make a wallet!  In a second terminal window, you would type
`./galaxycli keys add chicken` -- but you don't need to name your key chicken, you can call it anything you want.

After entering a passphrase, you should see output approximately like:

```
NAME:	TYPE:	ADDRESS:						PUBKEY:
chicken	local	cosmosaccaddr1ppuzqz2p4hg2fafa6d3ypnr0qhduzpah3e725p	cosmosaccpub1addwnpepqdsg4e6z0ghcqdeq8a5nmj4mvvwas0az39slu7398dvjcak6wc9fqh5n7yf
**Important** write this seed phrase in a safe place.
It is the only way to recover your account if you ever forget your password.

pioneer parrot blind token have bottom lonely ginger payment lonely erase bargain produce random season polar real clerk render tip cable badge trend sign
```

Then, come and join us on [Slack](https://join.slack.com/t/galaxypi/shared_invite/enQtNDAxNTc2ODY3NTU2LWFjOTY4MzQ2YjFlODQ4MjhmMjE4YzA0YjA0MzU4NjUzZmM2YTg2YWRiN2QzYjJiZGQ0OGM4MjI4OTVkNjY4NzQ)

and we'll send you some tokens!
