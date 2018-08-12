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

#### Be a part of the community
- [Follow on Twitter](https://twitter.com/GalaxyPiLab)
- [Contribute](https://github.com/galaxypi/galaxy/blob/develop/CONTRIBUTING.md)
- [Create a feature request](https://github.com/galaxypi/galaxy#feature-requests)


## Manual install

If you'd like, you can choose to manually install Galaxy as a option to the above. To do so, follow the following instructions:

1. Download the one of the [Galaxy binaries](https://github.com/galaxypi/galaxy
   /releases) that matches your Operating system and processor.

2. Chosee the PATH to the binary. I.e. `/usr/bin`
   ```bash
   NOTE: You may need to chmod +x the binaries that you copy to some place on your path.
   ```

3. Initialize Galaxy
   ```bash
   galaxyd init
   ```

4. Initialize the genesis block
   ```bash
   wget -O ~/.galaxyd/config/genesis.json https://github.com/galaxypi/galaxy/raw/master/genesis.json
   ```

5. Configure Galaxy
   ```bash
   #Navigate to the config directory
   cd ~/.galaxyd/config
   #Open the config file
   nano config.toml
   #Find 'moniker' & rename your Galaxy node
   moniker = <choose-a-name>
   ```

6. Add seeds
   ```bash
   #Find 'seeds' & replace with the following
   seeds = "a0cd321854769978eea1ffb57d341ecaf6551905@149.28.45.92:26656"
   ```

7. Save and quit your nano file
   ```bash
   #Save the file
   crtl+o
   #Quit nano
   ctrl+x

8. Run Galaxy
   ```bash
   galaxyd start
   ```


## Build instructions
