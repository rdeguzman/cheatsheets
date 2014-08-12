#!/bin/sh
# Usage: bandwidth.sh http://path.to/somefile 
echo "scale=2; `curl  --progress-bar -w "%{speed_download}" $1 -o test.zip` / 131072" | bc | xargs -I {} echo {}Mb\/s
