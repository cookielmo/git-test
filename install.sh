#!/bin/sh
cd `dirname $0`

DIR=`pwd`
echo ${DIR}
rm ~/.zshrc
rm ~/.vimrc
rm ~/.gitignore
rm ~/.gitconfig

ln -s ${DIR}/dot.zshrc ~/.zshrc
ln -s ${DIR}/dot.vimrc ~/.vimrc
ln -s ${DIR}/dot.gitignore ~/.gitignore
ln -s ${DIR}/dot.gitconfig ~/.gitconfig

cd -
