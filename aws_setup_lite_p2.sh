#!/bin/bash
conda config --add channels r
conda config --add channels conda-forge
conda config --add channels bioconda
conda install jupyter -y
conda install bwa -y
conda install htslib -y
conda install bowtie2 -y
conda install bedtools -y
conda install samtools -y
conda install bamtools -y
conda install sra-tools -y
conda install entrez-direct -y
conda install fastqc -y
conda install cutadapt -y
conda install trimmomatic -y
conda install emboss -y
conda install seqtk -y
conda install bbmap -y
conda install datamash -y
conda install perl-lwp-protocol-https -y
conda install bcftools -y
conda install freebayes -y
conda install gatk -y
conda install picard -y
conda install vt -y
conda install snpeff -y
conda install subread -y
conda install bioawk -y
conda install hisat2 -y

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
