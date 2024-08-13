#!/bin/bash

DOWNLOAD_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip"

echo "Downloading latest release of JetBrainsMono..."
wget $DOWNLOAD_URL -q --show-progress

if ! test -f JetBrainsMono.zip; then
  echo "Failed to download from: $DOWNLOAD_URL"
  exit 1
fi

# Extract the directory
echo "Extracting font..."
unzip JetBrainsMono.zip -d font -q

# Move Neovim to /usr/local (assuming a system-wide installation)
echo "Installing font..."
# mv font/*.ttf  ̃/.local/.share/fonts
mv font/*.ttf "$HOME/.local/share/fonts"

# Clean up
rm -rf fonts
rm JetBrainsMono.zip

# Source the new font
fc-cache "$HOME/.local/share/fonts"

# Verify installation
echo "JetBrainsMono installed successfully."
