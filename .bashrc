[ -n "$PS1" ] && source ~/.bash_profile;

# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# source ~/.git-completion.bash

# ORG / REPO / COMPARE TO BRANCH / current branch known
# function pr(){
  # echo '(╯°□°）╯︵ ┻━┻'
  # CURRENTBRANCH=$(git rev-parse --abbrev-ref HEAD)
  # USERNAME=$(git config user.username)
  # echo 'Pull request; compare' $2 $3 'to' $USERNAME $CURRENTBRANCH
  # echo 'Launching default browser ...'
  # open https://github.com/"$1"/"$2"/compare/"$3"..."$USERNAME":"$CURRENTBRANCH"?expand=1;
# }

# function s {
  # if [ "$1" != "" ]; then
    # subl $1
  # else
    # subl $PWD
  # fi
# }

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
