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

