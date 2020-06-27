#!/usr/bin/bash

######################################################################################################
# installing conan
######################################################################################################
echo -e "\n1. Going install conan."
command -v pip3 >/dev/null 2>&1 || { echo >&2 "pip3 required.  Aborting."; exit 1; }
pip3 install conan


######################################################################################################
# as conan instaled scripts into ~/.local/bin let's add it
######################################################################################################
if ! [ -x "$(command -v conan)" ]; then
    echo 'Seems that conan not in PATH.' >&2
    echo -e "\n2. adding ~/.local/bin to PATH."
    echo  -e "\nexport PATH=$PATH:$HOME/.local/bin" >> $HOME/.bashrc
    source $HOME/.bashrc
fi

echo -e "\n !!! Done. use `conan -h` to see help !!!."
