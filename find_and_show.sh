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
javascript_code="require(['gitbook', 'jquery'], function(gitbook, $) {
    var file_name = "Тезона_синий.png";

    # Поиск файла вверх и вниз по директориям
    var found_file = $(location).attr('pathname') + '/' + file_name;

    if (found_file) {
        console.log("Найден файл: " + found_file);

        # Функция для создания элемента img и добавления его в DOM
        function createImageElement(src, width) {
            var img = document.createElement('img');
            img.src = src;
            img.width = width;
            return img;
        }

        # Предварительно определите переменную SITES с объектом
        var SITES = {
            'Tezona': {
                'imagePath': found_file,
                'imageWidth': 100
            }
        };

        Object.keys(SITES).forEach(function(site) {
            var siteInfo = SITES[site];

            if (siteInfo.imagePath) {
                gitbook.toolbar.createButton({
                    icon: createImageElement(siteInfo.imagePath, siteInfo.imageWidth),
                    position: 'right'
                });
            }
        });
    } else {
        console.log("Файл не найден вверх или вниз по директориям.");
    }
});"

if [ -f "$buttons_file" ]; then
  echo "Contents of $buttons_file before clearing:"
  cat "$buttons_file"
  echo "Clearing contents of $buttons_file"
  > "$buttons_file"

  # Добавляем JavaScript-код в файл
  echo "$javascript_code" >> "$buttons_file"
  echo "JavaScript code added to $buttons_file"
else
  echo "File $buttons_file not found."
fi

echo "--------------------------------------------------------"
