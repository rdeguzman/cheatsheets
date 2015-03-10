---
layout: default
---
Android Cheatsheet
---

## Keystore

### Display SHA1 for keystore

Typically used in Google Maps

	# keytool -list -v -keystore ~/.android/debug.keystore -alias your_alias

### Genereate hash from keystore

Typically used in Facebook

	# keytool -exportcert -alias your_alias -keystore debug.keystore | openssl sha1 -binary | openssl base64
	

## adb

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
	
## styles

### parent style

	<style name="BasicColumn">
        <item name="android:layout_height">wrap_content</item>
        <item name="android:textSize">@dimen/table_text</item>
        <item name="android:layout_weight">1</item>
        <item name="android:padding">5dp</item>
    </style>
    <style name="JobDetailsTextViewColumn" parent="@style/BasicColumn">
        <item name="android:layout_width">450dp</item>
        <item name="android:textStyle">bold</item>
    </style>	
	
	    
