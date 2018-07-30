export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PYENV_ROOT=~/.pyenv
export PATH="/usr/local/opt/node@4/bin:$PATH"
export PATH=$PYENV_ROOT/shims:$PATH

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[ \1 ]/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="\n$YELLOW\$(parse_git_branch)\n$GREEN\w$NO_COLOR\n\u@\h$NO_COLOR: "

# aliases for pick
alias pick-b="cd /Users/spectrumone/Projects/Pick-backend"
alias pick-d="cd /Users/spectrumone/Projects/Pick-Dashboard"
alias pick="pick-b;honcho start"
alias ll="ls -la"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
