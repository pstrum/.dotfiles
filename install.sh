#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -s "$DOTFILES_DIR/init" ~
ln -s "$DOTFILES_DIR/.vim" ~
ln -s "$DOTFILES_DIR/.vimrc" ~
ln -s "$DOTFILES_DIR/.aliases" ~
ln -s "$DOTFILES_DIR/.bash_profile" ~
ln -s "$DOTFILES_DIR/.bash_prompt" ~
ln -s "$DOTFILES_DIR/.bashrc" ~
ln -s "$DOTFILES_DIR/.bash_git" ~
ln -s "$DOTFILES_DIR/.git-completion.bash" ~
ln -s "$DOTFILES_DIR/.git-prompt.sh" ~
ln -s "$DOTFILES_DIR/.gitattributes" ~
ln -s "$DOTFILES_DIR/.gitconfig" ~
ln -s "$DOTFILES_DIR/.gitignore" ~
ln -s "$DOTFILES_DIR/.inputrc" ~
ln -s "$DOTFILES_DIR/.hushlogin" ~
ln -s "$DOTFILES_DIR/.macos" ~

# Package managers & packages

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade
# Install packages
brewpackages=(
  autoconf
  bash-completion2
  cscope
  gdbm
  git
  guetzli
  jpeg
  libksba
  libtiff
  libyaml
  macvim
  openssl
  python
  readline
  ruby
  xz
  automake
  freetype
  gettext
  imagemagick
  libgpg-error
  libpng
  libtool
  lua
  mysql
  pkg-config
  python3
  redis
  sqlite
  yarn
)
brew install "${brewpackages[@]}"

# Install Bash
brew install bash
grep "/usr/local/bin/bash" /private/etc/shells &>/dev/null || sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
chsh -s /usr/local/bin/bash

# Install NVM and Packages
brew install nvm
. "${DOTFILES_DIR}/system/.nvm"
nvm install 6
# Globally install with npm
npmpackages=(
  standard
  react
  react-dom
)
npm install -g "${npmpackages[@]}"

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
# Install packages
apps=(
  bartender
  cleanmymac
  dash
  dropbox
  fantastical
  firefox
  firefox-nightly
  google-chrome
  google-chrome-canary
  google-drive
  opera
  rocket
  scrivener
  sequel-pro
  sketch
  slack
  spotify
  sublime-text-3
)

brew cask install "${apps[@]}"

bats test/*.bats
