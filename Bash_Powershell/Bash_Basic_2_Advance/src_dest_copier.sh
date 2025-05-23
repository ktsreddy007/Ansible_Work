#!/bin/bash

# Define source and destination directories
source_dir="/home/teja009/DevOps_Guide/Bash_Powershell/Bash_Basic_2_Advance/Diff_files"
destination_dir="/home/teja009/DevOps_Guide/Bash_Powershell/Bash_Basic_2_Advance/Unique_Files"

# Ensure the destination directory exists
mkdir -p "$destination_dir"

# Find .tar files and copy them to the destination directory
find "$source_dir" -type f -name "*.txt" -exec mv {} "$destination_dir" \;

echo "All .tar files have been copied to $destination_dir."
