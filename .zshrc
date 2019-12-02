autoload -U compinit promptinit;

promptinit
prompt pure

export EDITOR='subl -w'
source $HOME/.aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use

source /Users/peter/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history)
bindkey '^ ' autosuggest-accept

setopt autocd

export PATH="/usr/local/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

