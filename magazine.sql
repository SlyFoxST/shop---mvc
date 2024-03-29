-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 12 2019 г., 23:11
-- Версия сервера: 5.6.37
-- Версия PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `magazine`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Платья', 1, 1),
(2, 'Юбки', 1, 1),
(3, 'Брюки', 1, 1),
(4, 'Джинсы', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `brand` varchar(250) NOT NULL,
  `code` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `is_new` int(11) NOT NULL,
  `is_recomended` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `images` varchar(250) NOT NULL,
  `avalibillity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `brand`, `code`, `category_id`, `price`, `is_new`, `is_recomended`, `status`, `images`, `avalibillity`) VALUES
(1, 'Anne Klein Sleeveless Colorblock Scuba', 'Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности требуют определения и уточнения направлений прогрессивного развития. Таким образом реализация намеченных плановых заданий требуют определения и уточнения форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.', ' D&G', 1089772, 1, 234, 1, 1, 1, '0', 0),
(2, 'EREWR', 'позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм разв', 'D&G', 3432, 2, 2342, 1, 1, 1, '0', 0),
(3, ' Klein ', 'Повседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.', 'NEW YORCK', 343, 3, 2343, 0, 1, 1, '0', 0),
(4, 'Sleeveless', 'Повседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.', 'COLLINS', 354, 3, 237, 0, 1, 1, '0', 0),
(5, 'Anne', 'Anneедневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участн', 'GOLD', 3443, 3, 343, 0, 1, 1, '0', 0),
(6, 'Sleeveless ', 'Sleeveless ых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение наш', 'GOLD', 233, 1232, 2231, 0, 1, 1, '0', 0),
(7, ' Klein ', 'Повседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.', 'NEW YORCK', 343, 3, 2343, 0, 1, 1, '0', 0),
(8, 'Sleeveless ', 'Sleeveless ых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение наш', 'GOLD', 233, 1232, 2231, 0, 1, 1, '0', 0),
(9, ' Klein ', 'Повседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.', 'NEW YORCK', 343, 3, 2343, 0, 1, 1, '0', 0),
(10, 'Anne', 'Anneедневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участн', 'GOLD', 3443, 3, 343, 0, 1, 1, '0', 0),
(11, 'EREWR', 'позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм разв', 'D&G', 3432, 2, 2342, 1, 1, 1, '0', 0),
(12, 'EREWR', 'позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм разв', 'D&G', 3432, 2, 2342, 1, 1, 1, '0', 0),
(13, 'Anne Klein Sleeveless Colorblock Scuba', 'Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности требуют определения и уточнения направлений прогрессивного развития. Таким образом реализация намеченных плановых заданий требуют определения и уточнения форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.', ' D&G', 1089772, 1, 234, 1, 1, 1, '0', 0),
(14, ' Klein ', 'Повседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.', 'NEW YORCK', 343, 3, 2343, 0, 1, 1, '0', 0),
(15, 'Anne Klein Sleeveless Colorblock Scuba', 'Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности требуют определения и уточнения направлений прогрессивного развития. Таким образом реализация намеченных плановых заданий требуют определения и уточнения форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.', ' D&G', 1089772, 1, 234, 1, 1, 1, '0', 0),
(16, 'EREWR', 'позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм разв', 'D&G', 3432, 2, 2342, 1, 1, 1, '0', 0),
(17, 'Anne', 'Anneедневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участн', 'GOLD', 3443, 3, 343, 0, 1, 1, '0', 0),
(18, 'Anne', 'Anneедневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участн', 'GOLD', 3443, 3, 343, 0, 1, 1, '0', 0),
(19, 'EREWR', 'позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм разв', 'D&G', 3432, 2, 2342, 1, 1, 1, '0', 0),
(20, 'Anne', 'Anneедневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации форм развития.\r\n\r\nПовседневная практика показывает, что новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участн', 'GOLD', 3443, 3, 343, 0, 1, 1, '0', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(70) NOT NULL,
  `role` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `password`, `role`) VALUES
(1, 'tanya', 'x@mail.ru', '1234567', 'admin'),
(2, ':name', ':email', ':password', ''),
(3, 'Irina', 'z@mail.ru', '123456', ''),
(4, 'andrei', 'c@gmal.com', '123456434', ''),
(5, 'alex', 'v@gmal.com', '123456434', ''),
(6, 'tanya', 'vq@gmal.com', '1234567890', ''),
(7, 'marina', 'yagoda@gmail.com', '178', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
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
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
