FreeBSD Network Cheatsheet
---

### See network traffic throughput, peak and total
    # systat -ifstat 1
      Interface           Traffic               Peak                Total
            lo0  in      8.413 KB/s         84.571 KB/s           18.319 GB
                 out     8.413 KB/s         84.571 KB/s           18.319 GB

           bge1  in    421.737 KB/s        653.780 KB/s          152.858 GB
                 out   118.691 KB/s        229.888 KB/s          101.888 GB

           bge0  in      4.957 KB/s         23.043 KB/s            5.690 GB
                 out     1.813 KB/s         58.368 KB/s          195.714 GB
    
    
    
    
