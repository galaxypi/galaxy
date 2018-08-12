# Getting started

There are currently two supported operating system installations for Galaxy
Core Software.

1. Installation
   #### Linux (Pi and x86 varieties)
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install.sh)
   ```
   #### macOS
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/galaxypi/galaxy/develop/install-mac.sh)
   ```

2. Navigate to the Galaxy directory

   ```bash
   cd ~/galaxy
   ```

3. Run the Galaxy blockchain
   The installer should prompt you to type `./galaxyd start` when it is
   finished. This will start syncing the blockchain.

4. Create a Galaxy wallet
   Run the following in a second terminal window
   ```bash
   ./galaxycli keys add <choose-a-passphrase>
   ```

Welcome to the Galaxy network...

## Receive Galaxy Coin

- Join the [Galaxy Discord](https://discord.gg/36K9nan) chat app.
- Ping one of the [repository maintainers](#maintainers) and request Galaxy
  coin.

### Join the community
- [Follow on Twitter](https://twitter.com/GalaxyPiLab)
- [Contribute](https://github.com/galaxypi/galaxy/blob/develop/CONTRIBUTING.md)
- [Create a feature request](https://github.com/galaxypi/galaxy#feature-requests)

## Manual installation

Visit the [Manual installation](https://github.com/galaxypi/galaxy/blob/develop/docs/manual-install.md) page for manual instructions.

## Build instructions

Learn more on how Galaxy build works. Visit the [Build instructions](https://github.com/galaxypi/galaxy/blob/develop/docs/build-instructions.md)
