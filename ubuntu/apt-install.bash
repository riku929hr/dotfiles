#! /usr/bin/env bash
set -eux
sudo apt update
# libs
sudo apt install -y shellcheck
# tools
sudo apt install -y neovim zsh tmux git curl wget ripgrep fzf gnome-tweaks
# deps for asdf-php
sudo apt install -y locate
# deps for ruby
sudo apt install -y autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev
# deps for php
sudo apt install -y pkg-config build-essential autoconf bison re2c \
    libxml2-dev libsqlite3-dev
