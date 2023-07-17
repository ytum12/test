-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 16 2023 г., 20:18
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
-- База данных: `1-database`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `oid` bigint NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`oid`, `date`, `name`, `email`) VALUES
(4, '2023-03-10 16:25:07', 'loll', 'lol@gmail.com'),
(5, '2023-03-10 16:28:55', 'loll', 'lol@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_items`
--

CREATE TABLE `orders_items` (
  `oid` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders_items`
--

INSERT INTO `orders_items` (`oid`, `name`, `price`, `qty`) VALUES
(1, 'Архидея в горшке', '1100.00', 1),
(2, 'Белые розы букет (27шт)', '2800.00', 2),
(3, 'Георгин (1шт)', '460.00', 3),
(4, 'Гаицинт (3шт)', '850.00', 4),
(5, 'Нерине (1шт)', '3065.00', 5),
(6, 'Ранункулюс', '4075.00', 6),
(7, 'Картофель мытый мешок (20кг) ', '1880.00', 7),
(8, 'Комплект зелени(1кг) ', '610.00', 8),
(9, 'Лук репчатый (10кг)', '2340.00', 9),
(10, 'Морковь мытая (15кг) ', '3170.00', 10),
(11, 'Огурцы короткоплодные (12кг)', '1920.00', 11),
(12, 'Помидоры чери (5кг)', '750.00', 12),
(13, 'Сметана Сливочная 30%', '75.00', 13),
(14, 'Коровье молоко (1л)', '120.00', 14),
(15, 'Сыр Гауда (100 грамм)', '46.00', 15),
(16, 'Сыр белый (100 грамм)', '84.00', 16),
(17, 'Творог Danone 5%', '28.00', 17),
(18, 'Молочная сгущенка', '117.00', 18),
(19, 'Апельсины крупные (5 кг)', '1357.00', 19),
(20, 'Виноград черный (3кг)', '1480.00', 20),
(21, 'Гранат натуральный (5кг)', '2950.00', 21),
(22, 'Грейпфрут красный (10кг)', '4085.00', 22),
(23, 'Груша желтая (25кг)', '3075.00', 23),
(24, 'Киви мелкая (5кг)', '1395.00', 24);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `pid` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`pid`, `name`, `image`, `price`) VALUES
(1, 'Архидея в горшке', 'flower/archidea.jpg', '1100.00'),
(2, 'Белые розы букет (27шт)', 'flower/roza.jpg', '2800.00'),
(3, 'Георгин (1шт)', 'flower/dahlias.jpg', '460.00'),
(4, 'Гаицинт (3шт)', 'flower/hyacinth.jpeg', '850.00'),
(5, 'Нерине (1шт)', 'flower/nerine.jpg', '3065.00'),
(6, 'Ранункулюс', 'flower/ranunculus.jpg', '4075.00'),
(7, 'Картофель мытый мешок (20кг)', 'vegetables/potato.jpg', '1880.00'),
(8, 'Комплект зелени(1кг)', 'vegetables/greenery.jpg', '610.00'),
(9, 'Лук репчатый (10кг)', 'vegetables/onion.jpg', '2340.00'),
(10, 'Морковь мытая (15кг)', 'vegetables/carrot.jpg', '3170.00'),
(11, 'Огурцы короткоплодные (12кг)', 'vegetables/cucumber.jpg', '1920.00'),
(12, 'Помидоры чери (5кг)', 'vegetables/chiri.jpg', '750.00'),
(13, 'Сметана Сливочная 30%', 'material/cream/cream_30.jpg', '75.00'),
(14, 'Коровье молоко (1л)', 'material/mlik/milk.jpg', '120.00'),
(15, 'Сыр Гауда (100 грамм)', 'material/cheese/Gouda.jpg', '46.00'),
(16, 'Сыр белый (100 грамм)', 'material/cheese/bri.png', '84.00'),
(17, 'Творог Danone 5%', 'material/Cottage/Cottage_cheese_Danone.png', '28.00'),
(18, 'Молочная сгущенка', 'material/Condensed/Condensed_milk.jpg', '117.00'),
(19, 'Апельсины крупные (5 кг)', 'fruits/oranges.jpg', '1357.00'),
(20, 'Виноград черный (3кг)', 'fruits/grape.jpg', '1480.00'),
(21, 'Гранат натуральный (5кг)', 'fruits/grenades.jpg', '2950.00'),
(22, 'Грейпфрут красный (10кг)', 'fruits/grapefruits.jpg', '4085.00'),
(23, 'Груша желтая (25кг)', 'fruits/pear.jpg', '3075.00'),
(24, 'Киви мелкая (5кг)', 'fruits/kiwi.jpeg', '1395.00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `full_name` varchar(355) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `full_name`, `login`, `email`, `password`, `avatar`) VALUES
(20, '321', '321', '', 'caf1a3dfb505ffed0d024130f58c5cfa', 'uploads/1684257095'),
(21, '123', '123', '', '202cb962ac59075b964b07152d234b70', 'uploads/1684257401');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `name` (`name`),
  ADD KEY `email` (`email`),
  ADD KEY `date` (`date`);

--
-- Индексы таблицы `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`oid`,`name`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `pid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
