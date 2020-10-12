export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  brew
  bundler
  common-aliases
  docker
  encode64
  extract
  gem
  gpg-agent
  git
  gitfast
  git-extras
  git-flow
  npm
  osx
  sublime
  sudo
  urltools
  vscode
  wd
)

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source ~/git/github/dotfiles/.bash_profile #dotfiles

export PATH="/usr/local/sbin:$PATH"
