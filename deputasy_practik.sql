-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 12 2022 г., 23:41
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `deputasy_practik`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Manager`
--
-- Создание: Ноя 12 2022 г., 20:33
-- Последнее обновление: Ноя 12 2022 г., 20:36
--

DROP TABLE IF EXISTS `Manager`;
CREATE TABLE `Manager` (
  `IDManager` int(11) NOT NULL,
  `FIO` text NOT NULL,
  `TLF` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Manager`
--

INSERT INTO `Manager` (`IDManager`, `FIO`, `TLF`) VALUES
(1, 'Артур Магомедов', '+79998789889'),
(2, 'Галина Паловна', '+79994567887'),
(3, 'Петр Нормандов', '+799845387');

-- --------------------------------------------------------

--
-- Структура таблицы `Placed`
--
-- Создание: Ноя 12 2022 г., 20:28
-- Последнее обновление: Ноя 12 2022 г., 20:37
--

DROP TABLE IF EXISTS `Placed`;
CREATE TABLE `Placed` (
  `IDPlaced` int(11) NOT NULL,
  `Names` text NOT NULL,
  `VidReklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Placed`
--

INSERT INTO `Placed` (`IDPlaced`, `Names`, `VidReklama`) VALUES
(1, 'Площадь победы', 'Банер'),
(2, 'Улица Горького 34', 'Объявления на столбах'),
(3, 'Советский проспект 132', 'Банер');

-- --------------------------------------------------------

--
-- Структура таблицы `Reklamodatel`
--
-- Создание: Ноя 12 2022 г., 20:38
-- Последнее обновление: Ноя 12 2022 г., 20:40
--

DROP TABLE IF EXISTS `Reklamodatel`;
CREATE TABLE `Reklamodatel` (
  `IDKlietn` int(11) NOT NULL,
  `Names` text NOT NULL,
  `KontaktName` text NOT NULL,
  `TLF` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Reklamodatel`
--

INSERT INTO `Reklamodatel` (`IDKlietn`, `Names`, `KontaktName`, `TLF`) VALUES
(1, 'Олег Палыч', 'Юлия Секретарь', '+79985432321'),
(2, 'Валентина Олеговна ', '-', '+79975435645'),
(3, 'Артур Шарифов', 'Лаура Василькова', '+79763568754');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Manager`
--
ALTER TABLE `Manager`
  ADD PRIMARY KEY (`IDManager`);

--
-- Индексы таблицы `Placed`
--
ALTER TABLE `Placed`
  ADD PRIMARY KEY (`IDPlaced`);

--
-- Индексы таблицы `Reklamodatel`
--
ALTER TABLE `Reklamodatel`
  ADD PRIMARY KEY (`IDKlietn`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Manager`
--
ALTER TABLE `Manager`
  MODIFY `IDManager` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Placed`
--
ALTER TABLE `Placed`
  MODIFY `IDPlaced` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Reklamodatel`
--
ALTER TABLE `Reklamodatel`
  MODIFY `IDKlietn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
