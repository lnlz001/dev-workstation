#!/usr/bin/env bash

set -e

## Install Go
wget https://golang.org/dl/go1.16.linux-amd64.tar.gz -O /tmp/go1.16.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /tmp/go1.16.linux-amd64.tar.gz

if ! grep -qF "export PATH=\$PATH:/usr/local/go/bin" /etc/profile; then
  sudo sh -c 'echo "export PATH=\$PATH:/usr/local/go/bin" >> /etc/profile'
fi


