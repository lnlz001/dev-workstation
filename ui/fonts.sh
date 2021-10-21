#!/usr/bin/env bash

set -e

font_dir=$HOME/.local/share/fonts
base_url="https://github.com/ryanoasis/nerd-fonts/releases/latest/download"

full_font_list=(AnonymousPro CascadiaCode FantasqueSansMono FiraCode FiraMono Meslo Mononoki SourceCodePro SpaceMono Ubuntu UbuntuMono VictorMono)

core_font_list=(FiraCode FiraMono)

font_list=$full_font_list
if [ "$1" == "core" ]; then
	font_list=$core_font_list
fi

if [ ! -z "$NF_DIR" ]; then
	font_dir="$NF_DIR"
fi

if [ ! -d $font_dir ]; then
	mkdir -pv $font_dir
fi

if ! command -v wget >/dev/null; then
	sudo apt-get update && \
		sudo apt-get install -y wget
fi

if ! command -v unzip >/dev/null; then
	sudo apt-get update && \
		sudo apt-get install -y unzip
fi

if [[ "$#" -gt "0" ]]; then
	echo "Using user-provided font list"
	for f in "$@"; do
		wget "${base_url}/${f}.zip" -O /tmp/${f}.zip
		unzip -uo /tmp/${f}.zip -d $font_dir
		rm -v /tmp/${f}.zip
	done
else
	for f in "${font_list[@]}"; do
		wget "${base_url}/${f}.zip" -O /tmp/${f}.zip
		unzip -uo /tmp/${f}.zip -d $font_dir
		rm -v /tmp/${f}.zip
	done
fi

