# Manually install Galaxy

If you'd like, you can choose to manually install Galaxy as a option to the above. To do so, follow the following instructions otherwise see the recommended [Getting started](/docs/getting-started.md) page for more detailed information on installing and syncing Galaxy.

1. Download the one of the [Galaxy binaries](https://github.com/galaxypi/galaxy/releases) that matches your Operating system and processor.

2. Chosee the PATH to the binary. i.e. `/usr/bin`
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
   # Navigate to the config directory
   cd ~/.galaxyd/config
   # Open the config file
   nano config.toml
   # Find 'moniker' & rename your Galaxy node
   moniker = <choose-a-name>
   ```

6. Add seeds
   ```bash
   # Find 'seeds' & replace with the following
   seeds = "a0cd321854769978eea1ffb57d341ecaf6551905@149.28.45.92:26656"
   ```

7. Save and quit your nano file
   ```bash
   # Save the file
   crtl+o
   # Quit nano
   ctrl+x

8. Run Galaxy
   ```bash
   galaxyd start
   ```
