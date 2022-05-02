# Ubuntu

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

### FileSystems lsblk

	$ sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL
	NAME    FSTYPE SIZE MOUNTPOINT LABEL
	xvda             8G
	└─xvda1 ext4     8G /          cloudimg-rootfs
	xvdh    ext4    40G /kafka
	
	$ sudo lsblk -f
	NAME    FSTYPE LABEL           UUID                                 MOUNTPOINT
	xvda
	└─xvda1 ext4   cloudimg-rootfs 3e13556e-d28d-407b-bcc6-97160eafebe1 /
	xvdh    ext4                   626fde3f-cf51-4371-8d71-263c1c3c49d7 /kafka	
	
## Mount	
	
	#!/bin/bash
	# Use ansible mount role in roles/mount/tasks
	
	while [ ! -e /dev/xvdh ]; do sleep 1; done
	
	fstab_string='/dev/xvdh /data ext4 defaults,nofail 0 2'
	if grep -q -F -v "$fstab_string" /etc/fstab; then
	  echo "$fstab_string" | sudo tee -a /etc/fstab
	fi
	
	sudo mkfs -t ext4 /dev/xvdh
	sudo mkdir -p /data && sudo mount -t ext4 /dev/xvdh /data
	