#!/bin/sh



###################
## SH create by Alexonb.Studio
## Mining Works and testing Bitcoin on Ubuntu 20.04 TLS
## Approuvate 28/08/2021 to 3h21 PM (GMT+002 Paris)
###################


sudo -i

apt update && apt upgrade -y


apt install -y libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm autoconf gcc make git libtool libjansson-dev libudev libusb-1.0-0-dev apt-file make

git clone https://github.com/pooler/cpuminer.git
cd cpuminer
./autogen.sh
./configure CFLAGS="-03"
make

 ./minerd -o stratum+tcp://yourpool.TLD:123 -u USERNAME -p PASSWORD
