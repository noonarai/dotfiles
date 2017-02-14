alias ll='ls -laG'
alias dckc='docker-compose -f docker-compose.development.yml'
alias dckc-run='docker-compose -f docker-compose.development.yml run --rm'

# lsの色
export LSCOLORS=gxfxcxdxbxegedabagacad

export LESSCHARSET=utf-8
export LANG=ja_JP.UTF-8

# --------------------------------------
# Google search from terminal
# --------------------------------------
google(){
    if [ $(echo $1 | egrep "^-[cfs]$") ]; then
        local opt="$1"
        shift
    fi
    local url="https://www.google.co.jp/search?q=${*// /+}"
    local app="/Applications"
    local g="${app}/Google Chrome.app"
    local f="${app}/Firefox.app"
    local s="${app}/Safari.app"
    case ${opt} in
        "-g")   open "${url}" -a "$g";;
        "-f")   open "${url}" -a "$f";;
        "-s")   open "${url}" -a "$s";;
        *)      open "${url}";;
    esac
}
