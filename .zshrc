# zsh
plugins=(web-search colored-man-pages extract autojump brew zsh-syntax-highlighting)
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gnzh"
source $ZSH/oh-my-zsh.sh

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
alias sms="python3 ~/.bin/test-sms"

# proxy in iTerm2
[[ -e ~/.proxy ]] && source ~/.proxy

# nvm
export NVM_DIR="/Users/bjhl/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc"

export PATH="$HOME/.bin:/usr/local/Cellar/python/3.6.5/Frameworks/Python.framework/Versions/3.6/bin:HOME/.composer/vendor/bin:vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home)

if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  eval `gdircolors -b $HOME/.dir_colors`
fi

# fzf
export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS=" --inline-info"

export EVENT_NOKQUEUE=1

alias imgcat=~/.iterm2/imgcat;
alias imgls=~/.iterm2/imgls;

