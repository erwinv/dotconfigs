# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$HOME/.npm-global/bin:$HOME/bin:$PATH
export PATH=$PATH
export WORK="/var/fpwork/`whoami`"
export TERM="xterm-256color"

PROXY="http://cnhon1c-proxy.apac.nsn-net.net:8080"
export https_proxy=$PROXY
export http_proxy=$PROXY
export ftp_proxy=$PROXY

export EDITOR=vim

source $HOME/.linsee.env
