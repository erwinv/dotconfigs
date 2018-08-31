#!/usr/bin/env bash

declare -a files=(
    ".bash_profile"
    ".bashrc"
    ".vimrc"
    ".vim/autoload/plug.vim"
)

for file in "${files[@]}"; do
    if [ ! -f $file ]; then
        continue
    fi

    symlinktarget=$(readlink -e $file)
    symlinkfile="$HOME/$file"

    echo "Installing (symlinking) $symlinkfile -> $symlinktarget ..."

    if [ -L $symlinkfile ]; then
        if [ -e $symlinkfile ]; then
            echo "Target symlink $symlinkfile exists, skipping ..."
            continue
        else
            echo "Removing broken symlink $symlinkfile ..."
            rm $symlinkfile
        fi
    elif [ -f $symlinkfile ]; then
        echo "Target $symlinkfile exists as regular file, skipping ..."
        continue
    fi

    mkdir -p $(dirname $symlinkfile)
    ln -s $symlinktarget $symlinkfile
done
