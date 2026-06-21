#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
rm -rf /usr/share/gnome-shell/extensions/search-light@icedman.github.com
rm -rf /usr/share/gnome-shell/extensions/apps-menu@gnome-shell-extensions.gcampax.github.com
rm -rf /usr/share/gnome-shell/extensions/launch-new-instance@gnome-shell-extensions.gcampax.github.com
rm -rf /usr/share/gnome-shell/extensions/places-menu@gnome-shell-extensions.gcampax.github.com
rm -rf /usr/share/gnome-shell/extensions/window-list@gnome-shell-extensions.gcampax.github.com
rm -rf /usr/share/gnome-shell/extensions/logomenu@aryan_k

# Check if gnome-extensions-cli is installed
if ! command -v gnome-extensions-cli >/dev/null 2>&1; then
  echo "gnome-extensions-cli not found. Installing via brew + pipx..."

  # Ensure pipx is available
  if ! command -v pipx >/dev/null 2>&1; then
    echo "pipx not found. Installing pipx via Homebrew..."
    brew install -y pipx
    pipx ensurepath
  fi

  # Install gnome-extensions-cli via pipx
  pipx install -y gnome-extensions-cli

  echo "Installation complete."
else
  echo "gnome-extensions-cli is already installed."
fi

gnome-extensions-cli install \
  tailscale-gnome-qs@tailscale-qs.github.io \
  clipboard-indicator@tudmotu.com
