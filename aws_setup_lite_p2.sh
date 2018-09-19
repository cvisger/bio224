#!/bin/bash
conda config --add channels R
conda config --add channels conda-forge
conda config --add channels bioconda


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
export PATH=~/bin:$PATH

# Makes the prompt much more user friendly.
# But I do agree that the command to set it up looks a bit crazy.
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '

# This is required for Entrez Direct to work.
# Disables strict checking of an encryption page.
export PERL_LWP_SSL_VERIFY_HOSTNAME=0" >> ~/.bashrc

echo "#
# Source the settings from .bashrc.
#
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
" >> ~/.bash_profile
