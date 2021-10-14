#!/bin/bash

BOLD=$(tput bold)
RESET=$(tput sgr0)

echo "${BOLD}Switching nixos channel to nixos-unstable${RESET}"
nix-channel --add https://nixos.org/channels/nixos-unstable nixos

echo "${BOLD}Switching nixpkgs channel to nixpkgs-unstable${RESET}"
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs

echo "${BOLD}Updating Channels${RESET}"
nix-channel --update

#echo "${BOLD}Building and Switching to new NixOS Generation${RESET}"
#nixos-rebuild switch
