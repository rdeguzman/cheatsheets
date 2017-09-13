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
## Memory

	# top -Pa
	# vmstat
	# curl -O https://raw.githubusercontent.com/ocochard/myscripts/master/FreeBSD/freebsd-memory.sh
	[root@mozart ~]# bash freebsd-memory.sh
	SYSTEM MEMORY INFORMATION:
	mem_wire:        1021009920 (    973MB) [  8%] Wired: disabled for paging out
	mem_active:  +    284577792 (    271MB) [  2%] Active: recently referenced
	mem_inactive:+   6536609792 (   6233MB) [ 52%] Inactive: recently not referenced
	mem_cache:   +       172032 (      0MB) [  0%] Cached: almost avail. for allocation
	mem_free:    +   4609953792 (   4396MB) [ 37%] Free: fully available for allocation
	mem_gap_vm:  +         4096 (      0MB) [  0%] Memory gap: UNKNOWN
	______________ ____________ ___________ ______
	mem_all:     =  12452327424 (  11875MB) [100%] Total real memory managed
	mem_gap_sys: +    340258816 (    324MB)        Memory gap: Kernel?!
	______________ ____________ ___________
	mem_phys:    =  12792586240 (  12199MB)        Total real memory available
	mem_gap_hw:  +     92315648 (     88MB)        Memory gap: Segment Mappings?!
	______________ ____________ ___________
	mem_hw:      =  12884901888 (  12288MB)        Total real memory installed
	
	SYSTEM MEMORY SUMMARY:
	mem_used:        1738166272 (   1657MB) [ 13%] Logically used memory
	mem_avail:   +  11146735616 (  10630MB) [ 86%] Logically available memory
	______________ ____________ __________ _______
	mem_total:   =  12884901888 (  12288MB) [100%] Logically total memory