<p align="center">
  <br/>

  <h3 align="center">Galaxy</h3>

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

## Table of contents

- [Join the testnet](#join-the-testnet)
- [Single-line install for Mac](#single-line-install-for-mac)

## Join the testnet
So, right now the Galaxy setup is a bit of a hack.  Basically, we build "basecoin," which is a part of the [cosmos-SDK](https://github.com/cosmos/cosmos-sdk) (that's why there's no source code in this repo yet.)  We've taken care of the compile for you and put binaries on our "releases" page.  After that, you'd want to put basecoind and basecli (for your platform of choice) in your PATH somewhere.  I usually use /usr/bin, but you can choose anywhere you'd like!

After that, you're going to want to run a "modified"

```
basecoind init
```

Which will actually start you a fresh, shiny new blockchain!  But that's not what we want here, so after that you're going to

```
cd ~/.basecoind/config
rm genesis.json
wget https://github.com/galaxypi/galaxy/raw/master/genesis.json
```

Then you're going to take genesis.json from this repository, and put it in that folder as genesis.json.  This will let the chain on your computer start with the same state as our chain, meaning they're nearly one!  All you need now is a seed node.  Next you would open config.toml something like:

```
nano config.toml
```

and you'd find where it says "comma separated list of seeds to connect to" and make sure it looks like:

```
seeds = "fa2dfb4969ac84726b8969781cf06fdacb979678@98.118.185.162:26656"
```

...and then you can join the Galaxy testnet!  Hop on Slack and ask us to send you some coins to play with!  If you have trouble at any step, please don't hesitate to file an issue!  Our goal is to make running a galaxy node as easy as possible, and your issues help us get there!

## Single line install for mac

### Dependencies:
* Homebrew (for installing wget)  `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* wget (for downloading binaries)  `brew install wget`

Then, paste this into your terminal:
```
curl https://raw.githubusercontent.com/galaxypi/galaxy/master/install-mac.sh | bash
```
