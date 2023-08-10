#!/bin/bash

# 获取指定名称的WIFI密钥，例：getwifipwd "CDS"
alias getwifipwd="security find-generic-password -wa"

# 拷贝终端输出，例：getwifipwd "CDS" | pbcopy
alias copy="pbcopy"

# 截屏：CMD+SHIFT+3
# 自定义截屏：CMD+SHIFT+4
# 自定义截屏到剪切板：CMD+CTRL+SHIFT+4

alias txt="nano"

# 获取局域网内的IP地址（awk：非常好用的列提取器）
alias internalip="ifconfig en0 | grep inet | awk '{ print $2 }'"

alias lsvpn="curl -s ipinfo.io | jq -r '.region, .country' | sed -E 'N; s/(.*)\n(.*)/终端IP所属地: \1\/\2/'"
# 启动终端启动VPN
alias vpn="export https_proxy=http://127.0.0.1:1087 http_proxy=http://127.0.0.1:1087 all_proxy=socks5://127.0.0.1:1080; lsvpn"

alias git-repo-name="git config user.name"
alias git-repo-email="git config user.email"

# SSH
alias sshcpid="ssh-copy-id"

alias inetip="internalip | grep -o 'inet [0-9\.]*'"


inetip
lsvpn