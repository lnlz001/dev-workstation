#!/usr/bin/env bash

set -e

pkgs=(libevent-devel ncurses-devel autoconf automake pkg-config)

for p in "${pkgs[@]}"; do sudo dnf install -y $p; done

