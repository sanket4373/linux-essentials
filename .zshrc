# Path to your oh-my-zsh installation.
export ZSH="/Users/<username>/.oh-my-zsh"

ZSH_THEME="awesomepanda"


# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         docker
         pip
         python
         brew
	 osx)

source $ZSH/oh-my-zsh.sh

# To remove percent sign as EOL in terminal
setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""

# To separate the history of multiple tabs and windows
unsetopt inc_append_history
unsetopt share_history

#pyenv
eval "$(pyenv init -)"

#virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source ~/.pyenv/versions/3.8.0/bin/virtualenvwrapper.sh

#go path

export GOPATH=$HOME/workspace/go
export PATH=$PATH:$GOPATH/bin
