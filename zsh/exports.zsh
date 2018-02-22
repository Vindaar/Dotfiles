# define home directory. change depending on machine
HOME=/home/basti/


export PATH=/usr/local/texlive/2014/bin/x86_64-linux:$PATH 
export PATH=$HOME/Documents/android/platform-tools/:$PATH
# SDSS related paths
export PATH=/usr/local/src/fv5.3/:$PATH
export PATH=/usr/local/src/ds9_64/:$PATH
export PGPLOT_DIR=/usr/local/pgplot
export PATH=$PATH:/usr/local/pgplot

# ROOT related
export ROOTSYS=/usr/local/src/root/5.34.14
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOTSYS/lib
export PATH=$PATH:$ROOTSYS/bin

# export CUDA path, change depening on machine
export PATH=/usr/local/cuda-6.5/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-6.5/lib64:$LD_LIBRARY_PATH

# export bin directory in home, contains e.g. topcat
export PATH=$HOME/bin:$PATH

# Python Path, location of SDSS files
export PYTHONPATH=$HOME/SDSS_indie/Python/develop/:$PYTHONPATH
export PYTHONPATH=$HOME/SDSS_indie/Python/MachineLearning/:$PYTHONPATH

# add rclone path to PATH
export PATH=$HOME/src/rclone:$PATH

# add lein (for clojure) 
export PATH=$HOME/src/lein:$PATH

# add nim to PATH
export PATH=$HOME/src/nim/nim_git_repo/bin:$PATH
export PATH=$HOME/.nimble/bin:$PATH

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

# set terminal to 256 colors
export TERM=xterm-256color

# set up zsh behaviour such that `/` separated also counts as a word,
# which can be killed with M-d
export WORDCHARS=''

