#!/usr/bin/fish
starship init fish | source

#set -g fish_greeting; emit _tide_init_install
set fish_greeting
command pokemon-colorscripts -r

#abbreviations

alias davinci='/opt/resolve/bin/resolve'
alias pac='sudo pacman -S'
alias pacu='sudo pacman -Syu'
alias factory='.local/bin/gruvbox-factory'
alias reaper='~/opt/REAPER/reaper &'

alias gät='/usr/bin/git --git-dir=$HOME/dots/ --work-tree=$HOME'
alias ..='cd ..'
alias ani='~/ani-cli/ani-cli'
alias ls='lsd'
alias la='lsd -a'
alias lsa='lsd -la'
alias vpns='sudo surfshark-vpn attack'
alias vpn='sudo surfshark-vpn'
alias mus='~/scripts/music.sh'

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
alias ly='clyrics'
alias cly='clyrics -c -k -s 1'
alias ply='clyrics -p -k -s 1'

abbr -a -g dm "dmenu -fn ""'"" Fira sans-12 ""'"" -i -l 20 -p"

