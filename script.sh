#!/bin/bash

# script to change permission of file 

# File variable to store file.txt location 
FILE="file.txt"

echo $USER 

# to check the file we want to change 
# exists or not
if [[ ! -e  "${FILE}" ]]
then
   echo "creating  ${FILE} file"
   touch file.txt
fi

#to check the file permission
ls -l  "${FILE}"

# to remove write permission of group user and other user of file
chmod go-wx "${FILE}"

#to check if the permission are removed
ls -l  "${FILE}"