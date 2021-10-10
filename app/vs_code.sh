#!/usr/bin/bash

# Script to install Sublime-Text 3 editor.
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo -H add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo -H apt-get update
sudo -H apt-get install code

######################################################################################################
# install extensions
######################################################################################################


# https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks
code -r --force --install-extension alefragnani.bookmarks

code -r --force --install-extension ms-vscode.cpptools-extension-pack

# https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
# code -r --force --install-extension ms-vscode.cpptools
# code -r --force --install-extension ms-vscode.cpptools-themes

# https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh
# code -r --force --install-extension ms-vscode-remote.remote-ssh
# code -r --force --install-extension ms-vscode-remote.remote-ssh-edit

# https://marketplace.visualstudio.com/items?itemName=jeff-hykin.better-cpp-syntax
# code -r --force --install-extension jeff-hykin.better-cpp-syntax

# https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools
# code -r --force --install-extension ms-vscode.cmake-tools

# https://marketplace.visualstudio.com/items?itemName=cschlosser.doxdocgen
# code -r --force --install-extension cschlosser.doxdocgen

# https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker
code -r --force --install-extension streetsidesoftware.code-spell-checker

# https://marketplace.visualstudio.com/items?itemName=matepek.vscode-catch2-test-adapter
code -r --force --install-extension matepek.vscode-catch2-test-adapter

# https://marketplace.visualstudio.com/items?itemName=matepek.vscode-catch2-test-adapter
code -r --force --install-extension piotrkosek.vscode-gtest-test-adapter-with-code-lens


code -r --force --install-extension twxs.cmake
code -r --force --install-extension agauniyal.cpp-snippets
code -r --force --install-extension gaborv.flatbuffers  
code -r --force --install-extension slevesque.vscode-hexdump
code -r --force --install-extension VisualStudioExptTeam.vscodeintellicode


######################################################################################################
# remove user specific settings and create simlinks.
######################################################################################################
rm -Rf ~/.config/Code/User/snippets
rm -f ~/.config/Code/User/keybindings.json
rm -f ~/.config/Code/User/settings.json

ln -nfs ~/github/m-chichikalov/dotfiles/vs-code-files/snippets/ ~/.config/Code/User/snippets
ln -nfs ~/github/m-chichikalov/dotfiles/vs-code-files/keybindings.json ~/.config/Code/User/keybindings.json
ln -nfs ~/github/m-chichikalov/dotfiles/vs-code-files/settings.json ~/.config/Code/User/settings.json
