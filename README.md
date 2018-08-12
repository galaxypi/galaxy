<p align="center">
  <a href="http://galaxy.ooo">
    <img src="https://media.githubusercontent.com/media/galaxypi/galaxy-design/master/social/social-galaxy-logo%402x.png" width=72 height=72>
  </a>
  <h3 align="center">Galaxy</h3>
  <p align="center">
    Galaxy is a network of decentralized nodes offering services for decentralized platforms
    <br/>
    <a href="http://galaxy.ooo"><strong>galaxy.ooo</strong></a>
    <br/>
    <br/>
    <a href="https://github.com/galaxypi/galaxy/issues/new?template=feature_request.md">Request feature</a>
    &nbsp;&middot;&nbsp;
    <a href="https://github.com/galaxypi/">Explore</a>
    &nbsp;&middot;&nbsp;
    <a href="https://github.com/galaxypi/galaxy/issues/new?template=issues.md">Report bug</a>
    &nbsp;&middot;&nbsp;
    <a href="https://discord.gg/36K9nan">Chat</a>
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
- [Roadmap](/roadmap.md)
- [Contributing](#contributing)
- [Using the issue tracker](#using-the-issue-tracker)
- [Bug reports](#bug-reports)
- [Feature requests](#feature-requests)
- [Use Cases](#use-cases)
- [Community](/docs/community.md)

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Status

[![Galaxy Version](https://img.shields.io/badge/Galaxy-v0.0.4--testnet--alpha.svg?colorA=212121&colorB=FF0000)](http://github.com/galaxypi/galaxy)


<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Overview

Galaxy's mission is to become the world's largest network of decentralized nodes offering services for decentralized networks. We are looking to do this by executing the following;

- [ ] Focus on building and scaling the Galaxy blockchain and currency
- [ ] Build a large community of open source developers
- [ ] Provide high developers with access to this network of nodes by building and maintaining an SDK
- [ ] Provide the best experience for developers to quickly deploy apps and services to decentralized networks

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


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

Then, come and join us on [Discord](https://discord.gg/36K9nan)

and we'll send you some tokens!

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Contributing

Finding opportunities to contribute

Visit our issue tracker:

- [Issue Tracker](https://github.com/galaxypi/galaxy/issues)

If the ticket your interested in is being worked, feel free to provide feedback.

Otherwise, leave a comment addressing one of the [repo maintainers](#maintainers) to get
the conversation started.

Whether you are a veteran programmer, beginner programmer, or don't program at all, we are positive you will find a place to helping us build the largest decentralized node network.

[Just Ask!]()

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Using the issue tracker

The [issue tracker](https://github.com/galaxypi/galaxy/issues) is the preferred channel for [bug reports](#bug-reports), [features requests](#feature-requests) and [submitting pull requests](#pull-requests), but please respect the following restrictions:

* Please **do not** use the issue tracker for personal support requests.  Please use the [Galaxy Discord](https://discord.gg/36K9nan) chat app as it is a better places to get help.

* Please **do not** derail or troll issues. Keep the discussion on topic and respect the opinions of others.

* Please **do not** post comments consisting solely of "+1" or ":thumbsup:". Use [GitHub's "reactions" feature](https://github.com/blog/2119-add-reactions-to-pull-requests-issues-and-comments) instead. We reserve the right to delete comments which violate this rule.

### When reporting a bug, include:

* Device and device version (Raspberry Pi Zero, Raspberry Pi 2, MacBook Pro etc..)

* Operating system and version (Mac OS X, Linux, Raspian, etc..)

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Bug reports

A bug is a _demonstrable problem_ that is caused by the code in the repository. Good bug reports are extremely helpful, so thanks!

<b><a href="https://github.com/galaxypi/galaxy/issues/new?template=issues.md">› Report bug</a></b>

Guidelines for bug reports:

1. **Debug yuor code** &mdash; [Debug your Go code with GDB](https://golang.org/doc/gdb) to ensure your problem isn't caused by a simple error in your own code.

2. **Use the GitHub issue search** &mdash; [Search for duplicate or closed issues](https://github.com/galaxypi/galaxy/issues?q=is%3Aopen). See GitHub's [Advanced Search Syntax](https://help.github.com/articles/searching-issues-and-pull-requests/).

3. **Check if the issue has been fixed** &mdash; try to reproduce it using the latest `master`, `develop` or development branch in the repository.

A good bug report shouldn't leave others needing to chase you up for more information. Please try to be as detailed as possible in your report. What is your environment? What steps will reproduce the issue? What device and OS are you using when experiencing the problem? Do other environments show the bug differently? What would you expect to be the outcome? All these details will help people to fix any potential bugs.

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Feature requests

**Feature requests are highly encouraged. We want to hear from you on what you'd like to see and/or how you'd like to utilize or access the Galaxy node network**.

<b><a href="https://github.com/galaxypi/galaxy/issues/new?template=feature_request.md">› Request a feature</a></b>

When submitting a feature request, take a moment to find out whether your idea fits with the scope and aims of the project. It's up to *you* to make a strong case to convince community members of the merits of this feature. Please provide as much detail and context as possible, providing relevant links, prior art, or live demos whenever possible.

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
