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

- [Quick Start](#quick-start)
- [Status](#status)
- [Overview](#overview)
- [Roadmap](/roadmap.md)
- [Contributing](#contributing)
- [Using the issue tracker](#using-the-issue-tracker)
- [Bug reports](#bug-reports)
- [Feature requests](#feature-requests)
- [Pull requests](#pull-requests)
- [Code guidelines](#code-guidelines)
- [Maintainers](#maintainers)
- [Use Cases](#use-cases)
- [License](#license)
- [Community](/docs/community.md)

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Quick start

Quick start options:

- Linux - `bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install.sh)`
- macOS - `bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install-mac.sh)`

Read the [Getting started](https://github.com/galaxypi/galaxy/blob/develop/docs/getting-started.md) page for more detailed information on installing and syncing Galaxy.

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Status

[![Galaxy Version](https://img.shields.io/badge/Galaxy-v0.0.4--testnet--alpha-red.svg?colorA=212121&colorB=FF0000)](http://github.com/galaxypi/galaxy)
[![Build Status](https://img.shields.io/badge/Build_Status-Passing-brightgreen.svg?colorA=212121&colorB=00BB00)](http://github.com/galaxypi/galaxy)
<br/>
[![Go Version](https://img.shields.io/badge/Go-v1.10.3-blue.svg?colorA=212121&colorB=007BFF)](http://golang.org/)
[![Viper Version](https://img.shields.io/badge/Viper-v1.0.0-blue.svg?colorA=212121&colorB=007BFF)](http://github.com/spf13/viper)
[![Testify Version](https://img.shields.io/badge/Testify-v1.2.1-blue.svg?colorA=212121&colorB=007BFF)](http://github.com/stretchr/testify)
[![Go Protocol Buffers Version](https://img.shields.io/badge/ProtoBuf-v1.1.0-blue.svg?colorA=212121&colorB=007BFF)](http://github.com/golang/protobuf)
[![Tendermint Version](https://img.shields.io/badge/Tendermint-v0.22.0-red.svg?colorA=212121&colorB=FF0000)](http://github.com/tendermint/tendermint)
[![Cosmos-SDK Version](https://img.shields.io/badge/Cosmos_SDK-v0.22.0-red.svg?colorA=212121&colorB=FF0000)](http://github.com/cosmos/cosmos-sdk)
[![Cobra Version](https://img.shields.io/badge/Cobra-v0.0.1-red.svg?colorA=212121&colorB=FF0000)](http://github.com/spf13/cobra)

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


## Contributing

Finding opportunities to contribute

Visit our issue tracker:

- [Issue Tracker](https://github.com/galaxypi/galaxy/issues)

If the ticket your interested in is being worked, feel free to provide feedback.

Otherwise, leave a comment addressing one of the [repository maintainers](#maintainers) to get
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


## Pull requests

Good pull requests—patches, improvements, new features—are a fantastic help. They should remain focused in scope and avoid containing unrelated commits.

**Please ask first** before embarking on any significant pull request (e.g. implementing features, refactoring code, porting to a different language), otherwise you risk spending a lot of time working on something that the project's developers might not want to merge into the project.

Pull requests that add new features should target [the `develop` git branch](https://github.com/galaxypi/galaxy/tree/develop), where they will be welcomed and duly considered.

Please adhere to the [coding guidelines](#code-guidelines) used throughout the project (indentation, accurate comments, etc.) and any other requirements (such as test coverage).

Adhering to the following process is the best way to get your work included in the project:

1. [Fork](https://help.github.com/fork-a-repo/) the project.

   i. On GitHub, navigate to the [GalaxyPi/Galaxy](
   https://github.com/galaxypi/galaxy) repository.
   <br/>
   ii. In the top-right corner of the page, click **Fork**.


2. [Clone your fork](
   https://help.github.com/articles/fork-a-repo/#keep-your-fork-synced), and
   configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/galaxy.git
   # Navigate to the newly cloned directory
   cd galaxy
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/galaxypi/galaxy.git
   ```

3. If you cloned a while ago, get the latest changes from upstream:

   ```bash
   git checkout develop
   git pull upstream develop
   ```

4. Create a new topic branch (off the main project development branch) to
   contain your feature, change, or fix:

   ```bash
   git checkout -b pull-request/<topic-branch-name>
   ```

5. Commit your changes in logical chunks. Please adhere to these
   [git commit message guidelines](
   http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
   or your code is unlikely to be merged into the main project. Use Git's
   [interactive rebase](https://help.github.com/articles/interactive-rebase)
   feature to tidy up your commits before making them public.

6. Locally merge (or rebase) the upstream development branch into your topic
   branch:

   ```bash
   git pull [--rebase] upstream develop
   ```

7. Push your topic branch up to your fork:

   ```bash
   git push origin pull-request/<topic-branch-name>
   ```

8. [Open a Pull Request](
   https://help.github.com/articles/using-pull-requests/) with a clear title
   and description against the `develop` branch.

**IMPORTANT**: By submitting a patch, you agree to allow the project owners to
license your work under the terms of the [MIT License](LICENSE.md) (if it
includes code changes).

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Code guidelines

[Adhere to the **Effective Go** code guide.](
https://golang.org/doc/effective_go.html) to write clear, idiomatic Go code.
The code guide provides tips on items such as [Formatting](
https://golang.org/doc/effective_go.html#formatting), [Commentary](
https://golang.org/doc/effective_go.html#commentary), [Control Structures](
https://golang.org/doc/effective_go.html#control-structures), [Functions](
https://golang.org/doc/effective_go.html#functions), [Methods](
https://golang.org/doc/effective_go.html#methods) and much more.

New to Go? Get started by visiting [How to Write Go Code](https://golang.org/doc/code.html).

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Maintainers

**Jacob Gadikian**

- <https://twitter.com/gadikian>
- <https://github.com/faddat>

**Guy Lepage**

- <https://twitter.com/guylepage3>
- <https://github.com/guylepage3>

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## Use Cases

#### Examples of what the network can be used for

- [ ] Use nodes for airdrops to reach high signal developers actively participating in the network instead of speculators
- [ ] Pay users for compute, storage, bandwidth, staking, etc.
- [ ] Repurpose existing Raspberry Pi projects to grow those communities and reward participation

<div align="right">
    <b><a href="#galaxy">^ back to top</a></b>
</div>


## License

By contributing your code, you agree to license your contribution under the [MIT License](LICENSE.md).

<div align="right">
  <a href="https://opensource.guide/how-to-contribute/#why-contribute-to-open-source">
    <img src="https://badges.frapsoft.com/os/v3/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/" alt="Open Source">
  </a>
</div>
