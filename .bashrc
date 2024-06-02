#!/bin/bash

echo -e "\n🐢 ==> Shell: $SHELL"

alias vi="nvim"
alias vim="nvim"
alias ll="ls -lh"

#say "卧槽"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"


source ~/dotfiles/bin.sh
source ~/dotfiles/ps1.sh
source ~/dotfiles/node.sh
source ~/dotfiles/go.sh
source ~/dotfiles/python.sh
source ~/dotfiles/java.sh
source ~/dotfiles/app.sh

# 系统环境变量
export PATH=$PATH:$HOME/bin
export HISTSIZE=5000
export HISTFILESIZE=10000
export EDITOR='vim'


# 外部应用环境变量
#export BEEGO_CONFIG_PATH=/Users/luca/app.conf

echo "bash verison: ???"

# TODO
#echo -e "
#📝 备忘清单：
#📌 iTerm2的两个特性，赶紧用起来：1. Opt + ↔️  2. CMD +T 快速开启命令行 
#📌 系统性地学习一下cURL，结合jq做JSON解析。复杂点的文本处理再用awk，就可以用shell做开发啦
#"

export DENO_INSTALL="/Users/luca/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"

# subl
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"
# goland 
export PATH="$PATH:/Applications/GoLand.app/Contents/MacOS"

# VPN
#export https_proxy=http://127.0.0.1:1087 http_proxy=http://127.0.0.1:1087 all_proxy=socks5://127.0.0.1:1087


export PATH="$HOME/.composer/vendor/bin:$PATH"
