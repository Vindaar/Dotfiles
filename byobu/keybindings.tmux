unbind-key -n C-z
set -g prefix C-x
unbind-key -n C-a
bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xclip -i -selection clipboard"

