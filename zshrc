#load colors
autoload colors && colors

export PROMPT="%{$fg[green]%}%n@%m%{$fg[blue]%} %~ %{$reset_color%}%# "
export RPROMPT="[%{$fg_no_bold[white]%}%?%{$reset_color%}]"
export EDITOR="vim"

source ~/.alias

PATH=/usr/local/bin:$HOME/.rvm/bin:$HOME/bin:/usr/local/sbin:/home/lunarca/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

export GOPATH=$HOME/go
