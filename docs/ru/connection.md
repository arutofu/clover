# Подключение Raspberry Pi к полетному контроллеру

Для программирования [автономных полетов](simple_offboard.md), [работы с Pixhawk (Pixracer) по Wi-Fi](gcs_bridge.md), использования [телефонного пульта](rc.md) и других функций необходимо соединение Raspberry Pi и полетного контроллера.

## Подключение по USB

Основным способом подключения является подключение по интерфейсу USB.

1. Соедините Raspberry Pi и полетный контроллер micro-USB to USB кабелем.
2. [Подключитесь в Raspberry Pi по SSH](ssh.md).
3. Убедитесь в работоспособности подключения, [выполнив на Raspberry Pi](ssh.md):

    ```bash
    rostopic echo /mavros/state
    ```

    Поле `connected` должно содержать значение `True`.

**Далее**: [Подключение QGroundControl по Wi-Fi](gcs_bridge.md).
