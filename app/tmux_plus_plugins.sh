#!/usr/bin/bash

######################################################################################################
# installing tmux
######################################################################################################
echo -e "\n1. Going install tmux."
sudo -H apt-get install tmux


######################################################################################################
# installing tmux pluging manager
######################################################################################################
echo -e "\n2. Clone tmux plugin mabager."
git clone https://github.com/tmux-plugins/tpm ~/.config/.tmux/plugins/tpm


######################################################################################################
# remove .tmux.conf if exist and create simlink to one from.
######################################################################################################
echo -e "\n3. Copy .tmux.conf"
rm -f ~/.tmux.conf
ln -nfs ~/github/m-chichikalov/dotfiles/.tmux.conf ~/.tmux.conf

echo -e "\n!!! Next, launch tmux and hit \`I \(capital i\) to fetch any plugins."
