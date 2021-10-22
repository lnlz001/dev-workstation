#!/usr/bin/env bash

set -e

if [ ! -d ~/.local/src/tmux ]; then
	git clone https://github.com/tmux/tmux ~/.local/src/tmux
else
	cd ~/.local/src/tmux
	git pull
fi

sh autogen.sh
./configure --prefix=$HOME/.local
make
make install
