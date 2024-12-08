#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
function pc {
  [ -d .git ] && git name-rev --name-only @
}
PS1='\e[0;32m\w \e[36m$(pc)\e[m$ '
. "$HOME/.cargo/env"
neofetch
