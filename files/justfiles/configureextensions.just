configure-extensions:
    set -e

    FILE="/etc/customscripts/extension-settings.dconf"

    if [ ! -f "$FILE" ]; then
        echo "Missing dconf file: $FILE"
        exit 1
    fi

    dconf load /org/gnome/shell/extensions/ < "$FILE"
