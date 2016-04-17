#!/bin/bash
#make-run.sh
#make sure a process is always running.

process="deluged"
makerun="/usr/local/bin/deluged -p 58846 -L debug -l /home/Path_to_log/deluge.log"

date > /Path_To_Log/deluge2_sh.log

if ps ax | grep -vw grep | grep -w $process > /dev/null
        then
      echo "exiting" >> /Path_To_Log/deluge2_sh.log
                exit
        else
      echo "trying to run:" $makerun >> /Path_To_Log/deluge_sh.log
        $makerun &
        fi
exit