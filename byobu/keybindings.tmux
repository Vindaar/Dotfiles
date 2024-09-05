unbind-key -n C-z
set -g prefix F12
unbind-key -n C-a
bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xclip -i -selection clipboard"

