# Датчик огня/пламени (The flame sensor module)

Модуль датчика огня (Flame sensor module). Модуль реагирует на открытое пламя. Воспринимающим элементом датчика служит фотодиод получающий инфракрасное излучение.

<img src="../assets/sensors/fire/sensor_fire.svg" width=300 class="zoom border center"></img>

## Подключение

<img src="../assets/sensors/fire/fire_connection.svg" width=350 class="zoom border center"></img>

## Код

```python
#!/usr/bin/python
import RPi.GPIO as GPIO
import time
 
#GPIO SETUP
channel = 21
GPIO.setmode(GPIO.BCM)
GPIO.setup(channel, GPIO.IN)
 
def callback(channel):
    print("flame detected")
 
GPIO.add_event_detect(channel, GPIO.BOTH, bouncetime=300)  # let us know when the pin goes HIGH or LOW
GPIO.add_event_callback(channel, callback)  # assign function to GPIO PIN, Run function on change
 
# infinite loop
while True:
        time.sleep(1)
```
