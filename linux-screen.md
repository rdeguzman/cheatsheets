Linux Screen
---

### Basic Tutorial

####Creates a new screen session 1
    % screen -S 1           

####List all available screens
    % screen -list          
    There is a screen on:
      29760.1 (Detached)
    1 Socket in /tmp/screens/S-root.

####Attach to a currently running screen session
    % screen -r             

####Attach to a known screen session
    % screen -r 29760.1     

### Key Shortcuts
    cmd + a d               Detaches a screen 
