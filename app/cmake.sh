#!/usr/bin/bash

# ref -> https://askubuntu.com/a/865294

version=3.18
build=4

######################################################################################################
# installing cmake
######################################################################################################
echo -e "\n1. Going install download cmake."
sudo apt remove --purge --auto-remove cmake
sudo apt purge --auto-remove cmake

cd /tmp
wget https://cmake.org/files/v$version/cmake-$version.$build.tar.gz
tar -xzvf cmake-$version.$build.tar.gz
cd cmake-$version.$build/

echo -e "\n2. Going compile and install cmake."
./bootstrap
make -j$(nproc)
sudo make install

######################################################################################################
# let's print out version
######################################################################################################
echo -e "\n !!! Done. cmake version -> `cmake --version`."
