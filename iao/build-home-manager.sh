#!/bin/bash

BOLD=$(tput bold)
RESET=$(tput sgr0)

echo "${BOLD}Adding home-manager unstable Nix Channel${RESET}"
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

echo "${BOLD}Installing home-manager${RESET}"
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
nix-shell '<home-manager>' -A install
