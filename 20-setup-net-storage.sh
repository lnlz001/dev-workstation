#!/usr/bin/env bash

set -e

sudo dnf install -y autofs
sudo systemctl start --enable autofs
