---
layout: default
---
Keystore Cheatsheet
---

## Keystore

### Generate keystore

	# keytool -genkey -v -keystore foobar.keystore -alias foobar -keyalg RSA -keysize 2048 -validity 10000

### Display SHA1 for keystore

Typically used in Google Maps

	# keytool -list -v -keystore ~/.android/debug.keystore -alias your_alias

### Genereate hash from keystore

Typically used in Facebook

	# keytool -exportcert -alias your_alias -keystore debug.keystore | openssl sha1 -binary | openssl base64
