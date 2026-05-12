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

# config directory symlinks
rm -rf "$HOME"/.config/kitty
ln -s "$DOTFILES"/kitty "$HOME"/.config/kitty

rm -rf "$HOME"/.config/wezterm
ln -s "$DOTFILES"/wezterm "$HOME"/.config/wezterm

rm -rf "$HOME"/.config/ghostty
ln -s "$DOTFILES"/ghostty "$HOME"/.config/ghostty

rm -rf "$HOME"/.config/lazygit
ln -s "$DOTFILES"/lazygit "$HOME"/.config/lazygit

rm -rf "$HOME"/.config/nvim
ln -s "$DOTFILES"/nvim "$HOME"/.config/nvim

rm -rf "$HOME"/.config/deck
ln -s "$DOTFILES"/deck "$HOME"/.config/deck

# other locations
rm -rf "$HOME"/.tmux.conf
ln -s "$DOTFILES"/tmux/tmux.conf "$HOME"/.tmux.conf

mkdir -p "$HOME"/.local/bin
rm -rf "$HOME"/.local/bin/t
ln -s "$DOTFILES"/scripts/t "$HOME"/.local/bin/t

# npm
rm -rf "$HOME"/.default-npm-packages
ln -s "$DOTFILES"/npm/default-npm-packages "$HOME"/.default-npm-packages
