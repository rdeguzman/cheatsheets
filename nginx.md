---
layout: default
---
nginx CheatSheet
---

## homebrew
	% brew install nginx
	==> Installing dependencies for nginx: pcre
	==> Installing nginx dependency: pcre
	==> Downloading https://homebrew.bintray.com/bottles/pcre-8.40.el_capitan.bottle.tar.gz
	######################################################################## 100.0%
	==> Pouring pcre-8.40.el_capitan.bottle.tar.gz
	🍺  /usr/local/homebrew/Cellar/pcre/8.40: 204 files, 5.4MB
	==> Installing nginx
	==> Using the sandbox
	==> Downloading https://nginx.org/download/nginx-1.10.3.tar.gz
	######################################################################## 100.0%
	==> ./configure --prefix=/usr/local/homebrew/Cellar/nginx/1.10.3 --with-http_ssl_module --with-pcre --sbin-path=/usr/local/homebrew/Cellar/nginx/1.10.3/bin/nginx --with-cc-opt=-I/usr/local/homebrew/opt/pcre/inc
	==> make install
	==> Caveats
	Docroot is: /usr/local/homebrew/var/www
	
	The default port has been set in /usr/local/homebrew/etc/nginx/nginx.conf to 8080 so that
	nginx can run without sudo.
	
	nginx will load all files in /usr/local/homebrew/etc/nginx/servers/.
	
	To have launchd start nginx now and restart at login:
	  brew services start nginx
	Or, if you don't want/need a background service you can just run:
	  nginx
	==> Summary
	🍺  /usr/local/homebrew/Cellar/nginx/1.10.3: 8 files, 980.9KB, built in 34 seconds
	brew install nginx  61.76s user 13.46s system 171% cpu 43.939 total

