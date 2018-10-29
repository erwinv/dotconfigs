# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$HOME/.npm-global/bin:$HOME/bin:$PATH
export PATH=$PATH
export TERM="xterm-256color"

PROXY="http://cnhon1c-proxy.apac.nsn-net.net:8080"
export https_proxy=$PROXY
export http_proxy=$PROXY
export ftp_proxy=$PROXY

export EDITOR=vim

if [[ echo `hostname` | egrep "mnling\d+.apac.nsn-net.net" ]]; then
    export WORK="/var/fpwork/`whoami`"
    source $HOME/.linsee.env
fi
