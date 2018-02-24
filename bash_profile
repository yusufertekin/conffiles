if [ -f /Users/yusuf.ertekin/.bashrc ]; then . /Users/yusuf.ertekin/.bashrc; fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# needed for virtualenvwrapper
export WORKON_HOME=/Users/yusuf.ertekin/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
