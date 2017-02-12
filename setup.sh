# cp .emacs .zshrc .antigenrc $HOME

if [ ! -d "$HOME/tools" ] ; then
    mkdir $HOME/tools
fi

git clone https://github.com/zsh-users/antigen.git $HOME/tools/antigen
