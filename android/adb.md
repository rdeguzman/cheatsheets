# ADB

## Commands

	adb connect [ip]             # connects to emulator or specific device
	adb devices                  # list all devices connected to adb
	adb pull /path/to/file       # grabs file from device / emulator
	adb shell [command]			  # executes shell command

### Reconnect an emulator to adb

Get the IP of your emulator, on genymotion terminal

	# ifconfig eth0
	# eth0: ip 192.168.56.101 mask 255.255.255.0 flags

On OSX Terminal	. Reconnect adb to the emulator

	# adb connect 192.168.56.101
	# connected to 192.168.56.101:5555
	#
	# adb devices
	# List of devices attached
	192.168.56.101:5555	device
