if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yusufertekin/gcp/path.bash.inc' ]; then source '/Users/yusufertekin/gcp/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yusufertekin/gcp/completion.bash.inc' ]; then source '/Users/yusufertekin/gcp/completion.bash.inc'; fi

# needed for virtualenvwrapper
export WORKON_HOME=~/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
