# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME=powerlevel10k/powerlevel10k

source $ZSH/oh-my-zsh.sh

set -o vi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export FZF_BASE=/usr/local/opt/fzf

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  fzf
  copyzshell
)

# For some reason I'm too lazy to figure out, the
# plugin does not handle this for me
source /usr/local/opt/fzf/shell/key-bindings.zsh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Created by `userpath` on 2019-09-30 21:08:26
export PATH="$PATH:$HOME/.local/bin"

# Create by me :)
export PATH="$PATH:$HOME/Library/Python/3.7/bin"

