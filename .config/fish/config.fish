#!/usr/bin/fish
starship init fish | source

set fish_greeting
command pokemon-colorscripts -r

#abbreviations

alias pac='sudo pacman -S'
alias pacu='sudo pacman -Syu'

alias gät='/usr/bin/git --git-dir=$HOME/dots/ --work-tree=$HOME'
alias ..='cd ..'
alias ani='~/ani-cli/ani-cli'
alias ls='lsd'
alias la='lsd -a'
alias lsa='lsd -la'
alias vpns='sudo surfshark-vpn attack'
alias vpn='sudo surfshark-vpn'

alias dwarf='~/LNP/startlnp.sh'
alias clock='tty-clock'
alias poke='pokemon-colorscripts'
alias kmg='sudo key-mapper-gtk'
alias steamd='steam -noverifyfiles'

alias cpoly='code ~/.config/polybar/config'
alias ci3='code ~/.config/i3/config'
alias cfish='code ~/.config/fish/config.fish'
alias cbash='code .bashrc'
alias cpicom='code ~/.config/picom.conf'



