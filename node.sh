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
# 设置npm镜像源为淘宝镜像
alias npmregtb="npm config set registry https://registry.npm.taobao.org/"

# 创建 React 项目
alias reactapp="npx create-react-app"

echo -e "\n☘️ ==> Node:"
# 输出当前使用的 node/npm 版本号
nvm use stable | awk '{printf "%s %s %s %s\n", $3, $4, $5, $6}'
# 输出当前使用的 npm 源
echo -e "NPM REGISTRY: $(npmreg)"
echo -e "官方源: npmregdef 淘宝源: npmregtb"

