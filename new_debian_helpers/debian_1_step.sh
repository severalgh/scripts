#!/bin/bash

#
# Should be run as local user
#

if [ "$(id -u)" == "0" ]; then
    echo "This script must not be run as root"
    exit 1
fi

cd ~/
mkdir -p repo/github
cd repo/github

sudo apt-get install git git-core htop clang gdb build-essential cmake nmap cloc linux-tools tmux &&

git clone https://github.com/severalgh/scripts.git &&

git clone https://github.com/severalgh/dotfiles.git &&

sudo ./scripts/new_debian_helpers/guest_additions.sh
./scripts/vim/vim_from_src.sh

cd ~/
cp repo/github/dotfiles/vim/.vimrc ./
cp repo/github/dotfiles/tmux/.tmux.conf ./

./repo/github/scripts/vim/vundle_checkout.sh
cp repo/github/dotfiles/vim/.ycm_extra_conf.py ~/.vim/

mkdir ~/.vim/colors
cp repo/github/dotfiles/vim/solarized.vim ~/.vim/colors






