function __git_prompt_git() {
  GIT_OPTIONAL_LOCKS=0 command git "$@"
}

function git_prompt_info {
  local ref
  ref=$(__git_prompt_git symbolic-ref HEAD 2> /dev/null) || return
  echo " %F{239}on %F{255}${ref#refs/heads/} $(parse_git_dirty)%{$reset_color%}"
}

function parse_git_dirty {
  local gitstat
  gitstat=$(__git_prompt_git status --porcelain 2> /dev/null | tail -1)

  if [[ -n $gitstat ]]; then
    echo "%F{202}✘"
  else
    echo "%F{040}✔"
  fi
}

autoload -U colors && colors
setopt promptsubst

local git_info='$(git_prompt_info)'

PROMPT="╭─%F{040}%n %F{239}@ %F{033}%m %F{239}at%F{98}%t %F{239}in %B%F{226}%~%b${git_info}%{$reset_color%}
╰─○ "
