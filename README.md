<p align="center">
  <br/>

  <a href="http://galaxy.ooo">
    <img src="https://media.githubusercontent.com/media/galaxypi/galaxy-design/master/social/social-galaxy-logo%402x.png" width=72 height=72>
  </a>

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
      <img src="https://img.shields.io/twitter/url/https/twitter.com/galaxypilab.svg?style=social&label=Follow%20%40galaxypilab&logo=twitter" alt="follow on Twitter">
    </a>
    &nbsp;&middot;&nbsp;
    <a href="https://github.com/galaxypi/galaxy/stargazers">
      <img src="https://img.shields.io/github/stars/galaxypi/galaxy.svg?style=social&label=Star&maxAge=2592000" alt="Star Repo">
    </a>
  </p>
</p>

<br/>

## Table of contents

- [Status](#status)
- [Overview](#overview)
- [Getting started (Mac & Linux)](#getting-started)
    - [Manual install](/docs/manualinstall.md)
    - [Build instructions](/docs/build.md)
- [Contributing](#contributing)
- [Roadmap](/roadmap.md)
- [Use Cases](#use-cases)
- [Community](/docs/community.md)

## Status

![Galaxy Version](https://img.shields.io/badge/Galaxy_Testnet-v0.0.4--alpha-red.svg)
![Build Status](https://img.shields.io/badge/Build_Status-passing-brightgreen.svg)

## Overview

Galaxy's mission is to become the world's largest network of decentralized nodes offering services for decentralized networks. We are looking to do this by executing the following;

- [ ] Focus on building and scaling the Galaxy blockchain and currency
- [ ] Build a large community of open source developers
- [ ] Provide high developers with access to this network of nodes by building and maintaining an SDK
- [ ] Provide the best experience for developers to quickly deploy apps and services to decentralized networks

## Getting started

### Install Instructions for Mac and Linux - Pi and x86 varieties

Open a Terminal and run:

#### Linux
```
bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install.sh)
```

#### Mac
```
bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install-mac.sh)
```

Then you can do a `cd ~/galaxy` and you're ready to run the program!

The installer should prompt you to type `./galaxyd start` when it is finished. This will
start syncing the blockchain, and your computer will become a part of the world's biggest network of nodes.

After the blockchain syncs, you can make a wallet! In a second terminal window, you would type
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

## Contributing

Finding opportunities to contribute

Visit our issue tracker:

- [Issue Tracker](https://github.com/galaxypi/galaxy/issues)

If the ticket your interested in is being worked, feel free to provide feedback.

Otherwise, leave a comment addressing one of the [repo maintainers](#maintainers) to get
the conversation started.

Whether you are a veteran programmer, beginner programmer, or don't program at all, we are positive you will find a place to helping us build a decentralized internet!

[Just Ask!]()

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>

## Use Cases

#### Examples of what the network can be used for

- [ ] Use nodes for airdrops to reach high signal developers actively participating in the network instead of speculators
- [ ] Pay users for compute, storage, bandwidth, staking, etc.
- [ ] Repurpose existing Raspberry Pi projects to grow those communities and reward participation

<div align="right">
  <a href="https://opensource.guide/how-to-contribute/#why-contribute-to-open-source">
    <img src="https://badges.frapsoft.com/os/v3/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/" alt="Open Source">
  </a>
</div>
