# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User-defined aliases and functions
alias ll='ls -oh --group-directories-first --color=auto'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
