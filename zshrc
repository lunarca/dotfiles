#load colors
autoload colors && colors

export PROMPT="%{$fg[green]%}%n@%m%{$fg[blue]%} %~ %{$reset_color%}%# "
export RPROMPT="[%{$fg_no_bold[white]%}%?%{$reset_color%}]"
export EDITOR="vim"

source ~/.alias

bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

PATH=/usr/local/bin:$HOME/.rvm/bin:$HOME/bin:/usr/local/sbin:/home/lunarca/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

export GOPATH=$HOME/go
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
