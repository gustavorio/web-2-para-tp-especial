-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2024 a las 03:32:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `music-player`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist_id`) VALUES
(1, 'Master of Puppets', 1),
(2, 'Paranoid', 2),
(3, 'Piece of Mind', 3),
(4, 'By the Way', 4),
(5, 'The Wall', 5),
(6, 'Abbey Road', 6),
(7, 'Thriller', 7),
(8, 'Like a Virgin', 8),
(9, 'Radical Optimism', 9),
(10, 'Pure Grinding / For a Better Day', 10),
(11, 'Sentio', 11),
(12, 'Nothing but the Beat', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artists`
--

INSERT INTO `artists` (`id`, `name`, `genre_id`) VALUES
(1, 'Metallica', 1),
(2, 'Black Sabbath', 1),
(3, 'Iron Maiden', 1),
(4, 'Red Hot Chili Peppers', 2),
(5, 'Pink Floyd', 2),
(6, 'The Beatles', 2),
(7, 'Michael Jackson', 3),
(8, 'Madonna', 3),
(9, 'Dua Lipa', 3),
(10, 'Avicii', 4),
(11, 'Martin Garrix', 4),
(12, 'David Guetta', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Metal'),
(2, 'Rock'),
(3, 'Pop'),
(4, 'Electro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `album_id` int(11) NOT NULL,
  `audio_url` varchar(225) NOT NULL,
  `lyrics` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `songs`
--

INSERT INTO `songs` (`id`, `title`, `album_id`, `audio_url`, `lyrics`) VALUES
(1, 'Metallica: Master of Puppets (Official Lyric Video)', 1, 'https://www.youtube.com/watch?v=6xjJ2XIbGRk', 'End of passion play\r\nCrumbling away\r\nI\'m your source of self-destruction\r\nVeins that pump with fear\r\nSucking darkest clear\r\nLeading on your death\'s construction\r\n\r\nTaste me, you will see\r\nMore is all you need\r\nDedicated to\r\nHow I\'m killing you\r\n\r\nCome crawling faster (faster)\r\nObey your master (master)\r\nYour life burns faster (faster)\r\nObey your master, master\r\n\r\nMaster of puppets, I\'m pulling your strings\r\nTwisting your mind and smashing your dreams\r\nBlinded by me, you can\'t see a thing\r\nJust c'),
(2, 'BLACK SABBATH - \"Paranoid\" (Official Video)', 2, 'https://www.youtube.com/watch?v=0qanF-91aJo', 'Finished with my woman \'cause\r\nShe couldn\'t help me with my mind\r\nPeople think I\'m insane because\r\nI am frowning all the time\r\nAll day long I think of things\r\nBut nothing seems to satisfy\r\nThink I\'ll lose my mind\r\nIf I don\'t find something to pacify\r\nCan you help me\r\nOccupy my brain?\r\nOh yeah\r\nI need someone to show me\r\nThe things in life that I can\'t find\r\nI can\'t see the things that make\r\nTrue happiness, I must be blind\r\nMake a joke and I will sigh\r\nAnd you will laugh and I will cry\r\nHappiness'),
(3, 'Iron Maiden - The Trooper (Official Video)', 3, 'https://www.youtube.com/watch?v=X4bgXH3sJ2Q', 'You\'ll take my life, but I\'ll take yours too\r\nYou\'ll fire your musket, but I\'ll run you through\r\nSo when you\'re waiting for the next attack\r\nYou\'d better stand, there\'s no turning back\r\nThe bugle sounds, the charge begins\r\nBut on this battlefield, no one wins\r\nThe smell of acrid smoke and horses\' breath\r\nAs I plunge on into certain death\r\nThe horse, he sweats with fear, we break to run\r\nThe mighty roar of the Russian guns\r\nAnd as we race towards the human wall\r\nThe screams of pain as my comrades'),
(4, 'Red Hot Chili Peppers - Can\'t Stop [Official Music Video]', 4, 'https://www.youtube.com/watch?v=8DyziWtkfBw', 'Can\'t stop, addicted to the shindig\r\nChop Top, he says I\'m gonna win big\r\nChoose not a life of imitation\r\nDistant cousin to the reservation\r\n\r\nDefunct, the pistol that you pay for\r\nThis punk, the feelin\' that you stay for\r\nIn time I want to be your best friend\r\nEast side love is living on the West End\r\n\r\nKnocked out, but, boy, you better come to \r\nDon\'t die, you know, the truth as some do\r\nGo write your message on the pavement\r\nBurn so bright, I wonder what the wave meant\r\n\r\nWhite heat is scream'),
(5, 'Pink Floyd - Another Brick in the Wall (lyrics)', 5, 'https://www.youtube.com/watch?v=qRoCIu67emw', '[Intro]\r\n\r\n[Verse: Roger Waters & David Gilmour]\r\nWe don\'t need no education\r\nWe don\'t need no thought control\r\nNo dark sarcasm in the classroom\r\nTeacher, leave them kids alone\r\nHey! Teacher! Leave them kids alone!\r\n\r\n[Chorus: Roger Waters & David Gilmour]\r\nAll in all, it\'s just another brick in the wall\r\nAll in all, you\'re just another brick in the wall\r\n\r\n[Verse: Islington Green School Students]\r\nWe don\'t need no education\r\nWe don\'t need no thought control\r\nNo dark sarcasm in the classroom\r\nTe'),
(6, 'The Beatles - Come Together', 6, 'https://www.youtube.com/watch?v=45cYwDMibGo', 'Shoot me\r\nShoot me\r\nShoot me\r\nShoot me\r\nHere come old flat-top, he come groovin\' up slowly\r\nHe got ju-ju eyeball, he one holy roller\r\nHe got hair down to his knee\r\nGot to be a joker, he just do what he please\r\nShoot me\r\nShoot me\r\nShoot me\r\nShoot me\r\nHe wear no shoeshine, he got toe-jam football\r\nHe got monkey finger, he shoot Coca-Cola\r\nHe say, \"I know you, you know me\"\r\nOne thing I can tell you is you got to be free\r\nCome together, right now\r\nOver me\r\nShoot me\r\nShoot me\r\nShoot me\r\nHe bag produc'),
(7, 'Michael Jackson - Thriller (Lyrics)', 7, 'https://www.youtube.com/watch?v=rLMr9CsJHME', 'It\'s close to midnight\r\nAnd something evil\'s lurking in the dark\r\nUnder the moonlight\r\nYou see a sight that almost stops your heart\r\nYou try to scream\r\nBut terror takes the sound before you make it\r\nYou start to freeze\r\nAs horror looks you right between the eyes\r\nYou\'re paralyzed\r\n\'Cause this is thriller, thriller night\r\nAnd no one\'s gonna save you from the beast about to strike\r\nYou know it\'s thriller, thriller night\r\nYou\'re fighting for your life inside a killer, thriller tonight, yeah\r\nOoh, o'),
(8, 'Madonna - Material Girl (Official Video) [HD]', 8, 'https://www.youtube.com/watch?v=6p-lDYPR2P8', 'Some boys kiss me, some boys hug me\r\nI think they\'re okay\r\nIf they don\'t give me proper credit\r\nI just walk away\r\nThey can beg and they can plead\r\nBut they can\'t see the light (that\'s right)\r\n\'Cause the boy with the cold hard cash\r\nIs always Mister Right\r\n\'Cause we are living in a material world\r\nAnd I am a material girl\r\nYou know that we are living in a material world\r\nAnd I am a material girl\r\nSome boys romance, some boys slow dance\r\nThat\'s all right with me\r\nIf they can\'t raise my interest\r\nT'),
(9, 'Dua Lipa - Houdini (Official Music Video)', 9, 'https://www.youtube.com/watch?v=suAR1PYFNYA', 'Okay, huh\r\nMm, ah\r\nI come and I go\r\nTell me all the ways you need me\r\nI\'m not here for long\r\nCatch me or I go Houdini\r\nI come and I go\r\nProve you got the right to please me\r\nEverybody knows\r\nCatch me or I go Houdini\r\nTime is passin\' like a solar eclipse\r\nSee you watchin\' and you blow me a kiss\r\nIt\'s your moment, baby, don\'t let it slip\r\nCome in closer, are you readin\' my lips?\r\nThey say I come and I go\r\nTell me all the ways you need me\r\nI\'m not here for long\r\nCatch me or I go Houdini\r\nI come and'),
(10, 'Avicii - Pure Grinding', 10, 'https://www.youtube.com/watch?v=hzdIoghbFzg', 'Working my money \'til I get gold\r\nMonday-Friday mornin\'\r\nWorking my money \'til I get gold\r\n\'Cause I can\'t get no more\r\nWorking my money \'til I get gold\r\nMonday-Friday mornin\'\r\nWorking my money \'til I get gold\r\n\'Cause I can\'t get no more\r\nStarted out with nothing and I still got most of that\r\nThe world ain\'t give me much, I\'m positive that\'s a fact\r\nEverybody said be cool, you be payin\' your dues\r\nMake a long story short, I got nothin\' to lose\r\nOh, yeah\r\nWhen I get it, I ain\'t never going back ag'),
(11, 'Martin Garrix & Blinders - Aurora (Official Video)', 11, 'https://www.youtube.com/watch?v=_NIpfrGXwG8', 'No lyrics. Just Music'),
(12, 'David Guetta - Where Them Girls At ft. Nicki Minaj, Flo Rida (Official Video)', 12, 'https://www.youtube.com/watch?v=p4kVWCSzfK4', 'So many girls in here, where do I begin? (Ohh)\r\nI seen this one, I\'m \'bout to go in (ohh)\r\nThen she said, I\'m here with my friends (ohh)\r\nShe got me thinking and that\'s when I said\r\nWhere them girls at, girls at? (Woo)\r\nWhere them girls at, girls at? (Woo-ooh)\r\nWhere them girls at, girls at? (Woo)\r\nSo go get them, we can all be friends (woo-ooh)\r\nHey, bring it on, baby, all your friends\r\nYou\'re the shit and I love that body (body)\r\nYou wanna ball, let\'s mix it\r\nI swear you\'re good, I won\'t tell ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indices de la tabla `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`);

--
-- Filtros para la tabla `artists`
--
ALTER TABLE `artists`
  ADD CONSTRAINT `artists_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Filtros para la tabla `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
