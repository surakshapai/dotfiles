[[ "$XTRACE" == "verbose" ]] && printf "\nSourcing $HOME/.zshenv ..."

# http://zsh.sourceforge.net/Guide/zshguide02.html#l24
typeset -U path

if [[ $OSTYPE == *darwin* ]]; then
    # https://brew.sh/
    if [[ -e "/usr/local/bin/brew" ]]; then
        [[ "$XTRACE" == "verbose" ]] && printf "\nAdding brew to $PATH..."
        path=($path "/usr/local/bin")
    fi
fi
