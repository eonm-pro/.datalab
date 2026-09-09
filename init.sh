#!/usr/bin/env bash
set -euo pipefail

# Install nix
# Enable flakes + the new nix CLI (required for `nix shell .#xml` etc.,
# disabled by default on a fresh install).
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" > ~/.config/nix/nix.conf

# Provides nix-shell
sudo apt update && sudo apt upgrade -y
sudo apt install curl -y
sh <(curl -L https://nixos.org/nix/install) --no-daemon --yes
. ~/.nix-profile/etc/profile.d/nix.sh

# Optional: only needed if you still use plain nix-shell files that
# reference <nixpkgs-unstable> (like the old shell.nix). The flake.nix
# pins its own nixpkgs/nixpkgs-stable inputs, so it doesn't depend on
# this channel at all — skip these two lines if you're flake-only.
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs-unstable
nix-channel --update

