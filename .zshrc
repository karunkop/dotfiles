# --------------------------------------------------------
# zsh new user config
HISTFILE=~/shell/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt share_history
setopt autocd extendedglob nomatch notify
# --------------------------------------------------------
# comp
zstyle :compinstall filename '/home/prabhat/.zshrc'
autoload -Uz compinit
compinit
# --------------------------------------------------------
# zsh-z
source "$HOME/shell/zsh-z/zsh-z.plugin.zsh"
zstyle ':completion:*' menu select
# --------------------------------------------------------
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# --------------------------------------------------------
# typewritten
fpath+=$HOME/shell/typewritten
autoload -U promptinit; promptinit
prompt typewritten
# --------------------------------------------------------
# take
take () {
  mkdir "$1"
  cd "$1"
}
# --------------------------------------------------------
# alias and exports
source "$HOME/shell/alias.zsh"
source "$HOME/shell/exports.zsh"
