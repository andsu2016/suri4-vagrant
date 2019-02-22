#!/usr/bin/env bash
sudo apt-get install -y libpcre3 libpcre3-dbg libpcre3-dev build-essential libpcap-dev   \
                libnet1-dev libyaml-0-2 libyaml-dev pkg-config zlib1g zlib1g-dev \
                libcap-ng-dev libcap-ng0 make libmagic-dev libjansson-dev        \
                libnss3-dev libgeoip-dev liblua5.1-dev libhiredis-dev libevent-dev \
                python-yaml rustc cargo
# install depent packet
sudo apt-get install -y libyaml-dev libcap-dev libpcap-dev libhtp-dev zlib1g-dev
# install pcre
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.38.tar.gz
tar -xf pcre-8.38.tar.gz
cd pcre-8.38
sudo ./configure
sudo make
sudo make install
cd ~/
# install suricata
wget https://www.openinfosecfoundation.org/download/suricata-4.1.2.tar.gz
tar xzvf suricata-4.1.2.tar.gz
cd suricata-4.1.2
sudo ./configure --sysconfdir=/etc --enable-lua --prefix=/usr/ --localstatedir=/var --enable-geopip
sudo make
sudo make install
sudo make install-full
