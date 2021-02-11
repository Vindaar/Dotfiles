# adapted from https://github.com/zanshin/dotfiles/blob/master/zsh/prompt.zsh

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo %{$fg[default]%}'ツ' && return
    echo %{$fg[default]%}'λ'
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname
}

# Enable colors in prompt
autoload -U colors && colors

# Modify the colors and symbols in these variables as desired.
GIT_PROMPT_SYMBOL="%{$fg[blue]%}±"
GIT_PROMPT_PREFIX="%{$fg[green]%} [%{$reset_color%}"
GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
GIT_PROMPT_AHEAD="%{$fg[red]%}ANUM%{$reset_color%}"
GIT_PROMPT_BEHIND="%{$fg[cyan]%}BNUM%{$reset_color%}"
GIT_PROMPT_MERGING="%{$fg_bold[magenta]%}⚡︎%{$reset_color%}"
GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}u%{$reset_color%}"
GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}d%{$reset_color%}"
GIT_PROMPT_STAGED="%{$fg_bold[green]%}s%{$reset_color%}"

# Show Git branch/tag, or name-rev if on detached head
function parse_git_branch() {
  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}

function current_pwd {
  echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='${PR_BLUE}%n%{$reset_color%}%{$FG[239]%} at %{$reset_color%}${PR_BOLD_RED}$(box_name)%{$reset_color%} in ${PR_BOLD_MAGENTA}$(current_pwd)%{$reset_color%} $(prompt_char) '
