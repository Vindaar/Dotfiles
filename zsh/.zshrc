# source byobu bashrc? not needed, correct?
if [ ! -z "$BYOBU_PREFIX" ]; then
    echo "Not setting variable!"
    #source $BYOBU_PREFIX/share/byobu/profiles/bashrc
fi

source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
#source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
#source ~/.zsh/zsh_hooks.zsh
source ~/.zsh/colors.zsh
