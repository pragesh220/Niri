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
)

echo "Installing pacman packages..."
sudo pacman -S --needed "${PACMAN_PACKAGES[@]}"

# --- AUR packages ---
AUR_PACKAGES=(
  visual-studio-code-bin
  spotify
)

# Check for paru
if ! command -v paru &>/dev/null; then
  echo "paru not found. Installing paru..."
  sudo pacman -S --needed git base-devel --noconfirm
  git clone https://aur.archlinux.org/paru.git /tmp/paru
  cd /tmp/paru
  makepkg -si --noconfirm
  cd -
  rm -rf /tmp/paru
fi

echo "Installing AUR packages..."
paru -S --needed --noconfirm "${AUR_PACKAGES[@]}"

echo "All done! Restart your terminal."
