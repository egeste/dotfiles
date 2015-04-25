if [ -z "$PS1" ]; then
  eval `/usr/libexec/path_helper -s`
fi

export CLICOLOR=1
export PS1="\u@\h:\w\$(get_git_branch_status)\$ "
