---
layout: default
---
Homebrew CheatSheet
---

### Commands	

	brew list            # list all installed
	brew update          # update homebrew packages
	brew outdated        # list all packages not up-to-date
	brew pin postgresql  # pin package to a specific version
	brew upgrade         # upgrade all packages
	brew upgrade mysql   # upgrade specific package
	brew tap             # list tapped repositories
	brew tap <tapname>   # add tap
	brew untap <tapname> # remove a tap

	brew services stop postgresql #stop/start postgres
	brew services stop httpd #stop/start httpd

  Updating Homebrew...
  ==> Downloading https://www.apache.org/dyn/closer.cgi?path=httpd/httpd-2.4.33.tar.bz2
  Already downloaded: /Users/rupert/Library/Caches/Homebrew/httpd-2.4.33.tar.bz2
  ==> ./configure --enable-layout=Slackware-FHS --prefix=/usr/local/homebrew/Cellar/httpd/2.4.33 --sbindir=/usr/local/homebrew/Cellar/httpd/2.4.33/bin --mandir=/usr/local/homebrew/Cellar/httpd/2.4.33/share/ma
  ==> make install
  ==> Caveats
  DocumentRoot is /usr/local/homebrew/var/www.

  The default ports have been set in /usr/local/homebrew/etc/httpd/httpd.conf to 8080 and in
  /usr/local/homebrew/etc/httpd/extra/httpd-ssl.conf to 8443 so that httpd can run without sudo.

  To have launchd start httpd now and restart at login:
    brew services start httpd
    Or, if you don't want/need a background service you can just run:
      apachectl start
      ==> Summary
      🍺  /usr/local/homebrew/Cellar/httpd/2.4.33: 1,600 files, 26.2MB, built in 1 minute 47 seconds
      brew install httpd24  243.93s user 70.38s system 248% cpu 2:06.35 total
