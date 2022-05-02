# Homebrew

## Commands	

	brew list            # list all installed
	brew update          # update homebrew packages
	brew outdated        # list all packages not up-to-date
	brew pin postgresql  # pin package to a specific version
	brew upgrade         # upgrade all packages
	brew upgrade mysql   # upgrade specific package
	brew tap             # list tapped repositories
	brew tap <tapname>   # add tap
	brew untap <tapname> # remove a tap
	brew edit <formula>  # edit a formula
	brew install -vd  <formula>    # install verbose
	brew cleanup -s      #  cleanup cache

	brew services stop postgresql #stop/start postgres
	brew services stop httpd #stop/start httpd


### brew install python

	Python has been installed as
	  /usr/local/homebrew/bin/python3
	
	Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
	`python3`, `python3-config`, `pip3` etc., respectively, have been installed into
	  /usr/local/homebrew/opt/python@3.8/libexec/bin
	
	You can install Python packages with
	  pip3 install <package>
	They will install into the site-package directory
	  /usr/local/homebrew/lib/python3.8/site-packages
	
	See: https://docs.brew.sh/Homebrew-and-Python
	==> Summary
	🍺  /usr/local/homebrew/Cellar/python@3.8/3.8.5: 9,031 files, 129.2MB, built in 2 minutes 37 seconds
	brew install python3  244.58s user 87.56s system 188% cpu 2:55.86 total	
