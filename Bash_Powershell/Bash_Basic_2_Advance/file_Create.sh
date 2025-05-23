#!/bin/bash
# Directory to check/create
DIR="/home/teja009/DevOps_Guide/Bash_Powershell/Bash_Basic_2_Advance/File_filter"
# Check if the directory exists
if [ ! -d "$DIR" ]; then
  echo "Directory does not exist. Creating $DIR..."
  # Create the directory
  mkdir -p "$DIR"
  # Set permissions: rwx for owner, group, and others
  chmod 777 "$DIR"
  echo "Directory created and permissions set to 777."
else
  echo "Directory already exists."
fi
