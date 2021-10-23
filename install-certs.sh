#!/usr/bin/env bash

set -e


if [ -z "$1" ]; then
	echo "USAGE: 03-install-certs.sh <path-to-CA>"
	exit 1
fi

ca_path="$1"

if [ ! -f $ca_path ]; then
	echo "CA not found: ${ca_path}"
	exit 1
fi

# install mozilla certs
sudo dnf install -y ca-certificates

sudo cp $ca_path /usr/share/pki/ca-trust-source/anchors/
sudo update-ca-trust
