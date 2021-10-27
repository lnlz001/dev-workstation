#!/usr/bin/env bash

set -e

sudo dnf install dnf-plugins-core -y
sudo dnf copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
sudo dnf install nvautoinstall -y

sudo nvautoinstall --rpmadd
sudo nvautoinstall --driver
sudo nvautoinstall --nvrepo
sudo nvautoinstall --plcuda
sudo nvautoinstall --x86lib
sudo nvautoinstall --ffmpeg
sudo nvautoinstall --vulkan

