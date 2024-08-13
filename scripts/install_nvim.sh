#!/bin/bash

FILENAME="nvim-linux64.tar.gz"

VER=$(curl -s -qI https://github.com/neovim/neovim/releases/latest | awk -F '/' '/^location/ {print  substr($NF, 1, length($NF)-1)}');
DOWNLOAD_URL="https://github.com/neovim/neovim/releases/download/$VER/$FILENAME"

echo "Downloading latest release of Neovim..."
wget $DOWNLOAD_URL -q --show-progress

if ! test -f nvim-linux64.tar.gz; then
  echo "Failed to download from: $DOWNLOAD_URL"
  exit 1
fi

# Extract the tarball
echo "Extracting Neovim..."
tar -xzf nvim-linux64.tar.gz

# Move Neovim to /usr/local (assuming a system-wide installation)
echo "Installing Neovim..."
sudo mv nvim-linux64/bin/nvim /usr/local/nvim

# Clean up
rm nvim-linux64.tar.gz
rm -r nvim-linux64

# Verify installation
echo "Neovim installed successfully. Version:"
nvim --version
