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

# Поиск файла, содержащего искомую строку
found_file=$(grep -rl "$search_string" "$start_directory")

# Проверка, найден ли файл
if [ -n "$found_file" ]; then
  echo "File found: $found_file"

  # Получение строки перед найденной
  line_before=$(grep -B 1 "$search_string" "$found_file" | head -n 1)

  # Проверка строки перед найденной на пустоту
  if [ -z "$line_before" ]; then
    echo "The line before $search_string is empty. Inserting the line."

    # Вставка строки в файл
    sed -i "/$search_string/i\\$inserted_line" "$found_file"
    echo "String - $inserted_line - inserted"
  else
    echo "The line before $search_string is not empty. Skipping insertion."
  fi

  # Вывод содержимого файла после вставки
  echo "Contents of $found_file after insertion:"
  cat "$found_file"
else
  echo "File not found with the string '$search_string'."
fi

echo "--------------------------------------------------------"
