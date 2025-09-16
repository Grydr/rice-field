# FILE AUTOMATICALLY GENERATED FROM /home/gryd/.config/zim/zimrc
# EDIT THE SOURCE FILE AND THEN RUN zimfw build. DO NOT DIRECTLY EDIT THIS FILE!

if [[ -e ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]] zimfw() { source "${HOME}/.config/zim/zim/zimfw.zsh" "${@}" }
fpath=("${HOME}/.config/zim/zim/modules/git/functions" "${HOME}/.config/zim/zim/modules/utility/functions" "${HOME}/.config/zim/zim/modules/duration-info/functions" "${HOME}/.config/zim/zim/modules/git-info/functions" "${HOME}/.config/zim/zim/modules/zsh-completions/src" "${HOME}/.config/zim/zim/modules/completion/functions" ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw duration-info-precmd duration-info-preexec coalesce git-action git-info
source "${HOME}/.config/zim/zim/modules/environment/init.zsh"
source "${HOME}/.config/zim/zim/modules/git/init.zsh"
source "${HOME}/.config/zim/zim/modules/input/init.zsh"
source "${HOME}/.config/zim/zim/modules/termtitle/init.zsh"
source "${HOME}/.config/zim/zim/modules/utility/init.zsh"
source "${HOME}/.config/zim/zim/modules/duration-info/init.zsh"
source "${HOME}/.config/zim/zim/modules/completion/init.zsh"
source "${HOME}/.config/zim/zim/modules/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "${HOME}/.config/zim/zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh"
source "${HOME}/.config/zim/zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${HOME}/.config/zim/zim/modules/ohmyzsh/plugins/sudo/sudo.plugin.zsh"
