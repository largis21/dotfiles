#!/bin/bash

cd "$(dirname "$0")"

curl -sS https://starship.rs/install.sh | sh

sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s "/bin/zsh" "$USER"

if [ -f "$HOME/.zshrc" ]; then
  rm "$HOME/.zshrc"
fi

ln -s "../.zshrc" "$HOME/.zshrc"
zsh
