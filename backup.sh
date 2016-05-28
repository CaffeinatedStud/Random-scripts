#!/bin/bash

SUBDIR=/media/NAS/Raspberry_Pi/Image_Backup/Image
DIR=/media/NAS/Raspberry_Pi/Image_Backup

date=$(date +"%d_%m_%Y_%H-%M")
echo "______________________________________________________________________________________________________________________________" >>/home/yukino/Script_Logs/backup.log
echo "$date" >> /home/username/Script_Logs/backup.log
echo "Starting backup" >> /home/username/Script_Logs/backup.log
dd bs=4M if=/dev/mmcblk0 of=$DIR/$date.img
status=$?
if [ $status = 0 ];
	then
	  echo "Backup started on $date was completed without errors" >> /home/username/Script_Logs/backup.log
	  rm $SUBDIR/*.img
	  mv $DIR/$date.img $SUBDIR
	  exit 0
	else
	  echo "Backup started on $date failed" >> /home/username/Script_Logs/backup.log
	  rm -f $DIR/$date.img
	  exit 1
fi
