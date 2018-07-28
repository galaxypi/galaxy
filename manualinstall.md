# Manually Installing Galaxy

You can find our binaries here:

https://github.com/galaxypi/galaxy/releases

Download the one that is appropriate for your Operating system and processor type.

Then, put the binary somewhere on your PATH.  (I use /usr/bin)

You may need to chmod +x the binaries that you copy to some place on your path.  

Then, just run `galaxyd init`

but don't start that blockchain yet!  If you do, you'll start your own new chain.  Instead, do something like:

```
wget -O ~/.galaxyd/config/genesis.json https://github.com/galaxypi/galaxy/raw/master/genesis.json
```

to put the genesis block in the right place.  

Then you might want to `cd ~/.galaxyd/config`

and do a good old-fashioned `nano config.toml`

In config.toml there are two values that you're looking to change.  The first is the `moniker`.  You should see it in config.toml as something like `moniker = ""`

Between the two quotes, give your node a name, something like `moniker = "giantchicken"`

After you've done that, you only need to put the seeds in place.  You will see something like `seeds = ""` and should replace that with `seeds = "a0cd321854769978eea1ffb57d341ecaf6551905@149.28.45.92:26656"`.  Okay, that's it, you've configured Galaxy!

You can now save the file in nano using `crtl+o` and quit nano using `ctrl+x`.  Finally, you run galaxy like:

```
galaxyd start
```
