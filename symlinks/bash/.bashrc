# Load aliases.
if [ -f "$HOME/sh/.aliases" ]; then
    # shellcheck source=/dev/null
    source "$HOME/sh/.aliases"
fi

# Load inputrc.
if [ -f "$HOME/sh/.inputrc" ]; then
    # shellcheck source=/dev/null
    source "$HOME/sh/.inputrc"
fi