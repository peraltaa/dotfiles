#!/bin/bash
# set -e

BASEDIR=$(dirname "$0")
echo 'Installing dotfiles from '$BASEDIR
# cd $1
function ln-sr() {
   # FIXME: should check if symlink exists if not print warning and then attempt to link
   find $1 -type f -exec ln -s {} $2 \;
}

ln -s $(PWD)/lem/.lemrc $HOME/.lemrc
ln -s $(PWD)/cl/.clrc.lisp $HOME/.clrc.lisp
ln -s $(PWD)/sbcl/.sbclrc $HOME/.sbclrc
ln -s $(PWD)/vim/.vimrc $HOME/.vimrc
ln -s $(PWD)/vim/plugins.vim $HOME/.vim/plugins.vim
ln -s $(PWD)/tmux/dev.tmux.conf $HOME/.tmux/
ln -s $(PWD)/tmux/.tmux.conf $HOME/
ln-sr $(PWD)/bash/ $HOME/
ln-sr $(PWD)/zsh/ $HOME/
ln-sr $(PWD)/doom/ $HOME/.doom.d
ln-sr $(PWD)/lldb/ $HOME/

# source $HOME/.vimrc
# source $HOME/.tmux/dev.tmux.conf
# source $HOME/.tmux.conf
source $HOME/.bash_profile
source $HOME/.zshrc

echo 'Done.'

exit 0
