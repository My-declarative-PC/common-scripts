#!/usr/bin/env bash

set -euo pipefail

UV_PREFIX="/opt/uv"
UV_BIN="$UV_PREFIX/bin"
UV_TOOLS="$UV_PREFIX/tools"
UV_GROUP="uv"
PROFILE_FILE="/etc/profile.d/uv.sh"

log() {

    echo "[uv-setup] $1"
}

require_root() {

    if [[ "$EUID" -ne 0 ]]; then
        echo "Run as root or via sudo"
        exit 1
    fi
}

create_directories() {

    log "Creating directories"

    mkdir -p "$UV_BIN"
    mkdir -p "$UV_TOOLS"
}

create_group() {

    if getent group "$UV_GROUP" >/dev/null; then
        log "Group $UV_GROUP already exists"
    else
        log "Creating group $UV_GROUP"
        groupadd "$UV_GROUP"
    fi
}

set_permissions() {

    log "Setting permissions"

    chown -R root:"$UV_GROUP" "$UV_PREFIX"
    chmod -R 775 "$UV_PREFIX"
}

configure_environment() {

    log "Configuring global environment"

    cat >"$PROFILE_FILE" <<EOF
export UV_TOOL_DIR=$UV_TOOLS
export UV_TOOL_BIN_DIR=$UV_BIN
export PATH=$UV_BIN:\$PATH
EOF

    chmod 644 "$PROFILE_FILE"
}

main() {

    require_root

    log "Installing system-wide uv environment"

    create_directories
    create_group
    set_permissions
    configure_environment

    log "Setup complete"

    echo
    echo 'Add users to the uv group:'
    echo
    echo '  sudo usermod -aG uv $USER'
    echo
    echo 'Users must relogin for group changes to apply.'
    echo
    echo 'Global uv tools will be installed to:'
    echo "  $UV_BIN"
}

main "$@"
