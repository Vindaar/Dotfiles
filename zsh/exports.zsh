# add nim to PATH
path+=$HOME/src/nim/nim_git_repo/bin
path+=$HOME/.nimble/bin

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

# set terminal to 256 colors if not in TTY
if [ "$TERM" != "linux" ]; then
    export TERM=xterm-256color
fi

# set up zsh behaviour such that `/` separated also counts as a word,
# which can be killed with M-d
export WORDCHARS=''

# add HDFview to PATH
path+=$HOME/src/hdfview/HDFView/3.0.0

# export undervolt tool
path+=$HOME/src/nim/undervoltIntel

# add brave to PATH
path+=$HOME/src/brave


# add ntangle to PATH
path+=$HOME/src/nim/ntangle

# add CUDA to PATH (see void notes for installation instructions)
path+=/usr/local/cuda/bin

# add st to PATH
path+=$HOME/src/st

# add nimdow to PATH
path+=$HOME/src/nim/nimdow/bin

# export TimepixAnalysis bin directory
path+=$HOME/CastData/ExternCode/TimepixAnalysis/bin

typeset -aU path

# set CLIGEN width variable to 80 columns
export CLIGEN_WIDTH=80
