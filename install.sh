# install xcode command tool
xcode-select --install
# check
xcode-select -p
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Node.js 管理套件
# brew install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
touch ~/.bash_profile
# nvm 加入 shell 中，可在 terminal 使用
# echo "source $(brew --prefix nvm)/nvm.sh" >> .bash_profile
# . ~/.bash_profile
# 安裝 Node.js 穩定版
# nvm install stable
brew install yarn

# Watchman is a tool by Facebook for watching changes in the filesystem. It is highly recommended you install it for better performance.
brew install watchman

brew cask install postman
brew cask install visual-studio-code
brew cask install sourcetree
brew cask install slack
brew cask install telegram-desktop
brew cask install termius
brew cask install notion
# 控制Mac電腦的風扇速度
brew cask install macs-fan-control
# Mac 影音播放軟體
brew cask install vlc
# 音樂串流平台
brew cask install spotify
# Fliqlo螢幕保護程式
brew cask install fliqlo
brew cask install zoom

brew cask install iterm2

# 建立字型的資料夾
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# 安裝 ZSH , 取代 BASH 的工具
brew install zsh zsh-completions
# zsh 設定為你的預設 shell
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

echo $SHELL
# 如果有成功變更 SHELL 為 ZSH 的話應該會看到 /usr/local/bin/zsh

# 安裝 oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 安裝 powerlevel9k主題
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Why Powerlevel10k? Well, because it's a drop-in replacement for Powerlevel9k, just a lot faster to render your prompt. ls feels fast again!
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Auto Suggestions 會根據你過去所輸入的指令來提示要輸入的內容
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# 程式碼高亮
brew install zsh-syntax-highlighting

touch ~/.zshrc
# vim ~/.zshrc
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# 隱藏用戶名稱(user@hostname)
# DEFAULT_USER=`id -un`
# 含有icon的字型
# POWERLEVEL9K_MODE='nerdfont-complete'
# command line 左邊想顯示的內容(資料夾路徑、資料夾讀寫狀態、版本控制資訊)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable vcs) # <= left prompt 設了 "dir"
# command line 右邊想顯示的內容(狀態、Ram、CPU load average、時間)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram load time)

# 找到 plugins=(git)，加autosuggestions
# plugins=(git zsh-autosuggestions)

# 在設定檔的最下面加上這段
# For zsh syntax-highlighting
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# 客制化 Prompt show your name
# DEFAULT_USER=$(whoami)

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# 直接生效 zsh 設定
exec $SHELL

# 顯示隱藏檔指令 
defaults write com.apple.finder AppleShowAllFiles YES

sudo gem install cocoapods