# SETUP UTILS

export PATH="/usr/local/bin:${PATH}"
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# red-colored terminal prompt with current dir and git branch (if applicable)
export PS1="\[\033[1;91m\]\w\[\033[0m\]\[\033[97m\]\$(parse_git_branch)\[\033[00m\]\[\033[0;91m\] $ \[\033[0m\]"

ulimit -n 10000;
source ~/.git-completion.bash

parse_git_branch() {
    # current branch in parentheses
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

git_branch_name() {
    # current branch w/o parentheses
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# ALIASES

## git
alias gaa='git add -A';
alias gp='git push 2> /dev/null || firstpush'; # pushes current commits and makes a new remote if none exists
alias gpl='git pull';
alias pulldev='git pull origin develop'; # pulls from remote develop branch
alias gc='git clone';
alias gcl='git clone';
alias g='git';
alias go="git checkout";
alias gco="git checkout";
alias tossh="git remote set-url origin"
alias todev="git checkout develop"

newbranch() {
  git checkout -b "$1";
}

tobranch() {
    git checkout "$1";
}

gbranch() {
    # goes to named new branch and makes it if none exists
    git checkout "$1" 2>/dev/null || git checkout -b "$1"
}

dbranch() {
    git checkout develop;
    git pull;
    git checkout -b "$1";
}

gcm() {
    # adds current branch before commit message and then commits it
    local branch_name=$(git_branch_name);
    git commit -m "$branch_name $1";
}

killbranch() {
    git branch -d "$1";
}

gpo() {
  git push origin "$1";
}

firstpush() {
    # makes new origin branch and then pushes
    local branch_name=$(git_branch_name);
    git push --set-upstream origin $branch_name;
}

## bash profile
# reloads terminal with aliases
alias bshr='source ~/.bash_profile';
alias bashr='source ~/.bash_profile';
# opens bash_profile in atom
alias bshed='atom ~/.bash_profile';
alias bashed='atom ~/.bash_profile';

##npm
alias npmi="npm install";
alias npms="npm start";
alias npmno="npm run no-server";
alias npmrb="npm run build";
alias node10="nvm use 10";
alias node6="nvm use 6";
alias node012="nvm use 0.12";

## utilities
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app";
alias chrome="open -a \"Google Chrome\"";
alias c="clear";
alias lsa="ls -a";
alias ngrok="~/Documents/ngrok"
alias lsgrp="lsgrep";

mkcd() {
    # makes a new directory and immediatly goes into it
    mkdir "$1";
    cd "$1";
}

lsgrep() {
    # greps through all files in current dir
    ls -a | grep "$1";
}

## fun stuff
alias starwars="telnet towel.blinkenlights.nl";
alias fbm="fb-messenger-cli";
