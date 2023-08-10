#!/bin/bash

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NPM
alias npmlist="npm list -g --depth=0"
alias npmp="npm publish"

# pkg@v{major}.{minor}.{patch}
alias npmvp="npm version major"
alias npmvp="npm version minor" 
alias npmvp="npm version patch" 

alias npmlogin="npm login"

# 查看npm镜像源地址
alias npmreg="npm config get registry" 
# 切换镜像源
alias npmregdef="npm config set registry https://registry.npmjs.org/"
alias npmregtb="npm config set registry https://registry.npm.taobao.org/" # 设置npm镜像源为淘宝镜像

# React
alias reactapp="npx create-react-app"


# 输出当前Node的版本号
echo "☘️  ==> Node:"
nvm use stable
echo -e "NPM REGISTRY: $(npmreg)"

