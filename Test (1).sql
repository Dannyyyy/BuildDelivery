-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 22 2016 г., 13:04
-- Версия сервера: 5.6.29
-- Версия PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `Test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Car`
--

CREATE TABLE IF NOT EXISTS `Car` (
  `pk_car` int(11) NOT NULL AUTO_INCREMENT,
  `mark_car` varchar(300) DEFAULT NULL,
  `regist_number` varchar(300) DEFAULT NULL,
  `delivery_bag` int(11) DEFAULT NULL,
  `delivery_bulk` int(11) DEFAULT NULL,
  `tonnage` decimal(38,0) DEFAULT NULL,
  `Costfistzone` decimal(38,0) DEFAULT NULL,
  `Costsecondzone` decimal(38,0) DEFAULT NULL,
  `Costthirdzone` decimal(38,0) DEFAULT NULL,
  `Costdopkm` decimal(38,0) DEFAULT NULL,
  `pk_driver` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_car`),
  KEY `IX_Relationship2` (`pk_driver`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `Car`
--

INSERT INTO `Car` (`pk_car`, `mark_car`, `regist_number`, `delivery_bag`, `delivery_bulk`, `tonnage`, `Costfistzone`, `Costsecondzone`, `Costthirdzone`, `Costdopkm`, `pk_driver`) VALUES
(1, 'Камаз', 'е8934а', 0, 1, 7, 1000, 2000, 3000, 10, 1),
(2, 'Газель', 'т3434тт', 1, 0, 3, 800, 1400, 2000, 10, 2),
(3, 'Hino', 'x989xx', 1, 1, 10, 1200, 2000, 3100, 11, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Driver`
--

CREATE TABLE IF NOT EXISTS `Driver` (
  `pk_driver` int(11) NOT NULL AUTO_INCREMENT,
  `fio_driver` varchar(300) DEFAULT NULL,
  `nomber_driver` varchar(300) DEFAULT NULL,
  `tel_number_driver` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`pk_driver`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `Driver`
--

INSERT INTO `Driver` (`pk_driver`, `fio_driver`, `nomber_driver`, `tel_number_driver`) VALUES
(1, 'Васильев', 'о3847оо', '+98435324234'),
(2, 'Петров', 'аа67еаа', '+8473823409');

-- --------------------------------------------------------

--
-- Структура таблицы `instruction`
--

CREATE TABLE IF NOT EXISTS `instruction` (
  `pk_instruction` int(11) NOT NULL AUTO_INCREMENT,
  `desc_instruction` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`pk_instruction`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `instruction`
--

INSERT INTO `instruction` (`pk_instruction`, `desc_instruction`) VALUES
(1, 'Compact'),
(2, 'Tipper');

-- --------------------------------------------------------

--
-- Структура таблицы `instruction_car`
--

CREATE TABLE IF NOT EXISTS `instruction_car` (
  `pk_car` int(11) NOT NULL,
  `pk_instruction` int(11) NOT NULL,
  PRIMARY KEY (`pk_car`,`pk_instruction`),
  KEY `Relationship9` (`pk_instruction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `instruction_car`
--

INSERT INTO `instruction_car` (`pk_car`, `pk_instruction`) VALUES
(2, 1),
(3, 1),
(1, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Instuction_zone`
--

CREATE TABLE IF NOT EXISTS `Instuction_zone` (
  `pk_instruction` decimal(38,0) NOT NULL,
  `pk_order` decimal(38,0) NOT NULL,
  PRIMARY KEY (`pk_instruction`,`pk_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Material`
--

CREATE TABLE IF NOT EXISTS `Material` (
  `pk_material` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`pk_material`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `Material`
--

INSERT INTO `Material` (`pk_material`, `name`) VALUES
(1, 'River sand'),
(2, 'Sand');

-- --------------------------------------------------------

--
-- Структура таблицы `Measure`
--

CREATE TABLE IF NOT EXISTS `Measure` (
  `pk_measure` int(11) NOT NULL AUTO_INCREMENT,
  `Nazv` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`pk_measure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Order`
--

CREATE TABLE IF NOT EXISTS `Order` (
  `pk_order` int(11) NOT NULL AUTO_INCREMENT,
  `nomer` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `adress` varchar(300) DEFAULT NULL,
  `contact` varchar(300) DEFAULT NULL,
  `number_contact` varchar(300) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `Numberzone` int(11) DEFAULT '1',
  `Exstendway` decimal(38,0) DEFAULT NULL,
  `worker` int(11) DEFAULT NULL,
  `cost_order` int(11) DEFAULT NULL,
  `pk_status` int(11) DEFAULT NULL,
  `pk_material` int(11) DEFAULT NULL,
  `pk_measure` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_order`),
  KEY `IX_Relationship11` (`pk_status`),
  KEY `IX_Relationship13` (`pk_material`),
  KEY `IX_Relationship17` (`pk_measure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `order_car`
--

CREATE TABLE IF NOT EXISTS `order_car` (
  `pk_car` int(11) NOT NULL,
  `pk_order` int(11) NOT NULL,
  `count_trip` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_car`,`pk_order`),
  KEY `Relationship6` (`pk_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `order_instruction`
--

CREATE TABLE IF NOT EXISTS `order_instruction` (
  `pk_instruction` int(11) NOT NULL,
  `pk_order` int(11) NOT NULL,
  PRIMARY KEY (`pk_instruction`,`pk_order`),
  KEY `Relationship12` (`pk_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `order_status`
--

CREATE TABLE IF NOT EXISTS `order_status` (
  `pk_status` int(11) NOT NULL AUTO_INCREMENT,
  `name_status` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`pk_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Provider`
--

CREATE TABLE IF NOT EXISTS `Provider` (
  `pk_provider` int(11) NOT NULL AUTO_INCREMENT,
  `name_firm` varchar(300) DEFAULT NULL,
  `adress_firm` varchar(300) DEFAULT NULL,
  `tel_number_firm` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`pk_provider`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `Provider`
--

INSERT INTO `Provider` (`pk_provider`, `name_firm`, `adress_firm`, `tel_number_firm`) VALUES
(1, 'ОАО Песок', 'ул. Ленина, 123', '+7812743981');

-- --------------------------------------------------------

--
-- Структура таблицы `provider_material`
--

CREATE TABLE IF NOT EXISTS `provider_material` (
  `pk_provider` int(11) NOT NULL,
  `pk_material` int(11) NOT NULL,
  `cost_bag` int(11) DEFAULT NULL,
  `cost_tonna` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_provider`,`pk_material`),
  KEY `Relationship4` (`pk_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `provider_material`
--

INSERT INTO `provider_material` (`pk_provider`, `pk_material`, `cost_bag`, `cost_tonna`) VALUES
(1, 1, 1000, 120);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Car`
--
ALTER TABLE `Car`
  ADD CONSTRAINT `Relationship1` FOREIGN KEY (`pk_driver`) REFERENCES `Driver` (`pk_driver`);

--
-- Ограничения внешнего ключа таблицы `instruction_car`
--
ALTER TABLE `instruction_car`
  ADD CONSTRAINT `Relationship8` FOREIGN KEY (`pk_car`) REFERENCES `Car` (`pk_car`),
  ADD CONSTRAINT `Relationship9` FOREIGN KEY (`pk_instruction`) REFERENCES `instruction` (`pk_instruction`);

--
-- Ограничения внешнего ключа таблицы `Order`
--
ALTER TABLE `Order`
  ADD CONSTRAINT `Relationship10` FOREIGN KEY (`pk_status`) REFERENCES `order_status` (`pk_status`),
  ADD CONSTRAINT `Relationship2` FOREIGN KEY (`pk_measure`) REFERENCES `Measure` (`pk_measure`),
  ADD CONSTRAINT `Relationship7` FOREIGN KEY (`pk_material`) REFERENCES `Material` (`pk_material`);

--
-- Ограничения внешнего ключа таблицы `order_car`
--
ALTER TABLE `order_car`
  ADD CONSTRAINT `Relationship5` FOREIGN KEY (`pk_car`) REFERENCES `Car` (`pk_car`),
  ADD CONSTRAINT `Relationship6` FOREIGN KEY (`pk_order`) REFERENCES `Order` (`pk_order`);

--
-- Ограничения внешнего ключа таблицы `order_instruction`
--
ALTER TABLE `order_instruction`
  ADD CONSTRAINT `Relationship11` FOREIGN KEY (`pk_instruction`) REFERENCES `instruction` (`pk_instruction`),
  ADD CONSTRAINT `Relationship12` FOREIGN KEY (`pk_order`) REFERENCES `Order` (`pk_order`);

--
-- Ограничения внешнего ключа таблицы `provider_material`
--
ALTER TABLE `provider_material`
  ADD CONSTRAINT `Relationship3` FOREIGN KEY (`pk_provider`) REFERENCES `Provider` (`pk_provider`),
  ADD CONSTRAINT `Relationship4` FOREIGN KEY (`pk_material`) REFERENCES `Material` (`pk_material`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
