#!/usr/bin/env bash

set -e


pkgs=(zsh ripgrep vim alien tldr socat ranger w3m lynx elinks lm_sensors autofs sysstat python3-tmuxp)


# install
for p in "${pkgs[@]}"; do sudo dnf install -y $p; done

# configure
tldr --update

sudo systemctl start autofs
sudo systemctl enable autofs
