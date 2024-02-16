
# Clean up the path of possible duplicates
typeset -aU path

# add nim to PATH
path+=$HOME/src/nim/nim_git_repo/bin
path+=$HOME/.nimble/bin

# set terminal to 256 colors
export TERM=xterm-256color

# set up zsh behaviour such that `/` separated also counts as a word,
# which can be killed with M-d
export WORDCHARS=''

# add HDFview to PATH
path+=$HOME/src/hdfview/HDFView/bin

# export undervolt tool
path+=$HOME/src/nim/undervoltIntel

# add org/Code/Scripts to PATH
#path+=$HOME/org/Code/Scripts

# add brave to PATH
path+=$HOME/src/brave

# add musl to PATH
path+=/usr/local/musl/bin

# add cabal to PATH
path+=$HOME/.cabal/bin

# add ntangle to PATH
path+=$HOME/src/nim/ntangle

# add mini tools to PATH
path+=$HOME/org/Code/Scripts

# add st to PATH
path+=$HOME/src/st

# add nimdow to PATH
path+=$HOME/src/nim/nimdow/bin

# add exports required for japenese input
# Using `fcitx` as input method
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export LC_CTYPE=en_US.UTF-8

# set GOPATH
export GOPATH=$HOME/src/go

# and add $GOBIN to normal PATH
path+=$GOPATH/bin

# export TimepixAnalysis bin directory
path+=$HOME/CastData/ExternCode/TimepixAnalysis/bin

# add conda to PATH
#path+=$HOME/opt/conda/bin

# ROOT related
#export ROOTSYS=$HOME/src/root/root
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOTSYS/lib
#path+=$ROOTSYS/bin

# to clean out duplicates
# PATH=$(printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }')

# tex live
path+=$HOME/src/texlive/2022/bin/x86_64-linux

# set XMODIFIERS to empty to avoid emacs not seeing some modifiers
export XMODIFIERS=''

# set CLIGEN width variable to 80 columns
export CLIGEN_WIDTH=80

path+=$HOME/src/julia/julia-1.8.2/bin/

# PATH for `lc`
path+=$HOME/src/nim/lc/


# add path for misc programs
path+=$HOME/org/Misc/bin
