# Cross compiles for myriad platforms
gox
# Removes FreeBSD, OpenBSD, Windows386, Mac386, s390x
rm galaxyd_freebsd* galaxyd_linux_m* galaxyd_openbsd_* galaxyd_windows_386* galaxyd_linux_s390x galaxyd_darwin_386
# Moves binaries to match uname -m
mv galaxyd_darwin_amd64 galaxyd_darwin_x86_64
mv galaxyd_linux_386 galaxyd_linux_x86
mv galaxyd_linux_amd64 galaxyd_linux_x86_64
mv galaxyd_linux_arm galaxyd_linux_armv7l
# Builds for Pi W Zero, original Pi
env GOOS=linux GOARCH=arm GOARM=5 go build
mv galaxyd galaxyd_linux_armv6l
