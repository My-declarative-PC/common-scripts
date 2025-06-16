#!/bin/bash

flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak --user install --assumeyes flathub app.zen_browser.zen
flatpak --user install --assumeyes flathub com.bitwarden.desktop
flatpak --user install --assumeyes flathub com.brave.Browser
flatpak --user install --assumeyes flathub com.github.PintaProject.Pinta
flatpak --user install --assumeyes flathub com.github.tchx84.Flatseal
flatpak --user install --assumeyes flathub com.obsproject.Studio
flatpak --user install --assumeyes flathub io.github.nokse22.minitext
flatpak --user install --assumeyes flathub io.github.peazip.PeaZip
flatpak --user install --assumeyes flathub it.mijorus.gearlever
flatpak --user install --assumeyes flathub net.cozic.joplin_desktop
flatpak --user install --assumeyes flathub org.dbgate.DbGate
flatpak --user install --assumeyes flathub org.telegram.desktop
flatpak --user install --assumeyes flathub space.rirusha.Cassette
