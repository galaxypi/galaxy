# Galaxy Project Roadmap

The following is the Galaxy Project Roadmap defining the project, technology, goals, and future milestones.

## Table of contents

- [Project Overview](#overview)
- [Goals](#goals)
- [Execution to date](#execution-to-date)
- [Milestones](#milestones---unordered-list)
- [Current Tech Stack](#current-tech-stack)
- [Discovery](#discovery)
- [Possible Future Technology](#possible-future-technology)

## Project Overview

Galaxy's mission is to become the world's largest network of decentralized nodes offering services for decentralized networks.

## Goals

- [ ] Become the world's largest network of decentralized nodes offering services for decentralized networks
- [ ] Build a large community of open source developers
- [ ] Work with the Galaxy developer community to provide developer tools offering the highest value
- [ ] Provide the best experience for developers to quickly deploy apps and services to decentralized networks

## Execution to date (3 sprints)

#### Galaxy Core (Blockchain)
- [x] Galaxy Testnet v0.0.1-alpha-demo
- [x] Galaxy Testnet v0.0.2-alpha-demo
- [x] Galaxy Testnet v0.0.3-alpha-demo
- [x] One-line Install script (Linux)
- [x] Galaxy Testnet v0.0.4-alpha-demo (Custom Galaxy daemon & CLI)

#### Galaxy Marketplace (Web App)
- [x] Galaxy React Web App v0.0.1-alpha

## Milestones - Unordered list

- [ ] **Galaxy Core**: Galaxy Testnet v0.0.5-alpha-demo (improving the design of the network for performance at the edges of the network)
- [ ] **Galaxy Core**: Pi Image Builder
- [ ] **Growth**: Increasing the number of validators and full nodes
- [ ] **Galaxy Token**: Launch the currency
- [ ] **Galaxy Core** & **Galaxy.ooo**: VPN across nodes for egress
- [ ] **Galaxy Core**: Airdrops to node-operators
- [ ] **Galaxy Community**: Global Galaxy hackathons bootstrapped on the Raspberry Pi network
- [ ] **Galaxy Marketplace**: A web interface where developers can quickly deploy apps and services to decentralized networks

## Current Tech Stack
* Cosmos-SDK
* Raspian Linux
* Raspberry Pi Hardware

## Discovery
Galaxy aims to make meaningful participation in a distributed ledger possible from even the smallest computers.  Here are a few of the problems that come up when targeting small computers that live at the edge of the network:

* Cross-compilation / comptability
* Daemon resource usage
* Network connectivity
* Limited Storage Capacity
* Consensus Latency

The only advantage that we truly have in this case is that there can be many, cheap, small computers.  We will  devise a decentralized system that can use these machines as a cohesive whole.  This will involve limiting the state storage needed on any given device, as well as new ways of thinking about the network.

## Possible Future Technology
A conservative design involves a "core" where transactions happen.  Eg:  "100-300 validators" or "21 block producers" or "21 witnesses".  We're looking to create a leaderless system that anyone can participate in using almost any computer.  The Raspberry Pi Zero W just happens to suit our needs well because it is a very small computer (1 core, 512GB RAM, ~16GB Storage.)  Users with at least a Raspberry Pi Zero W, regardless of instruction set architecture, should be able to run a Galaxy node and profit from it in some way.

Nodes that carry state should be compenstated for doing so, since it is a service to the network.  Nodes that don't carry any state should be able to perform compute tasks for users of the network, which should be orchestrated by "compute markets."  Each node should carry its own wallet, making airdrops of tokens by developers of platform-native dapps to node operators possible.  We don't claim to have a panacea to the engineering problems that we would like to address.  Instead, we think that these problems are addressable incrementally, and through focused research:

* How do we make a huge number of nodes work well together?
* How do we provide a network layer that allows nodes to work together like they are in the same room?
* How do we allow develoeprs to build distributed systems of their own on top of ours with no dependency on ours?  (eg: freestanding systems, so that Galaxy is not a threat to the developers' systems)


<div align="right">
    <b><a href="#galaxy-project-roadmap">^ back to top</a></b>
</div>
