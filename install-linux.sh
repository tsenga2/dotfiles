!/bin/sh
#sudo apt update
#sudo apt upgrade
#
#sudo apt install zsh
##sudo apt install git
##git clone https://github.com/tsenga2/dotfiles.git
#sudo apt install tmux
#sudo apt install vim
#sudo apt install xclip xsel
#sudo apt install curl
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#sudo apt install libopenblas-dev
#sudo apt install build-essential
#sudo apt install libsigsegv2
#sudo apt install m4
#sudo apt install automake
#sudo apt install libc6=2.35-0ubuntu3
#sudo apt install libtool
#sudo apt install libtool-bin
#sudo apt install autoconf-archive
#sudo apt install gfortran
#sudo apt install g++
#
#sudo apt install wget
#wget -O- https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB | gpg --dearmor | sudo tee /usr/share/keyrings/oneapi-archive-keyring.gpg > /dev/null
#echo "deb [signed-by=/usr/share/keyrings/oneapi-archive-keyring.gpg] https://apt.repos.intel.com/oneapi all main" | sudo tee /etc/apt/sources.list.d/oneAPI.list
#sudo apt update
#sudo apt install intel-basekit
#sudo apt install intel-hpckit
#source /opt/intel/oneapi/setvars.sh

#sudo apt build-dep hdf5
#mkdir temp/hdf5-for-gcc
#cd temp/hdf5-for-gcc
#wget https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.14/hdf5-1.14.1/src/hdf5-1.14.1-2.tar.gz
#tar -xvzf hdf5-1.14.1-2.tar.gz
#cd hdf5-1.14.1-2
#autoreconf -if
#./configure CC=gcc FC=gfortran --with-szlib --enable-fortran --enable-build-mode=production --prefix=$HOME/hdf5-gcc
#make install

#cd ~/temp/hdf5-web
#wget https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8/hdf5-1.8.10/src/hdf5-1.8.10.tar.gz
#tar -xf hdf5-1.8.10.tar.gz
#cd hdf5-1.8.10
#autoreconf -if
#./configure CC=ixc FC=ifort --with-szlib --enable-fortran --enable-build-mode=production --prefix=$HOME/hdf5-intel
#make install


git clone https://github.research.its.qmul.ac.uk/tew344/libsef-ts.git
cd libsef-ts
autoreconf -if
./configure CC=gcc FC=gfortran --prefix=$HOME/libsef-gcc
make install
libtool --finish /home/tsenga/libsef-gcc/lib

#git clone https://github.research.its.qmul.ac.uk/tew344/libsef-ts.git
#cd ~/libsef-ts
#autoreconf -if
#./configure CC=icc FC=ifort --prefix=$HOME/libsef-intel
#make install
#libtool --finish /home/tsenga/libsef-intel/lib

sudo apt install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
