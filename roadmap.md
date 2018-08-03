# Galaxy Project Roadmap

The following is the Galaxy Project Roadmap defining the project, technology, goals, and future milestones.

## Table of contents

- [Overview](#overview)
- [Goals](#goals)
- [Execution to date](#execution-to-date)
- [Milestones](#milestones)
- [Tech Stack](#tech-stack)

## Overview

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

## Milestones (Unordered list)

- [ ] **Galaxy Core**: Galaxy Testnet v0.0.5-alpha-demo (improving the design of the network for performance at the edges of the network)
- [ ] **Galaxy Core**: Pi Image Builder
- [ ] **Growth**: Increasing the number of validators and full nodes
- [ ] **Galaxy Token**: Launch the currency
- [ ] **Galaxy Core** & **Galaxy.ooo**: VPN across nodes for egress
- [ ] **Galaxy Core**: Airdrops to node-operators
- [ ] **Galaxy Community**: Global Galaxy hackathons bootstrapped on the Raspberry Pi network
- [ ] **Galaxy Marketplace**: A web interface where developers can quickly deploy apps and services to decentralized networks

## Our Stack
* Cosmos-SDK
* ZeroTier
* Gvisor Containers
* Raspian Linux
* Raspberry Pi Hardware

## Our Problems
Galaxy aims to make meaningful participation in a distributed ledger possible from even the smallest computers.  Here are a few of the problems that come up when targeting small computers that live at the edge of the network:

* Cross-compilation / comptability
* Daemon resource usage
* Network connectivity
* Limited Storage Capacity
* Consensus Latency

The only advantage that we truly have in this case is that there can be many, cheap, small computers.  We will  devise a decentralized system that can use these machines as a cohesive whole.  This will involve limiting the state storage needed on any given device, as well as new ways of thinking about the network.

<div align="right">
    <b><a href="#galaxy-project-roadmap">^ back to top</a></b>
</div>
