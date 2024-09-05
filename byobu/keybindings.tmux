unbind-key -n C-z
set -g prefix C-x
unbind-key -n C-a
bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xclip -i -selection clipboard"

## Make the windows resizable using left CTRL + left ALT + esdf keys (i.e. where the arrow keys
## normally are when using right ALT)
bind-key -n C-M-l resize-pane -U
bind-key -n C-M-a resize-pane -D
bind-key -n C-M-i resize-pane -L
bind-key -n C-M-e resize-pane -R

## Make the selection of panes available via left ALT + esdf keys
bind-key -n M-l display-panes \; select-pane -U
bind-key -n M-a display-panes \; select-pane -D
bind-key -n M-i display-panes \; select-pane -L
bind-key -n M-e display-panes \; select-pane -R

## Make switching windows and clients available
bind-key -n M-u previous-window
bind-key -n M-o next-window
bind-key -n M-x switch-client -p
bind-key -n M-w switch-client -n

## Creating a new session does not seem to work
bind-key -n C-M-2 new-session \; rename-window "-"