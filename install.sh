#!/usr/bin/env bash

dotconfigsdir=$(dirname $(readlink -f $0))
pushd $dotconfigsdir

declare -a files=(
    ".bash_profile"
    ".bashrc"
    ".vimrc"
    ".vim/autoload/plug.vim"
    ".npmrc"
)

for file in "${files[@]}"; do
    if [ ! -f $file ]; then
        continue
    fi

    symlinktarget=$(readlink -e $file)
    symlinkfile="$HOME/$file"

    echo "Creating symlink: $symlinkfile -> $symlinktarget ..."

    if [ -L $symlinkfile ]; then
        if [ -e $symlinkfile ]; then
            echo "Symlink and target exists, skipping ..."
            continue
        else
            echo "Removing broken symlink ..."
            rm $symlinkfile
        fi
    elif [ -f $symlinkfile ]; then
        diff $symlinkfile $symlinktarget -u --color
        echo "Symlink exists as regular file, skipping ..."
        continue
    fi

    mkdir -p $(dirname $symlinkfile)
    ln -s $symlinktarget $symlinkfile
done

declare -a folders=(
    ".npm-global"
)

for folder in "${folders[@]}"; do
    mkdir -p $HOME/$folder
done

popd
