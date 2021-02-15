# taken from https://github.com/zanshin/dotfiles/blob/master/zsh/colors.zsh

autoload colors; colors

# The variables are wrapped in %{%}. This should be the case for every
# variable that does not contain space.
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
  eval PR_$COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
  eval PR_BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done

eval RESET='$reset_color'
export PR_RED PR_GREEN PR_YELLOW PR_BLUE PR_WHITE PR_BLACK
export PR_BOLD_RED PR_BOLD_GREEN PR_BOLD_YELLOW PR_BOLD_BLUE
export PR_BOLD_WHITE PR_BOLD_BLACK

# Clear LS_COLORS
unset LS_COLORS

eval $(dircolors -b)
# change color of o+w directories (rw mounted NTFS disks)
export LS_COLORS="$LS_COLORS:ow=1;37;100"
export LS_COLORS=`echo $LS_COLORS | sed -r 's|:ow[=0-9;]*||'`

# set colors to use for TTY
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0272822
  \e]P1f92672
  \e]P2a6e22e
  \e]P3f4bf75
  \e]P466d9ef
  \e]P5ae81ff
  \e]P6a1efe4
  \e]P7f8f8f2
  \e]P875715e
  \e]P9f92672
  \e]PAa6e22e
  \e]PBf4bf75
  \e]PC66d9ef
  \e]PDae81ff
  \e]PEa1efe4
  \e]PFf9f8f5
  "
  # get rid of artifacts
  clear
fi
