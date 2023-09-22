# Здарово!
Спасибо, что решили податься на позицию flutter разработчика!
Это тестовое задание, которое поможет определить ваш уровень быстро и без вращения деревьев в блоконте.
Используйте этот boilerplate project или создайте сами с библиотекой Block.

## Getting Started
Установите все зависимости из pubspec можно стандартной командой

```shell
flutter pub get
```

Сгегенируйте зависимости и переводы

```shell
flutter pub run intl_utils:generate
```

Соберите проект
```shell
flutter pub run build_runner build --delete-conflicting-outputs
```

## TODO

### Что нужно сделать:
[figma](https://www.figma.com/file/hfV8YVw7uWNEb1lHdbPFNX/Untitled?type=design&node-id=0%3A1&mode=design&t=ARFhMydSbNRwzMJn-1)
Убедитесь, что приложение загружается, отрисовывает страницу загрузки и главную страницу
![ca_visual_path](markdown_pictures/view_splash_screen.jpg)

#### Реализовать две страницы:

![ca_visual_path](markdown_pictures/view_list.jpg)
![ca_visual_path](markdown_pictures/view_filter.jpg)
* Список врачей `lib/src/features/therapist`
    1. Получение данных с апи.
    2. Отрисовку списка карточек врачей: аватар, имя, цену услуг.
    3. Фильтр списка: возраст и цена.

![ca_visual_path](markdown_pictures/view_therapist_details.jpg)
* Страницу врача
    1. Header: аватар, имя, кнопка перехода к списку врачей
    2. Блок со случайно сгенерированной информацией (просто текст) на 255 символов.

### Примечание:

1. Используйте библиотеку [bloc](https://bloclibrary.dev/#/) в качестве стэйт менеджера
2. Попробуйте добавить анимацию
3. Старайтесь разделять код на слои:
4. Рекомендуем использовать уже добавленные в этот проект компоненты и цветовые схемы
5. Текст лучше заводить через переводы

data - слой работы с данными, храните тут свои moc данные.
domain - слой бизнес-логики.
internal - слой приложения. На этом уровне происходит внедрение зависимостей.
presentation - слой представления. На этом уровне описываем UI.
https://habr.com/ru/articles/522640/
![ca_visual_path](markdown_pictures/ca_visual.png)
   
Если у вас появились вопросы где взять какие-то файлы (тексты, иконки, картинки) или как правильно организовать "X" - пишите.
