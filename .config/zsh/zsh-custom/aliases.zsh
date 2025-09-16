alias zshrc='${EDITOR} ~/.zshrc'
alias aliasconf='${EDITOR} ${ZSH_CUSTOM}/aliases.zsh'
alias pathconf='${EDITOR} ${ZSH_CUSTOM}/path.zsh'
alias vrc='${EDITOR} ${HOME}/.config/nvim'
#alias sxhkdrc='${EDITOR} ${HOME}/.config/sxhkd/sxhkdrc'
#alias bspwmrc='${EDITOR} ${HOME}/.config/bspwm/bspwmrc'
alias zimrc='${EDITOR} ${XDG_CONFIG_HOME}/zim/zimrc'
#alias spectrconf='${EDITOR} ${XDG_CONFIG_HOME}/spectrwm/spectrwm.conf'
alias pkexec='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY'

alias ls='eza --icons=always'
alias la='ls -a'
alias lt='ls -T'
alias lat='ls -aT'
alias ll='ls -lh --links --inode'
alias lah='ls -lah --links --inode'
# alias cd='z'
alias man='batman'

alias gcc='gcc -Wall -Wextra -Wpedantic -Wshadow -Wcast-align -O2'
alias g++='g++ -Wall -Wextra -Wpedantic -Wshadow -Wcast-align -O2'

alias glog='git log --oneline --decorate --all --graph'

alias dsf='diff-so-fancy'
alias cls='clear'
alias srczsh='exec zsh'
alias vbox-modprobe='sudo modprobe vboxdrv'
alias spotx-install='sh ${HOME}/Builds/spotx/install.sh'
alias spotx-uninstall='sh ${HOME}/Builds/spotx/uninstall.sh'

alias hx='helix'
alias nv='nvim'
alias bt='bluetoothctl'
alias lg='lazygit'

unalias l
unalias z 2> /dev/null
