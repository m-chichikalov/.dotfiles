#!/usr/bin/bash

# Script to install Sublime-Text 3 editor.
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo -H add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo -H apt-get update
sudo -H apt-get install code

######################################################################################################
# install extensions
######################################################################################################
code -r --force --install-extension ms-python.python

code -r --force --install-extension ms-vscode.cpptools
code -r --force --install-extension ms-vscode.cpptools-themes

code -r --force --install-extension twxs.cmake
code -r --force --install-extension ms-vscode.cmake-tools

code -r --force --install-extension vector-of-bool.cmake-tools
code -r --force --install-extension VisualStudioExptTeam.vscodeintellicode
code -r --force --install-extension yyxhx.cpp-quick-start-snippet-for-beginners
code -r --force --install-extension eamodio.gitlens
code -r --force --install-extension zxh404.vscode-proto3
code -r --force --install-extension alefragnani.bookmarks
code -r --force --install-extension efbenson.scad
code -r --force --install-extension plorefice.devicetree
code -r --force --install-extension slevesque.vscode-hexdump
code -r --force --install-extension ZixuanWang.linkerscript


######################################################################################################
# remove user specific settings and create simlinks.
######################################################################################################
rm -Rf ~/.config/Code/User/snippets
rm -f ~/.config/Code/User/keybindings.json
rm -f ~/.config/Code/User/settings.json

ln -nfs ~github/m-chichikalov/dotfiles/vs-code-files/snippets/ ~/.config/Code/User/snippets
ln -nfs ~/github/m-chichikalov/dotfiles/vs-code-files/keybindings.json ~/.config/Code/User/keybindings.json
ln -nfs ~/github/m-chichikalov/dotfiles/vs-code-files/settings.json ~/.config/Code/User/settings.json