-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 15 2019 г., 10:52
-- Версия сервера: 10.1.39-MariaDB
-- Версия PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `avtors`
--

CREATE TABLE `avtors` (
  `idAvtor` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `avtors`
--

INSERT INTO `avtors` (`idAvtor`, `Name`) VALUES
(1, 'Пушкин'),
(2, 'Тургенев');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `idBook` int(11) NOT NULL,
  `Book` varchar(100) NOT NULL,
  `idAvtor` int(11) NOT NULL,
  `idSoAvtor1` int(11) DEFAULT NULL,
  `idSoAvtor2` int(11) DEFAULT NULL,
  `idSoAvtor3` int(11) DEFAULT NULL,
  `idSoAvtor4` int(11) DEFAULT NULL,
  `idSoAvtor5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`idBook`, `Book`, `idAvtor`, `idSoAvtor1`, `idSoAvtor2`, `idSoAvtor3`, `idSoAvtor4`, `idSoAvtor5`) VALUES
(1, '1', 1, NULL, NULL, NULL, NULL, NULL),
(2, '2', 1, NULL, NULL, NULL, NULL, NULL),
(3, '3', 1, NULL, NULL, NULL, NULL, NULL),
(4, '4', 1, NULL, NULL, NULL, NULL, NULL),
(5, '5', 1, NULL, NULL, NULL, NULL, NULL),
(6, '6', 1, NULL, NULL, NULL, NULL, NULL),
(7, '7', 1, NULL, NULL, NULL, NULL, NULL),
(8, '8', 2, NULL, NULL, NULL, NULL, NULL),
(9, '9', 2, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `avtors`
--
ALTER TABLE `avtors`
  ADD PRIMARY KEY (`idAvtor`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idBook`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `avtors`
--
ALTER TABLE `avtors`
  MODIFY `idAvtor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `idBook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
