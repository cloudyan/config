# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$(whoami)/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  sudo
  z
  history
  git-open
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-better-npm-completion
)

# plugins 参考
# - https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
# - https://zhuanlan.zhihu.com/p/62501175
# - https://juejin.im/entry/5ae00e54f265da0b8635ea5c

# 偶尔输入某个命令，提示没有权限，需要加sudo，这个时候按两下ESC，就会在命令行头部加上sudo
# git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open

# 语法历史记录插件
# git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# 语法高亮插件
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/lukechilds/zsh-better-npm-completion $ZSH_CUSTOM/plugins/zsh-better-npm-completion

# install incr 补全插件
# 官站 http://mimosa-pudica.net/zsh-incremental.html
# wget http://mimosa-pudica.net/src/incr-0.2.zsh
# mkdir ~/.oh-my-zsh/plugins/incr
# mv incr-0.2.zsh ~/.oh-my-zsh/plugins/incr
# echo 'source ~/.oh-my-zsh/plugins/incr/incr*.zsh' >> ~/.zshrc
# 使用自动补全插件可能会与vim的提示功能相冲突，如会报以下错误，此时，将~/.zcompdump*删除即可
# _arguments:451: _vim_files: function definition file not found

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# 使用中文手册 https://github.com/man-pages-zh/manpages-zh
# .zshrc 添加手册路径
# MANPATH /usr/local/share/man              #line 44
# MANPATH /usr/local/share/man/zh_CN        #添加中文手册路径

# 如果系统的groff版本太低，文档可能出现乱码，可以将groff更新到最新版本
# https://www.cnblogs.com/wujinhong/p/7251376.html
# https://www.cnblogs.com/himonkey/p/11853564.html

# 查看已经加载的 man 手册列表
# $ man -aw
# $ /usr/local/share/man:/usr/share/man:/usr/local/share/man/zh_CN         #已经加载

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# export LC_ALL=en_US.UTF-8


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# source ~/.oh-my-zsh/plugins/incr/incr*.zsh



alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cls='clear'
alias ll='ls -l'
alias la="ls -a"

# macOS (Darwin) ls doesn't support the --color option.
# alias ls="ls --color=auto"

# 安装一个 trash 命令，替代 rm 命令，被删除的文件会放到垃圾桶
# 需要全局安装 npm install -g trash-cli
alias rm='trash'

# 防止 copy 的时候覆盖已存在的文件, 带上 i 选项，
# 文件已存在的时候，会提示，需要确认才能 copy
alias cp='cp -i'

alias tree='tree -N'
alias ltree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias vi=' vim'
alias grep="grep --color=auto"

# alias uni-build="node /Applications/HBuilderX.app/Contents/HBuilderX/plugins/uniapp-cli/bin/uniapp-cli.js"

# alias xxx="/Applications/HBuilderX-Alpha.app/Contents/MacOS/HBuilderX &"

# Beyond Compare
rm "/Users/$(whoami)/Library/Application Support/Beyond Compare/registry.dat"


export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

# 升级 oh-my-zsh
# 手动执行 upgrade_oh_my_zsh
# 自动执行，配置 DISABLE_UPDATE_PROMPT=true

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="/Users/dwd/opt/anaconda3/bin:$PATH"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/dwd/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/dwd/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/dwd/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/dwd/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
