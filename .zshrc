# zsh
plugins=(web-search colored-man-pages extract autojump brew)
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="gnzh"
ZSH_THEME="my-gnzh"
source $ZSH/oh-my-zsh.sh

# alias
# alias ctags="`brew --prefix`/bin/ctags"
alias phptags='ctags --langmap=php:.engine.inc.module.theme.php --php-kinds=cdf --languages=php'
alias vi='vim'
alias git='LANG=en_GB git'
alias gti='git'
alias rm='trash'
alias sms="python3 ~/.bin/test-sms"
alias wx="/Applications/wechatwebdevtools.app/Contents/MacOS/cli"
alias repare="xattr -d com.apple.FinderInfo "
alias vsc='code'

# proxy in iTerm2
[[ -e ~/.proxy ]] && source ~/.proxy

# nvm
export NVM_DIR="/Users/bjhl/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export DENO_INSTALL="/Users/bjhl/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export PATH="$HOME/.bin/trojan:$HOME/.bin/:/usr/local/Cellar/python/3.6.5/Frameworks/Python.framework/Versions/3.6/bin:HOME/.composer/vendor/bin:vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

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

alias dfiles='/usr/bin/git --git-dir=/Users/bjhl/.dotfiles/ --work-tree=/Users/bjhl'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

