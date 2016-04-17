#!/bin/bash
# exit if process is running
if ps aux | grep "[d]eluged" > /dev/null
then exit
else
# restart process
/usr/local/bin/deluged -d &
fi