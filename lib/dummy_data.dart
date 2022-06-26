import 'package:flutter/material.dart';
//import './models/attractions.dart';
import './models/types.dart';

const DUMMY_TYPES = const [
  Type(
    id: 't1',
    title: 'экстремальный',
    color: Colors.red,
  ),
  Type(
    id: 't2',
    title: 'семейный',
    color: Colors.green,
  ),
  Type(
    id: 't3',
    title: 'детский',
    color: Colors.yellow,
  ),
  Type(
    id: 't4',
    title: 'водный',
    color: Colors.blue,
  ),
];
/*
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
    age: 8,
    height: 140,
    location: 'Край науки и фантастики',
    withAdults:
        'Дети до 10 лет посещают аттракцион только в сопровождении взрослого',
    isPurchasedSeparately: false,
    specs: '32 посадочных места, 105 км/ч, 58 метров, 1 в России, 6 в мире',
    isActive: true,
    isWorking: true,
    sorting: 50,
  ),
  Attraction(
    id: 'at02',
    title: 'Змей Горыныч',
    imageUrl:
        'https://www.sochipark.ru/upload/app/images/attractions/standard_980/zmei2.jpg',
    shortDescr:
        'На вершине высокой горы поселился огнедышащий Змей Горыныч. Собирайтесь в путь, если вы готовы отправиться в его логово!',
    description:
        'Самая быстрая и протяженная в России американская горка! Сказочный дракон Змей Горыныч статен, величав и стремителен. Наш одноименный аттракцион ничем не уступает в этом трехглавому герою. Длина трассы — больше километра, наивысшая точка, на которой совершаются крутые виражи, — 38 метров! Скорость почти в 100 км/ч захватит вас и унесет навстречу ярким эмоциям!',
    types: [
      't1',
    ],
    workTime: 'В режиме работы парка',
    age: 7,
    height: 130,
    location: 'Заколдованный лес',
    withAdults:
        'Дети до 10 лет посещают аттракцион только в сопровождении взрослого',
    isPurchasedSeparately: false,
    specs: '1056 м, 105 км/ч, 20 посадочных мест',
    isActive: true,
    isWorking: true,
    sorting: 50,
  ),
  Attraction(
    id: 'at03',
    title: 'Жар-Птица',
    imageUrl:
        'https://www.sochipark.ru/upload/app/images/attractions/standard_980/zhar.jpg',
    shortDescr:
        'Самый высокий в России аттракцион свободного падения с эффектом катапульты',
    description:
        'Испытайте невероятные эмоции от полета за драгоценным пером Жар-Птицы! Взлетев вверх с головокружительной скоростью, приготовьтесь увидеть невероятную картину — с высоты 65 метров открывается волшебный вид на Сочи Парк, морские пейзажи и заснеженные горные вершины. А может быть, где-то далеко, в небесной синеве вам повезет увидеть Жар-Птицe? Неожиданный резкий спуск принесет не меньше адреналина и эмоций!',
    types: ['t1'],
    workTime: 'В режиме работы парка',
    age: 7,
    height: 122,
    location: 'Заколдованный лес',
    withAdults:
        'Дети до 10 лет посещают аттракцион только в сопровождении взрослого',
    isPurchasedSeparately: false,
    specs: '65 метров, 21 км/ч, 20 посадочных мест',
    isActive: true,
    isWorking: false,
    sorting: 50,
  ),
  Attraction(
    id: 'at04',
    title: 'Шаролет',
    imageUrl:
        'https://www.sochipark.ru/upload/app/images/attractions/standard_980/shar.jpg',
    shortDescr:
        'Семейная горка позволит разделить незабываемые эмоции с самыми дорогими людьми',
    description:
        'Единственная американская горка, на которой можно кататься даже юным экстремалам от четырех лет! Извилистый трек на высоте 16 метров с крутыми подъемами и спусками обещает детям и взрослым увлекательную поездку. При этом состав едет с комфортной скоростью, и вы успеете насладиться каждой секундой этого незабываемого путешествия!',
    types: ['t2', 't3'],
    workTime: 'В режиме работы парка',
    age: 4,
    height: 107,
    location: 'Край науки и фантастики',
    withAdults:
        'Дети до 8 лет посещают аттракцион только в сопровождении взрослого',
    isPurchasedSeparately: false,
    specs: '45 км/ч, 408 м, 4 вагона, 16 посадочных мест',
    isActive: true,
    isWorking: false,
    sorting: 50,
  ),
  Attraction(
    id: 'at05',
    title: 'Колесо Времени',
    imageUrl:
        'https://www.sochipark.ru/upload/app/images/attractions/standard_980/koleso.jpg',
    shortDescr:
        'Полюбуйтесь Олимпийским парком, Черным морем и горными вершинами с 60-метровой высоты!',
    description:
        'Удобные современные кабины аттракциона оснащены системами отопления и кондиционирования, что обеспечивает гостям комфорт в любое время года. Вечером аттракцион сияет тысячами разноцветных огней, и его заметно далеко за пределами Олимпийского парка. С высоты Колеса Времени, а оно, кстати, одно из самых высоких в России, все развлечения Сочи Парка видны как на ладони. И пока колесо не спеша делает свой круг, рассмотрите все и выбирайте, какой аттракцион для вас следующий?',
    types: ['t2'],
    workTime: '10:00 – 21:00',
    age: 1,
    height: 80,
    location: 'Аттракцион',
    withAdults: 'Посещение аттракциона только в сопровождении взрослого',
    isPurchasedSeparately: true,
    specs:
        '60 метров, 24 кабины, 144 места. Последний прокат осуществляется не позднее, чем за 15 минут до окончания работы аттракциона',
    isActive: true,
    isWorking: true,
    sorting: 50,
  ),
];
*/
//https://www.youtube.com/watch?v=ScINEHxsVuw
