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

# ~/.config/herdr には socket・ログ・セッション状態も置かれるので、config.toml だけをリンクする
mkdir -p "$HOME"/.config/herdr
rm -rf "$HOME"/.config/herdr/config.toml
ln -s "$DOTFILES"/herdr/config.toml "$HOME"/.config/herdr/config.toml

mkdir -p "$HOME"/.config/zed
rm -rf "$HOME"/.config/zed/settings.json
ln -s "$DOTFILES"/zed/settings.json "$HOME"/.config/zed/settings.json
rm -rf "$HOME"/.config/zed/keymap.json
ln -s "$DOTFILES"/zed/keymap.json "$HOME"/.config/zed/keymap.json

# other locations
mkdir -p "$HOME"/.local/bin
rm -rf "$HOME"/.local/bin/t
rm -rf "$HOME"/.local/bin/hw
ln -s "$DOTFILES"/scripts/hw "$HOME"/.local/bin/hw

# npm
rm -rf "$HOME"/.default-npm-packages
ln -s "$DOTFILES"/npm/default-npm-packages "$HOME"/.default-npm-packages
