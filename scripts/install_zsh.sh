#!/bin/bash

# Install Starship
curl -sS https://starship.rs/install.sh | sh

# Install zsh
sudo apt install zsh -y

# Remove existing oh-my-zsh
rm -rf "$HOME/.oh-my-zsh"

# Run oh-my-zsh install script
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Set zsh to default shell
chsh -s "/bin/zsh" "$USER"

# Remove oh my zsh default config and replace with my own ../.zshrc
rm "$HOME/.zshrc"
ln -s "$(pwd)/../.zshrc" "$HOME/.zshrc"

# Run zsh
zsh
