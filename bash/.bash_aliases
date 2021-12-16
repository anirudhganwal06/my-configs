# Creating/Updating variables
PATH=$PATH:$HOME/.pub-cache/bin
PATH=$PATH:$HOME/snap/flutter/common/flutter/.pub-cache/bin
export path

EDITOR=vim

# alias for activating a python virtual environment ---------------------------
vactivate() {
	source ~/.venvs/$1/bin/activate
}

# alias for creating new python virtual environment ---------------------------
vnew() {
	python3 -m venv ~/.venvs/$@
}

# alias for connecting my Bluetooth Earbuds -----------------------------------
bconnect() {
	# Enables bluetooth
	rfkill unblock bluetooth &&

	# Extract bluetooth address by searching for device
	device=$(bluetoothctl devices | grep 'B0:11 realme' | awk '{ print $2 }') &&

	# Connect to the extracted bluetooth address
	sleep 0.5 &&
	bluetoothctl connect $device
}
