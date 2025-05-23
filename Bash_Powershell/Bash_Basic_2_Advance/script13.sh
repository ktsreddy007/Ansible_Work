#!/bin/bash
#This code is about finding the Unzipped files from a Dir zipping those files and making them to move to other folder
#Check if correct number of arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Error: Please pass both source folder and destination folder."
	echo "Usage: $0 <source_folder> <destination_folder>"
	exit 1
fi
#Get the source and destination folder from CLI
SOURCE_FOLDER="$1"
DEST_FOLDER="$2" 
#Check if the source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
	echo "Error:Source folder '$SOURCE_FOLDER' does not exist"
	exit 1
fi
#Check if the destination folder exists, if not create it
if [ ! -e "$DEST_FOLDER" ]; then
  echo "Directory does not exist. Creating $DIR..."
  # Create the directory
  mkdir -p "$DEST_FOLDER"
  # Set permissions: rwx for owner, group, and others
  chmod 777 "$DEST_FOLDER"
  echo "Directory created and permissions set to 777."
  else
  echo "Directory '$DEST_FOLDER' already exists."	
fi

#Checking the Count of the files in the Source folder
# Count the number of .tar and .txt files in the source folder
tar_count=$(find "$SOURCE_FOLDER" -maxdepth 1 -type f -name "*.tar" | wc -l)
txt_count=$(find "$SOURCE_FOLDER" -maxdepth 1 -type f -name "*.txt" | wc -l)
# Print the total number of files
echo "Number of .tar files: $tar_count"
echo "Number of .txt files: $txt_count"
echo "Total number of files: $(($tar_count + $txt_count))"
#Loop through all files in the source  folder
