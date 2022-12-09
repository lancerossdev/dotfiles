# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme that I use
ZSH_THEME="gallifrey"

# My favorite zsh themes
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "daveverwer" "sunaku" "lukerandall" "gallifrey" )


# Plugins (manually added)
plugins=(git zsh-autosuggestions)

# Load the oh-my-zsh's library.
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Imported aliases
. ~/.aliases

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
