#!/bin/bash

sudo apt-get install fonts-powerline
omz theme set agnoster

# add more plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install python3.11 python3.11-distutils -y
pipx install --python python3.11 https://github.com/nvbn/thefuck/archive/refs/tags/3.32.zip
# enable plugins
omz plugin enable zsh-autosuggestions
omz plugin enable zsh-syntax-highlighting
omz plugin enable dirhistory
omz plugin enable web-search
omz plugin enable copydir
omz plugin enable copyfile
omz plugin enable extract
omz plugin enable sudo
omz plugin enable thefuck

echo "zsh" >> ~/.bashrc
echo "clear" >> ~/.zshrc
sudo apt install neofetch
echo "neofetch" >> ~/.zshrc
echo "source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc