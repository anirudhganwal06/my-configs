# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


###################### My custom aliases and env variables ##############################

# Adding binary files of Flutter and Pub in PATH
PATH=$PATH:$HOME/.pub-cache/bin
PATH=$PATH:$HOME/snap/flutter/common/flutter/.pub-cache/bin
export path

# alias for activating a python virtual environment
vactivate() {
	source ~/.venvs/$1/bin/activate
}

# alias for creating new python virtual environment
vnew() {
	python3 -m venv ~/.venvs/$@
}
