# --------------------------------------------------------
# zsh new user config
HISTFILE=~/shell/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt share_history
setopt autocd extendedglob nomatch notify
# --------------------------------------------------------
# # comp
zstyle :compinstall filename '/home/prabhat/.zshrc'
autoload -Uz compinit
compinit
# --------------------------------------------------------
# zsh-z
if [ -f ~/shell/zsh-z/zsh-z.plugin.zsh ]; then
    source "$HOME/shell/zsh-z/zsh-z.plugin.zsh"
fi
zstyle ':completion:*' menu select
# --------------------------------------------------------
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# change nvm version based on the nvmrc
# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
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
# python for nvim
# g:python3_host_prog = 1
# --------------------------------------------------------
# alias and exports
if [ -f ~/shell/exports.zsh ]; then
    source "$HOME/shell/exports.zsh"
fi
if [ -f ~/shell/alias.zsh ]; then
    source "$HOME/shell/alias.zsh"
fi
if [ -f ~/.secret_exports.zsh ]; then
    source "$HOME/.secret_exports.zsh"
fi
if [ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
