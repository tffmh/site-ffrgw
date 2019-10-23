_WIP you better use Master!_

# Firmware for Freifunk Ruhrgebiet West
Repository holds the site configuration to build firmware for the community
"Freifunk Ruhrgebiet West", the configuration is not officially
sanctioned by ["Freifunk Ruhrgebiet West e.V."](https://freifunk.ruhr/ "Freifunk Ruhrgebiet West e.V. Website").

Preparation for __Gluon 2019.1__

## Building the firmware

### Installing dependencys
As with Debian 10.1

`sudo apt install git subversion build-essential gawk unzip libncurses5-dev zlib1g-dev libssl-dev time`

### Building
The firmware can be build by following the steps as descriped in: ["Gluon: Getting started"](https://gluon.readthedocs.io/en/v2019.1/user/getting_started.html "Gluon Website")

### Speeding up rebuilds
To speed up rebuilds we can try to use ccache on some part of the firmware.

`sudo apt install ccache`

Set the following eviornment variables to have OpenWRT use ccache and have ccache
compress its cache:
`CONFIG_CCACHE=y`
`CCACHE_COMPRESS=y`
