# gdal2 

## install by homebrew

	% brew tap osgeo/osgeo4mac
	
	Updating Homebrew...
	==> Auto-updated Homebrew!
	Updated 1 tap (homebrew/cask).
	No changes to formulae.
	
	==> Tapping osgeo/osgeo4mac
	Cloning into '/usr/local/homebrew/Library/Taps/osgeo/homebrew-osgeo4mac'...
	remote: Counting objects: 180, done.
	remote: Compressing objects: 100% (162/162), done.
	remote: Total 180 (delta 33), reused 37 (delta 1), pack-reused 0
	Receiving objects: 100% (180/180), 211.63 KiB | 145.00 KiB/s, done.
	Resolving deltas: 100% (33/33), done.
	Tapped 83 formulae (194 files, 868.0KB)

brew install gdal2 --with-postgresql

	% brew install gdal2 --with-postgresql
	==> Downloading http://download.osgeo.org/gdal/2.3.1/gdal-2.3.1.tar.gz
	######################################################################## 100.0%
	==> Patching
	patching file swig/java/GNUmakefile
	==> ./configure --prefix=/usr/local/homebrew/Cellar/gdal2/2.3.1 --mandir=/usr/local/homebrew/Cellar/gdal2/2.3.1/share/man --with-local=/usr/local/homebrew/Cellar/gdal2/2.3.1 --with-threads --with-libtool --
	==> make
	
	==> make install
	==> make install-man
	==> Caveats
	Plugins for this version of GDAL/OGR, generated by other formulae, should
	be symlinked to the following directory:
	
	  /usr/local/homebrew/lib/gdalplugins/2.3
	
	You may need to set the following enviroment variable:
	
	  export GDAL_DRIVER_PATH=/usr/local/homebrew/lib/gdalplugins
	
	PYTHON BINDINGS are now built in a separate formula: gdal2-python
	
	This formula is keg-only, which means it was not symlinked into /usr/local/homebrew,
	because older version of gdal is in main tap and installs similar components.
	
	If you need to have this software first in your PATH run:
	  echo 'export PATH="/usr/local/homebrew/opt/gdal2/bin:$PATH"' >> ~/.zshrc
	
	For compilers to find this software you may need to set:
	    LDFLAGS:  -L/usr/local/homebrew/opt/gdal2/lib
	    CPPFLAGS: -I/usr/local/homebrew/opt/gdal2/include
	For pkg-config to find this software you may need to set:
	    PKG_CONFIG_PATH: /usr/local/homebrew/opt/gdal2/lib/pkgconfig
	
	==> Summary
	🍺  /usr/local/homebrew/Cellar/gdal2/2.3.1: 232 files, 45.8MB, built in 8 minutes 7 seconds
	brew install gdal2  2754.32s user 319.06s system 626% cpu 8:10.50 total

## install by kyngchaos

- Download installer from http://www.kyngchaos.com/software/frameworks/
- Append to path

		# GDAL
		export PATH=$PATH:/Library/Frameworks/GDAL.framework/Programs