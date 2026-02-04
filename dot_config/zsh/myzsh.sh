if [[ -z "$ZSH_CUSTOM" ]]; then
  export ZSH_CUSTOM=~/.config/zsh/zsh-custom
fi

for config_file (${ZSH_CUSTOM}/*.zsh); do
  source "$config_file"
done
unset config_file

source /usr/share/nvm/init-nvm.sh
