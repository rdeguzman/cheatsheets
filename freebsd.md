FreeBSD Cheatsheet
---

####Change Hostname
    # vim /etc/rc.conf
    hostname="joanna"

### Ports Management

#### List installed ports

    # pkg_info (FreeBSD9)
    # pkg info (FreeBSD10)

### Before upgrading 

	Read /usr/ports/UPDATING
    
####Upgrading ports collection
    # portsnap fetch
    # portsnap extract
    
####Installing portmaster
	# cd /usr/ports/ports-mgmt/portmaster
	# make install clean
    
    
    
    
