#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# User specific environment and startup programs

PATH=node_modules/.bin:$HOME/.npm-global/bin:$HOME/bin:$PATH
export PATH=$PATH
export TERM="xterm-256color"

PROXY=""
export https_proxy=$PROXY
export http_proxy=$PROXY
export ftp_proxy=$PROXY

export EDITOR=vim
