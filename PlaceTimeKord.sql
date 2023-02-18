-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2023 г., 01:26
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Place`
--

-- --------------------------------------------------------

--
-- Структура таблицы `PlaceTimeKord`
--

CREATE TABLE `PlaceTimeKord` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `description` varchar(900) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `coord` varchar(900) NOT NULL,
  `time` varchar(1000) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `Image` varchar(500) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `Prace` varchar(1000) CHARACTER SET utf32 COLLATE utf32_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `PlaceTimeKord`
--

INSERT INTO `PlaceTimeKord` (`id`, `name`, `description`, `coord`, `time`, `Image`, `Prace`) VALUES
(1, 'Фонтан Дружбы народов', 'Главный фонтан и один из основных символов ВДНХ. Шестнадцать женских статуй фонтана символизируют 16 Союзных республик.\r\n', '[55.829850009160864,37.631803808229506]', '', 'https://i.pinimg.com/originals/65/a0/05/65a0053c2996b5769024691fd5afb58e.jpg', NULL),
(2, 'Фонтан Каменный цветок', 'Один из трёх главных фонтанов ВДНХ. Изначальная идея показать дары природы каждой из республик не была реализована в полной мере — сделали лишь три композиции и после их «скопировали» на остальные постаменты.', '[55.832174834112024,37.62803798677258]', '', 'https://cs10.pikabu.ru/post_img/2019/06/22/9/og_og_1561217250241595249.jpg', NULL),
(3, 'Макет Москвы', 'Главная отличительная особенность макета столицы — поразительная детализация зданий и максимально точное воссоздание элементов ландшафтной архитектуры. Иногда проводятся мероприятия, подробности: https://vdnh.ru/places/maket-moskvy/\r\n', '[55.834389165122815,37.63000885528062]', 'Пн: Выходной\r\nВт-Вс: 10:00 — 20:00', 'http://1vmoskve.ru/wp-content/uploads/2017/10/Pavilon-Maketa-Moskvyi-1vmoskve.jpg', 'Бесплатно'),
(4, 'Москвариум', 'Центр океанографии и морской биологии, один из крупнейших океанариумов Европы, находится на территории ВДНХ. Иногда проводятся мероприятия, подробности: https://vdnh.ru/places/tsentr-okeanografii-i-morskoy-biologii-moskvarium/', '[55.832930836923055,37.61880835822185]', 'Ежедневно:\r\n10:00 — 22:00 (вход до 21:00)\r\nПоследний понедельник месяца: выходной', 'https://artmoskovia.ru/wp-content/uploads/2020/08/moskvarium.jpg', 'Детский билет (от 3 до 12 лет): от 750 руб.\r\nВзрослый билет: от 1100 руб.\r\n2 взрослых и 1 детский: от 2650 руб.\r\n2 взрослых и 2 детских: от 3200 руб.\r\nЕсть льготы'),
(5, 'Театр Сказок', 'Детский интерактивный Театр сказок — это уникальное мультимедийное пространство, где каждый зритель может взаимодействовать с персонажем и влиять на сюжет сказки. Шоу рассчитано на детей от трех до десяти лет, но вызовет интерес и у взрослых.', '[55.82920284530665,37.628099402996014]', 'Пн-Ср: Выходной\r\nЧт, Пт: 14:00—17:00\r\nСб, Вс: 12:00—17:00\r\nТочное расписание сеансов, уточняйте: https://vdnh.ru/places/teatr-skazok-pavilon-9-yunye-tekhniki-torf/', 'https://poraionu.ru/images/vdnh_03062021-1-1-05-min.jpg', 'Стандартный билет: 600 руб.\r\nПри оплате картой «Мир»: скидка 20%\r\nЕсть льготы'),
(6, 'Робостанция', 'Самая масштабная интерактивная выставка достижений робототехники в России — «Робостанция» — стирает грань между технологичным настоящим и фантастическим будущим.', '[55.82839363919273,37.631607732387494]', 'Ежедневно: 11:00-20:00', 'https://www.mos.ru/upload/newsfeed/newsfeed/vn(16889).jpg', 'Взрослый билет: от 790 руб.\r\nЛьготный билет: от 490 руб.\r\nДетский билет (от 4 до 14 лет): от 590 руб.\r\nДетский билет (до 4 лет): бесплатно'),
(7, 'Россия — моя история', 'Мультимедийный образовательно-выставочный комплекс, который рассказывает о важных периодах формирования и становления государства и культуры нашей страны.', '[55.83386103135621,37.62683813799973]', 'Пн, Вт: Выходной\r\nСр-Вс: 11:00 — 20:00\r\nВход до 19:30', 'https://pbs.twimg.com/media/Cqc2OYtWYAAZuWi?format=jpg&name=large', 'Входной билет: 500 руб.\r\nЕсть льготы'),
(8, 'Фонтан Золотой колос', '«Золотой колос» возвышается на плоском основании, а у его подножия размещены 3 рога изобилия с овощами и фруктами: капустой, тыквой, помидорами, яблоками, виноградом и другими. Символика фонтана очевидна, потому что с древних времен колосья означали возрождение, жизнь, урожай и плодородие. ', '[55.83838125845842,37.61638597500711]', '', 'https://fs3.fotoload.ru/f/0818/1533408861/2c0840ea82.jpg', NULL),
(9, 'Павильон № 34 Космос', 'Масштабная экспозиция посвящена истории достижений отечественной космической отрасли. Выставочное пространство состоит из трех разделов. «КБ-1. Космический бульвар», «КБ-2. Конструкторское бюро»,«КБ-3. Космодром будущего»', '[55.83504467446432,37.621771611485485]', 'Пн: Выходной\r\nВт-Вс: 11:00–22:00\r\n', 'https://elvik-foto.ru/images/cosmos/image1.jpeg', 'Стандартный: 500 РУБ.\r\nСтандартный при оплате картой \"Мир\": 400 РУБ.\r\nЕсть льготы'),
(10, 'Фанерон. Город мечты', 'Она разделена на два пространства — постоянную экспозицию с футуристическими инсталляциями и лабораторию, в которой проходят воркшопы, мастер-классы, лекции и встречи с экспертами индустрии комиксов.', '[55.83504467446432,37.621771611485485]', 'Пн: Выходной\r\nВт-Вс: 11:00-22:00', 'https://sun9-70.userapi.com/sun9-15/impg/-IqUGGo4l_d5Hod5Y1muUGX9so6G2aInqi-r-Q/Tb2jycb_pbY.jpg?size=1280x650&quality=96&sign=97e2425098f132b39a9b3ea626b39f0d&c_uniq_tag=E1e8amzwLlRbwMaVs2dk79nmMsLszmbbeQX1xPy55zU&type=album', NULL),
(11, 'Павильон № 58 Центр славянской письменности Слово', 'Здесь можно узнать, как развивается письменность в России и мире, какую роль она играет в жизни разных народов и как на протяжении многих веков соприкасается с устной речью. Проводятся мероприятия, подробности: https://vdnh.ru/places/tsentr-slavyanskoy-pismennosti-slovo/', '[55.83283567322136,37.6271937589694]', 'Вт — Вс: 11:00 — 22:00\r\nКассы работают: до 21:00', 'https://poraionu.ru/images/vdnh_03032020-00-03-min.jpg', 'Cтандартный билет: 300 руб.\r\nСтандартный билет по карте «Мир»: 240 руб.\r\nЕсть льготы'),
(12, 'Музей Олимпийского движения России', 'Павильон построен в 1954 году. Основными темами в оформлении главного фасада и интерьеров стали героика разгрома немецко-фашистских войск в годы Великой Отечественной войны и возрождение сельского хозяйства. ', '[55.83161838625634,37.62676039866308]', 'закрыт', 'https://sun9-33.userapi.com/sun9-7/impg/kc2fXm4BhuuC1xZlTrWjSoH1xxh1LZJ-F5EPtg/88MMX5DYGlY.jpg?size=807x526&quality=95&sign=a375048cc0ebc90fdba6261456cd4afb&c_uniq_tag=pcBk16MsvtQUPgUbnunHp9DlugpZnfQRqvD6Q48ViSA&type=album', NULL),
(13, 'Музей Рерихов', 'Государственным музеем Востока представлена экспозиция, раскрывающая все грани художественного творчества Николая Константиновича Рериха и его сына Святослава Николаевича Рериха. Основная мысль, объединяющая выставочное пространство, и само название «Ковчег будущего» связаны с концепцией сбережения культуры — главного завета, который семья Рерихов оставила человечеству.', '[55.83068204369401,37.627548968113466]', 'Пн: Выходной\r\nВт:11:00 — 20:00\r\nСр, Чт:12:00 — 21:00\r\nПт — Вс: 11:00 — 20:00', 'https://um.mos.ru/upload/iblock/6f7/1.jpg', 'Стандарт: от 300\r\nЕсть льготы'),
(14, 'Сквер Юннатов', 'Центром ландшафтной композиции сквера является прямоугольный цветник посреди площадки отдыха. По северо-восточной границе сквера высажен ряд голубых елей, по юго-западной границе, вдоль Кольцевой дороги — ряд стриженых елей.', '[55.828054129616525,37.62876729401878]', '', '', NULL),
(15, 'Павильон № 5 Музей городского хозяйства Москвы', 'Интерактивная экспозиция в простой и увлекательной форме рассказывает, как создается и поддерживается комфортная среда для проживания в мегаполисе.', '[55.82870700749943,37.62959341439538]', 'Пн:Выходной\r\nВт — Вс:10:00 — 20:00\r\nвход: до 19:00', 'https://msknovosti.ru/wp-content/uploads/2022/04/5076716-1500x1000.jpg', 'Бесплатно'),
(16, 'Союзмультпарк', 'Единственный в России мультимедийный центр «Союзмультпарк» — уникальная площадка для детей и взрослых, где каждый сможет погрузиться в мир любимых мультипликационных героев, оживить их, получить новые навыки и раскрыть свои таланты.', '[55.82765639300268,37.626904680976985]', 'Ежедневно: 10:00 — 21:00', 'http://moscowalk.ru/images/2021/souzmultpark/soyuzmult_1.jpg', 'Детский билет: от 1050 руб.\r\nВзрослый билет (с 17 лет): от 550 руб.\r\nЕсть льготы'),
(17, 'Московский ЛисаПарк', 'Московский ЛисаПарк – это интерактивное театральное пространство, где гости становятся участниками сказочного путешествия вместе с героями сказок – профессиональными актерами Московских театров. Московский ЛисаПарк создан лучшими театральными бутафорами России по авторской легенде о доброй семье Лис', '[55.82578922586842,37.62753274656105]', 'Ежедневно: 10:00 — 20:00', 'https://vdnh.ru/upload/iblock/404/40413b8a12794b95f173af13cdd060ae.jpg', 'Уточняйте на сайте: https://vdnh.ru/places/moskovskiy-lisapark/'),
(18, 'Музей ВДНХ', 'В Музее ВДНХ вы узнаете, кто и зачем создавал Выставку, кем были ее посетители, какие идеи были заложены на разных этапах ее развития. В этом вам помогут интерактивные инсталляции, макеты, архивная кинохроника и подлинные предметы материальной культуры.', '[55.826590276087884,37.63803563486395]', 'Пн: Выходной\r\nВт — Вс: 11:00 — 22:00\r\nВход до 21:00', '\r\nhttps://vdnh.ru/upload/resize_cache/iblock/f04/1000_1000_1/f0450665685539f2b24edef46ba58ec2.jpg', 'Входной билет: 100 руб.\r\nЕсть льготы'),
(19, 'Парк интерактивных развлечений Engage VR', 'Основа парка Engage VR — это арена виртуальной реальности для командных игр с перемещением по игровому залу. Гости могут выбрать игровой мир и сценарий, надеть очки виртуальной реальности и погрузиться в игру, в которой увидят своих друзей, коллег и членов семьи игровыми персонажами и будут совместно выполнять миссии.', '[55.8265485996132,37.63975961493642]', 'Ежедневно: 10:00 — 22:00', '', 'Билет «Релакс», будни : от 150 руб.\r\nБилет «Релакс», выходные: от 250 руб.\r\nБилет «Все включено», будни: от 590 руб.\r\nБилет «Все включено», выходные: от 890 руб.'),
(20, 'Павильон №10. Выставочно-торговый центр Республики Молдова', 'В павильоне открыт магазин товаров для здоровья, одежды, а также ресторан европейской и национальной кухни «Leon». Возможно проведение мероприятий, банкетов. Имеются площадки для организации форумов и конгрессов.', '[55.82966501402416,37.62948159401101]', 'Ежедневно: 11:00 — 23:00', 'http://sobytiye.ru/wp-content/uploads/2020/03/degustacija.jpg', NULL),
(21, 'Павильон №68. Выставочно-торговый центр Республики Армения', 'С 2003 года в павильоне работает выставочно-коммерческий центр Республики Армения, где проходят тематические вечера и национальные праздники. В павильоне работает ресторан «Арарат», дегустационный зал, а также магазин армянских продуктов.', '[55.83079008577806,37.633550604368125]', 'Ежедневно: 10:00 — 20:00', 'https://storage.yandexcloud.net/moskvichmag/uploads/2019/07/DSC07862.jpg', NULL),
(22, 'Шахматный клуб', 'В распоряжении гостей ВДНХ всесезонное деревянное строение площадью 400 кв. м. В универсальной игровой комнате установлено 12 деревянных столов с удобными скамейками. Играть здесь можно совершенно бесплатно.', '[55.832768149300826,37.63571792098404]', 'Ежедневно: 11:00 — 22:00', 'https://vdnh.ru/upload/resize_cache/iblock/e8d/1000_1000_1/e8d6689826c5068f3e6a660fa85862eb.jpg', NULL),
(23, 'Дом культуры', 'Дом культуры — место проведения концертов, спектаклей, мастер-классов. На постоянной основе здесь работают вокальные коллективы, музыкальные и творческие студии, а также проводятся занятия по направлению хатха-йога. Проводятся мероприятия, подробнее:https://vdnh.ru/places/dom-kultury-vdnkh-stroenie-84/', '[55.83337299592076,37.63452591985614]', 'Ежедневно: 09:00 — 21:00', 'https://pin-place.com/images/2/11470.webp', NULL),
(24, 'Студия детских настольных игр Dodoland', 'Додо-дом — магазин добрых и экологичных настольных игр, конструкторов, игрушек и книг. Во все игры можно поиграть совершенно бесплатно и только потом принять решение о покупке. А еще там можно отметить день рождения или другой праздник, провести или посетить мастер-класс и поучаствовать в игротеке.', '[55.83326696987275,37.632889521041925]', 'Ежедневно: 11:00 — 19:00', 'https://vdnh.ru/upload/resize_cache/iblock/a41/1000_1000_1/a41b24353fed55c3145c291f33bb13f2.jpg', NULL),
(25, 'Дом бабочек', 'В строении 519 работает «Баттерфляриум» — выставка живых тропических бабочек и музей коллекций насекомых со всего мира.', '[55.8329526608989,37.630813166579756]', 'Пн-Пт: 11:00 — 21:00\r\nСб, Вс: 10:00 — 21:00', 'https://butterflarium.ru/images/slider/slide-5.jpg', 'Детский билет (до 14 лет): 450 руб.\r\nВзрослый билет (с 14 лет): 550 руб.'),
(27, 'Павильон №67. Карелия', 'Павильон построен в 1954 году, архитекторы — Ф.И. Рехмуков, А.Я. Резниченко.', '[55.830931757807114,37.63260196436174]', 'Пн: Выходной\r\nВт — Вс: 11:00 — 22:00', 'https://avatars.mds.yandex.net/get-altay/367090/2a0000016287a006932eb1acdf6d634744bd/XXL', NULL),
(28, 'Павильон №11. Выставочно-торговый центр Республики Казахстан', 'Гости павильона могут увидеть уникальные экспонаты казахской культуры, мультимедийные экспозиции о становлении государственности Республики Казахстан, ознакомиться с достижениями народного хозяйства и промышленности, узнать о выдающих казахских деятелях культуры, искусства и политики. Проходят мероприятия, подробнее: https://vdnh.ru/places/pavilon-11-metallurgiya-byvshiy-kazakhskaya-ssr-/', '[55.830199262993695,37.629163867435096]', 'Ежедневно: 11:00 — 20:00', 'https://photocentra.ru/images/main96/969955_main.jpg', NULL),
(29, 'Павильон №12', 'Массивное здание облицовано светлым и темным мрамором. Сейчас здесь располагается Выставочный центр профсоюзов.', '[55.83046496194111,37.628096348247155]', 'Пн-Пт: 10:00 — 18:00\r\nСб, Вс: 10:00 — 19:00', 'https://www.zoofashion.ru/upload/medialibrary/45e/45e29dca1116089c7e9a0ee5700e9e7f.jpg', NULL),
(30, 'Строение 457', 'iTAB — территория здоровья — это постоянная выставка нутрицевтиков и натуральных экологичных товаров для здоровья, молодости и красоты.', '[55.83000539726697,37.63535236510032]', 'Пн: Выходной\r\nВт — Вс: 11:00 — 20:00', 'https://photos.wikimapia.org/p/00/00/44/33/26_big.jpg', NULL),
(31, 'Павильон №14. Выставочно-торговый центр Азербайджанской Республики', 'В павильоне находится торгово-выставочный центр страны. Деятельность центра направлена на культурное и деловое представительство Азербайджана в России, развитие сотрудничества между странами. Проводятся мероприятия, подробнее: https://vdnh.ru/places/pavilon-14-vychislitelnaya-tekhnika-i-informatika-byvshiy-azerbaydzhanskaya-ssr-/', '[55.831172408618315,37.62738142640165]', 'Пн: Выходной\r\nВт — Вс: 11:00 — 19:00', 'https://um.mos.ru/upload/iblock/1a5/14%20%D0%BF%D0%B0%D0%B2_Skv_-8837.jpg', 'Экскурсии: от 500 руб.'),
(32, 'Павильон №18. Выставочно-торговый центр Республики Беларусь', 'В павильоне располагается торгово-выставочный центр Республики Беларусь, в котором представлены товары белорусских производителей. Проводятся мероприятия, подробнее: https://vdnh.ru/places/pavilon-18-respublika-belarus/', '[55.8320853464735,37.62582766043311]', 'Пн-Пт: 10:00 — 18:00\r\nСб, Вс: 10:00 — 19:00', 'http://s2.fotokto.ru/photo/full/628/6287768.jpg', ''),
(33, 'Павильон №17. Галерея «Лес»', 'В ходе небольшого интерактивного путешествия гости смогут узнать, что общего между человеком и деревом, как общаются деревья, поиграть в театр теней и лесную викторину, помочь олененку попасть к маме или вызвать Лешего.', '[55.83142414269994,37.62397961842184]', 'Ежедневно: 11:00 — 20:00', 'https://artmoskovia.ru/wp-content/uploads/2021/09/pavilon-lesnaya-promyshlennost-2021-god.-foto-press-sluzhby-vdnh-1.jpg', 'Взрослый билет: от 790 руб.\r\nДетский билет (3+): от 590 руб.\r\nЕсть льготы.\r\nЕсть доп.мероприятия'),
(34, 'Интерактивный музейный комплекс «Буран»', 'Внутри макета орбитального корабля «Буран БТС-001» расположен интерактивный музей — здесь можно не только посмотреть фильм о легендарном ракетоплане, но и управлять его посадкой на космодроме Байконур в режиме реального времени.', '[55.83200684798593,37.62313204037314]', 'Пн: Выходной\r\nВт — Вс: 11:00 — 20:00', 'https://avatars.dzeninfra.ru/get-zen_doc/1926321/pub_62b1bd5f20415000f47d2f2c_62b1cc86c1a3a6222a54609b/scale_1200', 'Взрослый билет: 300 руб.\r\nЛьготный билет: 150 руб.'),
(35, 'Самолёт Як-42', 'Легендарный советский лайнер Як-42 был установлен на площади Промышленности ВДНХ в 1981 году. Борт СССР-42304 знаменит тем, что именно на нем установлен рекорд дальности беспосадочного перелета — 4730 километров, от Раменского до Читы.', '[55.83380321583901,37.62310521828301]', 'Ежедневно: 11:00 — 20:00', 'https://avatars.dzeninfra.ru/get-zen_doc/1886729/pub_5dc57cd72978bf375cfa49f7_5dc57cfef3cd8870191c374b/scale_1200', 'Взрослый билет: 900 руб.\r\nДетский билет: 500 руб.'),
(36, 'Вертолёт Ми-8', 'Вертолет Ми-8Т был способен перевозить до 24 человек и предназначался для высадки и эвакуации десанта, огневой поддержки сухопутных войск, а также транспортировки грузов.', '[55.83407492809088,37.62228446232444]', 'Ежедневно: 11:00 — 20:00', 'https://rostec.ru/upload/iblock/527/527211c6ccb7966d858824da8550140d.jpg', 'Взрослый билет: 900 руб.\r\nДетский билет: 500 руб.'),
(37, 'Макет ракеты-носителя «Восток»', 'Ракета-носитель «Восток» занимает особое место в истории отечественной космической программы, ведь именно этот аппарат 12 апреля 1961 года вывел на околоземную орбиту «Восток-1», на котором Юрий Гагарин совершил первый в истории Земли пилотируемый полет в космическое пространство.', '[55.834322486482755,37.62309985386498]', '', 'https://regnum.ru/uploads/pictures/news/2018/04/12/regnum_picture_15235389873767430_normal.JPG', NULL),
(38, 'Павильон №26. Музей Транспорта Москвы', 'Экспозиция представляла коллекцию серийных автомобилей, прототипов «Москвичей» и гоночных болидов в кинематографическом жанре «байопик». На выставочной площади более 2 000 квадратных метров, в четырех залах выставки, как и в лучших традициях этого киножанра, посетители могли проследить путь автомобильной марки от съемок в главных советских фильмах и участия в международных ралли до закрытия завода.', '[55.834319467487504,37.62153344380028]', 'Пн: Выходной\r\nВт — Вс: 11:00 — 21:00\r\nВход: до 20:30', 'https://liveinmsk.ru/up/photos/album/vvc/9190.jpg', 'Стандартный билет: 400 руб.\r\nЛьготный билет: 250 руб.'),
(39, 'Павильон №25 «Нефть»', 'Самая большая мультимедийная экспозиция о нефти в России тематически делится на 4 зала: «Человек и нефть», «История», «Технологии», «Наука». В оформлении центра использованы передовые технологические решения: виртуальная и дополненная реальность, голографический театр, а также современные phygital-решения на стыке цифрового и физического мира.(Запись на экскурсию заранее)', '[55.83374678820664,37.619615876780585]', 'Пн: Выходной\r\nВт — Пт: 10:00 — 19:30\r\nСб, Вс: 11:00 — 20:30', 'https://rblogger.ru/img3/2020/pavilon-neft-kak-na-vdnh-sssr-tolko-luchshe/vdnh.-neft.-den-bez-turniketov.-15.02.20.03..jpg', NULL),
(40, 'Павильон 21', 'По замечанию историка архитектуры А. Ю. Броновицкой, изогнутый козырек, нависающий над стеклянной стеной, — самый выразительный элемент главного фасада здания. Внимательные наблюдатели узнают в конструктиве принципы работы, которые популяризовал выдающийся французский зодчий ХХ века — Ле Корбюзье. Примечательно, что подобное решение не имеет аналогов в архитектуре Выставки.', '[55.83234141388564,37.62052267635404]', 'Ежедневн: 10:00 — 22:00', 'https://ex-forum.ru/wp-content/uploads/2022/03/pavilon-21-vdnh-2022.jpg', NULL),
(41, 'Зелёный театр', 'Зеленый театр ВДНХ — легендарная площадка, место притяжения меломанов и театралов. Здесь — на сцене под открытым небом представлен разнообразный репертуар: от симфонических концертов и балета до выступлений современных рок-музыкантов.', '[55.831554361597625,37.61753701074059]', '', 'https://foxtime.ru/wp-content/uploads/2019/07/01.jpg', NULL),
(42, 'Зал игp', 'Аллея залов находится в зоне Ландшафтного парка «Природа наук и искусств» — самой рукотворной части парка, где природа соединяется с современными архитектурными технологиями и создает уникальное рекреационное пространство.', '[55.83170834104921,37.61655532224115]', '', 'https://vdnh.ru/upload/resize_cache/iblock/40c/1000_1000_1/40cf228a12a749d98a365b785ea773f4.JPG', NULL),
(43, 'Павильон «Книги»', 'Книжный клуб, открытый для каждого. Здесь можно отдохнуть за чтением, принять участие в дискуссиях и образовательных проектах, поделиться идеями за чашкой кофе в кафе «РОСИЗО».', '[55.830120030103465,37.61994085849]', 'Ежедневно: 10:00 — 22:00', 'https://svao.mos.ru/about/%D0%BF%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BE%D0%BD%20%D0%BA%D0%BD%D0%B8%D0%B3%D0%B8_%D1%81%D0%B0%D0%B9%D1%82%20%D0%B2%D0%B4%D0%BD%D1%85_41-1024x683.jpg', NULL),
(44, 'Павильон №31 «Геология»', 'Экспозиция выстроена как захватывающее повествование от лица ученых-биологов и современных художников о том, как все существующее на планете Земля, и даже за ее пределами, взаимосвязано друг с другом.', '[55.83492198939393,37.61972520051302]', 'Пн, Вт: Выходной\r\nСр — Вс: 11:00 — 19:00\r\nВход: до 18:00', 'https://www.np-ciz.ru/images/img_556185d43947c82ab14cb8d075539f21.jpg', 'Взрослый билет: 300 руб.\r\nЛьготный билет: 150 руб.'),
(45, 'Музей «Биотех»', 'Посетители смогут взаимодействовать с экспонатами, участвовать в интерактивных викторинах и игровых объектах, однако даже такие развлечения будут насыщены полезной информацией, тщательно выверенной учеными.', '[55.83514237199929,37.61873814759552]', 'Пн, Вт: Выходной\r\nСр — Пт: 11:00 — 19:00\r\nСб, Вс: 12:00 — 20:00', 'https://artmoskovia.ru/wp-content/uploads/2022/05/1-4.jpg', 'Стандартный билет: 300 руб.\r\nЛьготный билет: 150 руб.'),
(46, 'Памятник И.В. Мичурину\r\n', 'Русскому биологу и селекционеру, создателю многих сортов плодово-ягодных культур — находится сразу за Политехническим музеем. Его скульптор — Дмитрий Жилов.', '[55.834458351871504,37.61669338065332]', '', 'https://img-fotki.yandex.ru/get/4800/82260854.335/0_c58bf_753440d4_XXXL.jpg', NULL),
(47, 'Павильон №29 Цветоводство', 'Интерактивное экспозиционно-выставочное пространство, где посетители могут познакомиться с объектами флоры и фауны вживую и посредством современных цифровых технологий.', '[55.83574941790883,37.61819958342938]', 'Пн: Выходной\r\nВт — Вс: 10:00 — 18:00', 'https://publishernews.ru/images/PressReleases/202001/press_r_0DEDF460-A0A2-40D1-8DD3-2A21635E3E6D-f.jpg', 'Билет: 200 руб.'),
(48, 'Храм-часовня святого Василия Великого', 'Святой Василий Великий, имя которого носит храм-часовня, жил в IV веке н.э., а своё имя — «Великий» — стал носить еще при жизни, так как был «ученым в двенадцати науках».', '[55.835227341571375,37.616268845010964]', 'Ежедневно: 10:00 — 17:00', 'https://img-fotki.yandex.ru/get/6827/41021914.57/0_9665e_8c1e6986_XL.jpg', NULL),
(49, 'Sky Town. Верёвочный парк', ' Sky Town включает в себя различные виды препятствий, множество развлекательных элементов, смотровую площадку и детский паркур.', '[55.83512292438302,37.614465998428805]', 'Ежедневно: 10:00 — 20:00\r\nВход: до 19:00', 'https://ic.pics.livejournal.com/oleg_bg/76602048/41437/41437_1000.jpg', 'Взрослый билет: от 1300 руб.\r\nДетский билет (до 17 лет, рост от 140 см): от 1000 руб.\r\nДетский паркур (рост от 110 до 140 см): от 800 руб.'),
(50, 'Павильон №28 «Пчеловодство»', 'В выставочном павильоне при помощи интерактивных экранов и тщательно отобранных экспонатов, перед вами развернется история пчеловодства: вы сможете познакомиться с орудиями труда пчеловода, различными видами ульев, породами пчел.', '[55.83644987593928,37.6164119962079]', 'Пн: Выходной\r\nВт — Вс: 10:00 — 18:00', 'https://www.apiworld.ru/upload/iblock/8ec/8ec95a2953ad6166bd8056e0585035ad.jpg', 'Билет: 200 руб.'),
(51, 'Павильон №35. Главтабак', 'Павильон был построен по проекту художника В. С. Кондратьева к открытию послевоенной Выставки 1954 года. В настоящее время закрыт на комплексную реставрацию, после окончания работ здесь планируется открыть кафе. ', '[55.83842386884428,37.61438882969809]', '', 'https://pin-place.com/images/1/8083.webp', NULL),
(52, 'Фонтан мальчик с рыбой', 'Позади павильона №64, воплощавшего собой символический образ колыбели Октябрьской революции — Ленинграда, расположен небольшой бассейн-фонтан со скульптурой Бориса Николаевича Сона «Рыбак», или «Мальчик с рыбой». ', '[55.83308972130347,37.62962226216448]', '', 'https://media.vdnh.ru/thumbs/ab/extlink_thumbs%252Faa%252Fall_files-2f42-2f4265_f63669cf2487bc1b8f737a11effdf7b9703f225e_preview.jpg_filePreview_.jpg_workDetails_0_.jpg', NULL),
(53, '«Техноград». Инновационно-образовательный комплекс', 'Инновационно-образовательный комплекс «Техноград» — место, где можно освоить новую специальность, пройти профессиональную переподготовку, повысить свою квалификацию или получить базовые предпринимательские навыки.(Запись заранее)', '[55.834915090608405,37.631976372352575]', 'Ежедневно: 09:00 — 21:00', 'https://obruchev.mos.ru/%D0%B0%D0%BD%D0%BF%D0%B3%D1%80%D0%BE%D1%88%D0%BB0%D0%B7%D1%88%D1%89%D0%BB%D0%B4%D1%8C.jpg', NULL),
(54, 'Умный город', 'Хотите узнать про Москву больше — добро пожаловать в павильон «Умный город». Совершить виртуальную прогулку по павильону вам поможет 3D-тур.( Запись на экскурссию заранее)', '[55.83400637631886,37.63087666665648]', 'Пн: Выходной\r\nВт — Вс: 10:00 — 20:00', 'http://itd0.mycdn.me/image?id=884910010421&t=20&plc=WEB&tkn=*2ftXbvHauNjqgR63n7IVNq00mKA', NULL),
(55, 'Летний кинотеатр-лекторий', 'Летние вечера в кинотеатре — это свежий воздух, хорошие фильмы и приятная компания. Здесь нет ограничений в виде подлокотников кресла: можно удобно сесть, уютно укутаться в плед и насладиться особой атмосферой.', '[55.835684967923974,37.62801699877306]', '', 'https://kinohod.ru/o/99/5a/995a4f74-f1cf-4313-81ed-64a43411a86c.jpg', NULL),
(56, 'Памятный знак «Работникам ВСХВ, погибшим на фронтах Великой Отечественной войны 1941-1945 гг.»', 'На одной части бронзового изваяния мы видим традиционную верхнюю одежду времен Отечественной войны — фуражку и куртку — и ручной инструмент для работы. На другой — рельефное изображение солдат у зенитной пушки на фоне павильона «Рабочий и колхозница».', '[55.8346771628687,37.62459483320296]', '', 'https://www.mos.ru/upload/newsfeed/newsfeed/otkritie-pamyatnogo-znaka_AC(9).jpg', NULL),
(57, 'Истребитель Су-27', 'Сегодня у вас появилась уникальная возможность поближе познакомиться с легендарным советским и российским многоцелевым всепогодным сверхзвуковым тяжелым истребителем четвертого поколения Су-27, предназначенным для завоевания превосходства в воздухе.', '[55.83479490242131,37.62331541950288]', 'Ежедневно: 11:00 — 20:00', 'https://img-fotki.yandex.ru/get/26352/355089976.9/0_fcab8_4772e466_XXL.jpg', 'Взрослый билет: 900 рублей.\r\nДетский билет: 500 рублей.'),
(58, 'Павильон №55. Музей оптических иллюзий', 'В павильоне №55 на ВДНХ находятся семейные развлекательные музеи Big Creative — компании, создающей самые неординарные развлечения по всему миру.', '[55.83505755090252,37.62339588577333]', 'Ежедневно: 10:00 — 21:00', 'https://vdnh.ru/upload/resize_cache/iblock/e38/1000_1000_1/e388004e8c3fbdd09f71e765b797ce35.jpg', '1 из 11 музеев на выбор: 700 руб.\r\n5 из 11 музеев на выбор: 1700 руб.\r\n11 музеев и аттракционов: 2700 руб.'),
(59, 'Дом ремёсел', 'Мастерские располагают всем необходимым оборудованием для работы и инфраструктурой для общения и обучения. Здесь можно не только арендовать инвентарь и получить консультацию специалистов, но и поучаствовать в мастер-классах и пообщаться с единомышленниками. Также мастерские работают как коворкинг, образовательная площадка, пространство для мероприятий и база для реализации коммерческих проектов.', '[55.837269082721996,37.624142165460334]', 'Ежедневно: 10:00 до 22:00', 'https://avatars.dzeninfra.ru/get-zen_doc/163240/pub_62e90d81cd1c6b24fec311cc_62e90e67a76be617e7751c15/scale_1200', NULL),
(60, 'Павильон №33', 'Павильон строился для проведения машиностроительных выставок, которые регулярно проходили на ВДНХ СССР. В павильоне демонстрировались новейшие достижения советского автопрома и его отраслевая продукция.', '[55.83579120085032,37.62162502029694]', 'Ежедневно: 11:00 — 22:00', 'http://img-fotki.yandex.ru/get/5800/synthart.2c/0_3d8b9_2c76c26b_XL', 'Цены зависят от мероприятия, подробности: https://vdnh.ru/places/pavilon-33/'),
(61, 'Гаража особого назначения ФСО России', 'В музее представлены легендарные машины лидеров Российской империи, Советского Союза и Российской Федерации.', '[55.836748174182325,37.620643331797496]', 'Пн: Выходной\r\nВт — Вс: 11:00 — 20:00', 'https://a.d-cd.net/8UDSaqDN0EftPfnqSt9kbr4BeDU-1920.jpg', 'Входной билет: от 550 руб.\r\nЛьготный билет: от 300 руб.\r\n'),
(62, 'Центр национальных конных традиций', 'Центр национальных конных традиций – это уникальная площадка мирового уровня для демонстрации конного достояния России, где гармонично сочетается спорт, культура, образование, коневодство и туризм.', '[55.838278678582085,37.62340600708282]', 'Пн: Выходной\r\nВт — Вс: 11:00 — 20:00', 'https://i.timeout.ru/pix/441731.jpeg', 'Стандарт: от 560\r\nЕсть льготы'),
(63, 'Городская ферма\r\n', 'Не покидая пределов Москвы, здесь в любую погоду можно скрыться от городской суеты и познакомиться с фермерской жизнью, традициями и симпатичными, ухоженными обитателями, наполнить день радостью творчества на семейном мастер-классе или оценить обеденное меню в кафе «Ферма».', '[55.83890277085589,37.626265754411044]', 'Пн-Пт: 10:30 — 19:00\r\nСб, Вс: 10:30 — 20:00\r\n', 'https://madeinfuture.ru/img/174/ferma-vdnh2.jpg', 'Пн-Пт: от 600 руб.\r\nЕсть льготы'),
(64, 'Павильон №44 «Кролиководство»', 'Этот павильон — один из самых удаленных на Выставке, он находится в северо-восточной части ВДНХ, за 4-м Каменским прудом. Неподалеку от здания, на открытом участке, можно было увидеть и самих кроликов разных пород: шиншилла, венский голубой, белый великан, ангорский, пуховый, белка, бабочка. При павильоне работали кролиководческая ферма и кормокухня.', '[55.84059219391352,37.625435138065654]', 'Ежедневно: 11:00 — 22:00', 'https://nakr-impression.ru/wp-content/uploads/2019/05/IMG_3321-1360x765.jpg', NULL),
(65, 'Павильон №36. Музей кино', 'В пространстве Музея кино на ВДНХ оборудованы три кинозала, зоны для постоянной экспозиции и тематических выставок, а также аудитории для проведения лекций по истории и теории киноискусства.', '[55.8394380167826,37.61694601614881]', 'Пн, Вт: 12:00 — 21:00\r\nСр: Выходной\r\nЧт — Вс: 12:00 — 21:00\r\nВход: до 20:00', 'https://www.sunhome.ru/i/foto/7/muzei-kino-na-vdnh-2.orig.jpg', 'Входной билет: 300 руб.\r\nЛьготный билет: 150 руб.'),
(66, '', '', '', '', '', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `PlaceTimeKord`
--
ALTER TABLE `PlaceTimeKord`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `PlaceTimeKord`
--
ALTER TABLE `PlaceTimeKord`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
