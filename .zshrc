source $HOME/software/antigen/antigen.zsh
export _ANTIGEN_CACHE_ENABLED=true

antigen init $HOME/.antigenrc

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/bin/virtualenvwrapper.sh

if [ -d "$HOME/tools/android-platform-tools" ] ; then
    export PATH=$HOME/tools/android-platform-tools:$PATH
fi


