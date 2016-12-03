#!/bin/bash

cd ~/
mkdir repo
mkdir repo/github
cd repo/github

apt-get install git &&

git clone https://github.com/severalgh/scripts.git

git clone https://github.com/severalgh/dotfiles.git

./scripts/vim_from_src.sh

cd ~/
cp repo/github/dotfiles/vim/.vimrc ./

./repo/github/scripts/vundle_checkout.sh
cp repo/github/dotfiles/vim/.ycm_extra_conf.py ~/.vim/




