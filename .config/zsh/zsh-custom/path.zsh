export ZIM_CONFIG_FILE=$HOME/.config/zim/zimrc
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"
export XDG_DATA_DIRS="/home/gryd/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export EDITOR='nvim'
export RANGER_LOAD_DEFAULT_RC=false


# export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# to support running gazebo & rviz2 on wayland 
export QT_QPA_PLATFORM=xcb

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

export STARSHIP_CONFIG=~/.config/starship/starship.toml

