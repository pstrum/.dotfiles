autoload -U promptinit; promptinit
prompt pure

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# NVM
source ~/.zsh-nvm/zsh-nvm.plugin.zsh
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
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Get those aliases
source $HOME/.aliases
