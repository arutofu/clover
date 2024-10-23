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
echo "Adafruit_DHT for DHT11 installed"

# Устанавливаем библиотеки для работы с GPIO
sudo pip3 install RPi.GPIO
echo "RPi.GPIO for GPIO installed"

sudo apt-get install -y wget unzip git
echo "wget installed"

# Устанавливаем библиотеку wiringPi
sudo apt-get install -y wiringpi
echo "wiringPi installed"

# Устанавливаем библиотеку для работы с RTC DS1302 (модуль часов реального времени)
git clone https://github.com/dimp-gh/rpi-ds1302.git
cd rpi-ds1302
sudo python3 setup.py install
cd ..
rm -rf rpi-ds1302
echo "rpi-ds1302 for RTC DS1302 installed"

# Устанавливаем дополнительную библиотеку для работы с I2C, если понадобится
sudo apt-get install -y python3-smbus python3-dev i2c-tools
echo "The library for I2C installed just in case"

# Для остальных датчиков не требуется установка дополнительных библиотек, так как они используют стандартные GPIO библиотеки
echo "Others sensors dont want any libraries"
