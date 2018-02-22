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

