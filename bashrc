#
# ~/.bashrc
#
#for transparency
term="$(cat /proc/$PPID/comm)"
if [[ $term = "st" ]]; then
    transset-df "0.75" --id "$WINDOWID"  ⋗/dev/null
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
