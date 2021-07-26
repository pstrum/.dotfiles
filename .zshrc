autoload -U compinit promptinit;

promptinit
prompt pure

export EDITOR='subl -w'
source $HOME/.aliases

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use 12.20.1
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

function cu {
  ${HOME}/projects/copper/packages/cucmd/bin/run "$@"
}

source /Users/peter/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history)
bindkey '^ ' autosuggest-accept

setopt autocd

export PATH="/usr/local/bin:$PATH"
export PATH="../../System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7:$PATH"

#AWS credentials and config location
export AWS_SHARED_CREDENTIALS_FILE="/Users/peter/projects/copper/.aws/credentials"
export AWS_CONFIG_FILE="/Users/peter/projects/copper/.aws/config"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /Users/peter/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# cu autocomplete setup
CU_AC_ZSH_SETUP_PATH=/Users/peter/Library/Caches/@copperapp/cucmd/autocomplete/zsh_setup && test -f $CU_AC_ZSH_SETUP_PATH && source $CU_AC_ZSH_SETUP_PATH;
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export ANDROID_HOME=/Users/peter/Library/Android/sdk
export NODE_OPTIONS=--max_old_space_size=8192
