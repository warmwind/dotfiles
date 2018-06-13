# ensure dotfiles bin directory is loaded first
#PATH="$HOME/.bin:/usr/local/sbin:$PATH"
PATH="$HOME/.bin:$HOME/.vimpkg/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:$PATH"

# load rbenv if available
if command -v rbenv >/dev/null; then
  eval "$(rbenv init - --no-rehash)"
fi

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export HISTCONTROL=ignoreboth
export LSCOLORS=ExFxCxDxBxegedabagacad
export ENABLE_TOGGLES=false
export AUTO_TOGGLE=true
export HOMEBREW_GITHUB_API_TOKEN=570c415291e4a673241f94b1cbc7170428cb45ba
export ANDROID_HOME=/Users/pjiang/Downloads/android-sdk-macosx

export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"


# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
