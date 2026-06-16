#!/usr/bin/env bash
# Dotfiles bootstrap for a fresh Mac (Apple Silicon).
# Safe to re-run: existing real files are backed up to *.bak before linking.
set -euo pipefail

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

link() {  # link <src-in-repo> <dest>
  local src="$DOTFILES_DIR/$1" dest="$2"
  [ -e "$src" ] || { echo "skip (missing): $1"; return; }
  if [ -L "$dest" ]; then rm "$dest"
  elif [ -e "$dest" ]; then mv "$dest" "$dest.bak"; echo "backed up $dest -> $dest.bak"; fi
  ln -s "$src" "$dest"
  echo "linked $dest"
}

echo "==> Symlinking dotfiles"
for f in .zshrc .aliases .gitconfig .gitconfig-personal .gitconfig-work .gitignore \
         .gitattributes .vimrc .ideavimrc .inputrc .hushlogin .editorconfig .macos; do
  link "$f" "$HOME/$f"
done
link ".vim" "$HOME/.vim"
link ".hammerspoon" "$HOME/.hammerspoon"

echo "==> Editor settings"
mkdir -p "$HOME/.config/zed"
ln -sf "$DOTFILES_DIR/zed/settings.json" "$HOME/.config/zed/settings.json"
ln -sf "$DOTFILES_DIR/zed/keymap.json"   "$HOME/.config/zed/keymap.json"
[ -d "$DOTFILES_DIR/zed/themes" ] && { mkdir -p "$HOME/.config/zed/themes"; cp -R "$DOTFILES_DIR/zed/themes/." "$HOME/.config/zed/themes/"; }
SM="$HOME/Library/Application Support/Sublime Merge/Packages/User"
mkdir -p "$SM" && cp -R "$DOTFILES_DIR/sublime-merge/." "$SM/"

echo "==> Work config"
if [ ! -f "$HOME/.zshrc.work" ]; then
  cp "$DOTFILES_DIR/.zshrc.work.example" "$HOME/.zshrc.work"
  echo "created ~/.zshrc.work from example — EDIT IT (paths + 1Password secret reads)"
fi

echo "==> Homebrew"
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
echo "==> brew bundle"
brew bundle --file="$DOTFILES_DIR/Brewfile"

echo "==> Default shell"
[ "$SHELL" = "/bin/zsh" ] || chsh -s /bin/zsh

cat <<'NEXT'

==> Done. Manual follow-ups (see README):
  1. Generate fresh SSH key (ed25519) + register with GitHub/Copper.
  2. Generate fresh personal GPG key; put its ID in ~/.gitconfig-personal (signingkey).
     (and a work key in ~/.gitconfig-work if Copper requires signed commits)
  3. Edit ~/.zshrc.work: set paths + wire secrets from 1Password (op read ...).
  4. gh auth login. Install apps you keep by hand (Zed, iTerm2, WebStorm, Charles, Slack, 1Password).
  5. Verify per-folder identity: cd into ~/Developer/Work/<repo> && git config user.email
NEXT
