#! /usr/bin/env bash
set -eux
rm -rf /tmp/monaspace

cd /tmp
git clone https://github.com/githubnext/monaspace.git
. /tmp/monaspace/install_linux.sh
rm -rf /tmp/monaspace
