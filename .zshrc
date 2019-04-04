# alias
[[ -e ~/.alias ]] && source ~/.alias
# alias ctags="`brew --prefix`/bin/ctags"
alias phptags='ctags --langmap=php:.engine.inc.module.theme.php --php-kinds=cdf --languages=php'
alias vi='vim'
alias vsc="'/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code'"
alias gti='git'
alias rm='trash'
alias c='ici'
alias txd='sftp -P2222 sanbaofeng@login.tianxiao100.com'
alias ls="ls --color=auto"

[[ -e ~/.proxy ]] && source ~/.proxy

# node
export NVM_DIR="/Users/bjhl/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gnzh"

export PATH="/usr/local/Cellar/python/3.6.5/Frameworks/Python.framework/Versions/3.6/bin:HOME/.composer/vendor/bin:vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/Users/bjhl/.php-school/bin"

export JAVA_HOME=$(/usr/libexec/java_home)

export NODE_ENV

# function proxy-off(){
    # # killall privoxy
    # unset http_proxy
    # unset https_proxy
    # echo -e "Bye~"
# }

# function proxy-simple-on() {
    # export http_proxy=http://127.0.0.1:1087;
    # export https_proxy=http://127.0.0.1:1087;
    # echo -e "Enjoy~"
# }

# function proxy-all-on() {
    # privoxy ~/.privoxyrc
    # export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    # export http_proxy="http://127.0.0.1:8118"
    # export https_proxy=$http_proxy
    # echo -e "Enjoy~"
# }

# function proxy () {
    # case $1 {
        # (-a)
            # ;&
        # (all)
            # proxy-all-on
            # ;;
        # (-s)
            # ;&
        # (simple)
            # proxy-simple-on
            # ;;
        # (-f)
            # ;&
        # (off)
            # proxy-off
            # ;;
        # (-h)
            # ;&
        # (help)
            # echo '-h | help: show help'
            # echo '-f | off: turn off proxy'
            # echo '-a | all: proxy all commands'
            # echo '-s | simple: proxy part of commands. Such as: curl, wget'
            # echo '-t | test: test weather proxy is valid'
            # ;;
        # (-t)
            # ;&
        # (test)
            # curl -I https://www.google.com
            # ;;
        # (*)
            # proxy -h
            # ;;
    # }
# }

if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  eval `gdircolors -b $HOME/.dir_colors`
fi

export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS=" --inline-info"

tldr_path="$(which tldr)"
function tldr() {
	eval "$tldr_path" $@ "--color"
}

export EVENT_NOKQUEUE=1

alias imgcat=~/.iterm2/imgcat;
alias imgls=~/.iterm2/imgls;

