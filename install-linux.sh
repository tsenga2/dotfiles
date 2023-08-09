#!/bin/sh
sudo apt update
sudo apt upgrade

wget -O- https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB | gpg --dearmor | sudo tee /usr/share/keyrings/oneapi-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/oneapi-archive-keyring.gpg] https://apt.repos.intel.com/oneapi all main" | sudo tee /etc/apt/sources.list.d/oneAPI.list

sudo apt install intel-basekit
sudo apt install intel-hpckit

sudo apt install git
sudo apt install vim
sudo apt install build-essential
sudo apt install gfortran

sudo apt install automake
sudo apt install autoconf

tar xvzf hdf5-1.14.1-2.tar.gz
cd hdf5
autoreconf -if
./configure CC=icc FC=ifort --with-szlib --enable-fortran --enable-build-mode=production --prefix=$HOME/hdf5
make -j
make install

git clone https://github.research.its.qmul.ac.uk/tew344/libsef-ts.git
cd libsef-ts
autoreconf -if
./configure CC=icc FC=ifort --prefix=$HOME/install

sudo apt install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
