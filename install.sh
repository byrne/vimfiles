#!/bin/bash

dir_base="`pwd`/`dirname $0`"

echo "install vim environment under $dir_base"

echo "ln -sf $dir_base/../vimfiles ~/.vim"
ln -sf $dir_base/../vimfiles ~/.vim

echo "ln -sf $dir_base/../vimfiles/vimrc.improve ~/.vimrc"
ln -sf $dir_base/../vimfiles/vimrc.improve ~/.vimrc
