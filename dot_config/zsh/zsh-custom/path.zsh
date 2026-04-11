export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"
export XDG_DATA_DIRS="$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_RUNTIME_DIR=/run/user/1000

export WAYLAND_DISPLAY=wayland-0
export TMUX_TMPDIR=/var/tmp
export GTK_USE_PORTAL=1

# to support running gazebo & rviz2 on wayland
export QT_QPA_PLATFORM="wayland;xcb"
# export QT_QPA_PLATFORM=xcb

export PATH=$PATH:$HOME/.local/bin

if command -v flutter >/dev/null || command -v dart >/dev/null; then
    export PATH=$PATH:$HOME/.pub-cache/bin
fi

if (( $+commands[fvm] )); then
    export PATH=$PATH:"$HOME/.local/share/fvm/default/bin"
fi

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

export STARSHIP_CONFIG=~/.config/starship/starship.toml

export EDITOR='nvim'

export VCPKG_ROOT="$HOME/.local/share/vcpkg"

export GOPATH="$HOME/.local/share/go"


