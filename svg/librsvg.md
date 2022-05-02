---
layout: default
---
librsvg CheatSheet
---

### brew install librsvg

	# brew install librsvg
	==> Installing librsvg
	==> Downloading https://download.gnome.org/sources/librsvg/2.42/librsvg-2.42.2.tar.xz
	Already downloaded: /Users/rupert/Library/Caches/Homebrew/librsvg--2.42.2.tar.xz
	==> ./configure --prefix=/usr/local/homebrew/Cellar/librsvg/2.42.2_2 --disable-Bsymbolic --enable-tools=yes --enable-pixbuf-loader=yes --enable-introspection=yes
	==> make install gdk_pixbuf_binarydir=/usr/local/homebrew/Cellar/librsvg/2.42.2_2/lib/gdk-pixbuf-2.0/2.10.0/loaders gdk_pixbuf_moduledir=/usr/local/homebrew/Cellar/librsvg/2.42.2_2/lib/gdk-pixbuf-2.0/2.10.0
	==> /usr/local/homebrew/opt/gdk-pixbuf/bin/gdk-pixbuf-query-loaders --update-cache
	🍺  /usr/local/homebrew/Cellar/librsvg/2.42.2_2: 55 files, 5.2MB, built in 1 minute 15 seconds
	==> Caveats
	==> cmake
	Emacs Lisp files have been installed to:
	  /usr/local/homebrew/share/emacs/site-lisp/cmake
	==> openssl
	A CA file has been bootstrapped using certificates from the SystemRoots
	keychain. To add additional certificates (e.g. the certificates added in
	the System keychain), place .pem files in
	  /usr/local/homebrew/etc/openssl/certs
	
	and run
	  /usr/local/homebrew/opt/openssl/bin/c_rehash
	
	openssl is keg-only, which means it was not symlinked into /usr/local/homebrew,
	because Apple has deprecated use of OpenSSL in favor of its own TLS and crypto libraries.
	
	If you need to have openssl first in your PATH run:
	  echo 'export PATH="/usr/local/homebrew/opt/openssl/bin:$PATH"' >> ~/.zshrc
	
	For compilers to find openssl you may need to set:
	  export LDFLAGS="-L/usr/local/homebrew/opt/openssl/lib"
	  export CPPFLAGS="-I/usr/local/homebrew/opt/openssl/include"
	
	For pkg-config to find openssl you may need to set:
	  export PKG_CONFIG_PATH="/usr/local/homebrew/opt/openssl/lib/pkgconfig"
	
	brew install librsvg  15913.55s user 1175.25s system 372% cpu 1:16:29.15 total

	# ln -s /usr/local/Homebew/opt /usr/local/opt
	# mkdir -p /opt/X11
	# ln -s /opt/X11/lib /usr/local/homebrew/lib
