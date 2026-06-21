install-flatpaks:
    flatpak install -y --user flathub \
        org.gnome.Loupe \
        org.gnome.Decibels \
        org.gnome.Calculator \
        org.gnome.Snapshot \
        org.gnome.clocks \
        org.gnome.baobab \
        app.drey.EarTag \
        com.fastmail.Fastmail \
        org.fedoraproject.MediaWriter \
        com.unicornsonlsd.finamp \
        it.mijorus.gearlever \
        io.m51.Gelly \
        be.alexandervanhee.gradia \
        io.github.tobagin.keysmith \
        org.libreoffice.LibreOffice \
        org.gnome.Logs \
        org.gnome.Music \
        md.obsidian.Obsidian \
        org.kde.okular \
        org.nickvision.tubeconverter \
        com.github.PintaProject.Pinta \
        org.remmina.Remmina \
        org.signal.Signal \
        it.mijorus.smile \
        com.synology.SynologyDrive \
        de.swsnr.turnon \
        org.gnome.Showtime \
        com.yubico.yubioath

update-flatpaks:
    flatpak update -y
