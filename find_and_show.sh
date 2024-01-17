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
search_string='<nav role="navigation">'
inserted_line='<p><img src="../assets/company_logo/Тезона_синий.png" width="270" align="center"></p>'

# Поиск файлов, содержащих искомую строку в указанной директории и её поддиректориях
found_files=$(grep -rl "$search_string" "$start_directory")

# Проверка, найдены ли файлы
if [ -n "$found_files" ]; then
  for found_file in $found_files; do
    echo "File found: $found_file"

    # Проверка, пуста ли строка перед искомой строкой
    line_before_search=$(grep -B 1 "$search_string" "$found_file" | head -n 1)
    if [ -z "$line_before_search" ]; then
      # Вставка строки, если строка перед искомой строкой пуста
      sed -i '/<nav role="navigation">/i\'"$inserted_line" "$found_file"
      echo "String - $inserted_line - inserted into $found_file"
    else
      echo "Line before $search_string is not empty in $found_file. String not inserted."
    fi
  done
else
  echo "No files found containing the search string '$search_string' in the specified directory and its subdirectories."
fi

echo "--------------------------------------------------------"
