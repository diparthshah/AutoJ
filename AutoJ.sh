#!/bin/bash
echo "         _         _            _  
        / \  _   _| |_ ___     | |
       / _ \| | | | __/ _ \ _  | |
      / ___ \ |_| | || (_) | |_| |
     /_/   \_\__,_|\__\___/ \___/ 
                                   "

echo "---------------------------------"
echo "           File List             "
echo "---------------------------------"
ls -r |grep ".java"
if [ $? -eq 1 ]
then
  echo "No Java files found"
else
echo
echo Enter Java File Name : 
read fname
javac $fname".java"
if [ $? -eq 1 ]
then
  echo "Compilation Error"
else
java $fname
fi 
fi

