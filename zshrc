# had to preload compdef https://github.com/memborsky/dotfiles/commit/0cd2e69463d25bb0d9fa17710c7a8ed8f54a018f
autoload -U compinit compdef
compinit

compdef g=git

# g is git or git status
function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

eval "$(rbenv init -)"


export PATH="$HOME/.bin:$PATH"

export EDITOR='vim'

autoload -Uz compinit && compinit

source $HOME/dotfiles/zsh/prompt
source $HOME/dotfiles/zsh/aliases


# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - --no-rehash)"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$HOME/bin:$PATH"
