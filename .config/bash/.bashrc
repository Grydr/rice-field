# export ROS_DOMAIN_ID=<your_domain_id>
export QT_QPA_PLATFORM=xcb
export XDG_RUNTIME_DIR=/run/user/1000

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

if [ -f ~/.config/bash/sensible.bash ]; then 
	source ~/.config/bash/sensible.bash
fi

alias srcbash="source ~/.bashrc"
alias cls="clear"

source /etc/profile.d/bash_completion.sh
source ~/.local/share/blesh/ble.sh
source /opt/ros/humble/setup.bash
source ~/Project/ros2-ws/install/setup.bash

export IGN_GAZEBO_RESOURCE_PATH=$IGN_GAZEBO_RESOURCE_PATH:/home/gryd/Project/ros2_ws_sauvc_2025/src/ROS2_WS_SAUVC_2025/banyu_simulation/models
export IGN_GAZEBO_SYSTEM_PLUGIN_PATH=$IGN_GAZEBO_SYSTEM_PLUGIN_PATH:/home/gryd/Project/ros2_ws_sauvc_2025/install/banyu_simulation/lib/banyu_simulation
# neofetch
