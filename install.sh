#!/bin/bash
# Do this before everything else
#su -
#usermod -aG sudo cburn
#exit

sudo apt -y install aptitude
./aptitude-install.sh

chsh -s /bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo pypi-install py3status
if [ -f ~/.config/i3/config ]; then
	echo "removing i3 config"
	rm ~/.config/i3/config
fi
ln -s `pwd`/dotfiles/i3/config ~/.config/i3/config

if [ -f ~/.zshrc ]; then
	echo "removing ~/.zshrc"
	rm ~/.zshrc
fi
ln -s `pwd`/dotfiles/.zshrc ~/.zshrc

cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

./neovim-install.sh
