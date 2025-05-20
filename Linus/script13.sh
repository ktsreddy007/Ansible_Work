#!/bin/bash
#This code is about finding the Unzipped files from a Dir zipping those files and making them to move to other folder
#Check if correct number of arguments are passed
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <source_folder> <destination_folder>"
	exit 1
fi
#Get the source and destination folder from CLI
SOURCE_FOLDER="$1"
DEST_FOLDER="$2" 
#Check if the source folder exists
if [ ! -d "SOURCE_FOLDER" ]; then
	echo "Error:Source folder '$SOURCE_FOLDER' does not exist"
	exit 1
fi
#Check if the destination folder exists, if not create it
if [ ! -d "$DEST_FOLDER" ]; then
	echo "Destination folder '$DEST_FOLDER' does not exist.Creating it..."
	mkdir -p "$DEST_FOLDER" && chmod +w "$DEST_FOLDER"  
	if [ $? -ne  0 ]; then
	    echo "Failed to create destination folder '$DEST_FOLDER'.Please check permissions"
	exit 1
	fi
fi
#Loop through all files in the source  folder
for file in "$SOURCE_FOLDER" /*;
	do
		#check if the file is nto a zip file
		if [[ ! "$file" =~ \.tar$ ]]; then
		#if its not a zip file, create a zip file with the same name
    		tar -cf "$file.tar" "$file" && rm "$file"
		#move the newly created tar file to the destination file
		mv "$file.tar" "$DEST_FOLDER"
fi
done
