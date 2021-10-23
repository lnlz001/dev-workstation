#!/usr/bin/env bash

set -e

cfg_install_path=$HOME/.cfg
cfg_repo=git@github.com:NickCrew/dotfiles.git
cfg_repo_http=https://github.com/NickCrew/dotfiles.git

if [ CFG_REPO_HTTP = "true" ]; then
	cfg_repo=$cfg_repo_http
fi

git clone --bare $cfg_repo $cfg_install_path

function cfg {
	git --work-tree=$HOME --git-dir=$cfg_install_path "$@"
}

cfg checkout
cfg submodule init --update --recursive
cfg config --local status.showUntrackedFiles no
sh ~/.config/dots/bootstrap



