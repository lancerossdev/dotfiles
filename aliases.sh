#!/bin/bash

# this is for git bash, no need to execute this script on linux

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
alias cdwsl='cd /mnt/l/Linux' # Make sure to change the 'l' to the letter of your 2nd drive
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