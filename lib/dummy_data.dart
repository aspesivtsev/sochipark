import 'package:flutter/material.dart';
import './models/attractions.dart';
import './models/types.dart';

const DUMMY_TYPES = const [
  Type(
    id: 't1',
    title: 'Экстремальный',
    color: Colors.red,
  ),
  Type(
    id: 't2',
    title: 'Семейный',
    color: Colors.green,
  ),
  Type(
    id: 't3',
    title: 'Детский',
    color: Colors.yellow,
  ),
  Type(
    id: 't4',
    title: 'Водный',
    color: Colors.blue,
  ),
];

const DUMMY_ATTRACTIONS = const [
  Attraction(
    id: 'at01',
    title: 'Квантовый Скачок',
    imageUrl:
        'https://www.sochipark.ru/upload/app/images/attractions/standard_980/kvant.jpg',
    shortDescr:
        'Экстремальный аттракцион № 1 ставит под сомнение земное притяжение! Самая скоростная горка формата «перевернутый бумеранг», единственная в России и шестая в мире!',
    description:
        'Скорость, адреналин, восторг! Не только герои фантастических фильмов совершают квантовые скачки — наш одноименный аттракцион тоже уносит в невесомость! Самая быстрая и единственная в России экстремальная горка формата «перевернутый бумеранг» умчит с головокружительной скоростью по лихо закрученному треку с «кольцами кобры» и «мертвыми петлями», а потом еще раз — только спиной вперед! После полета, который длится всего 56 секунд, появится невероятное ощущение невесомости.',
    types: [
      't1',
    ],
    workTime: 'В режиме работы парка',
    age: 10,
    withAdults:
        'Дети до 10 лет посещают аттракцион только в сопровождении взрослого',
    isPurchasedSeparately: false,
    isActive: true,
    sorting: 50,
  ),
  Attraction(
    id: 'at02',
    title: 'Змей Горыныч',
    imageUrl:
        'https://www.sochipark.ru/upload/app/images/attractions/standard_980/zmei.jpg',
    shortDescr:
        'На вершине высокой горы поселился огнедышащий Змей Горыныч. Собирайтесь в путь, если вы готовы отправиться в его логово!',
    description:
        'Самая быстрая и протяженная в России американская горка! Сказочный дракон Змей Горыныч статен, величав и стремителен. Наш одноименный аттракцион ничем не уступает в этом трехглавому герою. Длина трассы — больше километра, наивысшая точка, на которой совершаются крутые виражи, — 38 метров! Скорость почти в 100 км/ч захватит вас и унесет навстречу ярким эмоциям!',
    types: [
      't1',
    ],
    workTime: 'В режиме работы парка',
    age: 10,
    withAdults:
        'Дети до 10 лет посещают аттракцион только в сопровождении взрослого',
    isPurchasedSeparately: false,
    isActive: true,
    sorting: 50,
  ),
];

//https://www.youtube.com/watch?v=ScINEHxsVuw
