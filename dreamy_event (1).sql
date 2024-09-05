-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2024 a las 18:09:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dreamy_event`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id_comentario` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `calificacion_comentario` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id_comentario`, `comentario`, `calificacion_comentario`, `id_customer`, `id_servicio`) VALUES
(2, '', 3, 28, 1),
(3, '', 4, 28, 1),
(4, '', 4, 28, 1),
(5, '', 5, 28, 1),
(6, '', 3, 28, 1),
(7, '', 3, 28, 1),
(8, '', 1, 28, 1),
(9, 'Funcaaa', 4, 28, 1),
(10, 'La casa del yes está muy cara', 1, 28, 1),
(11, 'Excelente lugar', 5, 28, 3),
(12, 'Buenas camas', 4, 28, 3),
(13, 'Dormí con una tarantula al lado', 1, 28, 3),
(14, '', 0, 28, 1),
(15, 'El yess no sabe atender la casa', 1, 28, 1),
(16, 'Muy lejos ', 5, 28, 1),
(17, 'Bien ', 5, 28, 1),
(18, 'Muy bonito', 3, 28, 1),
(19, 'holw', 4, 28, 1),
(20, 'Bueno', 5, 28, 1),
(21, 'Mas o menos ', 2, 28, 1),
(22, 'bonito', 5, 28, 3),
(23, 'ME gusta ', 5, 28, 3),
(24, 'Estuvo mas o menos', 3, 29, 3),
(25, 'lindis ', 4, 29, 3),
(26, 'werwe', 4, 29, 3),
(27, 'Buen lugar', 3, 29, 3),
(28, 'Buen lugar', 4, 29, 3),
(29, 'lindo', 4, 29, 3),
(30, 'hola muy lindo ', 4, 29, 3),
(31, 'hola muy lindo ', 4, 29, 3),
(32, 'asdfg', 3, 29, 3),
(33, 'asdfg', 3, 29, 3),
(34, 'sadas', 3, 29, 3),
(35, 'asefdgfh', 4, 29, 3),
(36, 'Lindo pero bonito ', 4, 29, 3),
(37, 'Fui el sabado ', 4, 29, 3),
(38, 'asdasd', 4, 29, 3),
(39, 'Muy lindo chinos', 5, 29, 3),
(40, 'hola sirve', 5, 29, 3),
(41, 'qwerty', 5, 29, 3),
(42, 'Muy lindo este lugarcito', 5, 28, 3),
(43, 'hola', 4, 28, 3),
(44, 'Muy bueno, lo recomiendo ', 5, 28, 3),
(45, 'Me gusto mucho este lugar ', 5, 28, 2),
(46, 'Salio todo muy bien ', 4, 29, 2),
(47, '', 5, 27, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id_customer` int(11) NOT NULL,
  `name_customer` varchar(45) NOT NULL,
  `last_name_customer` varchar(45) NOT NULL,
  `phone_customer` varchar(15) NOT NULL,
  `city_customer` varchar(45) NOT NULL,
  `country_customer` varchar(45) NOT NULL,
  `img_profile_customer` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id_customer`, `name_customer`, `last_name_customer`, `phone_customer`, `city_customer`, `country_customer`, `img_profile_customer`, `id_user`) VALUES
(26, 'Annie', 'Leonhart', '3114689644', 'Liberio', 'Marley', 'userFiles/Annie Leonhardt.jpeg', 38),
(27, 'Duvan Yesid', 'Becerra Rodríguez', '3114689644', 'Duitama', 'Colombia', 'userFiles/monkey-d-luffy.jpg', 39),
(28, 'Camilo Andrés', 'Benavides Salamanca', '3023488925', 'Paipa', 'Colombia', 'userFiles/perfil.jpg', 40),
(29, 'Juan', 'Leon', '3214569887', 'Paipa', 'Colombia', 'userFiles/perfil.jpg', 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id_event` int(11) NOT NULL,
  `name_event` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `transaction_state` int(11) NOT NULL DEFAULT 2,
  `id_event_type` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id_event`, `name_event`, `date`, `address`, `city`, `country`, `transaction_state`, `id_event_type`, `id_customer`) VALUES
(7, 'Mi cumpleaños', '2023-12-23 20:36:00', 'Transversal 20 #22a - 62', 'Duitama', 'Colombia', 4, 2, 27),
(11, 'Cumpleaños', '2024-10-11 13:38:00', 'Carrera 19', 'Paipa', 'Colombia', 2, 2, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_has_services`
--

CREATE TABLE `event_has_services` (
  `id_event` int(11) NOT NULL,
  `id_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `event_has_services`
--

INSERT INTO `event_has_services` (`id_event`, `id_service`) VALUES
(7, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorites`
--

CREATE TABLE `favorites` (
  `id_favorite_service` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `favorites`
--

INSERT INTO `favorites` (`id_favorite_service`, `id_service`, `id_customer`) VALUES
(29, 1, 26),
(62, 1, 27),
(64, 4, 27),
(65, 3, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images_services`
--

CREATE TABLE `images_services` (
  `id_image` int(11) NOT NULL,
  `url_image` varchar(100) NOT NULL,
  `id_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `images_services`
--

INSERT INTO `images_services` (`id_image`, `url_image`, `id_service`) VALUES
(1, 'userFiles/laptop wave.png\r\n', 1),
(2, 'userFiles/logo_capital_food_bw.png\r\n', 1),
(3, 'https://source.unsplash.com/640x480/?accommodation-house', 1),
(4, 'https://source.unsplash.com/640x480/?accommodation-room', 1),
(5, 'https://source.unsplash.com/640x480/?hotel', 2),
(6, 'https://source.unsplash.com/640x480/?reception', 2),
(7, 'https://source.unsplash.com/640x480/?room', 2),
(8, 'https://source.unsplash.com/640x480/?parking', 2),
(9, 'https://source.unsplash.com/640x480/?beach', 3),
(10, 'https://source.unsplash.com/640x480/?bathroom', 3),
(11, 'https://source.unsplash.com/640x480/?billiards', 3),
(12, 'https://source.unsplash.com/640x480/?bed', 3),
(13, 'userFiles/logo_capital_food_bw.png\r\n', 4),
(14, 'https://source.unsplash.com/640x480/?vanilla-bliss-delight', 4),
(15, 'https://source.unsplash.com/640x480/?whipped-vanilla-elegance', 4),
(16, 'https://source.unsplash.com/640x480/?ethereal-cream-whirlwind', 4),
(17, 'userFiles/18abd559-c4f5-43a9-8bc6-a335018331c0.jpeg', 5),
(18, 'userFiles/4a3222da-a4c3-4dd7-8982-a6be553690d1.png', 5),
(19, 'userFiles/f8956f6d-a64b-4a72-bde4-ddbbe76c0101.jpeg', 5),
(20, 'userFiles/80591a3f-a90f-4021-bff5-a1285ab03224.png', 5),
(21, 'userFiles/139_1927358-W.jpg', 6),
(22, 'userFiles/77b920e5-daec-4dc1-845b-b2b209576603.jpeg', 6),
(23, 'userFiles/94d55bce-aa0c-46fb-85fc-2644c77eb2d5.jpeg', 6),
(24, 'userFiles/520c1be2-e8da-493e-bed7-5541a2c335f0.jpeg', 6),
(34, 'userFiles/user profile 3.jpg', 10),
(35, 'userFiles/laptop wave.png', 11),
(36, 'userFiles/Banner-Github.jpg', 12),
(37, 'userFiles/logo_capital_food_bw.png', 13),
(38, 'userFiles/logo_capital_food_bw.png', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id_service` int(11) NOT NULL,
  `name_service` varchar(45) NOT NULL,
  `description_service` text NOT NULL,
  `price` varchar(15) NOT NULL,
  `location` varchar(45) NOT NULL,
  `city` varchar(35) NOT NULL,
  `country` varchar(35) NOT NULL,
  `amount_people` int(11) NOT NULL,
  `characteristics` text DEFAULT NULL,
  `id_type_service` int(11) DEFAULT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id_service`, `name_service`, `description_service`, `price`, `location`, `city`, `country`, `amount_people`, `characteristics`, `id_type_service`, `id_supplier`) VALUES
(1, 'Alojamiento en casa campestre', 'Casa campestre con 4 habitaciones, una de ellas con baño privado. Campo de juegos y zona de bar.', '600000', 'Vereda Quebrada de Becerras', 'Duitama', 'Colombia', 6, '4 habitaciones, 1 con baño privado. Campo de juegos. Zona de bar.', 1, 1),
(2, 'Hotel panorama', 'Habitación con cama doble, baño privado, jacuzzi y vista al mar', '170000', 'Carrera 20 #30-60', 'Santa Marta', 'Colombia', 2, 'Habitación con cama doble, baño privado, jacuzzi y vista al mar', 1, 1),
(3, 'Alojamiento en Bora Bora', 'Cabaña con 2 habitaciones, cuenta con 2 camas dobles, cada una con baño privado y entrada directa al mar', '6000000', 'Barrio borita', 'Bora Bora', 'Polinesia Francesa', 4, 'Cabaña con 2 habitaciones, cuenta con 2 camas dobles, cada una con baño privado y entrada directa al mar', 1, 1),
(4, 'Pastel de cremas', 'El pastel de crema ante ti es una obra maestra de la repostería, una sinfonía de capas delicadas que promete deleitar todos tus sentidos. Comencemos por su base, una masa dorada y esponjosa que se deshace en la boca, aportando el equilibrio perfecto entre lo suave y lo firme. Su aroma, una mezcla embriagadora de vainilla fresca y cálida, se desprende sutilmente al cortar cada porción.\r\n\r\nLas capas intermedias revelan el corazón de este pastel: una crema ligera y sedosa que se extiende en capas generosas entre las láminas de bizcocho. La crema, de un tono blanco nacarado, es una mezcla exquisita de vainilla y un toque sutil de almendra, creando una experiencia gustativa que es a la vez delicada y lujosa.\r\n\r\nLa cobertura exterior es un lienzo de crema batida, suavemente esparcida y decorada con hábiles remolinos. Esta capa adicional no solo añade un toque visualmente atractivo, sino que también ofrece una textura ligera y etérea que complementa a la perfección la riqueza de las capas internas.\r\n\r\nAhora, pensando en las personas con limitaciones alimenticias, este pastel de crema ha sido diseñado con cuidado y consideración. Si eres intolerante al gluten, puedes disfrutar de esta delicia, ya que la masa ha sido elaborada con una mezcla de harinas sin gluten que conserva la misma textura y sabor exquisitos. Además, para aquellos que evitan los lácteos, la crema y la cobertura han sido preparadas con alternativas no lácteas, sin sacrificar ni un ápice de su cremosidad.\r\n\r\nPara aquellos con alergias a frutos secos, puedes saborear cada bocado con tranquilidad, ya que el pastel está libre de ingredientes que pudieran representar un riesgo. La seguridad alimentaria es una prioridad, y cada ingrediente ha sido seleccionado cuidadosamente para garantizar una experiencia gastronómica inclusiva y deliciosa.\r\n\r\n\r\n\r\n\r\n\r\n', '40000', 'Barrio Boyacá', 'Duitama', 'Colombia', 8, 'Textura Delicada: La masa del pastel es esponjosa y tierna, creando una textura ligera que se deshace suavemente en la boca.\r\n\r\nAroma Embriagador: El pastel emana un cautivador aroma a vainilla fresca y cálida, añadiendo una dimensión sensorial al disfrute de cada porción.\r\n\r\nCapas Generosas de Crema Sedosa: El corazón del pastel está compuesto por capas abundantes de crema suave y sedosa, con un delicioso equilibrio de vainilla y un toque sutil de almendra.\r\n\r\nCobertura de Crema Batida: La parte exterior está elegantemente decorada con crema batida, que no solo añade un toque visualmente atractivo sino que también proporciona una textura etérea que complementa las capas internas.\r\n\r\nAlternativas Sin Gluten: El pastel ha sido elaborado con una mezcla de harinas sin gluten, permitiendo que las personas con intolerancia al gluten disfruten de esta delicia sin comprometer sabor ni textura.\r\n\r\nOpciones No Lácteas: La crema y la cobertura están preparadas con alternativas no lácteas, asegurando que aquellos que evitan los lácteos puedan disfrutar de la cremosidad sin preocupaciones.\r\n\r\nLibre de Frutos Secos Peligrosos: Se ha prestado especial atención a la seguridad alimentaria, y el pastel está libre de ingredientes que representen un riesgo para aquellos con alergias a frutos secos.\r\n\r\nDiseño Visualmente Atractivo: La cobertura con remolinos añade un toque estético que resalta la calidad artesanal del pastel, convirtiéndolo en un placer para la vista.\r\n\r\nInclusivo y Considerado: Creado con sensibilidad hacia diversas necesidades alimenticias, permitiendo que una amplia gama de personas disfruten de esta experiencia gastronómica sin preocupaciones.\r\n\r\nExperiencia Gastronómica Completa: La combinación de texturas, sabores y aromas crea una experiencia gastronómica completa y satisfactoria para todos los amantes de los pasteles de crema.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 2, 2),
(5, 'Hamburguesa', 'Mela pa que ', '123456', 'paipa', 'paipa', 'Colombia', 1, 'Rica', 4, 2),
(6, 'asd', 'asd', '234', 'das', 'asd', 'asd', 2, 'dasd', 1, 2),
(10, 'sda', 'asd', '233', 'asd', 'asd', 'asd', 3, 'dasd', 2, 2),
(11, 'p', 'p', '3423', 'p', 'p', 'p', 4, 'dsfsdf', 6, 2),
(12, 'q', 'q', '2', 'w', 'Paipa', 'Colombia', 2, 'cc', 3, 2),
(13, 'Camilo Andrés Benavides Salamanca', 'rew', '4234', 'rfew', 'Paipa', 'Colombia', 3, 'fasdf', 4, 2),
(14, 'Camilo Andrés Benavides Salamanca', 'das', '4324', 'fsdaf', 'Paipa', 'Colombia', 324, 'fdasf', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `id_supplier` int(11) NOT NULL,
  `name_company` varchar(60) NOT NULL,
  `email_company` varchar(100) NOT NULL,
  `phone_company` varchar(15) NOT NULL,
  `rut_company` varchar(15) NOT NULL,
  `city_company` varchar(35) NOT NULL,
  `country_company` varchar(35) NOT NULL,
  `image_company` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`id_supplier`, `name_company`, `email_company`, `phone_company`, `rut_company`, `city_company`, `country_company`, `image_company`, `id_user`) VALUES
(1, 'Airbnb', 'team@airbnb.com', '3123456789', '0123456789', 'Duitama', 'Colombia', 'https://source.unsplash.com/640x480/?accommodation', 39),
(2, 'Capital Food', 'capital@gmail.com', '3106284070', '123456789', 'Paipa', 'Colombia', 'Array', 40),
(3, 'asd', 'asd@hsbda', '324', '23', 'ewr', 'ewr', 'userFiles/user profile 3.jpg', 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_events`
--

CREATE TABLE `type_events` (
  `id_type_event` int(11) NOT NULL,
  `name_type_event` varchar(45) NOT NULL,
  `image_type_event` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `type_events`
--

INSERT INTO `type_events` (`id_type_event`, `name_type_event`, `image_type_event`) VALUES
(1, 'Wedding', 'https://source.unsplash.com/640x480/?wedding'),
(2, 'Birthday Party', 'https://source.unsplash.com/640x480/?birthdayParty'),
(3, 'Baby Shower', 'https://source.unsplash.com/640x480/?babyShower'),
(4, 'Conference/Seminar', 'https://source.unsplash.com/640x480/?conference'),
(5, 'Fifteen years', 'https://source.unsplash.com/640x480/?birthday'),
(6, 'Corporate meeting', 'https://source.unsplash.com/640x480/?corporate'),
(7, 'Fair/Exhibition', 'https://source.unsplash.com/640x480/?exhibition'),
(8, 'Family celebration', 'https://source.unsplash.com/640x480/?family'),
(9, 'Baptism', 'https://source.unsplash.com/640x480/?baptism'),
(10, 'Communion', 'https://source.unsplash.com/640x480/?communion'),
(11, 'Confirmation', 'https://source.unsplash.com/640x480/?confirmation'),
(12, 'Graduation', 'https://source.unsplash.com/640x480/?graduation');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_services`
--

CREATE TABLE `type_services` (
  `id_type_service` int(11) NOT NULL,
  `name_type_service` varchar(45) NOT NULL,
  `image_type_service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `type_services`
--

INSERT INTO `type_services` (`id_type_service`, `name_type_service`, `image_type_service`) VALUES
(1, 'Lugares', ' views/assets/svg/places.svg\r\n'),
(2, 'Pasteleria', ' views/assets/svg/cake.svg\r\n'),
(3, 'Transporte', 'views/assets/svg/bus.svg'),
(4, 'Comida', 'views/assets/svg/cutlery.svg'),
(5, 'Ambientación', 'views/assets/svg/speaker.svg\r\n'),
(6, 'Decoración', 'views/assets/svg/decor.svg'),
(7, 'Fotografía y video', 'views/assets/svg/camera.svg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email_user` varchar(45) NOT NULL,
  `password_user` varchar(45) NOT NULL,
  `recovery_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `email_user`, `password_user`, `recovery_code`) VALUES
(38, 'annie@leonhart.com', 'annie', NULL),
(39, 'yesidrodriguez305@gmail.com', 'duvan', NULL),
(40, 'camilo@gmail.com', '1234', NULL),
(41, 'juan@leon.com', '1234', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `comments_id_customer` (`id_customer`),
  ADD KEY `comments_id_service` (`id_servicio`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `customers_id_users_idx` (`id_user`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `id_type_event_idx` (`id_event_type`) USING BTREE,
  ADD KEY `id_customer` (`id_customer`);

--
-- Indices de la tabla `event_has_services`
--
ALTER TABLE `event_has_services`
  ADD PRIMARY KEY (`id_event`,`id_service`),
  ADD KEY `fk_evento_has_servicios_servicios1_idx` (`id_service`),
  ADD KEY `fk_evento_has_servicios_evento1_idx` (`id_event`);

--
-- Indices de la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id_favorite_service`),
  ADD KEY `favorites_id_service` (`id_service`),
  ADD KEY `favorites_id_customer` (`id_customer`);

--
-- Indices de la tabla `images_services`
--
ALTER TABLE `images_services`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_servicio_idx` (`id_service`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_type_service` (`id_type_service`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `proveedor_id_user_idx` (`id_user`);

--
-- Indices de la tabla `type_events`
--
ALTER TABLE `type_events`
  ADD PRIMARY KEY (`id_type_event`);

--
-- Indices de la tabla `type_services`
--
ALTER TABLE `type_services`
  ADD PRIMARY KEY (`id_type_service`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email_user` (`email_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id_favorite_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `images_services`
--
ALTER TABLE `images_services`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `type_events`
--
ALTER TABLE `type_events`
  MODIFY `id_type_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `type_services`
--
ALTER TABLE `type_services`
  MODIFY `id_type_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_id_service` FOREIGN KEY (`id_servicio`) REFERENCES `services` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_id_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_event_type` FOREIGN KEY (`id_event_type`) REFERENCES `type_events` (`id_type_event`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `event_has_services`
--
ALTER TABLE `event_has_services`
  ADD CONSTRAINT `fk_evento_has_servicios_evento1` FOREIGN KEY (`id_event`) REFERENCES `events` (`id_event`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_evento_has_servicios_servicios1` FOREIGN KEY (`id_service`) REFERENCES `services` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_id_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_id_service` FOREIGN KEY (`id_service`) REFERENCES `services` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `images_services`
--
ALTER TABLE `images_services`
  ADD CONSTRAINT `id_servicio` FOREIGN KEY (`id_service`) REFERENCES `services` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `id_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `suppliers` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_type_service` FOREIGN KEY (`id_type_service`) REFERENCES `type_services` (`id_type_service`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `proveedor_id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
