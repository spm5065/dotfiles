function gitignore {
    toplevel=$(git rev-parse --show-toplevel)
    if [[ $? -eq 0 ]]; then
        for arg in "$@"; do
            echo $arg >> $toplevel/.gitignore;
        done
    fi
}

alias ls='ls -p'
alias ll='ls -lp'
alias la='ls -lap'
alias lh='ls -lhp'
alias ..='cd ..'

if command -v nvim &> /dev/null; then
    alias vim='nvim'
fi

alias activate='
    if ! [ -f .venv/bin/activate ]; then
        python -m venv --prompt "$(basename $(pwd))" .venv;
    fi

    bash --init-file <( echo " . ~/.bash_profile; . .venv/bin/activate; " ) -i
'
