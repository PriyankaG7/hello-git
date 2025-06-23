#!/bin/bash

# Set variables
HOME_DIR="$HOME"
SOURCE_DIR="$HOME/Downloads"
DEST_DIR="$HOME/organized_files"
LOG_FILE="$DEST_DIR/file_organizer.log"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Get current timestamp for log start
echo "===== File Organizer Run at $(date '+%Y-%m-%d %H:%M:%S') =====" >> "$LOG_FILE"

# Loop through all .txt files in Downloads
for file in "$SOURCE_DIR"/*.txt; do
    # Check if any .txt files exist
    [ -e "$file" ] || continue

    # Extract base filename and extension
    base_name=$(basename "$file" .txt)
    timestamp=$(date '+%Y%m%d_%H%M%S')
    new_name="${base_name}_${timestamp}.txt"

    # Move and rename the file
    mv "$file" "$DEST_DIR/$new_name"

    # Log the operation
    echo "Moved: $file → $DEST_DIR/$new_name at $timestamp" >> "$LOG_FILE"
done

