#!/bin/bash
# set -e

BASEDIR=$(dirname "$0")
echo 'Installing dotfiles from '$BASEDIR
# cd $1

# Recursive soft lin
function ln_s_r() {
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
ln_s_r $(PWD)/bash/ $HOME/
ln_s_r $(PWD)/zsh/ $HOME/
ln_s_r $(PWD)/doom/ $HOME/.config/doom/
ln_s_r $(PWD)/lldb/ $HOME/

# Tools
ln -s $(PWD)/tools/.dev.sh $HOME/.dev.sh
ln -s $(PWD)/tools/.cl.sh $HOME/.cl.sh

# ln_s_r $(PWD)/tools/ $HOME/.tools/

# Operating System files
if [[ "$OSTYPE" == "darwin"* ]]; then
   ln -s $(PWD)/os/.macos.sh $HOME/.macos.sh
   ln -s $(PWD)/tools/.xcode.sh $HOME/.xcode.sh
fi

# source $HOME/.vimrc
# source $HOME/.tmux/dev.tmux.conf
# source $HOME/.tmux.conf
source $HOME/.bash_profile
source $HOME/.zshrc

echo 'Done.'

exit 0
