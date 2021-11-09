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
  macos
  npm
  sublime
  sudo
  urltools
  vscode
  wd
)

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

source ~/git/github/dotfiles/.bash_profile #dotfiles

export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
