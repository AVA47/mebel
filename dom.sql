-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 20 2024 г., 11:34
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `busket`
--

CREATE TABLE `busket` (
  `id` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'default_image.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `busket`
--

INSERT INTO `busket` (`id`, `id_products`, `id_users`, `name`, `price`, `img`) VALUES
(43, 53, 9, 'Кресло Абсолют', '20500', 'изображение_2024-05-13_144347558.png');

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`id`, `color`) VALUES
(5, 'Красный'),
(6, 'Чёрный'),
(7, 'Синий'),
(8, 'Серый'),
(9, 'Белый'),
(10, 'Зелёный');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `message`) VALUES
(54, 'Артём', '12345@mail.ru', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `models`
--

INSERT INTO `models` (`id`, `model`) VALUES
(1, 'Кресла'),
(2, 'Диваны'),
(3, 'Пуфики'),
(4, 'Шкафы'),
(5, 'Стулья'),
(6, 'Столы'),
(7, 'Стеллажи'),
(8, 'Комоды'),
(9, 'Кровати'),
(10, 'Обувницы'),
(12, 'Ковры');

-- --------------------------------------------------------

--
-- Структура таблицы `oform`
--

CREATE TABLE `oform` (
  `id` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `oform`
--

INSERT INTO `oform` (`id`, `id_products`, `id_users`, `address`, `phone`, `total_price`, `status_id`) VALUES
(34, 53, 10, 'avlasenok@mail.ru', '+7 (913) 645-46-82', '42460', 1),
(35, 53, 10, 'avlasenok@mail.ru', '+7 (913) 645-46-82', '20500', 1),
(36, 53, 11, 'avlasenok@mail.ru', '+7 (913) 632-95-98', '20500', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razmer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptions` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `razmer`, `material`, `descriptions`, `color_id`, `model_id`, `img`) VALUES
(44, 'Кресло Зельден', '9940', '<br>\r\n<br>\r\nширина 590 мм, \r\n<br>\r\n<br>\r\nвысота 790 мм, \r\n<br>\r\n<br>\r\nдлина 610 мм.', 'фанера, обивка', '<b>Конструктив:</b> <i>Кресло Зельден</i> восхищает незамысловатым и одновременно изящным исполнением. Благодаря мягкой и высокой спинке и мягким подлокотникам, ножкам, пребывание в этом кресле подарит драгоценные минуты расслабления и полноценного отдыха.\r\n<br>\r\n<br>\r\n<b>Обивка:</b> Кресло обтянуто мебельной тканью или искусственной кожей.\r\n<br>\r\n<br>\r\n<b>Каркас:</b> Каркас кресла выполнен из фанеры и выдерживает весовую нагрузку до 150 кг.\r\n<br>\r\n<br>\r\n<b>Поставка:</b> Кресло поставляется в разобранном виде. <i>Габариты упаковки: 890*575*235 мм.</i>', 6, 1, 'изображение_2024-05-13_140759386.png'),
(53, 'Кресло Абсолют', '20500', '<br>\r\n<br>\r\nШирина: 820 мм.\r\n<br>\r\n<br>\r\nВысота: 1100 мм. \r\n<br>\r\n<br>\r\nГлубина: 900.', 'пружинный блок Змейка, ППУ, синтепон.', '<b>Кресло Абсолют</b> - расслабьтесь и прочувствуйте бархатистую ткань подлокотников, оцените мягкость сиденья и дополните свой комфорт специальной подушкой. \r\n<br>\r\n<br>\r\nВысокая спинка обеспечит необходимую опору для шеи и головы. \r\n<br>\r\n<br>\r\n<i>Мы уверены, это кресло станет вашим любимым местом для домашнего отдыха.</i>', 5, 1, 'изображение_2024-05-13_144347558.png'),
(54, 'Кресло Элегия', '9699', '<br>\r\n<br>\r\nШирина: 740 мм.\r\n<br>\r\n<br>\r\nВысота: 920 мм.\r\n<br>\r\n<br>\r\nГлубина: 1670 мм.', 'ДСП, обивка', 'Шикарное кресло для отдыха «Элегия» не только станет изюминкой любого интерьера, но и обеспечит высочайший комфорт во время эксплуатации: позволит расслабиться после суеты рабочего дня, с комфортом почитать книги и ли посмотреть любимые телепередачи.\r\n<br>\r\n<br>\r\n<b>Обивочная ткань:</b>\r\n<br>\r\n* Узнать примерную стоимость ткани и её описание можно по ссылкам.\r\n<br>\r\n* Если Вы хотите чтобы мы рассчитали стоимость кресла в определённой ткани, напишите артикул кресла и название коллекции ткани.\r\n<br>\r\n<br>\r\n<b>Особенности модели:</b>\r\n<br>\r\n* Надёжная конструкция в сочетании с качественными материалами – обеспечивает долгий срок службы изделия.\r\n<br>\r\n* Множество вариантов обивки кресла – свыше 300 образцов, которые позволят создать индивидуальный выразительный интерьер.\r\n<br>\r\n* Возможность подобрать обивку, сочетающуюся с другой мебелью или текстилем в доме.\r\n<br>\r\n* Стильный дизайн – внесёт в гостиную или спальню ноту шика и презентабельности.', 9, 1, 'изображение_2024-05-13_144534969.png'),
(55, 'Пуф Некст', '5700', '<br>\r\n<br>\r\nШирина: 440мм.\r\n<br>\r\n<br>\r\nВысота: 380 мм.\r\n<br>\r\n<br>\r\nГлубина: 440 мм.', 'фанера, обивка', '<b>Обивочная ткань:</b>\r\n<br>\r\n* Узнать примерную стоимость ткани и её описание можно по ссылкам.\r\n<br>\r\n* Если Вы хотите чтобы мы рассчитали стоимость пуфа в определённой ткани, напишите артикул пуфа и название коллекции ткани.\r\n<br>\r\n<br>\r\n<b>Особенности модели:</b>\r\n<br>\r\n* Универсальное исполнение –позволит использовать модель в любой из комнат квартиры.\r\n<br>\r\n* Множество вариантов обивки – среди более 300 образцов тканей можно подобрать для изделия такую, которая позволит ему гармонично влиться в существующий интерьер, не нарушая общей стилистики.\r\n<br>\r\n* Простой уход – обивку их экокожи можно протереть влажной тряпкой, тканевую – пропылесосить.', 9, 3, 'изображение_2024-05-13_144719793.png'),
(56, 'Диван Галаго', '26990', '<br>\r\n<br>\r\nШирина: 1950 мм.\r\n<br>\r\n<br>\r\nВысота: 1050 мм.  \r\n<br>\r\n<br>\r\nГлубина: 1100 мм.', 'пружинный блок Змейка, ППУ, синтепон.', '<b>Обивочная ткань:</b>\r\n<br>\r\n* Ткани-перейдя по ссылке можно посмотреть все образцы мебельных тканей и их примерную стоимость. Выберите нужную расцветку или сочетание цветов и напишите наименования тканей в комментарии к заказу.\r\n<br>\r\n* Стоимость дивана зависит от стоимости обивочной ткани. Выберите в параметре под ценой стоимость обивочной ткани, и цена дивана рассчитается автоматически. Если Вы выбрали несколько тканей с разной стоимостью - ориентируйтесь на большую.\r\n<br>\r\n<br>\r\n<b>Особенности модели:</b>\r\n<br>\r\n* Механизм \"Клик-кляк\". По типу раскладывания данная конструкция очень напоминает «книжку», однако, помимо положений сидя и лежа, она может принимать промежуточное положение – полулежа. Спинку дивана с механизмом «клик-кляк» можно устанавливать на любом удобном уровне – это прекрасная возможность для тех, кто предпочитает отдыхать с максимальным комфортом.\r\n<br>\r\n* Ящик. Диван оснащен вместительным ящиком для хранения.\r\n<br>\r\n* Вид. Диван отлично подходит для ежедневного использования. Спальное место не имеет бугристостей.\r\n<br>\r\n* Опоры. Металлические.', 7, 2, 'изображение_2024-05-13_144911044.png'),
(57, 'Диван Ретро', '16990', '<br>\r\n<br>\r\nШирина: 2280 мм.\r\n<br>\r\n<br>\r\nВысота: 820 мм.\r\n<br>\r\n<br>\r\nГлубина: 930 мм.', 'пружинный блок Змейка, ППУ, синтепон.', '<b>Обивочная ткань:</b>\r\n<br>\r\n* Ткани-перейдя по ссылке можно посмотреть все образцы мебельных тканей и их примерную стоимость. Выберите нужную расцветку или сочетание цветов и напишите наименования тканей в комментарии к заказу.\r\n<br>\r\n* Стоимость дивана зависит от стоимости обивочной ткани. Выберите в параметре под ценой стоимость обивочной ткани, и цена дивана рассчитается автоматически. Если Вы выбрали несколько тканей с разной стоимостью - ориентируйтесь на большую.\r\n<br>\r\n<br>\r\n<b>Особенности модели:</b>\r\n<br>\r\n* Механизм \"книжка\". Книжкой называют диван, который уже много лет держит свой положительный имидж. Механизм книжка раскладывается с помощью поднятия до щелчка сидения в тот момент, когда спинка опускается вниз. Собирается он таким же образом, только в обратном порядке. Требуется свободное пространство в несколько сантиметров от стены, чтоб в момент раскладывания не повредить стену или диван.\r\n<br>\r\n* Ящик. Диван оснащен вместительным ящиком для хранения.\r\n<br>\r\n* Вид. Диван отлично подходит для ежедневного использования. ', 8, 2, 'изображение_2024-05-13_145025027.png'),
(58, 'Диван Турин', '38700', '<br>\r\n<br>\r\nШирина: 2470 мм.\r\n<br>\r\n<br>\r\nВысота: 1000 мм.\r\n<br>\r\n<br>\r\nГлубина: 1080 мм.', 'брус, фанера, ДВПО, ЛДСП, независимый пружинный блок, ППУ EL.', '<b>Обивочная ткань:</b>\r\n<br>\r\n* Ткани-перейдя по ссылке можно посмотреть все образцы мебельных тканей и их примерную стоимость. Выберите нужную расцветку или сочетание цветов и напишите наименования тканей в комментарии к заказу.\r\n<br>\r\n* Стоимость дивана зависит от стоимости обивочной ткани. Выберите в параметре под ценой стоимость обивочной ткани, и цена дивана рассчитается автоматически. Если Вы выбрали несколько тканей с разной стоимостью - ориентируйтесь на большую.\r\n<br>\r\n<br>\r\n<b>Особенности модели:</b>\r\n<br>\r\n* Вид. Диван отлично подходит для ежедневного использования.\r\n<br>\r\n* Независимый пружинный блок. Каждая пружина размещается в блоке в отдельном матерчатом чехольчике и не соприкасается с другими. Сжатие пружины происходит независимо от положения другого элемента. Свободная циркуляция воздуха внутри (здоровый микроклимат), хороший влагообмен, комфорт при эксплуатации, польза для позвоночника (блоки с независимыми пружинами подстраиваются под форму тела и поддерживают спину в комфортном положении, при этом снимая лишнее напряжение с позвоночного столба).\r\n<br>\r\n* Механизм \"тик-так\".«Тик-так» — надежное устройство из прочного металла. Для предупреждения деформации каркаса предусмотрена синхронизирующая штанга со специальной пружиной, упрощающая раскладывание. «Тик-так» — это усовершенствованный вариант «еврокнижки». Название система получила благодаря характерному щелчку, который слышен при раскладывании. Механизм отличается безопасностью и долговечностью. Для раскладывания не требуется сила и специальные навыки.\r\n<br>\r\n* ППУ. Современный материал, безопасен для здоровья людей и животных. Гипоаллергенный и гигиеничный: не подвержен гниению, в нем не скапливается пыль, не разводится плесень. Имеет высокие показатели упругости и эластичности.', 5, 2, 'изображение_2024-05-13_145222631.png'),
(59, 'Пуф Эрик', '5560', '<br>\r\n<br>\r\nВысота (см) 42\r\n<br>\r\n<br>\r\nДлина (см) 45\r\n<br>\r\n<br>\r\nШирина (см) 45', 'МДФ', '<b>Пуф Эрик</b> представляет собой широкий, но невысокий табурет с мягким сиденьем. Прочный каркас обтянут приятной на ощупь тканью. Стильный предмет мебели украсит интерьер и позволит создать уют в доме. \r\n<br>\r\n<br>\r\nПуф не занимает много места, поэтому ее устанавливают в прихожей или в спальне перед столиком с зеркалом, рядом с диваном – в качестве подставки под ноги. ### \r\n<br>\r\n<br>\r\n<i><b>Особенности:</b> - размер – 42 x 42 см; - цвет – серый; - материал — полиэстер.</i>', 8, 3, 'изображение_2024-05-13_145453673.png'),
(60, 'Пуф Ольен', '2178', '<br>\r\n<br>\r\nДиаметр (см) 36\r\n<br>\r\n<br>\r\nВысота (см) 40\r\n<br>\r\n<br>\r\nДлина (см) 36\r\n<br>\r\n<br>\r\nШирина (см) 36', 'Дерево, Полиуретановая пена', '<b>Пуф Ольен</b> из полиэстера представляет собой предмет интерьера, который создает уютную атмосферу в доме или офисе. Небольшой стул без спинки уместно будет смотреться в любом помещении. Благодаря небольшому весу мебель можно передвигать без особых усилий. Пуф выполняет роль не только сиденья, но и подставки для ног.', 7, 3, 'изображение_2024-05-13_145635686.png'),
(61, 'Шкаф-купе Шарм-дизайн', '35990', '<br>\r\n<br>\r\nШирина (см) 130\r\n<br>\r\n<br>\r\nВысота (см) 220\r\n<br>\r\n<br>\r\nГлубина (см) 45', 'ЛДСП, ', '<b>Габариты внешние:</b>\r\n<br>\r\nширина 1300 мм.\r\n<br>\r\nглубина 450 мм. \r\n<br>\r\nвысота 2200 мм. \r\n<br>\r\n<br>\r\nГарантия: 18 месяцев\r\n<br>\r\nШтанга для вешалок: да\r\n<br>\r\nСтрана производства: Россия\r\n<br>\r\nМатериал корпуса: ЛДСП\r\n<br>\r\nВстроенная подсветка: нет\r\n<br>\r\nКоличество дверей: 2\r\n<br>\r\nЦвет корпуса: Белый\r\n<br>\r\nМатериал фасада: ЛДСП\r\n<br>\r\nЦвет фасада: Белый\r\n<br>\r\nТип поверхности корпуса: матовая\r\n<br>\r\nЗеркало в дверце: нет\r\n<br>\r\nМатериал профиля: Алюминий\r\n<br>\r\nЦвет профиля: хром матовый\r\n<br>\r\nТип шкафа: прямой\r\n<br>\r\nТребуется сборка: да\r\n<br>\r\n<br>\r\nШирина двери (см) - 126.8\r\n<br>\r\nКоличество полок - 4', 9, 4, 'изображение_2024-05-13_145814544.png'),
(62, 'Шкаф угловой Экспресс-2', '21960', '<br>\r\n<br>\r\nШирина: 900 мм.\r\n<br>\r\n<br>\r\nВысота: 2200 мм.\r\n<br>\r\n<br>\r\nГлубина: 900 мм.', 'ЛДСП 16 мм., кромка ПВХ 2 мм., алюминиевый профиль, фотопечать.', '<b>Особенности модели:</b>\r\n<br>\r\n* Распашная система открывания дверей рассчитана на 30 000 тактов «открывание-закрывание». Это подтверждено тестированием компании и соответствует 10 годам эксплуатации.\r\n<br>\r\n* Алюминиевый анодированный профиль разработан Е1, надежно защищен от коррозии.\r\n<br>\r\n* Отдельный цоколь позволяет поставить шкаф вплотную к стене.\r\n<br>\r\n* Безопасные зеркала не осыпаются даже при сильном ударе благодаря противоосколочной пленке.\r\n<br>\r\n* Полкодержатели «FLIPPER» прочно закрепляют полки и не позволяют им переворачиваться при надавливании.\r\n<br>\r\n* Нагрузки. Нагрузка на полки: до 15 кг. Нагрузка на штангу: до 60 кг.\r\n<br>\r\n* Ручка-профиль, расположенная по всей высоте двери, позволяет удобно открывать шкаф в любом помещении.\r\n<br>\r\n* Защитная щетка-шлегель обеспечивает плотное прилегание двери к стоевой, защищая внутреннее наполнение от попадания пыли.\r\n<br>\r\n* Задняя стенка ХДФ изготовлена из плиты высокой прочности, которая не прогнется со временем.\r\n<br>\r\n* Ударостойкая кромка ПВХ защищает торцы шкафа от сколов и повреждений.\r\n<br>\r\n* Угловая конструкция шкафа позволяет поставить его вплотную в угол или рядом с другим шкафом-купе.', 6, 4, 'изображение_2024-05-13_145952382.png'),
(63, 'Шкаф угловой Ягодка', '13349', '<br>\r\n<br>\r\nШирина (см) 131\r\n<br>\r\n<br>\r\nВысота (см) 200\r\n<br>\r\n<br>\r\nГлубина (см) 50', 'брус, фанера, ДВПО, ЛДСП, независимый пружинный блок, ППУ EL.', '<b>Особенности модели:</b>\r\n<br>\r\n* Угловая конструкция. Шкаф займёт пустующий угол в комнате, и Вы сможете обустроить пространство с максимальным комфортом, избежав острых углов и освободив место под другие цели.\r\n<br>\r\n* Универсальность. Шкаф может быть выполнен с открыванием дверцы как в правую так и в левую сторону.\r\n<br>\r\n* Функциональность. За распашной дверью расположены две ниши: большая с антресольной полкой и штангой для одежды на плечиках, и меньшая – с удобными полками для стопок белья и вещей.\r\n<br>\r\n* Комбинированная расцветка. Модель изготовлена на контрастном сочетании двух цветов.\r\n<br>\r\n* Качество. Угловой шкаф для гостиной изготовлен из современного высококачественного материала ЛДСП 16 мм, все торцы облицованы кромкой ПВХ 0,4 мм, надёжно защищающей торцы от скалывания, максимально продлевая срок эксплуатации изделия.\r\n<br>\r\n* Модульность – Вы сможете приобрести модуль как самостоятельный предмет мебели или дополнить другими элементами серии «Эмма», с помощью которых можно оформить помещение любого размера: от крохотной гостиной до солидных апартаментов.', 10, 4, 'изображение_2024-05-13_150238063.png');

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`id`, `status`) VALUES
(1, 'В обработке'),
(2, 'Заказ отправлен');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `type` bigint(20) NOT NULL DEFAULT 1,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `type`, `password`) VALUES
(9, 'admin', 1, 'admin'),
(10, 'artemavlasenok', 2, '123'),
(11, 'dima', 2, '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `busket`
--
ALTER TABLE `busket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_products` (`id_products`),
  ADD KEY `id_users` (`id_users`);

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oform`
--
ALTER TABLE `oform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_products` (`id_products`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `status_id` (`status_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `model_id` (`model_id`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `busket`
--
ALTER TABLE `busket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oform`
--
ALTER TABLE `oform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `busket`
--
ALTER TABLE `busket`
  ADD CONSTRAINT `id_products` FOREIGN KEY (`id_products`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `oform`
--
ALTER TABLE `oform`
  ADD CONSTRAINT `oform_ibfk_1` FOREIGN KEY (`id_products`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oform_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oform_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;