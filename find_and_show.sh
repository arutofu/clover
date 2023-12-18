#!/bin/bash

target_string='<a class="btn pull-right js-toolbar-action" aria-label="" href="#"><i class="fa fa-twitter"></i></a>'
files_with_string=$(grep -rl "$target_string" _book)
echo "Files containing the target string:"
echo "$files_with_string"

# Output content of files
for file in $files_with_string; do
  echo "Content of $file:"
  cat "$file"
done || true  # Продолжить выполнение даже если cat завершится неудачно (для пустых файлов)
