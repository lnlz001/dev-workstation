#!/usr/bin/env bash

set -e

if [ -z "$1" ]; then
	filter="*.sh"
else
	filter="$1"
fi

dir=$(dirname $(readlink -f $0))

find $dir -type f -name "${filter}" | \
	sort -n | xargs sh
	
