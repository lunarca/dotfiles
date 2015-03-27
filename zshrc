#load colors
autoload colors && colors

export PROMPT="%{$fg[green]%}%n@%m%{$fg[blue]%} %~ %{$reset_color%}%# "
export RPROMPT="[%{$fg_no_bold[white]%}%?%{$reset_color%}]"

source ~/.alias

PATH=/usr/local/bin:$HOME/.rvm/bin:$HOME/bin:/usr/local/sbin:$PATH
export GOPATH=/home/lunarca/go

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm"
