#!/usr/bin/env bash

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

# zsh
rm -rf $HOME/.zshrc
ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc

# prezto
rm -rf $HOME/.zpreztorc
ln -s $DOTFILES/zsh/zpreztorc $HOME/.zpreztorc

# kitty
rm -rf $HOME/.config/kitty
ln -s $DOTFILES/kitty $HOME/.config/kitty

# tmux
rm -rf $HOME/.tmux.conf
ln -s $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf

# lazygit
rm -rf $HOME/.config/lazygit
ln -s $DOTFILES/lazygit $HOME/.config/lazygit

# git
mkdir -p $HOME/.config/git
rm -rf $HOME/.config/git
ln -s $DOTFILES/git $HOME/.config/git

# commands
mkdir -p $HOME/.local/bin
rm -rf $HOME/.local/bin/t
ln -s $DOTFILES/scripts/t $HOME/.local/bin/t
