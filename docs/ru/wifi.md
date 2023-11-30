# Подключение к $\color{red}{\textsf{🔴название дрона}}$ по Wi-Fi

На [образе для RPi](image.md) преднастроена раздача Wi-Fi с SSID `clover-xxxx` $\color{red}{\textsf{🔴изменить название сети}}$, где xxxx – 4 случайных цифры, назначаемых при первом включении Raspberry Pi.

Подключитесь к Wi-Fi, используя пароль `cloverwifi` $\color{red}{\textsf{🔴изменить пароль}}$.

<div class="image-group">
    <img src="../assets/wifi-ssid.png" width=300 class="zoom">
    <img src="../assets/wifi-pass.png" width=300 class="zoom">
</div>

Для изменения настроек Wi-Fi или получения более детальной информации о устройстве сети на Raspberry Pi прочитайте статью "[Настройка Wi-Fi](network.md)".

## Веб-интерфейс

После подключения к Клеверу по адресу http://192.168.11.1 будет доступен веб-интерфейс. В нем доступны основные веб-инструменты Клевера: просмотр топиков с изображениями, веб-терминал (Butterfly) а также полная копия данной документации.

<img src="../assets/web.png" alt="Веб-интерфейс Клевера" class="zoom">

**Далее**: [Подключение Raspberry Pi к полетному контроллеру](connection.md).
