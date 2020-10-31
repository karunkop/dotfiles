# zsh alias
alias greet="echo hello"
# basic command
alias q="exit"
alias la="ls -A"
alias lla="ls -lA"
alias vim="~/bin/nvim"
alias fmgr="ranger ."
# colorls
alias lc="colorls --gs"
alias lca="colorls --gs -A"
alias lcd="colorls --gs -d"
alias lcf="colorls --gs -f"
# zshrc
alias src="source ~/.zshrc"
alias srcedit="vim ~/.zshrc"
# git alias
alias gst="git status"
alias ga="git add "
alias gb="git branch"
alias gaa="git add ."
alias gcmsg="git commit -m"
alias gcmsga="git commit -am"
alias gpsh="git push"
alias gpl="git pull"
alias gfh="git fetch"
alias gco="git checkout"
alias gcof='gco $(gb | fzf)'
alias glg='git log --stat --max-count=5'
alias glgo='git log --oneline'
# node
alias ni="npm install"
alias ns="npm start"
alias no="nodemon"
# emulator
alias momo="emulator @momo"
# cli-typing
alias type="~/bin/cli-typer-master/app.js"
# tmux
alias tml="tmux list-sessions"
alias tmk="tmux kill-session"
alias tmn="tmux new-session -s 'default' -n 'default'"
alias tmkal="tmux new-session -s kalysys -nclient -c ~/Documents/code/kalysys/client \; attach-session -c ~/ \; new-window -nserver -c ~/Documents/code/kalysys/server \; new-window -nconsole -c ~/Documents/code/kalysys/client \; split-window -h -c ~/Documents/code/kalysys/server \; new-window -nscratch -c ~/Documents/code/kalysys/ \; select-window -t 1 \;"
