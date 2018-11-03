# Set bash prompt to be username and folder
alias tmux="TERM=screen-256color-bce tmux"
PROMPT_COLOR="\[$(tput setaf 99)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${PROMPT_COLOR}\u \W $: ${RESET}"

# Git dotfiles bare repo config
alias config='/usr/bin/git --git-dir=/Users/sol/.cfg/ --work-tree=/Users/sol'
