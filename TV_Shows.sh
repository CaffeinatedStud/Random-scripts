#!/bin/bash
date=$(date +"%b %d %T")
cd "/Path_to_Sorting_folder" #It will check this folder for name match. Input your own folder path here 
for filename in *; do
  
  case "${filename,,*}" in #examples of filename below, remove them to suit your needs
    the.originals.*)    mv "$filename" "/media/TV_shows/The.Originals" ;; 
    supergirl.*) mv "$filename" "/media/TV_shows/Supergirl" ;;
    suits.*) mv "$filename" "/media/TV_shows/Suits" ;;
    #You can put as many shows as you want
    *) echo "$date I don't know where to put $filename"  >> /Path_To_log/TV_Shows.log ;; #File found inside the folder without a match in the script will echo an error.
  esac
done

#By CaffeinatedStud 
#https://github.com/CaffeinatedStud/
#http://caffeinatedstud.wordpress.com/
