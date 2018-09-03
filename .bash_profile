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

case `hostname` in
"mnling62.apac.nsn-net.net")
    exec seesetenv vim=7.4 tmux=2.1 git=2.6.2 subversion=1.9.2
;;
"mnling63.apac.nsn-net.net")
    source /opt/rhapsody/linux/ix86/rhapsody_7.5.2.1/interface/startup/rhapsody_7.5.2.1.env
    exec seesetenv vim=7.4 tmux=2.1 git=2.6.2 subversion=1.9.2 gnuplot=4.2.3 python=3.4.1 ag=0.23.0 cmake=3.7.1
;;
"mnling505.apac.nsn-net.net")
    exec seesetenv vim=7.4 tmux=2.1 git=2.6.2 subversion=1.9.2 gnuplot=4.2.3 python=2.7.4 ag=0.23.0 gdb=7.9 cmake=3.7.1 ccache=3.3.3 clang=2.8
;;
"mnling74.apac.nsn-net.net")
    exec seesetenv git=2.10.2 subversion=1.9.2 python=2.7.4 cmake=3.6.0 distcc=3.1 ninja=1.5.1
;;
"mnling85.apac.nsn-net.net")
    exec seesetenv git=2.10.2 subversion=1.9.2 python=2.7.4 cmake=3.6.0 distcc=3.1 ninja=1.5.1
;;
"mnling87.apac.nsn-net.net")
    exec seesetenv vim=7.4 tmux=2.1 git=2.6.2 subversion=1.9.2 python=2.7.4 cmake=3.7.1 distcc=3.3 ag=0.23.0
;;
"mnling94.apac.nsn-net.net")
    exec seesetenv git=2.10.2 cmake=3.7.1 subversion=1.9.2 node_js=6.9.1
;;
esac
