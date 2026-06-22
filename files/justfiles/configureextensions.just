configure-extensions:
    set -e
    dconf load /org/gnome/shell/extensions/ < /etc/customscripts/extension-settings.dconf
