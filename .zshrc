autoload -U compinit promptinit;

promptinit
prompt pure

export EDITOR='subl -w'
source $HOME/.aliases

source /Users/peter/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history)
bindkey '^ ' autosuggest-accept

export PATH="/usr/local/bin:$PATH"
