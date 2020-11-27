status --is-interactive; and source (pyenv init -|psub)
set -x PATH $HOME/.cabal/bin $HOME/.ghcup/bin $HOME/bin $PATH

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /Users/lunarca/.config/nvm/13.11.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish ]; and . /Users/lunarca/.config/nvm/13.11.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish

