-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Дек 04 2019 г., 15:42
-- Версия сервера: 5.7.28-0ubuntu0.18.04.4
-- Версия PHP: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 2, 'Sportswear', '', ''),
(2, 0, 'Mens', NULL, NULL),
(3, 0, 'Womens', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armour', NULL, NULL),
(6, 1, 'Adidas', NULL, NULL),
(7, 0, 'Puma', '', ''),
(8, 1, 'ASICS', '', ''),
(9, 2, 'Fendi', NULL, NULL),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', NULL, NULL),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolce and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', NULL, NULL),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'Interiors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', 'сумки ключевики...', 'сумки описание...'),
(30, 0, 'Shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Products/Product1/505d5f.jpg', 1, 0, 'Product', 'cc4b8b0339-3', ''),
(2, 'Products/Product1/c597d3.jpg', 1, 0, 'Product', '2ac38f4b52-4', ''),
(3, 'Products/Product1/83ae9c.jpg', 1, 0, 'Product', 'b17d641160-5', ''),
(4, 'Products/Product1/7460be.jpg', 1, 0, 'Product', '2ea7bad36b-6', ''),
(5, 'Products/Product5/a99fb2.jpg', 5, 1, 'Product', 'a2ee701a95-1', ''),
(6, 'Products/Product1/2cdf65.png', 1, 0, 'Product', 'c905f8f7e4-7', ''),
(7, 'Products/Product1/90638e.jpg', 1, 0, 'Product', 'e22de6e3f2-8', ''),
(8, 'Products/Product1/7e5dca.jpg', 1, 0, 'Product', '52217cc587-9', ''),
(9, 'Products/Product1/7cf198.jpg', 1, 0, 'Product', '096c0b01d6-10', ''),
(10, 'Products/Product1/f9d00d.jpg', 1, 0, 'Product', '07ae037836-11', ''),
(11, 'Products/Product1/c20573.jpg', 1, 0, 'Product', 'd75839496f-2', ''),
(12, 'Products/Product1/1fa472.jpg', 1, 0, 'Product', '6b8b4306b3-12', ''),
(13, 'Products/Product1/448e9e.jpg', 1, 0, 'Product', 'a6d09cfed3-13', ''),
(14, 'Products/Product1/0b8a8e.jpg', 1, 0, 'Product', '22403cf8eb-14', ''),
(15, 'Products/Product1/649930.jpg', 1, 0, 'Product', 'c8a5a2b882-15', ''),
(16, 'Products/Product1/6b1ea8.jpg', 1, 1, 'Product', '6289748a34-1', ''),
(17, 'Products/Product1/07cc6c.jpg', 1, NULL, 'Product', '6c74fae1f0-16', ''),
(18, 'Products/Product1/bd461f.jpg', 1, NULL, 'Product', '8f1e517ed2-17', ''),
(19, 'Products/Product1/bb8e56.jpg', 1, NULL, 'Product', 'bae51ecaa6-18', ''),
(20, 'Products/Product1/7e6752.jpg', 1, NULL, 'Product', '0baa4ea0ea-19', ''),
(21, 'Products/Product2/e93b3c.jpg', 2, 0, 'Product', '3c90c907fe-2', ''),
(22, 'Products/Product2/f7f548.jpg', 2, 1, 'Product', '04425debae-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1574608878),
('m140622_111540_create_image_table', 1574608893),
('m140622_111545_add_name_to_image_table', 1574608893);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(5, '2019-11-21 14:19:53', '2019-11-20 14:19:53', 1, 56, '1', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(6, '2019-11-21 14:20:32', '2019-11-21 14:20:32', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(7, '2019-11-21 14:20:49', '2019-11-21 14:20:49', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(8, '2019-11-21 14:29:30', '2019-11-21 14:29:30', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi8'),
(9, '2019-11-21 15:12:17', '2019-11-21 15:12:17', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi5'),
(10, '2019-11-21 15:12:57', '2019-11-21 15:12:57', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi5'),
(11, '2019-11-21 15:13:51', '2019-11-21 15:13:51', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi5'),
(12, '2019-11-21 15:27:52', '2019-11-21 15:27:52', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(13, '2019-11-21 15:28:38', '2019-11-21 15:28:38', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(14, '2019-11-21 15:30:11', '2019-11-21 15:30:11', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(15, '2019-11-21 15:31:43', '2019-11-21 15:31:43', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(16, '2019-11-21 15:32:24', '2019-11-21 15:32:24', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(17, '2019-11-21 15:32:57', '2019-11-21 15:32:57', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(18, '2019-11-21 15:34:18', '2019-11-21 15:34:18', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(19, '2019-11-21 15:34:50', '2019-11-21 15:34:50', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(20, '2019-11-21 15:36:04', '2019-11-21 15:36:04', 1, 56, '1', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(21, '2019-11-21 15:38:01', '2019-11-21 15:38:01', 1, 56, '0', 'hjg', '1@mail.nn', '546546546', 'hgjhguihoi'),
(22, '2019-11-21 15:39:19', '2019-11-21 15:39:19', 1, 56, '0', 'hjg', 'nataliyn475@gmail.com', '546546546', '2121'),
(23, '2019-11-21 15:41:16', '2019-11-21 15:41:16', 1, 56, '0', 'hjg', 'nataliyn475@gmail.com', '546546546', '2121'),
(24, '2019-11-21 15:43:49', '2019-11-21 15:43:49', 1, 56, '0', 'hjg', 'nataliyn475@gmail.com', '546546546', '2121'),
(25, '2019-11-21 15:43:59', '2019-11-21 15:43:59', 1, 56, '0', 'hjg', 'nataliyn475@gmail.com', '546546546', '2121'),
(26, '2019-11-21 15:44:40', '2019-11-21 15:44:40', 1, 56, '0', 'hjg', 'nataliyn475@gmail.com', '546546546', '2121'),
(27, '2019-11-21 15:44:57', '2019-11-21 15:44:57', 1, 56, '0', 'hjg', 'nataliyn475@gmail.com', '546546546', '2121'),
(28, '2019-11-21 15:46:31', '2019-11-21 15:46:31', 1, 56, '0', 'hjg', 'nataliyn475@gmail.com', '546546546', '2121'),
(29, '2019-11-21 15:53:44', '2019-11-21 15:53:44', 1, 56, '0', 'hjg', 'nataliyn475@gmail.com', '546546546', '2121'),
(30, '2019-11-21 15:54:25', '2019-11-21 15:54:25', 1, 56, '1', 'hjg', 'kkonstantinov926@gmail.com', '546546546', '2121');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 5, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(2, 7, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(3, 8, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(4, 9, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(5, 10, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(6, 11, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(7, 12, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(8, 13, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(9, 14, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(10, 15, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(11, 16, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(12, 17, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(13, 18, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(14, 19, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(15, 20, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(16, 21, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(17, 22, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(18, 23, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(19, 24, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(20, 25, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(21, 26, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(22, 27, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(23, 28, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(24, 29, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(25, 30, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 4, 'Джинсы Garcia 244/32/856 28-32 р Серо-синие', '<p><img alt=\"\" src=\"/web/upload/global/php-uroki_thumb.jpg\" style=\"float:right; height:120px; margin-bottom:10px; margin-top:10px; width:213px\" />Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима. Особенности: Зауженные к низу Пять карманов Высококачественный деним Высокая посадка (high fit) Выгодно подчеркивают фигуру</p>\r\n', 10, '', '', '', '0', '0', '0'),
(2, 4, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '<p>MR520 &ndash; амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. &ndash; &quot;джинсы моего парня&quot;). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами.</p>\r\n', 56, 'джинсы ключи', 'джинсы описание', 'product2.jpg', '1', '0', '0'),
(3, 9, 'Блуза Mango 53005681-05 M Бежевая', 'Испанский бренд модной одежды \"Mango\" родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин — на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac & Nahman Andic), очень быстро набрала популярность — всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда \"Mango\" отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.', 20, NULL, NULL, 'product3.jpg', '1', '1', '0'),
(4, 21, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', '\r\n\r\nTom Tailor Group — один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет.\r\n\r\nTom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей.\r\n\r\nОдежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.', 70, NULL, NULL, 'product4.jpg', '1', '0', '1'),
(5, 25, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', '', 0, '', '', 'product5.jpg', '1', '0', '0'),
(6, 28, 'Кардиган Levi\'s Icy Grey Heather M', NULL, 100, NULL, NULL, 'product6.jpg', '1', '0', '0'),
(7, 28, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', '<p>Casual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира. ONLY &mdash; бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.</p>\r\n', 0, '', '', 'no-image.png', '1', '1', '0'),
(8, 26, 'Брюки SK House 2211-1972кор L Коричневые', '\r\n\r\nКомпания SK House — это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.', 99, NULL, NULL, 'no-image.png', '0', '0', '1'),
(9, 26, 'Брюки Kira Plastinina 17-07-17418-FL-58 L', NULL, 0, NULL, NULL, 'product1.jpg', '0', '0', '0'),
(10, 29, 'Сумка GUSSACI TUGUS13A060-3-10', 'Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают \"Гуссачи\" модным и популярным!\r\n\r\nОсобенности:\r\n\r\nКоличество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки — 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии.\r\n\r\nМатериал подкладки: плотная ткань.\r\nМатериал сумки: кожезаменитель.\r\nЦвет фурнитуры: золото.\r\nРазмеры сумки: 26 х 25 х 10.5 см', 15, NULL, NULL, 'product3.jpg', '0', '1', '0'),
(11, 29, 'Cумка Michael Kors Jet Set Travel Нежно-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 200, NULL, NULL, 'no-image.png', '0', '0', '1'),
(12, 29, 'Cумка Michael Kors Selma Золотистая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 205, NULL, NULL, 'product5.jpg', '0', '0', '0'),
(13, 29, 'Cумка Michael Kors Bedford Красная', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 0, NULL, NULL, 'no-image.png', '0', '0', '0'),
(14, 29, 'Cумка Michael Kors JS Travel Светло-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 0, NULL, NULL, 'no-image.png', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$xm7IUdupQCJE7UewT1KsauQHhQqelruFtL4Owia/8d1g1oMzVyxT6', 'PJztH8AXYL1mwcKD4SzvU3YZZuWsGZDv');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
