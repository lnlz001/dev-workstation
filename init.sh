#!/usr/bin/env bash

set -e

mkdir -p ~/.cache/vim/undo
mkdir -p ~/.cache/vim/swap
mkdir -p ~/.cache/vim/backup
mkdir -p ~/.cache/zsh

if [[ -z `grep ZDOTDIR /etc/zshenv` ]]; then
	echo 'export ZDOTDIR="$HOME/.zsh"' | sudo tee -a /etc/zshenv
fi


