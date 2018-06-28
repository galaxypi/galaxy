# galaxy

Galaxy is a project to build a tiny cryptocurrency that runs across as many tiny computers as there are stars in a galaxy.  We think that focusing on the tiniest of computers (even though the code can run anywhere) gives us a unique perspective on building out a *very* decentralized currency system, and on user-empowerment.  

Please consider:  If computers can be had for $10-$50, and those computers can pay for themselves after a year or two of operation, what else is possible with these tiny devices?  

Essentially, we've chosen to explore distributed systems based on small, cheap computers, and we're starting with a currency.  



## Join our test network!
So, right now the Galaxy setup is a bit of a hack.  Basically, we build "democoin," which is a part of the cosmos-SDK (that's why there's no source code in this repo yet.) .  We've taken care of the compile for you and put binaries in our "releases" page.  After that, you'd want to put democoind and democli (for your platform of choice) in your PATH somewhere.  I usually use /usr/bin, but you can choose anywhere you'd like!

After that, you're going to want to run a "modified" 

```
democoind init
```

Which will actually start you a fresh, shiny new blockchain!  But that's not what we want here, so after that you're going to 

```
cd ~/.democoind
rm genesis.json
```

Then you're going to take genesis.json from this repository, and put it in that folder as genesis.json.  This will let the chain on your computer start with the same state as our chain, meaning they're nearly one!  All you need now is a seed node.  Next you would open config.toml something like:

```
nano config.toml
```

and you'd find where it says "comma separated list of seeds to connect to" and make sure it looks like:

```
seeds = "afec4c28597a9c578baff1c5c8742b08529a969c@212.47.239.48:26656"
```

...and then you can join the Galaxy testnet!  Hop on Slack and ask us to send you some coins to play with!
