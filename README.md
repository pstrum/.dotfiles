# Dotfiles

Personal + work (Copper/Linqed) dev machine config. Secrets are never committed — work-specific
config lives in `~/.zshrc.work` (gitignored; see `.zshrc.work.example`), and Git signing keys are
filled in per-machine.

## Fresh Mac setup

```sh
xcode-select --install
git clone https://github.com/pstrum/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./install.sh
```

`install.sh` symlinks the dotfiles, links Zed/Sublime Merge settings, creates `~/.zshrc.work` from
the example, installs Homebrew, and runs `brew bundle` against the `Brewfile`.

## Layout

| Path | What |
|---|---|
| `.zshrc` | shell config (no secrets); sources `~/.zshrc.work` if present |
| `.zshrc.work.example` | template for Copper/Linqed config — copy to `~/.zshrc.work` |
| `.aliases` | generic aliases (work nav aliases live in `~/.zshrc.work`) |
| `.gitconfig` | shared git config; includes the two identity files below |
| `.gitconfig-personal` | default identity (`pstrum@gmail.com`) — set your GPG signingkey |
| `.gitconfig-work` | identity for repos under `~/Developer/Work/` (`peter@getcopper.com`) |
| `Brewfile` | `brew bundle` package list |
| `zed/`, `sublime-merge/` | editor settings |
| `.hammerspoon/`, `.vimrc`, `.ideavimrc`, `.inputrc` | misc config |

## Manual follow-ups after `install.sh`

1. **SSH:** generate a fresh `ed25519` key, register with GitHub + Copper.
2. **GPG:** generate a fresh personal key; put its ID in `.gitconfig-personal`
   (and a work key in `.gitconfig-work` if Copper requires signed commits).
3. **`~/.zshrc.work`:** set paths and wire secrets via 1Password (`op read ...`) — never hardcode.
4. `gh auth login`; install the apps you keep by hand.
5. Verify per-folder identity: `cd ~/Developer/Work/<repo> && git config user.email`.

## Note on history

Older commits of this repo contain previously-hardcoded API keys (Datadog/App Center). Those keys
should be treated as exposed and **rotated**; they are no longer present in the working tree.
