#!/usr/bin/env bash

set -e

themes=(gruvbox-dark tokyo-night-storm night-owl nord)

src_dir=$HOME/.local/src
themes_dir=$src_dir/gogh/themes

git clone \
	https://github.com/Mayccoll/Gogh.git \
	$src_dir/gogh

for t in "${themes[@]}"; do
	TERMINAL=gnome-terminal sh "${themes_dir}/${t}.sh"
done

