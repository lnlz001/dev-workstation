#!/usr/bin/env bash

set -e

tmux_deps=(libevent-devel ncurses-devel autoconf automake pkg-config python3-tmuxp)

utils=(zsh ripgrep vim alien)

for p in "${utils[@]}"; do sudo dnf install -y $p; done
for p in "${tmux_deps[@]}"; do sudo dnf install -y $p; done
