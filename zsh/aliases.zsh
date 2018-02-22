# Misc

# some usefule aliases for root etc
alias root='root -l'
alias fv='fv -winmanager 0'
alias sgvindaar=$sgvindaar
alias astrounsw='ssh z5010843@astro.phys.unsw.edu.au'

# set up sudo, such that it uses the same PATH variable
alias sudo='sudo env PATH=$PATH'


alias lh='ls -d .* --color' # show hidden files/directories only
alias lsd='ls -aFhlG --color'
alias l='ls -al --color'
alias ls='ls -GFh --color' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl --color' # Same as above, but in long listing format

alias grep='grep --color'
