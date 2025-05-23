#!/bin/bash

# Check if the user provided the source folder as an argument, else use the default one
SOURCE_FOLDER="/home/teja009/DevOps_Guide/Bash_Powershell/Bash_Basic_2_Advance/Diff_files"

# Ensure the folder exists
if [[ ! -d "$SOURCE_FOLDER" ]]; then
    echo "Error: The folder '$SOURCE_FOLDER' does not exist."
    exit 1
fi

# Find all files in the folder, get their extensions, and count them
echo "Counting files by extension in '$SOURCE_FOLDER'..."

find "$SOURCE_FOLDER" -maxdepth 1 -type f | \
    awk -F. '{ if (NF > 1) { ext = tolower($NF); counts[ext]++ } } \
    END { \
        if (length(counts) == 0) { \
            print "No files with extensions found." \
        } else { \
            for (ext in counts) print ext ": " counts[ext] \
        } \
    }'