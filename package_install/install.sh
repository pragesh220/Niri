#!/bin/bash
# setup.sh - Arch Linux installer script for your software & AUR packages

set -e

echo "Updating system..."
sudo pacman -Syu --noconfirm

# --- Pacman packages ---
PACMAN_PACKAGES=(
  git
  wget
  curl
  neovim
  firefox
  btop
  fastfetch
  base-devel
  vlc
  wezterm
  qbittorrent 
)

echo "Installing pacman packages..."
sudo pacman -S --needed "${PACMAN_PACKAGES[@]}"





echo "All done! Restart your terminal."
