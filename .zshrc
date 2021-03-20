# comp
if [[ $- != *i* ]]; then
	return
fi

if [ -f ~/Documents/dotfiles/default_initialize.zsh ]; then
    source "$HOME/Documents/dotfiles/default_initialize.zsh"
fi

# --------------------------------------------------------
# zsh-z
if [ -f ~/shell/zsh-z/zsh-z.plugin.zsh ]; then
    source "$HOME/shell/zsh-z/zsh-z.plugin.zsh"
fi
zstyle ':completion:*' menu select
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
if [ -f ~/shell/exports.zsh ]; then
    source "$HOME/shell/exports.zsh"
fi
if [ -f ~/shell/alias.zsh ]; then
    source "$HOME/shell/alias.zsh"
fi
if [ -f ~/.secret_exports.zsh ]; then
    source "$HOME/.secret_exports.zsh"
fi
if [ -f ~/shell/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source "$HOME/shell/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi
