if [ -z "$PS1" ]; then
  shopt -s expand_aliases
fi

alias ll='ls -l'
alias la='ls -la'

# function for $PS1
function get_git_branch_status {
  git_changes=$(git status -s 2> /dev/null) || return
  echo -n "@"`git branch | grep "*" | cut -d" " -f2`
  if [ "$git_changes" != "" ]; then echo " * "; fi
}
