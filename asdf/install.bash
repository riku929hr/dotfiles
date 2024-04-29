#! /usr/bin/env bash

# nodejs
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest

# php
asdf plugin add php
# complier options for clang 15+
CFLAGS="-Wno-error=incompatible-function-pointer-types" LDFLAGS="-lresolv" asdf install php 7.4.33
CFLAGS="-Wno-error=incompatible-function-pointer-types" LDFLAGS="-lresolv" asdf install php 8.3.6
asdf global php 8.3.6

# ruby
asdf plugin add ruby
asdf install ruby 3.3.0
asdf global ruby 3.3.0
