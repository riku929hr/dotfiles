#!/usr/bin/env bash

DOTFILES=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

mkdir -p "$HOME"/.config

# homebrew
rm -rf "$HOME"/Brewfile
ln -s "$DOTFILES"/homebrew/Brewfile "$HOME"/Brewfile

# zsh
rm -rf "$HOME"/.zshrc
ln -s "$DOTFILES"/zsh/zshrc "$HOME"/.zshrc

# prezto
rm -rf "$HOME"/.zpreztorc
ln -s "$DOTFILES"/zsh/zpreztorc "$HOME"/.zpreztorc

# kitty
rm -rf "$HOME"/.config/kitty
ln -s "$DOTFILES"/kitty "$HOME"/.config/kitty

# wezterm
rm -rf "$HOME"/.config/wezterm
ln -s "$DOTFILES"/wezterm "$HOME"/.config/wezterm

# mise
rm -rf "$HOME"/.config/mise/config.toml
ln -s "$DOTFILES"/mise/config.toml "$HOME"/.config/mise/config.toml

# tmux
rm -rf "$HOME"/.tmux.conf
ln -s "$DOTFILES"/tmux/tmux.conf "$HOME"/.tmux.conf

# lazygit
rm -rf "$HOME"/.config/lazygit
ln -s "$DOTFILES"/lazygit "$HOME"/.config/lazygit

# git
mkdir -p "$HOME"/.config/git
rm -rf "$HOME"/.config/git
ln -s "$DOTFILES"/git "$HOME"/.config/git

# commands
mkdir -p "$HOME"/.local/bin
rm -rf "$HOME"/.local/bin/t
ln -s "$DOTFILES"/scripts/t "$HOME"/.local/bin/t

# neovim
rm -rf "$HOME"/.config/nvim
ln -s "$DOTFILES"/nvim "$HOME"/.config/nvim

# npm
rm -rf "$HOME"/.default-npm-packages
ln -s "$DOTFILES"/npm/default-npm-packages "$HOME"/.default-npm-packages
