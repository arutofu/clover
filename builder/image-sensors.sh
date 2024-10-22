#!/bin/bash

set -e # Exit immidiately on non-zero result

echo_stamp() {
  # TEMPLATE: echo_stamp <TEXT> <TYPE>
  # TYPE: SUCCESS, ERROR, INFO

  # More info there https://www.shellhacks.com/ru/bash-colors/

  TEXT="$(date '+[%Y-%m-%d %H:%M:%S]') $1"
  TEXT="\e[1m${TEXT}\e[0m" # BOLD

  case "$2" in
    SUCCESS)
    TEXT="\e[32m${TEXT}\e[0m";; # GREEN
    ERROR)
    TEXT="\e[31m${TEXT}\e[0m";; # RED
    *)
    TEXT="\e[34m${TEXT}\e[0m";; # BLUE
  esac
  echo -e ${TEXT}
}

#!/bin/bash

# Обновляем систему
sudo apt-get update
sudo apt-get upgrade -y

# Устанавливаем Python 3, pip и необходимые пакеты для виртуальных окружений
sudo apt-get install -y python3 python3-pip python3-venv

# Создаём виртуальное окружение для установки пакетов
python3 -m venv sensor-env
source sensor-env/bin/activate

# Устанавливаем библиотеку для работы с DHT11 (датчик температуры и влажности)
pip install Adafruit_DHT

# Устанавливаем библиотеки для работы с GPIO
pip install RPi.GPIO

# Устанавливаем библиотеку для работы с RTC DS1302 (модуль часов реального времени)
# Клонируем репозиторий с использованием анонимного доступа
git clone git://github.com/Seeed-Studio/RTC_DS1302.git || {
    echo "Ошибка клонирования репозитория RTC_DS1302. Убедитесь, что у вас есть доступ в интернет или выполните клонирование вручную."
    exit 1
}

cd RTC_DS1302
sudo python3 setup.py install || {
    echo "Ошибка установки библиотеки RTC_DS1302."
    exit 1
}
cd ..

# Устанавливаем дополнительную библиотеку для работы с I2C, если понадобится
sudo apt-get install -y python3-smbus python3-dev i2c-tools

# Выводим предупреждение о том, что скрипт запущен от root
echo "Предупреждение: если вы не используете виртуальное окружение, запуск pip от root может привести к проблемам с правами доступа."

