#!/bin/sh

set -o vi

alias ls='ls -hF'
alias openrsync='openrsync -a --rsync-path=/usr/bin/openrsync'
alias ping='ping -c 3'
alias pls='doas $(fc -ln -1)'
alias top='top -1 -s 1 -U $(whoami)'

cd() { builtin cd $@ && pwd && ls; }
ec() { echo $?; }; trap ec ERR

kak() {
    session=$(tmux ls 2> /dev/null | egrep 'attached' | cut -d ':' -f 1)
    [ -z $session ] \
        && name=$(basename $PWD) \
        || name=$session
    command kak -l | egrep $name \
        && command kak -c $name $@ \
        || command kak -s $name $@
}

tmux() {
    [ $# -eq 0 ] \
        && command tmux -u new -A -s $(basename $PWD) \
        || command tmux $@
}
