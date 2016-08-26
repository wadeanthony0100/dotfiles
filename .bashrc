#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#PS1='[\u@\h \W]\$ '  # Default
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

alias jekyll='~/.gem/ruby/2.2.0/bin/jekyll'
export EDITOR=vim
export SVN_EDITOR=vim

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export GIT_HOME="/usr/local/Cellar/git/2.9.0/bin/git"
