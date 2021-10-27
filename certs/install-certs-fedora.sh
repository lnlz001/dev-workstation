#!/usr/bin/env bash

set -e

DIR=$(dirname $(readlink $0))

if [ -z "$1" ]; then
	ca_path=$DIR/dev-ca.crt
else
	ca_path="$1"
fi


if [ ! -f $ca_path ]; then
	echo "CA not found: ${ca_path}"
	exit 1
fi

# install mozilla certs
sudo dnf install -y ca-certificates

sudo cp $ca_path /usr/share/pki/ca-trust-source/anchors/
sudo update-ca-trust
