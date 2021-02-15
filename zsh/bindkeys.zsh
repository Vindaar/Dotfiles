bindkey -e

## set keyboard layout to neo (need to make loadkeys runnable by user, see notes)
if [ "$TERM" = "linux" ]; then
    loadkeys neo
fi
