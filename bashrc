# Ari's Bashrc
# ~/.bashrc
# Version 2.8

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ "$PS1" ]] && echo -e "\e[00;33m$(/usr/bin/fortune)\e[00m"

alias ls='ls --color=auto'

if [[ ${EUID} == 0 ]] ; then
    sq_color="\[\033[0;31m\]"
else
  sq_color="\[\033[0;34m\]"
fi

# Sets what the terminal prompt will look like
#PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]\[\033[0;96m\]'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

unset sq_color

shopt -s autocd

# Gives color to the manual
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# Original Bash Prompt
#PS1='[\u@\h \W]\$'

export THEME=$HOME/.bash/themes/agnoster-bash/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
