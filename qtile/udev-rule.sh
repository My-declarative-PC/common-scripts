#!/usr/bin/env bash

sudo wget https://raw.githubusercontent.com/qtile/qtile/refs/heads/master/resources/99-qtile.rules \
    -O /etc/udev/rules.d/99-qtile.rules
