alias ll='ls -laG'
alias vi='vim'
export LSCOLORS=gxfxcxdxbxegedabagacad
export LESSCHARSET=utf-8
export LANG=ja_JP.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"

# brew install rbenv したので、その設定
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
