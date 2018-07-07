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

## Join the testnet
So, right now the Galaxy setup is a bit of a hack.  Basically, we build "democoin," which is a part of the cosmos-SDK (that's why there's no source code in this repo yet.) .  We've taken care of the compile for you and put binaries in our "releases" page.  After that, you'd want to put democoind and democli (for your platform of choice) in your PATH somewhere.  I usually use /usr/bin, but you can choose anywhere you'd like!

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
seeds = "c4fc01b8bffd197a0badcc2370641d665c2df6c3@163.172.161.82:26656"
```

...and then you can join the Galaxy testnet!  Hop on Slack and ask us to send you some coins to play with!
