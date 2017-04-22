source ~/workspace/dotfiles/git-completion.bash

alias ll='ls -laG'
alias dckc='docker-compose -f docker-compose.development.yml'
alias dckcup='docker-compose -f docker-compose.development.yml up --build --force-recreate -d ; dckc ps'
alias dckcrun='docker-compose -f docker-compose.development.yml run --rm'

# lsの色
export LSCOLORS=gxfxcxdxbxegedabagacad

export LESSCHARSET=utf-8
export LANG=ja_JP.UTF-8

