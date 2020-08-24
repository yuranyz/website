-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-08-2020 a las 03:49:33
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_computersolutions`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `BrandID` int(11) NOT NULL,
  `BrandName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`BrandID`, `BrandName`) VALUES
(1, 'Asus'),
(2, 'Apple'),
(3, 'Hp'),
(4, 'Lenovo'),
(5, 'Genius'),
(6, 'Acer'),
(7, 'Dell'),
(8, 'Toshiba'),
(9, 'Samsung'),
(10, 'Sony');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(40) NOT NULL,
  `Description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
(1, 'Equipment', 'All related with Computers, laptops and else'),
(2, 'Components', 'All related with sound, video, storage cards and else'),
(3, 'Peripherals', 'All related with printers, screens and else'),
(4, 'Accessories', 'All related with the external elements of a machine');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `CityID` int(11) NOT NULL,
  `CityName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`CityID`, `CityName`) VALUES
(1, 'Bello'),
(2, 'Caldas'),
(3, 'Copacabana'),
(4, 'Envigado'),
(5, 'Guarne'),
(6, 'Itagui'),
(7, 'La Ceja'),
(8, 'La Estrella'),
(9, 'La Tablaza'),
(10, 'Marinilla'),
(11, 'Medellín'),
(12, 'Rionegro'),
(13, 'Sabaneta'),
(14, 'San Antonio de Prado'),
(15, 'San Cristóbal'),
(16, 'Caucasia'),
(17, 'Barranquilla'),
(18, 'Malambo'),
(19, 'Puerto Colombia'),
(20, 'Soledad'),
(21, 'Arjona'),
(22, 'Bayunca'),
(23, 'Carmen de Bolívar'),
(24, 'Cartagena'),
(25, 'Turbaco'),
(26, 'Arcabuco'),
(27, 'Belencito'),
(28, 'Chiquinquirá'),
(29, 'Combita'),
(30, 'Cucaita'),
(31, 'Duitama'),
(32, 'Mongui'),
(33, 'Nobsa'),
(34, 'Paipa'),
(35, 'Puerto Boyacá'),
(36, 'Ráquira'),
(37, 'Samaca'),
(38, 'Santa Rosa de Viterbo'),
(39, 'Sogamoso'),
(40, 'Sutamerchán'),
(41, 'Tibasosa'),
(42, 'Tinjaca'),
(43, 'Tunja'),
(44, 'Ventaquemada'),
(45, 'Villa de Leiva'),
(46, 'La Dorada'),
(47, 'Manizales'),
(48, 'Villamaria'),
(49, 'Caloto'),
(50, 'Ortigal'),
(51, 'Piendamo'),
(52, 'Popayán'),
(53, 'Puerto Tejada'),
(54, 'Santander Quilichao'),
(55, 'Tunia'),
(56, 'Villarica'),
(57, 'Valledupar'),
(58, 'Cerete'),
(59, 'Montería'),
(60, 'Planeta Rica'),
(61, 'Alban'),
(62, 'Bogotá'),
(63, 'Bojaca'),
(64, 'Bosa'),
(65, 'Briceño'),
(66, 'Cajicá'),
(67, 'Chía'),
(68, 'Chinauta'),
(69, 'Choconta'),
(70, 'Cota'),
(71, 'El Muña'),
(72, 'El Rosal'),
(73, 'Engativá'),
(74, 'Facatativa'),
(75, 'Fontibón'),
(76, 'Funza'),
(77, 'Fusagasuga'),
(78, 'Gachancipá'),
(79, 'Girardot'),
(80, 'Guaduas'),
(81, 'Guayavetal'),
(82, 'La Calera'),
(83, 'La Caro'),
(84, 'Madrid'),
(85, 'Mosquera'),
(86, 'Nemocón'),
(87, 'Puente Piedra'),
(88, 'Puente Quetame'),
(89, 'Puerto Bogotá'),
(90, 'Puerto Salgar'),
(91, 'Quetame'),
(92, 'Sasaima'),
(93, 'Sesquile'),
(94, 'Sibaté'),
(95, 'Silvania'),
(96, 'Simijaca'),
(97, 'Soacha'),
(98, 'Sopo'),
(99, 'Suba'),
(100, 'Subachoque'),
(101, 'Susa'),
(102, 'Tabio'),
(103, 'Tenjo'),
(104, 'Tocancipa'),
(105, 'Ubaté'),
(106, 'Usaquén'),
(107, 'Usme'),
(108, 'Villapinzón'),
(109, 'Villeta'),
(110, 'Zipaquirá'),
(111, 'Maicao'),
(112, 'Riohacha'),
(113, 'Aipe'),
(114, 'Neiva'),
(115, 'Cienaga'),
(116, 'Gaira'),
(117, 'Rodadero'),
(118, 'Santa Marta'),
(119, 'Taganga'),
(120, 'Villavicencio'),
(121, 'Ipiales'),
(122, 'Pasto'),
(123, 'Cúcuta'),
(124, 'El Zulia'),
(125, 'La Parada'),
(126, 'Los Patios'),
(127, 'Villa del Rosario'),
(128, 'Armenia'),
(129, 'Calarcá'),
(130, 'Circasia'),
(131, 'La Tebaida'),
(132, 'Montenegro'),
(133, 'Quimbaya'),
(134, 'Dosquebradas'),
(135, 'Pereira'),
(136, 'Aratoca'),
(137, 'Barbosa'),
(138, 'Bucaramanga'),
(139, 'Floridablanca'),
(140, 'Girón'),
(141, 'Lebrija'),
(142, 'Oiba'),
(143, 'Piedecuesta'),
(144, 'Pinchote'),
(145, 'San Gil'),
(146, 'Socorro'),
(147, 'Sincelejo'),
(148, 'Armero'),
(149, 'Buenos Aires'),
(150, 'Castilla'),
(151, 'Espinal'),
(152, 'Flandes'),
(153, 'Guamo'),
(154, 'Honda'),
(155, 'Ibagué'),
(156, 'Mariquita'),
(157, 'Melgar'),
(158, 'Natagaima'),
(159, 'Payande'),
(160, 'Purificación'),
(161, 'Saldaña'),
(162, 'Tolemaida'),
(163, 'Amaime'),
(164, 'Andalucía'),
(165, 'Buenaventura'),
(166, 'Buga'),
(167, 'Buga La Grande'),
(168, 'Caicedonia'),
(169, 'Cali'),
(170, 'Candelaria'),
(171, 'Cartago'),
(172, 'Cavasa'),
(173, 'Costa Rica'),
(174, 'Dagua'),
(175, 'El Carmelo'),
(176, 'El Cerrito'),
(177, 'El Placer'),
(178, 'Florida'),
(179, 'Ginebra'),
(180, 'Guacarí'),
(181, 'Jamundi'),
(182, 'La Paila'),
(183, 'La Unión'),
(184, 'La Victoria'),
(185, 'Loboguerrero'),
(186, 'Palmira'),
(187, 'Pradera'),
(188, 'Roldanillo'),
(189, 'Rozo'),
(190, 'San Pedro'),
(191, 'Sevilla'),
(192, 'Sonso'),
(193, 'Tulúa'),
(194, 'Vijes'),
(195, 'Villa Gorgona'),
(196, 'Yotoco'),
(197, 'Yumbo'),
(198, 'Zarzal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `NumberCardID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `NumberPhone` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `City` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`CustomerID`, `NumberCardID`, `Name`, `LastName`, `Gender`, `Address`, `NumberPhone`, `Email`, `City`) VALUES
(1, '1036248745', 'Enrique', 'Ossa', 'Male', '33th Avenue # 21-32', '3009632180', 'enrique@gmail.com', 'Medellín');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL DEFAULT '',
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `Address` varchar(50) NOT NULL,
  `NumberPhone` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `HireDate` date NOT NULL,
  `Notes` varchar(250) NOT NULL,
  `RoleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE `invoices` (
  `InvoiceID` int(11) NOT NULL,
  `InvoiceDate` date NOT NULL,
  `OrderDetailsID` int(11) NOT NULL,
  `Taxes` decimal(10,0) NOT NULL,
  `Discount` decimal(10,0) NOT NULL,
  `Total` decimal(10,0) NOT NULL,
  `InvoiceStatusID` int(11) NOT NULL,
  `MeansOfPaymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoicestatus`
--

CREATE TABLE `invoicestatus` (
  `InvoiceStatusID` int(11) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `Notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invoicestatus`
--

INSERT INTO `invoicestatus` (`InvoiceStatusID`, `Status`, `Notes`) VALUES
(1, 'Paid', 'Customer paid correctly'),
(2, 'Pending of payment', 'Customer has not yet made the corresponding payment');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meansofpayment`
--

CREATE TABLE `meansofpayment` (
  `MeansOfPaymentID` int(11) NOT NULL,
  `MeansOfPaymentName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `meansofpayment`
--

INSERT INTO `meansofpayment` (`MeansOfPaymentID`, `MeansOfPaymentName`) VALUES
(1, 'Cash'),
(2, 'Credit card'),
(3, 'Debit card'),
(4, 'Pending of payment');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `OrderStatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordersdetails`
--

CREATE TABLE `ordersdetails` (
  `OrderDetailsID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `OrderPrice` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orderstatus`
--

CREATE TABLE `orderstatus` (
  `OrderStatusID` int(11) NOT NULL,
  `OrderStatusName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orderstatus`
--

INSERT INTO `orderstatus` (`OrderStatusID`, `OrderStatusName`) VALUES
(1, 'Awaiting Payment'),
(2, 'Canceled'),
(3, 'Declined'),
(4, 'Pending');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductCode` varchar(10) NOT NULL,
  `ProductName` varchar(40) NOT NULL,
  `Brand` varchar(150) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `PurchasePrice` decimal(10,0) NOT NULL,
  `SalePrice` decimal(10,0) NOT NULL,
  `UnitsInStock` int(11) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Supplier` varchar(250) NOT NULL,
  `Description` text NOT NULL,
  `ImageProduct` varchar(250) NOT NULL DEFAULT 'https://samuelrqa.github.io/cv/img/default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`ProductID`, `ProductCode`, `ProductName`, `Brand`, `Quantity`, `PurchasePrice`, `SalePrice`, `UnitsInStock`, `Category`, `Supplier`, `Description`, `ImageProduct`) VALUES
(1, 'LT-324', 'Laptop Asus', 'Asus', 25, '1200000', '2300000', 18, 'Equipment', 'ASUSTek Computer, Inc.', 'Thin and Light Laptop, 15.6” FHD, Intel Core i3-8145U CPU, 8GB RAM, 128GB SSD, Windows 10 in S Mode, F512FA-AB34, Slate Gray', 'https://samuelrqa.github.io/cv/img/LT-324.png'),
(2, 'KL-015', 'Keyboard Lit', 'Samsung', 32, '135000', '178000', 14, 'Peripherals', 'Samsung Electronics Colombia S.A.', 'PICTEK RGB Gaming Keyboard USB Wired Keyboard with 8 Independent Multimedia Keys, 25 Keys Anti-ghosting.', 'https://samuelrqa.github.io/cv/img/KL-015.png'),
(4, 'SC-754', 'Speakers', 'HP', 50, '57000', '79000', 45, 'Accesories', 'Hewlett-Packard', 'A short description', 'https://samuelrqa.github.io/cv/img/SC-754.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`RoleID`, `RoleName`) VALUES
(6, 'Manager'),
(7, 'Owner'),
(8, 'Seller'),
(9, 'Supervisor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `NumberIdentityCard` varchar(30) NOT NULL,
  `CompanyName` varchar(150) NOT NULL,
  `ContactName` varchar(150) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `CityID` int(11) NOT NULL,
  `NumberPhone` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `NumberIdentityCard`, `CompanyName`, `ContactName`, `Address`, `CityID`, `NumberPhone`, `Email`) VALUES
(1, '1256987', 'Acer, Inc.', 'Manuela Ospina Osa', '65th street # 89-25', 1, '3114897625', 'sarah@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`CityID`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`InvoiceID`),
  ADD KEY `OrderDetailsID` (`OrderDetailsID`,`InvoiceStatusID`,`MeansOfPaymentID`),
  ADD KEY `fk_Invoices_InvoiceStatus` (`InvoiceStatusID`),
  ADD KEY `fk_Invoices_MeansOfPayment` (`MeansOfPaymentID`);

--
-- Indices de la tabla `invoicestatus`
--
ALTER TABLE `invoicestatus`
  ADD PRIMARY KEY (`InvoiceStatusID`);

--
-- Indices de la tabla `meansofpayment`
--
ALTER TABLE `meansofpayment`
  ADD PRIMARY KEY (`MeansOfPaymentID`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `EmployeeID` (`EmployeeID`),
  ADD KEY `OrderStatusID` (`OrderStatusID`);

--
-- Indices de la tabla `ordersdetails`
--
ALTER TABLE `ordersdetails`
  ADD PRIMARY KEY (`OrderDetailsID`),
  ADD KEY `OrderID` (`OrderID`,`ProductID`),
  ADD KEY `fk_OrdersDetails_Products` (`ProductID`);

--
-- Indices de la tabla `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`OrderStatusID`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`),
  ADD KEY `CityID` (`CityID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `BrandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invoices`
--
ALTER TABLE `invoices`
  MODIFY `InvoiceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invoicestatus`
--
ALTER TABLE `invoicestatus`
  MODIFY `InvoiceStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `meansofpayment`
--
ALTER TABLE `meansofpayment`
  MODIFY `MeansOfPaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordersdetails`
--
ALTER TABLE `ordersdetails`
  MODIFY `OrderDetailsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orderstatus`
--
ALTER TABLE `orderstatus`
  MODIFY `OrderStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `fk_Invoices_InvoiceStatus` FOREIGN KEY (`InvoiceStatusID`) REFERENCES `invoicestatus` (`InvoiceStatusID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Invoices_MeansOfPayment` FOREIGN KEY (`MeansOfPaymentID`) REFERENCES `meansofpayment` (`MeansOfPaymentID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Invoices_OrdersDetails` FOREIGN KEY (`OrderDetailsID`) REFERENCES `ordersdetails` (`OrderDetailsID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_Orders_Customers` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Orders_Employees` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Orders_OrderStatus` FOREIGN KEY (`OrderStatusID`) REFERENCES `orderstatus` (`OrderStatusID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ordersdetails`
--
ALTER TABLE `ordersdetails`
  ADD CONSTRAINT `fk_OrdersDetails_Orders` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_OrdersDetails_Products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `fk_Suppliers_Cities` FOREIGN KEY (`CityID`) REFERENCES `cities` (`CityID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
