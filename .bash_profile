#
# ~/.bash_profile
#

# User specific environment and startup programs
PATH=/data/code/kde/src/kdesrc-build:$HOME/bin:$PATH
export PATH=$PATH
export TERM="xterm-256color"

#PROXY=""
#export https_proxy=$PROXY
#export http_proxy=$PROXY
#export ftp_proxy=$PROXY

export EDITOR=vim

[[ -f ~/.bashrc ]] && . ~/.bashrc

