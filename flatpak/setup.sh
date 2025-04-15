#!/bin/bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install --assumeyes flathub app.zen_browser.zen
flatpak install --assumeyes flathub com.bitwarden.desktop
flatpak install --assumeyes flathub com.brave.Browser
flatpak install --assumeyes flathub com.github.PintaProject.Pinta
flatpak install --assumeyes flathub com.github.tchx84.Flatseal
flatpak install --assumeyes flathub com.obsproject.Studio
flatpak install --assumeyes flathub it.mijorus.gearlever
flatpak install --assumeyes flathub net.cozic.joplin_desktop
flatpak install --assumeyes flathub org.dbgate.DbGate
flatpak install --assumeyes flathub org.telegram.desktop
flatpak install --assumeyes flathub space.rirusha.Cassette
