#!/bin/bash
# set -e

BASEDIR=$(dirname "$0")
echo 'Installing dotfiles from '$BASEDIR
# cd $1

cp vim/.vimrc $HOME/.vimrc
cp ./vim/plugins.vim $HOME/.vim/plugins.vim
cp -r tmux/ $HOME/.tmux/
cp -r bash/ $HOME/

# source $HOME/.vimrc
source $HOME/.tmux/dev.tmux.conf
source $HOME/.tmux/.tmux.conf
source $HOME/.bash_profile

echo 'Done.'

exit 0
