#!/bin/bash

echo "--------------------------------------------------------"

gitbook_file="_book/gitbook/style.css"

if [ -f "$gitbook_file" ]; then
  echo "Contents of $gitbook_file:"
  cat "$gitbook_file"
else
  echo "File $gitbook_file not found."
fi

echo "--------------------------------------------------------"

target_string='btn pull-right js-toolbar-action'
files_with_string=$(grep -rl "$target_string" _book/*)
echo "Files containing the target string:"
echo "$files_with_string"

for file in $files_with_string; do
  echo "Content of $file:"
  cat "$file"
done || true

echo "--------------------------------------------------------"
