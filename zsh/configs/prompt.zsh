# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[red]%}($current_branch)%{$reset_color%}"
  fi
}
setopt promptsubst
ret_status="%(?:%{$fg_bold[green]%}[^_^] :%{$fg_bold[red]%}[0_0] %s)"
PROMPT='${ret_status}%{$reset_color%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) %{$reset_color%}
$ '

RPROMPT='%{$fg_bold[red]%}%{$reset_color%}'
