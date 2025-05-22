#! /bin/bash
#Code to find unique file from the folder which has many multiple file formats.
# Check if the correct number of arguments is passed
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_folder> <destination_folder>"
    exit 1
fi

SOURCE_FOLDER="$1"
DEST_FOLDER="$2"

# Check if source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Error: Source folder '$SOURCE_FOLDER' does not exist."
    exit 1
fi

# Create destination folder if it doesn't exist
if [ ! -d "$DEST_FOLDER" ]; then
    echo "Creating destination folder '$DEST_FOLDER'..."
    mkdir -p "$DEST_FOLDER"
fi

# Find unique file extensions and copy one example of each
echo "Copying one file of each unique format from '$SOURCE_FOLDER' to '$DEST_FOLDER'..."

find "$SOURCE_FOLDER" -maxdepth 1 -type f | \
    sed -n 's/.*\.\([a-zA-Z0-9]\+\)$/\1/p' | \
    sort | uniq | while read ext; do
        file_to_copy=$(find "$SOURCE_FOLDER" -maxdepth 1 -type f -name "*.$ext" | head -n 1)
        if [ -n "$file_to_copy" ]; then
            cp "$file_to_copy" "$DEST_FOLDER"
            echo "Copied: $(basename "$file_to_copy")"
        fi
    done

echo "Done."