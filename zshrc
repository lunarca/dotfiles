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


