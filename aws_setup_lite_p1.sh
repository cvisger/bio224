#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
curl http://data.biostarhandbook.com/install/aptget.txt | xargs sudo apt-get -y install
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
echo '[[ -r ~/.bashrc ]] && . ~/.bashrc' >>~/.bash_profile
source ~/.bash_profile
export PATH=~/bin:$PATH:/home/ubuntu/miniconda3/bin
exec bash
conda config --add channels r
conda config --add channels conda-forge
conda config --add channels bioconda
conda install ruby -y
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
sudo apt install linuxbrew-wrapper
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
test -r ~/.bash_profile && echo 'export PATH="$(brew --prefix)/bin:$PATH"' >>~/.bash_profile
brew tap homebrew/science
echo "
#
# A minimal BASH profile.
#

# ON Mac OS uncomment the line below.
# alias ls='ls -hG'

# On Linux use the following:
alias ls='ls -h --color'

# Safe versions of the default commands.
# Will ask permissions before overwriting files.
#alias rm='rm -i'
#alias mv='mv -i'
#alias cp='cp -i'

# Extend the program search PATH and add the ~/bin folder.
export PATH=~/bin:$PATH:/home/ubuntu/miniconda3/bin

# Makes the prompt much more user friendly.
# But I do agree that the command to set it up looks a bit crazy.
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '

# This is required for Entrez Direct to work.
# Disables strict checking of an encryption page.
export PERL_LWP_SSL_VERIFY_HOSTNAME=0" >> ~/.bashrc
