# PHP

### brew install php71

	brew install php71
	  ==> Installing dependencies for php@7.1: webp
	  ==> Installing php@7.1 dependency: webp
	  ==> Downloading https://homebrew.bintray.com/bottles/webp-1.0.0.high_sierra.bottle.tar.gz
	  ######################################################################## 100.0%
	  ==> Pouring webp-1.0.0.high_sierra.bottle.tar.gz
	  🍺  /usr/local/homebrew/Cellar/webp/1.0.0: 38 files, 2MB
	  ==> Installing php@7.1
	  ==> Downloading https://php.net/get/php-7.1.19.tar.xz/from/this/mirror
	  ==> Downloading from https://secure.php.net/get/php-7.1.19.tar.xz/from/this/mirror
	  ######                                                                     8.7%
	  ######################################################################## 100.0%2
	  ==> ./configure --prefix=/usr/local/homebrew/Cellar/php@7.1/7.1.19 --localstatedir=/usr/local/homebrew/var --sysconfdir=/usr/local/homebrew/etc/php/7.1 --wi
	  ==> make
	  ==> make install
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set php_ini /usr/local/homebrew/etc/php/7.1/php.ini system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set php_dir /usr/local/homebrew/share/pear@7.1 system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set doc_dir /usr/local/homebrew/share/pear@7.1/doc system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set ext_dir /usr/local/homebrew/lib/php/pecl/20160303 system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set bin_dir /usr/local/homebrew/opt/php@7.1/bin system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set data_dir /usr/local/homebrew/share/pear@7.1/data system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set cfg_dir /usr/local/homebrew/share/pear@7.1/cfg system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set www_dir /usr/local/homebrew/share/pear@7.1/htdocs system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set man_dir /usr/local/homebrew/share/man system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set test_dir /usr/local/homebrew/share/pear@7.1/test system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear config-set php_bin /usr/local/homebrew/opt/php@7.1/bin/php system
	  ==> /usr/local/homebrew/Cellar/php@7.1/7.1.19/bin/pear update-channels
	  ==> Caveats
	  To enable PHP in Apache add the following to httpd.conf and restart Apache:
	      LoadModule php7_module /usr/local/homebrew/opt/php@7.1/lib/httpd/modules/libphp7.so
	
	      <FilesMatch \.php$>
	          SetHandler application/x-httpd-php
	      </FilesMatch>
	
	  Finally, check DirectoryIndex includes index.php
	      DirectoryIndex index.php index.html
	
	  The php.ini and php-fpm.ini file can be found in:
	      /usr/local/homebrew/etc/php/7.1/
	
	  This formula is keg-only, which means it was not symlinked into /usr/local/homebrew,
	  because this is an alternate version of another formula.
	
	  If you need to have this software first in your PATH run:
	    echo 'export PATH="/usr/local/homebrew/opt/php@7.1/bin:$PATH"' >> ~/.zshrc
	    echo 'export PATH="/usr/local/homebrew/opt/php@7.1/sbin:$PATH"' >> ~/.zshrc
	
	  For compilers to find this software you may need to set:
	      LDFLAGS:  -L/usr/local/homebrew/opt/php@7.1/lib
	      CPPFLAGS: -I/usr/local/homebrew/opt/php@7.1/include
	
	  To have launchd start php@7.1 now and restart at login:
	    brew services start php@7.1
	  Or, if you don't want/need a background service you can just run:
	    php-fpm
	  ==> Summary
	  🍺  /usr/local/homebrew/Cellar/php@7.1/7.1.19: 509 files, 67.2MB, built in 8 minutes 9 seconds
	  brew install php71  1092.44s user 549.76s system 329% cpu 8:19.12 total

## print new line

	 print_r($id . ':' . $href . "\xA");
