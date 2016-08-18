DOTFILES=$HOME/.dotfiles

ZSH=$DOTFILES/.oh-my-zsh

# Oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
plugins=(git)

# GB keyboard layout
setxkbmap gb

# French accent - see: http://algo.epfl.ch/~didier/qwerty.html
xmodmap $DOTFILES/.xmodmaprc

# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# Autoenv
use_env() {
    typeset venv
    venv="$1"
    if [[ "${VIRTUAL_ENV:t}" != "$venv" ]]; then
        if workon | grep -q "$venv"; then
            workon "$venv"
        else
            echo -n "Create virtualenv $venv now? (Yn) "
            read answer
            if [[ "$answer" == "Y" ]]; then
                mkvirtualenv "$venv"
            fi
        fi
    fi
}
source $DOTFILES/.autoenv/activate.sh

alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
