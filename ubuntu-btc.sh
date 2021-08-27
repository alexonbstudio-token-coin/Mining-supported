#!/bin/sh



###################
## SH create by Alexonb.Studio
## Mining Works and testing Bitcoin on Ubuntu 20.04 TLS
## Approuvate 28/08/2021 to 3h21 PM (GMT+002 Paris)
###################


sudo -i

apt update && apt upgrade -y

# intermux install ubuntu with one by one pakage sources
apt install -y wget && apt install -y libcurl4-openssl-dev && apt install -y libncurses5-dev && apt install -y pkg-config && apt install -y automake && apt install -y yasm 
apt install -y autoconf && apt install -y gcc && apt install -y git && apt install -y libtool && apt install -y libjansson-dev 
apt install -y libusb-1.0-0-dev && apt install -y apt-file && apt install -y make

wget https://github.com/pooler/cpuminer/releases/download/v2.5.1/pooler-cpuminer-2.5.1-linux-x86_64.tar.gz
tar -xvf pooler-cpuminer-2.5.1-linux-x86_64.tar.gz

git clone https://github.com/pooler/cpuminer.git
cd cpuminer
./autogen.sh
./configure CFLAGS="-03"
make

 ./minerd -o stratum+tcp://yourpool.TLD:123 -u USERNAME -p PASSWORD
