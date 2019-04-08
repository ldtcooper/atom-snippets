# SETUP UTILS

export PATH="/usr/local/bin:${PATH}"
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

export PS1="\[\033[1;91m\]\w\[\033[0m\]\[\033[97m\]\$(parse_git_branch)\[\033[00m\]\[\033[0;91m\] $ \[\033[0m\]"

ulimit -n 10000;
source ~/.git-completion.bash

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

git_branch_name() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# ALIASES

# git
alias gaa='git add -A';
alias gp='git push';
alias gpl='git pull';
alias pulldev='git pull origin develop';
alias gc='git clone';
alias g='git';
alias go="git checkout";

# bash profile
alias bshr='source ~/.bash_profile';
alias bashr='source ~/.bash_profile';
alias bshed='atom ~/.bash_profile';
alias bashed='atom ~/.bash_profile';

#npm
alias npmi="npm install";
alias npms="npm start";

# utilities
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app";
alias chrome="open -a \"Google Chrome\"";
alias c="clear";
alias lsa="ls -a";
alias starwars="telnet towel.blinkenlights.nl";

newbranch() {
  git checkout -b "$1";
}

gcm() {
    local branch_name=$(git_branch_name);
    git commit -m "$branch_name $1";
}

tobranch() {
  git checkout "$1";
}

killbranch() {
    git branch -d "$1";
}

gpo() {
  git push origin "$1";
}

firstpush() {
    local branch_name=$(git_branch_name);
    git push --set-upstream origin $branch_name;
}

gcl() {
  git clone "$1";
}

mkcd() {
    mkdir "$1";
    cd "$1";
}
