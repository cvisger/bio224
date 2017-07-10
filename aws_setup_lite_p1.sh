#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
curl http://data.biostarhandbook.com/install/aptget.txt | xargs sudo apt-get -y install
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
echo '[[ -r ~/.bashrc ]] && . ~/.bashrc' >>~/.bash_profile
source ~/.bash_profile
export PATH=~/bin:$PATH:/home/ubuntu/miniconda3/bin
exec bash
sudo apt install linuxbrew-wrapper
brew tap homebrew/science
brew tap homebrew/versions
