mkdir -p $HOME/dotfiles/vim/bundle
mkdir -p $HOME/.config/fish
mkdir -p $HOME/bin

# Copy over scripts
cp $HOME/dotfiles/scripts/*.sh $HOME/bin

# Make links
ln -s $HOME/dotfiles/vim $HOME/.vim
ln -s $HOME/dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/alias $HOME/.alias
ln -s $HOME/dotfiles/config/awesome $HOME/.config/awesome
ln -s $HOME/dotfiles/config.fish $HOME/.config/fish/config.fish

# Bootstrap an SSH config for Github
mkdir -p $HOME/.ssh
cat ssh-config >> $HOME/.ssh/config

# Set up git
git config --global user.name "Alex DeFreese"
git config --global user.email "alexdefreese@gmail.com"
git config --global color.ui true
git config --global alias.stat "status"

# Set up environment variables
export EDITOR="vim"
export SUDOEDITOR="vim"
