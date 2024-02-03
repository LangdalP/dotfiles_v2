# All the aliases that should work most places, included GH codespaces
#
alias vim="nvim"
alias vi="nvim"

alias vid="neovide"

alias rgh="rg --hidden --glob '!.git'"


function rgv() {
  fzf --bind "start:reload:rg --column --line-number --no-heading --color=always --smart-case ''" \
    --bind "change:reload:rg --column --line-number --no-heading --color=always --smart-case {q} || true" \
    --bind 'enter:become(nvim "+normal $(echo {1} | cut -d : -f2)G$(echo {1} | cut -d : -f3)|" $(echo {1} | cut -d : -f1))' \
    --ansi --disabled \
    --layout=reverse
}

function cd() {
	builtin cd "$@"
	ls
}

function cd_git_root() {
	cd $(git rev-parse --show-toplevel)
}

function ffile() {
	find . -type f -iname "*$1*"
}

function fdir() {
	find . -type d -iname "*$1*"
}

alias ga="git add"
alias gs="git status"
alias gc="git checkout"
alias gcom="git commit"
alias gcoma="git commit --amend"
alias gcomane="git commit --amend --no-edit"
alias gpll="git pull"
alias gpllr="git pull --rebase"
alias gpsh="git push"
alias gpshor="git push -u origin HEAD"
alias gpshf="git push --force-with-lease"
alias gl="git log"
alias gd="git diff"
alias gds="git diff --staged"
alias gsub="git submodule update --init --recursive"
alias gbl="git branch --list"
alias groot="cd_git_root" # cd to git root
alias gclean='git for-each-ref --format "%(refname:short)" refs/heads | grep -v "master\|main" | xargs git branch -d'
alias gcleanf='git for-each-ref --format "%(refname:short)" refs/heads | grep -v "master\|main" | xargs git branch -D'
alias lg='lazygit'
alias ldo='lazydocker'

alias cfg-src="source ~/.zshrc"
alias cfg-edit="nvim ~/.zshrc"

# Merge pdfs
alias mergepdfs="gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=merged.pdf"
