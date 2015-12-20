#!/usr/bin/env sh

function makedir() {
    mkdir -p $1
}

function copy() {
    cp -b -S '.bak' $1 $HOME/$2
}

copy .vimrc

makedir .vim/autoload/
copy .vim/autoload/plug.vim .vim/autoload
