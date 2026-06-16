# ~/.zshrc — personal + work dev machine
# Work-specific secrets/functions live in ~/.zshrc.work (gitignored). See .zshrc.work.example.

# --- Homebrew (early, so `brew --prefix` works below) ---
eval "$(/opt/homebrew/bin/brew shellenv)"

# --- completions + prompt ---
autoload -U compinit promptinit
compinit
promptinit
prompt pure
# Disable Pure's terminal-title rewriting so iTerm session names (set via AppleScript) persist.
prompt_pure_set_title() { }

export EDITOR='zed --wait'
source "$HOME/.aliases"

# --- node version manager (nvm) with auto-switch on cd ---
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
      nvm use --silent
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    nvm use --silent default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# --- zsh plugins (installed via Homebrew, not hand-cloned) ---
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" 2>/dev/null
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" 2>/dev/null
ZSH_AUTOSUGGEST_STRATEGY=(history)
bindkey '^ ' autosuggest-accept

setopt autocd

# --- ruby (rbenv) — for Bundler/CocoaPods/fastlane ---
command -v rbenv >/dev/null && eval "$(rbenv init - zsh)"

# --- PATH ---
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# --- Android / Java (JDK 17 via zulu) ---
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export JAVA_HOME=$(/usr/libexec/java_home -v17 2>/dev/null)

# --- Node memory ceiling (raise only if you actually hit OOM) ---
export NODE_OPTIONS="--max-old-space-size=8192"

# --- GPG (for signed commits) ---
export GPG_TTY=$(tty)

# --- Docker: uncomment ONLY if you need amd64 emulation; native arm64 is faster ---
# export DOCKER_DEFAULT_PLATFORM=linux/amd64

# --- Work-specific config (Copper/Linqed): AWS paths, cu/review/parallel fns, etc. ---
# Not committed. Copy .zshrc.work.example -> ~/.zshrc.work and fill in.
# Secrets (DD/AppCenter/etc.) come from 1Password, NEVER hardcoded here.
[ -f "$HOME/.zshrc.work" ] && source "$HOME/.zshrc.work"

# --- iTerm2 shell integration ---
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
