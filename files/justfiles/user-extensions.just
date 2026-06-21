install-userextensions:
	if ! command -v gnome-extensions-cli >/dev/null 2>&1; then
	  echo "gnome-extensions-cli not found. Installing via brew + pipx..."

	  # Ensure pipx is available
	  if ! command -v pipx >/dev/null 2>&1; then
	    echo "pipx not found. Installing pipx via Homebrew..."
	    brew install -y pipx
	    pipx ensurepath
	  fi

	  # Install gnome-extensions-cli via pipx
	  pipx install gnome-extensions-cli

	  echo "Installation complete."
	else
	  echo "gnome-extensions-cli is already installed."
	fi
