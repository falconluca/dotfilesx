#!/bin/bash

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
export BEEGO_CONFIG_PATH=/Users/luca/app.conf

