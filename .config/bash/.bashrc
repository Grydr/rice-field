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

# neofetch
