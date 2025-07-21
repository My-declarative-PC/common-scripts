#!/bin/bash

flatpak --user override --filesystem=home
flatpak --user override --filesystem=host
flatpak --user override --filesystem=host-etc
flatpak --user override --filesystem=$HOME/.local/share/icons
flatpak --user override --filesystem=$HOME/.local/share/themes
flatpak --user override --filesystem=$HOME/.icons
flatpak --user override --filesystem=$HOME/.themes
flatpak --user override --filesystem=$HOME/.config
flatpak --user override --env=GTK_THEME=$GTK_THEME
flatpak --user override --env=GTK_USE_PORTAL=1
flatpak --user override --env=XCURSOR_THEME=$XCURSOR_THEME
flatpak --user override --talk-name=org.freedesktop.Notifications
