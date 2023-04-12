function gitignore {
    toplevel=$(git rev-parse --show-toplevel)
    if [[ $? -eq 0 ]]; then
        for arg in "$@"; do
            echo $arg >> $toplevel/.gitignore;
        done
    fi
}

alias ll='ls -l'
alias la='ls -la'
alias lh='ls -lh'
alias ..='cd ..'

if command -v nvim &> /dev/null; then
    alias vim='nvim'
fi


