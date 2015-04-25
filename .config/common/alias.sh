alias slt='subl'
alias sudo='sudo ' # When using sudo, use alias expansion (otherwise sudo ignores your aliases)
alias fucking='sudo' # reasons

# git stuff
alias ga='git add -A'
alias gs='git status'
alias gstat='git show --stat'
alias gb='git branch'
alias gba='git branch -a'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gci='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gd='git diff'
alias gdom='git diff origin/master'
alias grm='git rm `git ls-files --deleted`'

alias ascii2bin="perl -e 'while (<>) { $_ =~ s/\\w//g; print pack \"H*\", $_; }'"

# grep with colors (nyan nyan)
function gg {
  git grep --color -n "$*"
}

# convert an iso to an img
function iso2img {
  hdiutil convert -format UDRW -o "${1}.img" $1
}

function gitStats {
  git log --numstat --no-merges --pretty=format:%an | \
  awk 'author == "" { author = $0; next } /^$/ { author = ""; next } { added[author] += $1; removed[author] += $2 } END { for (author in added) { print author, "added", added[author], "removed", removed[author], "sum", added[author]-removed[author]} }' | \
  sort -n -k 7
}
