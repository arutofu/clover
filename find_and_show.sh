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

start_directory="_book/ru/"
search_string="<nav role=\"navigation\">"
inserted_line='<p><a href="https://www.tezona.ru/"><img src="../assets/company_logo/Тезона_синий.png" width="270" align="center"></a></p>'

found_files=$(grep -rl --include='*.html' "$search_string" "$start_directory")

for found_file in $found_files; do
  echo "File found: $found_file"

  # Вставка новой строки перед найденной строкой
  sed -i "/$search_string/i $inserted_line" "$found_file"

  # Перенос строки, содержащей искомую строку, на следующую строку
  sed -i "/$search_string/s/$/\\n/" "$found_file"
done

echo "--------------------------------------------------------"
