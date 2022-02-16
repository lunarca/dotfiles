set -gx PATH /opt/homebrew/bin:$HOME/.cargo/bin:$HOME/bin:$PATH
status is-login; and pyenv init --path | source

status is-interactive; and pyenv init - | source


if status is-interactive
    # Commands to run in interactive sessions can go here
end
