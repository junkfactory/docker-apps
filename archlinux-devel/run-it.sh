#!/usr/bin/env bash

WORKDIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )/home"

docker run --name archlinux-devel -it --rm -v "${WORKDIR}:/home/junkfactory" --platform=linux/amd64 bosyotech/archlinux-devel
