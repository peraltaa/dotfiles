#!/bin/bash
# set -e

BASEDIR=$(dirname "$0")
echo 'Installing dotfiles from '$BASEDIR
# cd $1

cp vim/.vimrc $HOME/.vimrc
cp ./vim/plugins.vim $HOME/.vim/plugins.vim
cp tmux/dev.tmux.conf $HOME/.tmux/
cp tmux/.tmux.conf $HOME/
cp -r bash/ $HOME/
cp -r zsh/ $HOME/

# source $HOME/.vimrc
source $HOME/.tmux/dev.tmux.conf
source $HOME/.tmux.conf
source $HOME/.bash_profile
source $HOME/.zshrc

echo 'Done.'

exit 0
