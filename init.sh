#!/bin/bash
### Git
echo "Installing Git"
sudo apt install git -y
read -p "Enter your Git username: " username # Ask for Git Username
git config --global user.name "$username"

### Clone repo and store in home/user/Linux-Mint-Quicksetup
git clone https://github.com/olipet284/Linux-Mint-Quicksetup.git ~/Linux-Mint-Quicksetup

chmod +x ~/Linux-Mint-Quicksetup/setup.sh
bash ~/Linux-Mint-Quicksetup/setup.sh
chmod +x ~/Linux-Mint-Quicksetup/zsh_setup.sh
bash ~/Linux-Mint-Quicksetup/zsh_setup.sh