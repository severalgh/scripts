#!/bin/bash

#
# Should be run as local user
#

if [ "$(id -u)" == "0" ]; then
    echo "This script must not be run as root"
    exit 1
fi

cd ~/
mkdir repo
mkdir repo/github
cd repo/github

sudo apt-get install git htop clang

git clone https://github.com/severalgh/scripts.git

git clone https://github.com/severalgh/dotfiles.git

./scripts/vim_from_src.sh

cd ~/
cp repo/github/dotfiles/vim/.vimrc ./

./repo/github/scripts/vundle_checkout.sh
cp repo/github/dotfiles/vim/.ycm_extra_conf.py ~/.vim/





