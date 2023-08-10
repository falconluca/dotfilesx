# dotfiles

```bash
# 将shell切换成bash
brew install bash
nano /etc/shells # /opt/homebrew/bin/bash
chsh -s /opt/homebrew/bin/bash
echo $SHELL

# 配置dotfiles
cd ~
git clone ???
ln -s dotfiles/.bashrc  ~/.bashrc
```

