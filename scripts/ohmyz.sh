#!usr/bin/bash

# update packages
sudo apt-get update
sudo apt-get upgrade

# install zsh and set it to default
sudo apt-get install zsh -y
chsh -s /usr/bin/zsh
zsh

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

