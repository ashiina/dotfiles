#!/bin/sh

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Core settings
umask 002
#export TERM=dtterm
PS1='[\u@\h \W]$ '

# Android SDK path
PATH=$PATH:/Users/shiinaahmad/android-sdks/platform-tools/
export PATH

# misc useful vars
today=`date +'%Y%m%d'`

# MySQL Path Setting
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/Users/shiinaahmad/android_sdk/platform-tools

# git bash
if [ -f ~/.bash_git ]; then
	. ~/.bash_git
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\[\033[0m\]\u@\h\[\033[0m\]:\[\033[36m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\]]\n\$ '


