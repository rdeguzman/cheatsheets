FreeBSD Cheatsheet
---

####Change Hostname
    # vim /etc/rc.conf
    hostname="joanna"

### Ports Management

### Before upgrading 

	Read /usr/ports/UPDATING
    
####Upgrading ports collection
    # portsnap fetch
    # portsnap extract
    
####Installing portmaster
	# cd /usr/ports/ports-mgmt/portmaster
	# make install clean
    
    
    
    
