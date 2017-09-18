---
layout: default
---
Ubuntu Cheatsheet
---

### Change Hostname
    # vim /etc/hostname
    # reboot

### Services
    Check service
    # service --status-all
    [+] - (service name) will start on boot. 
    [-] - (service name) will not start on boot. 

	Installs service
    # update-rc.d SERVICENAME defaults
    
    Remove service
    # update-rc.d -f SERVICENAME remove
