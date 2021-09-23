---
layout: default
---
Linux Open Port CheatSheet
---

### List Open Ports

    % telnet IP PORT
    % netstat -lntu # Linux
    % lsof -PiTCP -s TCP:LISTEN # OSX
    % nc -v IP PORT
