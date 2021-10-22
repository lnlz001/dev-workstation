#!/usr/bin/env bash

set -e

if [ ! -d $bin_dest ]; then
	mkdir -p $bin_dest
fi

if [ ! -d $man_dest ]; then
	mkdir -p $man_dest
fi

sudo dnf install -y asciidoc
mkdir -p ~/src

# Install executable
if [ -d ~/.local/src/PathPicker ]; then
	cd ~/.local/src/PathPicker
	git pull
	ln -s ~/.local/src/PathPicker/fpp ~/.local/bin/fpp
else
	git clone https://github.com/facebook/PathPicker.git ~/src/PathPicker
fi

# Install manpage
cd ~/.local/src/PathPicker

(cd src && python3 -m pathpicker.usage_strings > manpage.adoc)
a2x --format manpage "src/manpage.adoc" --destination-dir $man_dest
