alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias diff="git diff --no-index"


export http_proxy=http://127.0.0.1:1087
export https_proxy=http://127.0.0.1:1087
export ZSH='/Users/Will/.oh-my-zsh'

ZSH_THEME='robbyrussell'
DISABLE_AUTO_TITLE='true'
DISABLE_UPDATE_PROMPT="true"
plugins=(
  git
  zsh-autosuggestions zsh-completions zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Git add commit
function gac () {
  gaa
  gcmsg "$1"
}

