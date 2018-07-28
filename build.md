# Build Instructions

# Building Galaxy!

Building Galaxy, even for a multiplatform environment, is pretty easy.

1) Install Go
2) `go get github.com/galaxypi/galaxy`
3) cd $GOPATH/github.com/galaxypi/galaxy
4) make

.... will cover it for the platform you're currently using.  

## Building Galaxy for Everything:

1) Follow the directions above
2) `go get github.com/mitchellh/gox`  -- Gox is a multiplatform build tool that we use to build galaxy for almost everything, all at once.  
3) cd $GOPATH/src/github.com/galaxypi/galaxy/cmd/galaxyd
4) sh build.sh
5) cd $GOPATH/src/github.com/galaxypi/galaxy/cmd/galaxycli
6) sh build.sh

This will leave you with multiplatform binaries in the galaxyd folder and galaxycli folder.  You can use those binaries on devices of your choosing.  Also, please know that build.sh filters certain platforms.  Look into it to see platforms that you can enable.  
