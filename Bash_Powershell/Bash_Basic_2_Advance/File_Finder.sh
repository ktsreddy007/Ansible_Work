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

# Find all files, extract extensions, and process them
find "$SOURCE_FOLDER" -maxdepth 1 -type f | while read file; do
    # Extract the extension, handle multi-part extensions
    extension="${file##*.}"
    base_name="${file%.*}"

    # For cases like .tar.gz, .tar.bz2, or similar, consider the full extension
    if [[ "$base_name" =~ \.tar$ || "$base_name" =~ \.gz$ || "$base_name" =~ \.bz2$ ]]; then
        extension="${file##*.}"
    fi

    # Check if the extension is unique (avoid duplicates)
    if ! echo "$seen_extensions" | grep -q "\b$extension\b"; then
        # Add the extension to the seen list
        seen_extensions="$seen_extensions$extension "

        # Copy the first file with that extension
        cp "$file" "$DEST_FOLDER"
        echo "Copied: $(basename "$file")"
    fi
done

echo "Done."