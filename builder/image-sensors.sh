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

# Устанавливаем Python 3 и pip, если не установлены
sudo apt-get install -y python3 python3-pip

# Устанавливаем библиотеку для работы с DHT11 (датчик температуры и влажности)
sudo pip3 install Adafruit_DHT

# Устанавливаем библиотеки для работы с GPIO
sudo pip3 install RPi.GPIO

sudo apt-get install -y wget unzip git

# Устанавливаем библиотеку wiringPi
sudo apt-get install -y wiringpi

# Устанавливаем библиотеку для работы с RTC DS1302 (модуль часов реального времени)
git clone https://github.com/dimp-gh/rpi-ds1302.git
cd rpi-ds1302
sudo python3 setup.py install
cd ..
rm -rf rpi-ds1302

# Для остальных датчиков не требуется установка дополнительных библиотек, так как они используют стандартные GPIO библиотеки

# Устанавливаем дополнительную библиотеку для работы с I2C, если понадобится
sudo apt-get install -y python3-smbus python3-dev i2c-tools

