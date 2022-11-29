# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# this is imported from my git-prompt.sh
if [ "$color_prompt" = yes ]; then
    PS1='\[\033]0;$PWD\007\]'      # set window title
	PS1="$PS1"''                   # new line
	PS1="$PS1"'\[\033[32m\]'       # change to green
	PS1="$PS1"' -  '               # user@host<space>
    PS1="$PS1"'\[\033[35m\]'       # change to purple
    PS1="$PS1"''                   # show MSYSTEM
	PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
	PS1="$PS1"'\W'                 # current working directory
    PS1="$PS1"'\[\033[0m\]'        # change color
	PS1="$PS1"''                   # new line
	PS1="$PS1"' '                  # prompt: always $
else
    PS1='\[\033]0;$PWD\007\]'      # set window title
	PS1="$PS1"''                   # new line
	PS1="$PS1"'\[\033[32m\]'       # change to green
	PS1="$PS1"' -  '               # user@host<space>
    PS1="$PS1"'\[\033[35m\]'       # change to purple
    PS1="$PS1"''                   # show MSYSTEM
	PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
	PS1="$PS1"'\W'                 # current working directory
    PS1="$PS1"'\[\033[0m\]'        # change color
	PS1="$PS1"''                   # new line
	PS1="$PS1"' '                  # prompt: always $
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -a'
alias l1a='ls -1a'
alias l1='ls -1'
alias l='ls -CF'
alias lr='ls -R'

# some useless rm aliases
alias rmrf='rm -rf'
alias rmr='rm -r'

# aliases for going to home windows and linux directory
alias cdwdc='cd /mnt/c/Users/Lance' # Make sure your folder username is correct
alias cdl='cd ~'

# git aliases (from arnellebalane on github)
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gp="git push"
alias gpo="git push origin"
alias gpu="git pull origin"
alias gl="git log"
alias glo="git log --oneline"
alias glog="git log --oneline --graph"
alias gf="git fetch"
alias gr="git remote -v"
alias gcl="git clone"
alias gsiu="git stash --include-untracked"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gm="git merge"
alias gcfd="git clean -fd"
alias grb="git rebase"
alias gcp="git cherry-pick"
alias gco="git checkout"
alias gt="git tag"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
