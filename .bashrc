[[ $- != *i* ]] && return
#[ -f /etc/bash.bashrc ] && source /etc/bash.bashrc
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" && -z ${BASH_EXECUTION_STRING} ]]; then
    exec fish
fi
