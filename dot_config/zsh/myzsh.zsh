if [[ -z "$ZSH_CUSTOM" ]]; then
  export ZSH_CUSTOM=~/.config/zsh/zsh-custom
fi

if command -v mise >/dev/null; then
    eval "$(mise activate zsh)"
    eval "$(mise completion zsh)"
fi

if (( $+commands[batman] )); then
    alias man=batman
fi

if (( $+commands[starship] )); then
    eval "$(starship init zsh)"
    eval "$(starship completions zsh)"
fi

for config_file (${ZSH_CUSTOM}/*.zsh); do
  source "$config_file"
done
unset config_file
