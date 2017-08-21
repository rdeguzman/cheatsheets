---
layout: default
---
FreeBSD Cheatsheet
---

####Change Hostname
    # vim /etc/rc.conf
    hostname="joanna"

### Ports Management

#### Installing packages

	% pkg_info				# List all ports (FreeBSD 9)
	% pkg info				# List all ports (FreeBSD 10)
	% pkg install <name>	# Install package
	% env ASSUME_ALWAYS_YES=YES pkg install <name>

#### Before upgrading 

	Read /usr/ports/UPDATING
    
#### Upgrading ports collection
    # portsnap fetch
    # portsnap extract
    
#### Installing using portmaster
	# cd /usr/ports/ports-mgmt/portmaster
	# make install clean

#### Building via port    
   	% make config-recursive		# Show all configs before building
   	% env BATCH=yes				# Answers "YES" to all configs  
   	
#### ntpdate
   ntpdate -v -b in.pool.ntp.org 

## Process

	ps  -auwxx   
	    -w      Use 132 columns to display information, instead of the default
	         which is your window size.  If the -w option is specified more
	         than once, ps will use as many columns as necessary without
	         regard for your window size.  Note that this option has no effect
	         if the ``command'' column is not the last column displayed.
