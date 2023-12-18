#!/bin/bash

gitbook_file="_book/gitbook"

if [ -f "$gitbook_file" ]; then
  echo "Contents of $gitbook_file:"
  cat "$gitbook_file"
else
  echo "File $gitbook_file not found."
fi

target_string='twitter'
files_with_string=$(grep -rl "$target_string" _book/*)
echo "Files containing the target string:"
echo "$files_with_string"

for file in $files_with_string; do
  echo "Content of $file:"
  cat "$file"
done || true

ru_folder="_book/ru"
if [ -d "$ru_folder" ]; then
  echo "Contents of $ru_folder:"
  ls -l "$ru_folder"
else
  echo "Directory $ru_folder not found."
fi
