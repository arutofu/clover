#!/bin/bash

echo "--------------------------------------------------------"

gitbook_folder="_book/gitbook"

if [ -d "$gitbook_folder" ]; then
  echo "Contents of $gitbook_folder:"
  ls -l "$gitbook_folder"
else
  echo "Directory $gitbook_folder not found."
fi

echo "--------------------------------------------------------"

gitbook_folder="_book/gitbook/gitbook-plugin-sharing"

if [ -d "$gitbook_folder" ]; then
  echo "Contents of $gitbook_folder:"
  ls -l "$gitbook_folder"
else
  echo "Directory $gitbook_folder not found."
fi

echo "--------------------------------------------------------"

buttons_file="_book/gitbook/gitbook-plugin-sharing/buttons.js"

if [ -f "$buttons_file" ]; then
  echo "Contents of $buttons_file before clearing:"
  cat "$buttons_file"
  echo "Clearing contents of $buttons_file"
  > "$buttons_file"
else
  echo "File $buttons_file not found."
fi

echo "--------------------------------------------------------"

search_string="book-header"
start_directory="_book/"
inserted_line='<p><img src="/assets/company_logo/Tezona_blue.png" width="270" align="center"></p>'

# Find files containing the "book-header" string
found_files=$(grep -rl "$search_string" "$start_directory")

# Iterate over the found files
for file in $found_files; do
  # Get the line where we are going to insert $inserted_line
  line_to_insert=$(grep -C 1 "$search_string" "$file" | tail -n 1)

  # Check if the line where we insert is empty
  if [ -z "$line_to_insert" ]; then
    # The line is empty, so insert the line
    sed -i '/<nav role="navigation">/i\'"$inserted_line" "$file"
    echo "String - $inserted_line - inserted into $file"
  else
    # The line is not empty, print a message and skip insertion
    echo "Line in $file is not empty. Skipping insertion."
  fi
done

echo "--------------------------------------------------------"
