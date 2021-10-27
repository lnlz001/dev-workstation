#!/usr/bin/env bash

set -e

pkgs=(chardet ansible pygments pyfunky)

for p in "${pkgs[@]}"; do
	pip install $p
done
