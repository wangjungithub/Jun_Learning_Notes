#!/bin/bash

# colors
RED="\033[0;31m"
YELLOW="\033[1;33m"
GREEN="\033[0;32m"
NO_COLOR="\033[0m"
BOLD="\033[1m"
UNDERLINE="\033[4m"

die() {
	echo -e "${RED}${@}${NO_COLOR}"
	exit 1
}

warn() {
	echo -e "${YELLOW}${@}${NO_COLOR}"
}

good() {
	echo -e "${GREEN}${@}${NO_COLOR}"
}


good "You are doing a right thing"
warn "It is actually risky"
die "It is totally wrong"
