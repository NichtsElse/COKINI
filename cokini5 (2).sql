-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 02:50 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cokini5`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(4, 'F&B', '2021-12-08 00:45:57'),
(7, 'Otomotif', '2021-12-18 10:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'Cokini'),
(3, 'Bank Mandiri', '1370042967', 'images/mandiri.jpg', 'Andika Pratama'),
(4, 'OVO', '081346790923', 'images/ovo.jpg', 'Cokini');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(5000) NOT NULL,
  `dana` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `dana`, `tgldibuat`) VALUES
(9, 4, 'Nasi Balap', 'produk/16.v0UQxoZXiA.jpg', 'Nasi balap merupakan makanan khas Lombok yang dikenal dengan penyajiannya yang cepab, maka itu makanan ini disebut “Nasi STO ad Balap”. Selain kecepatan dalam proses pembuatannya nasi balap juga terkenal dengan rasa pedas dan perpaduan topping kedelai yang gurih dan kacang panjang yang memberikan elemen kesegaran dalam seporsi nasi balap.     Nasi Balap Lincak berdiri sejak tahun 2018, dengan ciba rasanya yang khas serta harga yang terjangkau membuat nasi balap lincak menjadi pilihan yang tepat.', 15000000, '2021-12-18 08:28:01'),
(11, 4, 'Rindu Candu Milk', 'produk/16TSXS2mYxr5U.png', 'Rindu Candu adalah produk minuman susu dengan konsep murah namun berkualitas. Hadir ditengah banyaknya usaha milk bar yang kami rasa menoton, yaitu minuman rasa yang dikombinasikan dengan susu menciptakan rasa yang nikmat.     Kami berinovasi membuat peluang usaha dengan konsep visual milk bar yang menarik, rasa produk yang khas dan cocok di lidah konsumen.', 20000000, '2021-12-18 09:47:15'),
(12, 4, 'Nyoklat Teen', 'produk/16sAPYzCHUV7o.jpeg', 'Dengan berkembangnya zaman yang pesat, Cokelat telah menjadi suatu daya tarik tersendiri bagi konsumen dunia terutama di Indonesia  Cokelat yang didatangkan dari pulau Chocoland ini menghasilkan keunikan tersendiri di lidah konsumen, melted chocolate yang lezat dan nikmat berpadu dengan varian rasa pilihan, memberikan keistimewaan tersendiri bagi penikmat cokelat.     NyoklatTeen mengajak anda untuk menjadi pioner signature chocolate,melebarkan sayap bisnis dan meraih kesuksesan bersama-sama.', 10000000, '2021-12-18 10:01:09'),
(13, 7, 'Bengkel Motor Beta Jaya', 'produk/16tqDJrLGJKZo.jpeg', 'Makin hari penambahan populasi kendaraan bermotor di Karanganyar makin meningkat, khususnya di daerah kebakkramat. Peningkatan penjualan sepeda motor ini menunjukkan indikasi daya beli masyarakat semakin membaik. Bahkan hampir setiap orang punya dan membutuhkan sepeda motor. Kepadatan aktivitas di jalan menuntut kenyamanan untuk itu kendaraan yang dipakai harus selalu dalam keadaan baik. Agar kendaraan selalu dalam keadaan baik maka diperlukan perawatan dan service berkala bahkan diperlukan juga perbaikan-perbaikan bagian yang rusak, untuk itu sangat dibutuhkan jasa bengkel motor.', 17500000, '2021-12-19 13:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `nama`, `email`, `notelp`, `password`) VALUES
(1, 'andika', 'andika@gmail.com', '08123456789', '$2y$10$bN2vk7aikP34ULlQ7rHSNeedSJp1C7lC5cGumxPyUZKOlljQ61ZtW'),
(22, 'user', 'user@gmail.com', '08123456789', '$2y$10$DDc1ufG9pGtgr4lWy8A/LO/xqgt4yj76hA5nLQCN.xXvre37vOnB2'),
(23, 'admin', 'admin@gmail.com', '0812349764', '$2y$10$c5nqdg3wcXJ1eTxdAbmpt.x7hGJFFARxdHHcnMQVGqEUtpH5BhMu2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
