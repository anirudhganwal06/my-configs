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
