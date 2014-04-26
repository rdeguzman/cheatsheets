Android
---

## Keystore

### Display SHA1 for keystore

Typically used in Google Maps

	# keytool -list -v -keystore ~/.android/debug.keystore -alias your_alias

### Genereate hash from keystore

Typically used in Facebook

	# keytool -exportcert -alias your_alias -keystore debug.keystore | openssl sha1 -binary | openssl base64
	

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
	
	    
