#!/bin/zsh

PWD="$(pwd)"

# Clean up old things.
rm -rf "$HOME/.gitconfig" "$HOME/.zsh" "$HOME/.zshrc" "$HOME/bin"

# Make links.
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/.zsh" "$HOME/.zsh"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"
ln -s "$PWD/bin" "$HOME/bin"

# Install some common packages.
sudo apt install -y snapd
sudo snap install --classic code
