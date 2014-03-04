Android
---

## adb

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
	
	    
