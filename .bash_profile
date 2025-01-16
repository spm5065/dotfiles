export BASE_SILENCE_DEPRECATION_WARNING=1
export PATH="~/.local/bin:$PATH"

if [ -x /opt/homebrew/bin/brew ]; then
    eval "$( /opt/homebrew/bin/brew shellenv )"
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

