<?php

    class DbHelper {

    public static function tryCreateDB() {
        $db = DB_NAME; // Cambia esto por el nombre de tu base de datos
        $pdo = new PDO('mysql:host=' . DB_HOST, DB_USER, DB_PASS);
        $query = "CREATE DATABASE IF NOT EXISTS $db";
        $pdo->exec($query);
    }

    public static function deploy($db) {
        $query = $db->query('SHOW TABLES');
        $tables = $query->fetchAll();
        
        if (count($tables) == 0) {
            // Se define la cadena SQL para crear tablas y datos iniciales
            $hash = '$2y$10$GT4vCZd8lRH/nWxEczQO1uccmVjBxvu9AYVQ/qp0DlmvSA.Cctqju'; //Password hasheada anteriormente creada
            $sql = <<<END
            SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
            START TRANSACTION;
            SET time_zone = "+00:00";

            --
            -- Base de datos: `music_player`
            --

            -- --------------------------------------------------------

            --
            -- Estructura de tabla para la tabla `genres`
            --

            CREATE TABLE `genres` (
              `id` int(11) NOT NULL,
              `nombre` varchar(50) NOT NULL
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

            -- Volcado de datos para la tabla `genres`
            INSERT INTO `genres` (`id`, `nombre`) VALUES
            (1, 'Pop'),
            (2, 'Rock'),
            (3, 'Electro');

            -- --------------------------------------------------------

            --
            -- Estructura de tabla para la tabla `songs`
            --

            CREATE TABLE `songs` (
              `id` int(11) NOT NULL,
              `nombre` varchar(100) DEFAULT NULL,
              `duration` time DEFAULT NULL,
              `artist` varchar(100) DEFAULT NULL,
              `lyrics` text DEFAULT NULL,
              `url` text DEFAULT NULL,
              `genre_id` int(11) DEFAULT NULL
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

            -- --------------------------------------------------------

            --
            -- Estructura de tabla para la tabla `users`
            --

            CREATE TABLE `users` (
              `id` int(11) NOT NULL,
              `username` varchar(50) NOT NULL,
              `password` varchar(255) NOT NULL
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

            -- Volcado de datos para la tabla `users`
            INSERT INTO `users` (`id`, `username`, `password`) VALUES
            (1, 'webadmin', '$hash');

            -- --------------------------------------------------------

            -- Índices para tablas volcadas
            -- Índices de la tabla `genres`
            ALTER TABLE `genres`
              ADD PRIMARY KEY (`id`);

            -- Índices de la tabla `songs`
            ALTER TABLE `songs`
              ADD PRIMARY KEY (`id`),
              ADD KEY `genre_id` (`genre_id`);

            -- Índices de la tabla `users`
            ALTER TABLE `users`
              ADD PRIMARY KEY (`id`);

            -- AUTO_INCREMENT de las tablas volcadas
            ALTER TABLE `genres`
              MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

            ALTER TABLE `songs`
              MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

            ALTER TABLE `users`
              MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

            -- Restricciones para tablas volcadas
            ALTER TABLE `songs`
              ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

            COMMIT;
            END;

            $db->query($sql);
        }
    }
    }
