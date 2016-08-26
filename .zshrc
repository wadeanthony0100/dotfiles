# Path to your oh-my-zsh installation.
  export ZSH=/Users/wmauger/.oh-my-zsh
 # export EDITOR=/usr/bin/vim
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="wmauger"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, svn, django)

# User configuration

# export PATH="/Users/wmauger/.tmuxifier/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/wade/.gem/ruby/2.3.0/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias -g nitron=wam9729@nitron.se.rit.edu
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gp='git push'
alias gs='git status'
alias gd='git diff'
alias gpom='git push origin master'
alias subgpom='git push origin HEAD:master'
alias cd..='cd ..'
alias sshRichland='ssh -p 2222 richboro@richlandborough.org'
alias sshRichlandDroplet='ssh wade@45.55.210.72'
alias tload='tmuxifier load-window'
alias dev-richland='cd ~/Development/richland-flask;tmux'
alias extract='dtrx'
alias t='tree -I node_modules'
alias theHub=ncdc
alias copy='xclip -i'
alias energia='~/Downloads/energia-0101E0017-linux64/energia-0101E0017/energia &'
alias openAndroid='open platforms/android/build.gradle'
alias openIos='open platforms/ios/HelloCordova.xcodeproj'
alias pythonServer='python -m SimpleHTTPServer'
alias devd='/usr/local/bin/devd'
alias parrot='/usr/local/bin/parrot'
alias wq='sl'
alias :wq='sl'

cdallFunction(){
  Ctrl-b
  :setw synchronize-panes
  cd $1
  :setw synchronize-panes
}

alias cdall=cdallFunction

if [[ -r /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
      source /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
fi
eval "$(tmuxifier init -)"
#fortune | cowsay

function slay () {
    kill -9 $(ps aux | grep $1 | awk '{print $2}')
}

eval $(thefuck --alias) 
export TERM='xterm-256color'

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home"
export JAVA_HOME;


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"
