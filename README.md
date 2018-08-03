<p align="center">
  <br/>

  <h3 align="center">Galaxy</h3>

  <p align="center">
    Galaxy Pi core software repository
    <br/>
    <a href="http://galaxy.ooo"><strong>galaxy.ooo</strong></a>
    <br/>
    <br/>
    <a href="https://github.com/galaxypi/">Explore</a>
    <br/>
    <br/>
    <a href="https://twitter.com/intent/follow?screen_name=galaxypilab">
      <img src="https://img.shields.io/twitter/follow/galaxypilab.svg?style=social&label=Follow&maxAge=2592000" alt="Follow on Twitter">
    </a>
    &nbsp;&middot;&nbsp;
    <a href="https://github.com/galaxypi/galaxy/stargazers">
      <img src="https://img.shields.io/github/stars/galaxypi/galaxy.svg?style=social&label=Star&maxAge=2592000" alt="Star Repo">
    </a>
  </p>
</p>

<br/>

![Galaxy Version](https://img.shields.io/badge/Galaxy_Testnet-v0.0.4--alpha-red.svg)
![Build Status](https://img.shields.io/badge/Build_Status-passing-brightgreen.svg)

## Overview

Galaxy's mission is to become the world's largest network of decentralized nodes offering services for decentralized networks.  We are focused on scaling a currency across the network, launching an SDK for developers to create apps and other nodes that run acorss the network and tightly integrating our nodes with mobile phones in particular.  We think smartphones make for poor nodes but they servce as ideal platforms to control and monitor nodes.

Galaxy is comprised of a currency which can be earned for compute tasks across the network and developer tools like a command line interface and a software development kit are in the pipeline which will allow developers to create third party apps and extend the capabilitities of the network.

Relatively speaking very few people actually run nodes for a number of reasons.  First of all most users own a laptop and a smartphone, both of which make for poor nodes as they are not designed to be always working, always connected and dedicated to a specific task.  Nodes are not easy to setup even for experienced developers.  Configuring a node can be very time intensive and often is unsupported with little to no documentation.  Our goal is to provide a platform for developers to easily create new nodes and a marketplace where end users can easily run nodes and participate in those networks.

Many blockchains and protocols have a very hard time achieving critical mass of third party developers building on top of their protocol.  We believe there is enormous potential in focusing on the existing Raspberry Pi community and all of the fun projects associated with that open source community.

## Install Instructions for Mac and Linux (Pi and x86 varieties)

### Open a Terminal and run:


#### Linux
```
bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install.sh)
```

#### Mac
```
bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install-mac.sh)
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

Then, come and join us on [Discord](https://discord.gg/9RnYvAS)

and we'll send you some tokens!
