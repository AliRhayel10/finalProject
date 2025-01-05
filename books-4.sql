-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1027.runhosting.com
-- Generation Time: Jan 05, 2025 at 04:42 PM
-- Server version: 8.0.32
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4565561_bookpalace`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int NOT NULL,
  `img` text COLLATE utf8mb4_general_ci NOT NULL,
  `pr_desc` text COLLATE utf8mb4_general_ci NOT NULL,
  `pr_price` double NOT NULL,
  `pr_category` text COLLATE utf8mb4_general_ci NOT NULL,
  `pr_type` text COLLATE utf8mb4_general_ci NOT NULL,
  `pr_qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `img`, `pr_desc`, `pr_price`, `pr_category`, `pr_type`, `pr_qty`) VALUES
(1, 'https://www.dramaticpublishing.com/media/catalog/product/cache/1/image/300x436/9df78eab33525d08d6e5fb8d27136e95/t/o/to_kill_a_mockingbird_cover-t34.jpg', 'To Kill a Mockingbird', 15.99, 'Books', 'Fiction', 3),
(2, 'https://m.media-amazon.com/images/I/716E6dQ4BXL._AC_UF1000,1000_QL80_.jpg', 'Sapiens: A Brief History', 19.49, 'Books', 'Non Fiction', 5),
(3, 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1528206996i/38746485.jpg', 'Becoming by Michelle Obama', 21, 'Books', 'Biography', 10),
(4, 'https://m.media-amazon.com/images/I/81QuEGw8VPL.jpg', 'The Great Gatsby', 13.99, 'Books', 'Fiction', 16),
(5, 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1506026635i/35133922.jpg', 'Educated:A Memoir by Tara Westover', 18, 'Books', 'Biography', 4),
(6, 'https://m.media-amazon.com/images/I/915GenhWazL._AC_UF1000,1000_QL80_.jpg', 'Sports Illustrated', 5.99, 'Magazines', 'Sports', 0),
(7, 'https://images-cdn.ubuy.co.in/64b7cf72b865dc19481e15e1-vogue-magazine-december-2020-harry.jpg', 'Vogue Magazine', 6.99, 'Magazines', 'Fashion', 33),
(8, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhDEgaH65VLitcQMSsrU8-6svE6uYzEozd8vUmc_aYQm9orQ0kjVu5dePk2Usk3lA12VCIvVS3itHvzba0F_MWsSKg1-Rp1qYdmBjU_2r9GiilAOA-itCscWr2UOe8T8-D3lKJX6cmpeVJw/s1600/4005671.jpg', 'National Geographic', 9.99, 'Magazines', 'Lifestyle', 2),
(9, 'https://d3ry4o1su9a59w.cloudfront.net/public/5658382203c6b7a6ec000093/56583fc503c6b7d8a50000db/65817fd9a9b2157c5fc8d4b7/1/432-0001.webp', 'Runner\'s World', 5.49, 'Magazines', 'Sports', 3),
(10, 'https://indiamags.com//uploads/products/large/0b35201c8558127e4aa2c6909a742174.jpg', 'GQ Magazine', 7.49, 'Magazines', 'Fashion', 0),
(11, 'https://winningmoves.co.uk/cdn/shop/files/29e42bd3-b561-4b9b-9673-7d7fcb9f4b15.jpg?v=1726747346', 'Monopoly: Sonic The Hedgehog ', 25.99, 'Toys & Games', 'Board Games', 9),
(12, 'https://media.istockphoto.com/id/473622694/photo/rubiks-cube.jpg?s=612x612&w=0&k=20&c=jG8vgbrd8jsLPYwzNTgoALf86E20dbTBC30S77QjyhY=', 'Rubik\'s Cube', 9.99, 'Toys & Games', 'Educational Games', 3),
(13, 'https://cdn11.bigcommerce.com/s-sp9oc95xrw/images/stencil/1280x1280/products/15721/64889/1__66462.1692338664.jpg?c=2', 'LEGO Classic Creative Bricks', 29.99, 'Toys & Games', 'Puzzle', 1),
(14, 'https://cdn11.bigcommerce.com/s-sp9oc95xrw/images/stencil/1280x1280/products/11004/53235/818oIpXL7tL._AC_SL1500___27141.1676713387.jpg?c=2?imbypass=on', 'Catan Board Game', 44.99, 'Toys & Games', 'Board Games', 2),
(15, 'https://cdn.shopify.com/s/files/1/0031/8878/5201/files/colorful-puzzle_1024x1024.png?v=1677057739', 'Wooden Jigsaw Puzzle', 12.49, 'Toys & Games', 'Puzzle', 7),
(16, 'https://s3.antoineonline.com/catalog/product/8/0/8051272892734_5.jpeg?optimize=high&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700', 'Moleskine Notebook', 19.95, 'Stationery & Gifts', 'Stationery', 20),
(17, 'https://i.etsystatic.com/11403552/r/il/74836e/3675023242/il_570xN.3675023242_axkf.jpg', 'Personalized Photo Frame', 14.99, 'Stationery & Gifts', 'Gifts', 9),
(18, 'https://epica.com/cdn/shop/files/classic-leather-journal-with-unlined-pages_2_1024x1024.jpg?v=1720732020', 'Leather Journal', 24.99, 'Stationery & Gifts', 'Stationery', 2),
(19, 'https://m.media-amazon.com/images/I/81R45DaUHtL._AC_SL1500_.jpg', 'Desk Organizer', 29.99, 'Stationery & Gifts', 'Accessories', 6),
(20, 'https://www.sundancecatalog.com/cdn/shop/files/78328.jpg?v=1724122888', 'Gift Wrapping Paper Set', 12.99, 'Stationery & Gifts', 'Gifts', 5),
(21, 'https://m.media-amazon.com/images/I/71rpa1-kyvL.jpg', '1984 by George Orwell', 14.99, 'Books', 'Fiction', 7),
(22, 'https://m.media-amazon.com/images/I/71wm29Etl4L.jpg', 'The Power of Habit', 16.99, 'Books', 'Non Fiction', 11),
(23, 'https://m.media-amazon.com/images/I/81NSb9Jy0HL._AC_UF1000,1000_QL80_.jpg', 'Steve Jobs by Walter Isaacson', 22.99, 'Books', 'Biography', 1),
(24, 'https://m.media-amazon.com/images/I/61UyotjWqxL._AC_UF894,1000_QL80_.jpg', 'Brave New World', 12.49, 'Books', 'Fiction', 2),
(26, 'https://a.espncdn.com/photo/2013/0305/98_0629_1600.jpg', 'ESPN The Magazine', 5.99, 'Magazines', 'Sports', 9),
(27, 'https://hips.hearstapps.com/hmg-prod/images/hbz110124cover-nolines-670825f2880dd.png?resize=980:*', 'Harper\'s Bazaar', 7.99, 'Magazines', 'Fashion', 2),
(28, 'https://time.com/ayit/images/7200212/cover.png', 'Time Magazine', 8.49, 'Magazines', 'Lifestyle', 3),
(29, 'https://images.squarespace-cdn.com/content/v1/5675d7b05a5668f86eba496c/1515862819248-2EYVAPZBTLVI1G7O9T4S/golf+digest+top+100', 'Golf Digest', 6.49, 'Magazines', 'Sports', 4),
(30, 'https://cms.futureplc.com/wp-content/uploads/2021/11/36E529B8-4F36-49A8-A554-004A80E7E0D0-scaled.jpeg', 'Marie Claire:Alicia Keys', 6.99, 'Magazines', 'Fashion', 7),
(31, 'https://m.media-amazon.com/images/I/810TNphPcNL._AC_SL1500_.jpg', 'Chess Board Game', 18.99, 'Toys & Games', 'Board Games', 9),
(32, 'https://toys4less.com/cdn/shop/files/0013297_cubicfun-3d-puzzle-eiffel-tower.jpg?v=1721824812&width=1445', '3D Puzzle Eiffel Tower', 21.99, 'Toys & Games', 'Puzzle', 8),
(33, 'https://m.media-amazon.com/images/I/71VGOkBMLbL._AC_SL1000_.jpg', 'ThinkFun Gravity Maze', 32.99, 'Toys & Games', 'Educational Games', 13),
(34, 'https://target.scene7.com/is/image/Target/GUEST_7314dc34-8c58-4f56-8e39-3a0b6224c761', 'Scrabble Board Game', 25.49, 'Toys & Games', 'Board Games', 17),
(35, 'https://heidisonline.com/cdn/shop/products/007184_4_grande.jpg?v=1630814342', 'Mickey Mouse Wooden Puzzle', 14.99, 'Toys & Games', 'Puzzle', 3),
(36, 'https://cdn11.bigcommerce.com/s-1i834776za/images/stencil/1280x1280/products/63772/262617/pilot-g2-20-pack-31294__28031.1681154669.jpg?c=1', 'Pilot G2 Gel Ink Pens', 12.49, 'Stationery & Gifts', 'Stationery', 1),
(37, 'https://cdn11.bigcommerce.com/s-dos1319s/images/stencil/760x760/products/1280/9652/create-your-own-photo-mug__56879.1682458415.jpg?c=2', 'Custom Coffee Mug', 16.99, 'Stationery & Gifts', 'Gifts', 6),
(38, 'https://greenbagsuae.com/wp-content/uploads/2023/10/ActiveLifestyleTote-1_1024x1024.webp', 'Canvas Tote Bag', 18.99, 'Stationery & Gifts', 'Accessories', 2),
(39, 'https://cleverfoxplanner.com/cdn/shop/files/Features_-_Bright_Colorful_1080x.jpg?v=1721388915', 'Sticky Notes Set', 8.99, 'Stationery & Gifts', 'Stationery', 3),
(40, 'https://www.churchsupplier.com/shopsite_sc/store/html/media/custom/10169LG-1.jpg', 'Engraved Keychain', 14.49, 'Stationery & Gifts', 'Gifts', 7),
(51, 'https://images-cdn.ubuy.co.in/66904fc28ec274289612b40e-5-pack-bullet-dotted-journal-notebook.jpg', 'Hardcover Ruled Notebook', 11.99, 'Stationery & Gifts', 'Stationery', 9),
(52, 'https://m.media-amazon.com/images/I/81FSzr2jlTL.jpg', 'Assorted Highlighters', 8.49, 'Stationery & Gifts', 'Stationery', 2),
(53, 'https://www.containerstore.com/catalogimages/340463/10073915-slanted-pen-organizer-acryl.jpg', 'Acrylic Pen Holder', 10.99, 'Stationery & Gifts', 'Stationery', 4),
(54, 'https://cbshipping.com/cdn/shop/files/cbs-office_supplies__0098_AD2I7573.jpg?v=1716594919&width=2048', 'Colored Sticky Notes Pack', 5.99, 'Stationery & Gifts', 'Stationery', 16),
(55, 'https://images-cdn.ubuy.co.in/66386a0bea453777b81145a1-pilot-frixion-clicker-retractable.jpg', 'Erasable Gel Pens Set', 12.49, 'Stationery & Gifts', 'Stationery', 9),
(58, 'https://m.media-amazon.com/images/I/81LR8R3ncdL.jpg', 'Photo Album Scrapbook', 21.99, 'Stationery & Gifts', 'Gifts', 3),
(59, 'https://image.made-in-china.com/202f0j00cAalBwpnAfzH/Christmas-Decor-Aromatherapy-Soy-Wax-Scented-Candle.webp', 'Decorative Scented Candle', 18.49, 'Stationery & Gifts', 'Gifts', 8),
(60, 'https://mishazadeh.com/cdn/shop/products/ModPrintCeramicTrinketDishAppetizerdishbyMishaZadeh_8_Square_800x.jpg?v=1619750367', 'Ceramic Trinket Tray', 9.99, 'Stationery & Gifts', 'Gifts', 9),
(61, 'https://m.media-amazon.com/images/I/61y2I05UFWL._AC_UF894,1000_QL80_.jpg', 'Leather Desk Pad Protector', 22.99, 'Stationery & Gifts', 'Accessories', 17),
(62, 'https://m.media-amazon.com/images/I/71MddXm0IfL.jpg', 'Cable Organizer Clips', 6.49, 'Stationery & Gifts', 'Accessories', 19),
(63, 'https://m.media-amazon.com/images/I/61srjyM7TFL._AC_SL1500_.jpg', 'Portable Phone Stand', 10.99, 'Stationery & Gifts', 'Accessories', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
