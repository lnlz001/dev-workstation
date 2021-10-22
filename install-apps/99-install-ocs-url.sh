#!/usr/bin/env bash

set -e

sudo dnf install -y \
	qt5-qtbase \
	qt5-qtbase-gui \
	qt5-qtsvg \
	qt5-qtdeclarative \
	qt5-qtquickcontrols

sudo rpm -i ocs-url-3.1.0-1.fc20.x86_64.rpm

