# export ROS_DOMAIN_ID=<your_domain_id>
shopt -s extglob

export QT_QPA_PLATFORM=xcb
export XDG_RUNTIME_DIR=/run/user/1000
export IGN_GAZEBO_RESOURCE_PATH=$HOME/Project/ros2_ws_krbai_2025/src/banyu_simulation/ROS2_WS_KRBAI_2025/banyu_gazebo_fortress/models:$IGN_GAZEBO_RESOURCE_PATH
export IGN_GAZEBO_SYSTEM_PLUGIN_PATH=$HOME/Project/ros2_ws_krbai_2025/install/banyu_gazebo_fortress/lib/banyu_gazebo_fortress:$IGN_GAZEBO_SYSTEM_PLUGIN_PATH
# export IGN_GAZEBO_MODEL_PATH=
export PATH=$HOME/.local/bin:$PATH

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

if [ -f ~/.config/bash/sensible.bash ]; then 
	source ~/.config/bash/sensible.bash
fi

source /etc/profile.d/bash_completion.sh
source ~/.local/share/blesh/ble.sh
source /opt/ros/humble/setup.bash
source ~/Project/ros2-ws/install/setup.bash
source /usr/share/gazebo/setup.bash

# eval "$(fzf --bash)"

if [[ $(pgrep -c tmux) != 0 ]]; then
	tmux source ~/.config/tmux/tmux.conf
fi

alias srcbash="source ~/.bashrc"
alias cls="clear"

# neofetch
