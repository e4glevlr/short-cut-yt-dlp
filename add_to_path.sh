#!/bin/bash

CURRENT_DIR="$(pwd)"

SHELL_NAME=$(basename "$SHELL")
if [[ "$SHELL_NAME" == "zsh" ]]; then
  CONFIG_FILE="$HOME/.zshrc"
elif [[ "$SHELL_NAME" == "bash" ]]; then
  CONFIG_FILE="$HOME/.bashrc"
else
  CONFIG_FILE="$HOME/.profile"
fi

if grep -Fxq "export PATH=\"$CURRENT_DIR:\$PATH\"" "$CONFIG_FILE"; then
  echo "already in PATH."
else
  echo "Đang thêm $CURRENT_DIR vào PATH..."
  echo "export PATH=\"$CURRENT_DIR:\$PATH\"" >> "$CONFIG_FILE"
  echo "added in to PATH"
  echo "source $CONFIG_FILE"
fi