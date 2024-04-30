#! /usr/bin/env bash
set -eux

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
. "$HOME/.asdf/asdf.sh"

# Install asdf plugins
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest

asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest

asdf plugin add php
asdf install php 8.3.6
asdf global php 8.3.6

asdf plugin add rust
asdf install rust latest
asdf global rust latest
