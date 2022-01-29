# add nim to PATH
path+=/.nimble/bin
path+=$HOME/src/nim/nim_git_repo/bin

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

# set terminal to 256 colors if not in TTY
if [ "$TERM" != "linux" ]; then
    export TERM=xterm-256color
fi

# set up zsh behaviour such that `/` separated also counts as a word,
# which can be killed with M-d
export WORDCHARS=''

# add fzf to path
path+=$HOME/src/fzf/bin/

# export path for rclone
path+=$HOME/src/rclone/rclone-v1.33-linux-amd64
# export undervolt tool
path+=$HOME/src/nim/undervoltIntel/

# add org/Code/Scripts to PATH
path+=$HOME/org/Code/Scripts/

# add NTangle to PATH
path+=$HOME/src/nim/ntangle

# add CUDA to PATH (see void notes for installation instructions)
path+=/usr/local/cuda/bin

# add path to TPA binaries
path+=$HOME/CastData/ExternCode/TimepixAnalysis/bin

typeset -aU path

# set CLIGEN width variable to 80 columns
export CLIGEN_WIDTH=80
