# zsh alias
alias greet="echo 'hello HOT terminal'"
alias grep='grep --color=auto'
# basic command
alias q="exit"
alias ls="ls --color=auto"
alias la="ls -Ah --color=auto"
alias ll="ls -lAh --color=auto"
alias vim="/usr/bin/nvim"
# git alias
alias gst="git status"
alias ga="git add "
alias gb="git branch"
alias gaa="git add ."
alias gcmsg="git commit -m"
alias gcmsga="git commit -am"
alias gpsh="git push"
alias gpl="git pull"
alias gftch="git fetch"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcof='gco $(gb | fzf)'
alias glg='git log --stat --max-count=5'
alias glgo='git log --oneline'
alias gbd='~/.locals/bin/branch_description.sh'
# node
alias ni="npm install"
alias ns="npm start"
alias no="nodemon"
alias nt="npm run test"
# tmux
alias tml="tmux list-sessions"
alias tmk="tmux kill-session"
alias tmn="tmux new-session -s 'default' -n 'default'"
alias tmkal="tmux new-session -s kalysys -nclient -c ~/Documents/code/kalysys/client \; attach-session -c ~/ \; new-window -nserver -c ~/Documents/code/kalysys/server \; new-window -nconsole -c ~/Documents/code/kalysys/client \; split-window -h -c ~/Documents/code/kalysys/server \; new-window -nscratch -c ~/Documents/code/kalysys/ \; select-window -t 1 \;"
alias tmkal2="tmux new-session -s kalysysv2 -nclient -c ~/Documents/code/kalysysv2/core \; attach-session -c ~/ \; new-window -nserver -c ~/Documents/code/kalysysv2/server \; new-window -nconsole -c ~/Documents/code/kalysysv2/core \; split-window -h -c ~/Documents/code/kalysysv2/server \; new-window -nscratch -c ~/Documents/code/kalysysv2/ \; select-window -t 1 \;"
alias tmbm="tmux new-session -s batti_muni -nserver -c ~/Documents/code/battimuni/server \; new-window -nconsole -c ~/Documents/code/battimuni/server \; send-keys 'clear' C-m \; new-window -nscratch -c ~/Documents/code/battimuni/ \; select-window -t 1 \; send-keys 'vim' C-m \;"
alias tmnp="tmux new-session -s neespos -nclient -c ~/Documents/code/neesum/neespos \; new-window -nconsole -c ~/Documents/code/neesum/neespos \; new-window -nscratch -c ~/Documents/code/neesum/neespos/ \; select-window -t 1 \; send-keys 'vim' C-m \;"
# system management commands
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirror-update='sudo reflector --verbose --score 100 -l 50 -f 10 --sort rate --save /etc/pacman.d/mirrorlist'
