#!/usr/bin/env bash

set -e

sudo dnf install -y \
	libevent-devel ncurses-devel autoconf automake pkg-config \
	python3-tmuxp ripgrep zsh vim 
