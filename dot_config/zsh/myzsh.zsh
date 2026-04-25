if [[ -z "$ZSH_CUSTOM" ]]; then
  export ZSH_CUSTOM=~/.config/zsh/zsh-custom
fi

for config_file (${ZSH_CUSTOM}/*.zsh); do
  source "$config_file"
done
unset config_file

if command -v mise >/dev/null; then
    eval "$(mise activate zsh)"
    eval "$(mise completion zsh)"
fi

if command -v nvm >/dev/null; then
    if [[ -d "/usr/share/nvm" ]]; then
        source /usr/share/nvm/init-nvm.sh
    elif [[ -d "$HOME/.nvm" ]]; then
        source $HOME/.nvm/nvm.sh
    fi
fi

if (( $+commands[batman] )); then
    alias man=batman
fi

if (( $+commands[starship] )); then
    eval "$(starship init zsh)"
    eval "$(starship completions zsh)"
fi

# Check if tmux server is running
if command -v tmux >/dev/null; then
    if [[ $(pgrep -c tmux) != 0 ]]; then
        tmux source ~/.config/tmux/tmux.conf
    fi
fi

if (( $+commands[catnap] )); then
    catnap
fi
