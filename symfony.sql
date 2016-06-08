-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 07 2016 г., 22:21
-- Версия сервера: 5.5.49-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `symfony`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Refrigerators'),
(2, 'Washing machines'),
(3, 'Freezers and chests'),
(4, 'Microwaves'),
(5, 'Plates'),
(6, 'Dishwashers'),
(7, 'Multivarki'),
(8, 'Blenders'),
(9, 'Meat Grinder'),
(10, 'Breadmaker'),
(11, 'Coffee machines'),
(12, 'Vacuum cleaners'),
(13, 'Irons'),
(14, 'Sewing machines'),
(15, 'Steam cleaners');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`) VALUES
(1, 'Indesit'),
(2, 'Beko'),
(3, 'Bosch'),
(4, 'Electrolux '),
(5, 'Saturn '),
(6, 'Samsung '),
(7, 'Greta'),
(8, 'Redmond '),
(9, 'Philips'),
(10, 'Zanussi'),
(11, 'Zelmer'),
(12, 'Rowenta'),
(13, 'Panasonic'),
(14, 'LARETTI'),
(15, 'Tefal'),
(16, 'MINERVA'),
(17, 'JANOME'),
(18, 'Toyota'),
(19, 'Karcher'),
(20, 'Black&Decker'),
(21, 'Fieldmann'),
(22, 'LG');

-- --------------------------------------------------------

--
-- Структура таблицы `products_categories`
--

CREATE TABLE IF NOT EXISTS `products_categories` (
  `product_Id` int(11) NOT NULL,
  `category_Id` int(11) NOT NULL,
  KEY `fk_products_idx` (`product_Id`),
  KEY `fk_categories_idx` (`category_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `products_categories`
--

INSERT INTO `products_categories` (`product_Id`, `category_Id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 15),
(17, 14),
(18, 1),
(19, 2),
(20, 6),
(21, 5),
(22, 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
