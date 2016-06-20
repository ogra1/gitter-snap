# gitter.io amd64 desktop client

This tree allows you to re-pack the current gitter.io desktop client
as a snap package

## Obtaining the linux64 binary

Run the ./download.sh script, it will wget the current linux64
binary from //http//update.gitter.im/linux64/ and extract the
required files from it.

## Building the snap 

Now just run "snapcraft"

## Installing

To install the snap just run:
sudo snap install --devmode gitter_3.0.3-1_amd64.snap
