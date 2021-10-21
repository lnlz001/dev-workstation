#!/usr/bin/env bash

set -e

rust_pkgs=(zoxide exa mcfly broot)

for p in "${rust_pkgs[@]}"; do
	if [[ ! -f $HOME/.cargo/bin/${p} ]]; then
		cargo install $p
	fi
done
