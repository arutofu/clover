# Конструктор БПЛА мультироторного типа "Оса"

* [Технический паспорт](https://www.tezona.ru/data/uploads/files/osa_pasport.pdf)
* [STL файлы](https://www.tezona.ru/data/uploads/files/stl_osa.zip)
* [Инструкция по сборке PDF](https://www.tezona.ru/data/uploads/files/osa-manual.pdf)
* [Видеоинструкция сборки](https://mail.tezona.ru/оса/инструкция.mp4)
* [Видеоинструкция калибровки](https://www.tezona.ru/data/uploads/files/osa-kalibrovka.webm)

## Состав конструктора

## Подготовка платы распределения питания

Подготавливаем нижнюю деку к размещению на ней электронных компонентов - бокорезами удаляем перегородки и освобождаем плату.

<img src="../assets/assembling_drone1/1-14/1.png" width=300 class="zoom border center"></img>

С помощью паяльника и припоя (оловянная проволока с канифолью) залуживаем места для припайки проводов для аккумуляторов **<font color=red>A</font>** и регуляторов оборотов **<font color=turquoise>Р</font>**.

<img src="../assets/assembling_drone1/1-14/2.1.png" width=300 class="zoom border center"></img>

> **Внимание** Вырезы в корпусе должны быть в нижней части в районе пайки проводов регуляторов оборотов.

<img src="../assets/assembling_drone1/1-14/2.2.png" width=300 class="zoom border center"></img>

Припаиваем провода к коннектору XT60, на котором указаны:

**<font color=red>+</font>** (красный провод)
**<font color=black>-</font>** (черный провод).

<img src="../assets/assembling_drone1/1-14/3.png" width=300 class="zoom border center"></img>

Для изоляции контактов надеваем на места пайки термоусаживающую трубку и обрабатываем феном.

<img src="../assets/assembling_drone1/1-14/4.png" width=300 class="zoom border center"></img>

Припаиваем коннектор к плате.

<img src="../assets/assembling_drone1/1-14/5.png" width=300 class="zoom border center"></img>

Берем преобразователь напряжения BEC.

<img src="../assets/assembling_drone1/1-14/6.png" width=300 class="zoom border center"></img>

Удаляем черный провод.

<img src="../assets/assembling_drone1/1-14/7.png" width=300 class="zoom border center"></img>

Укорачиваем провода на 2 см.

<img src="../assets/assembling_drone1/1-14/8.1.png" width=300 class="zoom border center"></img>

Полетный контроллер готов.

<img src="../assets/assembling_drone1/1-14/8.2.png" width=300 class="zoom border center"></img>

Удлиняем сигнальный провод регулятора оборотов.

<img src="../assets/assembling_drone1/1-14/9.png" width=300 class="zoom border center"></img>

Припаиваем все 4 регулятора оборотов к плате.

<img src="../assets/assembling_drone1/1-14/10.png" width=300 class="zoom border center"></img>

Вставляем кабель в этот разъем контроллера.

<img src="../assets/assembling_drone1/1-14/11.png" width=150 class="zoom border center"></img>

Находим в комплекте полётного контроллера такой кабель.

<img src="../assets/assembling_drone1/1-14/12.png" width=300 class="zoom border center"></img>

Отрезаем коннекторы, спаиваем провода между собой в соответствии с цветом.

<img src="../assets/assembling_drone1/1-14/13.png" width=300 class="zoom border center"></img>

Результат должен выглядеть так.

<img src="../assets/assembling_drone1/1-14/14.png" width=300 class="zoom border center"></img>

## Связка приёмника с пультом управления

Вставляем батарейки в отсек пульта управления.

Включаем пульт (слева внизу черная кнопка).

Удерживая кнопку, перемещаем этот ползунок вверх.

<img src="../assets/assembling_drone1/15-23/16.png" width=300 class="zoom border center"></img>

Автоматически на дисплее выдаётся сообщение об ошибке - это нормально!.

<img src="../assets/assembling_drone1/15-23/18.png" width=300 class="zoom border center"></img>

Сбрасываем ошибки движением правого стика вниз.

<img src="../assets/assembling_drone1/15-23/19.png" width=300 class="zoom border center"></img>

RX Binding... - ошибки удалены, аппаратура готова к связи с приёмником (Bind).

<img src="../assets/assembling_drone1/15-23/20.png" width=300 class="zoom border center"></img>

Находим на приемнике кнопку BND (крайняя).

<img src="../assets/assembling_drone1/15-23/21.png" width=300 class="zoom border center"></img>

Одновременно нажимаем на приемнике кнопку BND и присоединяем аккумулятор.

<img src="../assets/assembling_drone1/15-23/22.png" width=300 class="zoom border center"></img>

Постоянно горит красный индикатор - показатель готовности.

<img src="../assets/assembling_drone1/15-23/23.png" width=200 class="zoom border center"></img>

Показатель связанности - информация на дисплее пульта.

<img src="../assets/assembling_drone1/15-23/controller_display.png" width=300 class="zoom border center"></img>

## Подключение регуляторов оборотов к полётному контроллеру

> **Внимание** Строго соблюдаем очередность подключения, начиная с верхнего правого.

<img src="../assets/assembling_drone1/24/24.1.png" width=500 class="zoom border center"></img>

Подключаем первый регулятор оборотов и далее по порядку.

<img src="../assets/assembling_drone1/24/24.2.png" width=300 class="zoom border center"></img>

Итоговое подключение.

<img src="../assets/assembling_drone1/24/24.3.png" width=300 class="zoom border center"></img>

## Подключение электромоторов к регулятору оборотов

Подключаем:

<img src="../assets/assembling_drone1/25-26/25.1.png" width=300 class="zoom border center"></img>

<img src="../assets/assembling_drone1/25-26/25.2.png" width=300 class="zoom border center"></img>

Проверяем порядок вращения моторов (снаружи внутрь).

<img src="../assets/assembling_drone1/25-26/26.png" width=300 class="zoom border center"></img>

В случае, если мотор вращается неправильно, перепаиваем средний контакт с любым крайним.

## Монтаж рамы

Вставляем стяжку крепления аккумулятора в верхнюю раму в специальные пазы.

<img src="../assets/assembling_drone1/27-31/27.png" width=300 class="zoom border center"></img>

Вставляем и крепим аккумулятор на раме.

<img src="../assets/assembling_drone1/27-31/28.png" width=300 class="zoom border center"></img>

Вставляем 2 штуки алюминиевых рам более крупными отверстиями вниз к раме в двух местах.

<img src="../assets/assembling_drone1/27-31/29.png" width=300 class="zoom border center"></img>

Центруем вдоль оси рамы, накрываем поликарбонатной крышкой, крепим её к корпусу шурупами.

<img src="../assets/assembling_drone1/27-31/30.png" width=300 class="zoom border center"></img>

Крепим силовые элементы для аккуммулятора к верхней крышке, чтобы получилось так:

<img src="../assets/assembling_drone1/27-31/31.1.png" width=300 class="zoom border center"></img>

Вид с внутренней стороны:

<img src="../assets/assembling_drone1/27-31/31.2.png" width=300 class="zoom border center"></img>

## Крепление рамы к плате распределения питания

Прижимаем провода вдоль корпуса к центру рамы и наставляем сверху корпус, крепим его шурупами.

<img src="../assets/assembling_drone1/32-33/32.png" width=300 class="zoom border center"></img>

Предварительно вставляем коннектор аккумулятора в специальное отверстие в раме.

<img src="../assets/assembling_drone1/32-33/33.png" width=300 class="zoom border center"></img>

## Крепление элементов защиты пропеллеров

Совмещаем отверстия элементов защиты с отверстиями в алюминиевой раме.

<img src="../assets/assembling_drone1/34/34.1.png" width=300 class="zoom border center"></img>

> **Внимание** Правильное положение элементов защиты на раме.

<img src="../assets/assembling_drone1/34/34.2.png" width=300 class="zoom border center"></img>

## Крепление двигателей к раме

Винтами М3, входящими в комплект мотора и шестигранником крепим мотор со стороны узких отверстий с нижней стороны рамы.

<img src="../assets/assembling_drone1/35-37/35.1.png" width=300 class="zoom border center"></img>

> **Внимание** Правильное положение элементов защиты и моторов на раме.

<img src="../assets/assembling_drone1/35-37/35.2.png" width=300 class="zoom border center"></img>

Фиксируем регуляторы оборотов пластиковыми хомутами.

<img src="../assets/assembling_drone1/35-37/36.png" width=300 class="zoom border center"></img>

Удаляем бокорезами излишки хомутов.

<img src="../assets/assembling_drone1/35-37/37.png" width=300 class="zoom border center"></img>

## Крепление ножек к раме

Две ножки скрепляются между собой винтами М3*8 и самокрутящимися гайками М3 с фторопластовой вставкой с помощью специального инструмента с головкой 5.5мм.

<img src="../assets/assembling_drone1/38/38.2.png" width=200 class="zoom border center"></img>

<img src="../assets/assembling_drone1/38/38.1.png" width=200 class="zoom border center"></img>

Две ножки закреплены на раме.

<img src="../assets/assembling_drone1/38/38.3.png" width=200 class="zoom border center"></img>

> **Внимание** Указанные операции выполняются со всеми 4 лучами.

## Монтаж защиты пропеллеров

Крепим стойки М3*40 к крайним частям элементов защиты корпуса с помощью шурупов и крестовой отвертки или шуруповерта.

<img src="../assets/assembling_drone1/39-40/40.1.png" width=300 class="zoom border center"></img>

<img src="../assets/assembling_drone1/39-40/39.1.png" width=300 class="zoom border center"></img>

Теми же крепёжными элементами и инструментами крепим средние части защиты корпуса.

<img src="../assets/assembling_drone1/39-40/39.2.png" width=300 class="zoom border center"></img>

## Монтаж второго уровня защиты пропеллеров

Монтируем элементы защиты пропеллеров.

<img src="../assets/assembling_drone1/41/41.1.png" width=300 class="zoom border center"></img>

Так должно получиться:

<img src="../assets/assembling_drone1/41/41.2.png" width=300 class="zoom border center"></img>

## Калибровка контроллера

С помощью кабеля **micro USB - USB** подключаем компьютер к полетному контроллеру и калибруем его.

<img src="../assets/assembling_drone1/42/42.1.png" width=300 class="zoom border center"></img>

> **Внимание** Отверстия в корпусе для подключения к полётному контроллеру:

<img src="../assets/assembling_drone1/42/42.2.png" width=300 class="zoom border center"></img>

## Установка пропеллеров

Устанавливаем пропеллеры, соблюдая угол атаки по диагонали.

<img src="../assets/assembling_drone1/43-44/43.png" width=300 class="zoom border center"></img>

Закручиваем гайки на пропеллерах с помощью специального инструмента.

<img src="../assets/assembling_drone1/43-44/44.png" width=300 class="zoom border center"></img>

## Установка аккумулятора

Устанавливаем аккумулятор, крепим его стяжкой-липучкой, соединяем коннекторы.

<img src="../assets/assembling_drone1/45/45.png" width=300 class="zoom border center"></img>

## Дрон готов к полёту
