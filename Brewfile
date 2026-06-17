# Brewfile — lean work + personal dev machine
# Install with:  brew bundle --file=~/.dotfiles/Brewfile
# Xcode is installed from the App Store (not here) so macOS manages updates.

# --- CLI / formulae ---
brew "gh"
brew "git-lfs"          # .gitconfig requires the lfs filters
# Node: nvm is installed via its official script into ~/.nvm (see install.sh), NOT brew,
# so the .zshrc `source $NVM_DIR/nvm.sh` hook works as-is.
brew "watchman"         # React Native
brew "cocoapods"        # RN iOS (or install via gem against rbenv ruby)
brew "rbenv"            # clean Ruby for cocoapods/fastlane (replaces RVM)
brew "ruby-build"
brew "pure"             # zsh prompt
brew "zsh-autosuggestions"
brew "zsh-syntax-highlighting"
brew "ffmpeg"
brew "gifsicle"
brew "pngquant"
brew "terminal-notifier"
# brew "mysql@8.0"      # uncomment only if you still run a local MySQL

# --- JDK for Android ---
cask "zulu@17"          # Android Studio / Gradle JDK 17

# --- Core dev apps (the ones worth automating; install the rest by hand) ---
cask "android-studio"
cask "docker-desktop"   # Docker Desktop (the old "docker" cask is now an alias for this)
cask "sublime-merge"
cask "1password-cli"
cask "hammerspoon"
cask "gpg-suite"        # GPG Keychain
cask "macvim"           # `vim` is aliased to `mvim -v`; plugins bootstrapped in install.sh
# Installed manually per your preference: Zed, iTerm2, WebStorm (Toolbox), Charles, Slack, 1Password app

# --- Personal media ---
cask "swinsian"
cask "plexamp"
