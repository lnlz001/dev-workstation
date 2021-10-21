#!/bin/bash

set -e


if ! command -v cargo &>/dev/null; then
	if [ ! -f $HOME/.cargo/bin/cargo ]; then
		curl -fsSL https://sh.rustup.rs > /tmp/rustup-init.sh
		CARGO_HOME=$HOME/.cargo sh /tmp/rustup-init.sh -y
	fi
	source $HOME/.cargo/env
fi


