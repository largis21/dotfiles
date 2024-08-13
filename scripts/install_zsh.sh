#!/bin/bash

cd "$(dirname "$0")"

sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s "/bin/zsh" "$USER"
rm "$HOME/.zshrc"
cp "../.zshrc" "$HOME/.zshrc"
zsh
