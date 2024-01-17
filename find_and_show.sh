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

css_file="_book/gitbook/style.css"

if [ -f "$css_file" ]; then
  echo "Contents of $css_file :"
  cat "$css_file"
else
  echo "File $css_file not found."
fi

echo "--------------------------------------------------------"

search_string="book-header"
start_directory="_book/"

found_file=$(grep -rl "$search_string" "$start_directory")

if [ -n "$found_file" ]; then
  echo "Файл найден: $found_file"
  echo "Содержимое файла:"
  cat "$found_file"
else
  echo "Файл не найден по строке '$search_string'."
fi

echo "--------------------------------------------------------"
