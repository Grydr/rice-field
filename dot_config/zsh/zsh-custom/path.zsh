export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"
export XDG_DATA_DIRS="/home/gryd/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_RUNTIME_DIR=/run/user/1000

export WAYLAND_DISPLAY=wayland-0
export TMUX_TMPDIR=/var/tmp

export PATH=$HOME/.config/composer/vendor/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.npm-packages/bin:$PATH

# to support running gazebo & rviz2 on wayland
export QT_QPA_PLATFORM=xcb

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

export STARSHIP_CONFIG=~/.config/starship/starship.toml

export EDITOR='nvim'

export CMAKE_EXPORT_COMPILE_COMMANDS=1
