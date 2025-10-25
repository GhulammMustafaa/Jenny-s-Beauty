-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2025 at 06:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `pass`) VALUES
(1, 'Ayesha', 'admin@gmail.com', 'Ayesha09');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `quantity`, `type`) VALUES
(1, 1, 9, 'jewellery'),
(2, 2, 16, 'jewellery'),
(3, 6, 8, 'jewellery'),
(4, 4, 10, 'jewellery'),
(5, 70, 31, 'jewellery'),
(6, 111, 120, 'jewellery'),
(7, 108, 12, 'jewellery'),
(8, 117, 14, 'jewellery'),
(9, 124, 30, 'jewellery'),
(10, 127, 12, 'jewellery'),
(11, 24, 51, 'jewellery'),
(12, 11, 24, 'jewellery'),
(13, 106, 1, 'jewellery'),
(14, 70, 50, 'cosmetic'),
(15, 114, 32, 'cosmetic'),
(16, 109, 33, 'cosmetic'),
(17, 122, 46, 'cosmetic'),
(18, 125, 180, 'cosmetic'),
(0, 5, 1, 'jewellery'),
(0, 3, 1, 'jewellery'),
(0, 10, 1, 'jewellery');

-- --------------------------------------------------------

--
-- Table structure for table `cosmetic`
--

CREATE TABLE `cosmetic` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cosmetic`
--

INSERT INTO `cosmetic` (`id`, `name`, `price`, `image`, `description`, `category`) VALUES
(69, 'Even Out Serum', 33, 'cosmetic_images/Even Out Serum.webp', 'Brightening serum with Vendique + Vignette C3 formula for even skin tone', 'Skincare (Serum)'),
(70, 'Exfoliating Face Scrub', 16, 'cosmetic_images/Exfoliating Face Scrub.webp', 'Gentle scrub with natural extracts to exfoliate and renew skin', 'Skincare (Exfoliator)'),
(106, 'Glow Essentials Soap Bar', 8, 'cosmetic_images/Glow Essentials Soap Bar with Vitamins E & B3.webp', 'Nourishing soap bar with glow-enhancing vitamins', 'body'),
(107, 'Hydrating Face Cream', 25, 'cosmetic_images/Hydrating Face Cream with Organic Aloe Vera & Pineapple.webp', 'Cream infused with Organic Aloe Vera & Pineapple for 24-hour moisture', 'Select category'),
(108, 'Hydrating Face Mask', 15, 'cosmetic_images/Hydrating Face Mask with Organic Aloe Vera & Pineapple.webp', 'Soothing mask with 77% natural ingredients for instant hydration', 'skin_care'),
(109, 'Hydrating Gel Cleanser', 20, 'cosmetic_images/Hydrating Gel Cleanser with Organic Aloe Vera & Pineapple.webp', 'Refreshing gel cleanser with Organic Aloe Vera & Pineapple', 'skin_care'),
(110, 'Hydrating Toner', 20, 'cosmetic_images/Hydrating Toner with Organic Aloe Vera & Pineapple.webp', 'Alcohol-free toner to balance pH and prep skin for hydration', 'skin_care'),
(111, 'Intense Nourishment Facial Oil Capsules', 40, 'cosmetic_images/Intense Nourishment Facial Oil Capsules.webp', 'Single-dose capsules with lupine oil for deep nourishment', 'skin_care'),
(112, 'Intense Repair Hair Mask', 27, 'cosmetic_images/Intense Repair Hair Mask.webp', 'Keratin and oat lipid mask to restore dry, damaged hair', 'hair_care'),
(113, 'Nourishing Body Cream', 27, 'cosmetic_images/Nourishing Body Cream with Organic Cacao Butter & Coconut Oil.webp', 'Rich cream with Organic Cacao Butter & Coconut Oil for 48h hydration', 'body'),
(114, 'OnColour Liquid Eye Liner', 15, 'cosmetic_images/OnColour Liquid Eye Liner.webp', 'Intense, long-wearing liquid eyeliner for sharp lines', 'make_up'),
(115, 'OnColour Peach Glow Perfector', 20, 'cosmetic_images/OnColour Peach Glow Perfector.webp', 'Illuminating perfector to brighten skin with a peach tint', 'make_up'),
(116, 'Amber Elixir Perfumed Body Cream', 22, 'cosmetic_images/Perfumed Body Cream.webp', 'Luxurious scented cream (25ml) for soft, fragrant skin', 'body'),
(117, 'Poppy & Vanilla Hand & Body Lotion', 15, 'cosmetic_images/Poppy & Vanilla Hand & Body Lotion.webp', 'Fragrant lotion with floral and vanilla notes for daily use', 'body'),
(118, 'Purifying Clay Face Mask', 18, 'cosmetic_images/Purifying Clay Face Mask.webp', 'Detoxifying mask with charcoal and white nerite clay to deep-clean pores', 'skin_care'),
(119, 'Repairing Conditioner', 17, 'cosmetic_images/Repairing Conditioner.webp', 'Botanical conditioner to strengthen and smooth hair', 'hair_care'),
(120, 'Repairing Shampoo', 18, 'cosmetic_images/Repairing Shampoo.webp', 'Shampoo with reparative technology for damaged hair', 'hair_care'),
(121, 'Rich Creme Conditioner', 18, 'cosmetic_images/Rich Creme Conditioner.webp', 'Botanical conditioner with essential minerals for smooth, hydrated hair', 'hair_care'),
(122, 'Shampoo For Oily Hair with Organic Lemon & Min', 16, 'cosmetic_images/Shampoo For Oily Hair with Organic Lemon & Mint.webp', 'Purifying shampoo with organic lemon and mint for oily hair types', 'hair_care'),
(123, 'BB Cream SPF 10', 22, 'cosmetic_images/Shirt in Stretch Cotton.webp', 'Lightweight BB cream with SPF 10 protection and natural coverage', 'make_up'),
(124, 'Soothing Micellar Cleansing Water', 20, 'cosmetic_images/Soothing Micellar Cleansing Water.webp', 'Gentle micellar water to cleanse and soothe skin without rinsing', 'skin_care'),
(125, 'Amour Intensité Eau de Toilette', 38, 'cosmetic_images/Amour Intensité Eau de Toilette.webp', 'Intense romantic fragrance with warm, sensual notes', 'fragrances'),
(126, 'Diamond Cellular Anti-Ageing Cream', 65, 'cosmetic_images/Anti-Ageing Cream.webp', 'Luxury anti-ageing cream with Diamond Elixir technology', 'skin_care');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `cell_no` int(11) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `work_phone_no` int(11) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `category` varchar(25) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `address`, `cell_no`, `dob`, `work_phone_no`, `remarks`, `category`, `amount`) VALUES
(1, 'Muhib Hussain khan', 'muhibkhan2299@gmail.com', 'asdasdsad', 1234312343, '2006-05-14', 324542345, 'fafdsfafg', 'jewllery', 400),
(2, 'Ayesha', 'Ayesha@gmail.com', 'north Karachi', 2147483647, '2007-05-02', 12345255, 'dsfsgfdfgretsdf', 'jewllery', 250),
(3, 'Ali', 'ali@gmail.com', 'sfsdfdfsdfs', 23123213, '2004-04-02', 2147483647, 'sgfdgdfhfdhd', 'sdsdfdsf', 540);

-- --------------------------------------------------------

--
-- Table structure for table `jewellery`
--

CREATE TABLE `jewellery` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jewellery`
--

INSERT INTO `jewellery` (`id`, `name`, `price`, `image`, `description`, `category`) VALUES
(1, 'Emerald Meridian Studs', 200, 'jewellery_images/Esprit Ruffle Earrings.webp', ' Rose gold circular studs featuring vibrant malachite centers with pavé diamond accents', 'Earrings'),
(3, 'Azure Cascade Drops', 400, 'jewellery_images/Esprit Ruffle Shirt Blue.webp', 'Double-drop earrings with cushion-cut blue topaz stones in rose gold settings with diamond accents', 'Earrings'),
(4, 'Moonstone Elegance Drops', 250, 'jewellery_images/Herschel supply.webp', ' Sophisticated drop earrings featuring crystal-cut tops with smoky quartz dangles in rose gold', 'Earrings'),
(5, 'Classic Curve Band', 90, 'jewellery_images/Iconica Bracelet.webp', 'Smooth, polished rose gold band with contemporary curved profile', 'Rings'),
(6, 'Dual Harmony Pendant', 160, 'jewellery_images/Iconica Necklace With Pendant.webp', 'Two-tone pendant necklace with rose gold and diamond-pavé elements on cable chain', 'Necklace'),
(9, 'Scarlet Lariat Necklace', 210, 'jewellery_images/Iconica Necklace.webp', 'Adjustable lariat-style necklace with ruby accent and pearl drops', 'Necklace'),
(10, 'Bold Link Bracelet', 140, 'jewellery_images/Iconica Slim Bracelet.webp', 'Chunky rose gold chain bracelet with oversized oval links', 'Bracelets'),
(11, 'Prasiolite Cuff Bracelet', 250, 'jewellery_images/Nudo Bracelet.webp', 'Modern geometric pendant with mother-of-pearl center and diamond frame', 'Bracelets'),
(12, 'Pearl Capsule Pendant', 190, 'jewellery_images/Isola Necklace with Pendant.webp', 'Modern geometric pendant with mother-of-pearl center and diamond frame', 'Necklace'),
(13, 'Graphite Cuff Bracelet', 260, 'jewellery_images/Nudo Braceletv.webp', ' Open cuff bracelet with grey moonstone and black diamond accents in rose gold', 'Bracelets'),
(14, 'Mint Cascade Pendant', 240, 'jewellery_images/Nudo Classic Necklace with Pendant.webp', 'Rose gold necklace featuring a large cushion-cut prasiolite stone with diamond-encrusted cap detail', 'Necklace'),
(15, 'Crystal Clarity Ring', 95, 'jewellery_images/Nudo Classic Ring.webp', 'Minimalist rose gold ring with faceted crystal quartz cushion-cut stone', 'Rings'),
(16, 'Aqua Serenity Ring', 125, 'jewellery_images/Nudo Maxi Ring.webp', ' Rose gold band showcasing a vibrant blue topaz cushion-cut stone', 'Rings'),
(17, 'Ocean Breeze Station Necklace', 85, 'jewellery_images/Nudo Necklace Skyblue.webp', 'Long rose gold chain necklace with blue topaz stations and interlocking clasp detail', 'Necklace'),
(18, 'Tidal Wave Collar', 200, 'jewellery_images/Nudo Necklace.webp', 'Statement collar necklace featuring graduated blue topaz stones with diamond accents', 'Necklace'),
(21, 'Frost Cube Pendant', 80, 'jewellery_images/Nudo Petit Necklace with Pendant.webp', 'Delicate rose gold chain with minimalist faceted crystal cube pendant', 'Necklace'),
(24, 'Celestial Halo Ring', 50, 'jewellery_images/Nudo Petit Ring.webp', 'White gold engagement ring with cushion-cut center diamond and pavé halo setting', 'Rings'),
(25, 'Duality Statement Ring', 150, 'jewellery_images/Nudo Ring.webp', 'Open-style ring featuring contrasting prasiolite and pavé diamond elements in rose gold', 'Rings'),
(26, 'Signature Twist Hoops', 65, 'jewellery_images/Pieces Metallic Printed.webp', 'Rose gold hoop earrings with contemporary twisted design and diamond accents', 'Earrings'),
(27, 'Luminous Disc Bracelet', 130, 'jewellery_images/Pom Pom Dot Bracelet.webp', 'Delicate rose gold chain bracelet with mother-of-pearl disc and diamond accent', 'Bracelets'),
(28, 'Golden Orb Bracelet', 120, 'jewellery_images/Pom Pom Dot Reversible Bracelet.webp', 'Fine rose gold chain bracelet featuring polished gold sphere with diamond detail', 'Bracelets'),
(29, 'Infinity Wrap Ring', 170, 'jewellery_images/Pomellato Together Golden Ring.webp', 'Multi-band rose gold ring with diamond-set center band and smooth outer bands', 'Rings'),
(30, 'Rosé Cube Ring', 75, 'jewellery_images/Pomellato Together Ring.webp', 'Minimalist rose gold ring with small cube detail and diamond accents', 'Rings'),
(31, 'Platinum Cube Ring', 80, 'jewellery_images/Pomellato Together Silver Ring.webp', 'White gold ring featuring geometric cube element with diamond pavé band', 'Rings');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cosmetic`
--
ALTER TABLE `cosmetic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jewellery`
--
ALTER TABLE `jewellery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cosmetic`
--
ALTER TABLE `cosmetic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jewellery`
--
ALTER TABLE `jewellery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
