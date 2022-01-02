-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2022 at 05:47 PM
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
-- Database: `cokini`
--

-- --------------------------------------------------------

--
-- Table structure for table `donasi`
--

CREATE TABLE `donasi` (
  `iddonasi` int(11) NOT NULL,
  `kodeid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'proses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(4, 'F&B', '2021-11-21 19:24:29'),
(9, 'Otomotif', '2021-12-22 04:10:13'),
(10, 'Aksesoris', '2022-01-01 16:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `kodeid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `kodeid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(1, '16P187JnFspyU', 1, 'Bank Mandi', 'andika', '2021-12-28', '2022-01-01 10:15:38'),
(2, '16irlkRZeN/zo', 5, 'Bank BCA', 'aldo', '2022-01-01', '2022-01-01 15:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(4, 'Bank Mandiri', '1370042967', 'images/mandiri.jpg', 'Cokini'),
(5, 'OVO', '081346790923', 'images/ovo.jpg', 'Cokini'),
(6, 'Bank BCA', '031227777777', 'images/bca.jpg', 'Cokini');

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
  `tenggatwaktu` date NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `dana`, `tenggatwaktu`, `tgldibuat`) VALUES
(1, 4, 'Nyoklat Teen', 'produk/16sAPYzCHUV7o.png', 'Dengan berkembangnya zaman yang pesat, Cokelat telah menjadi suatu daya tarik tersendiri bagi konsumen dunia terutama di Indonesia\r\n\r\nCokelat yang didatangkan dari pulau Chocoland ini menghasilkan keunikan tersendiri di lidah konsumen, melted chocolate yang lezat dan nikmat berpadu dengan varian rasa pilihan, memberikan keistimewaan tersendiri bagi penikmat cokelat.\r\n\r\n \r\n\r\nNyoklatTeen mengajak anda untuk menjadi pioner signature chocolate,melebarkan sayap bisnis dan meraih kesuksesan bersama-sama.', 10000000, '2022-01-18', '2021-12-21 12:12:18'),
(9, 4, 'Rindu Candu Milk', 'produk/16p92vabVV8R2.png', 'Rindu Candu adalah produk minuman susu dengan konsep murah namun berkualitas. Hadir ditengah banyaknya usaha milk bar yang kami rasa menoton, yaitu minuman rasa yang dikombinasikan dengan susu menciptakan rasa yang nikmat.     Kami berinovasi membuat peluang usaha dengan konsep visual milk bar yang menarik, rasa produk yang khas dan cocok di lidah konsumen.', 12000000, '2022-01-18', '2021-12-21 12:15:39'),
(13, 4, 'Susu Kedelai', 'produk/1612irND7l0a2.jpeg', 'susu kedelai adalah minuman susu nabati yang dibuat dari kedelai. Sari kedelai disebut susu karena minuman ini berwarna putih kekuningan mirip dengan susu. Sari kedelai sebenarnya merupakan produk samping alami dari pembuatan tahu.  Sari kedelai dapat dijadikan sebagai pengganti susu bagi orang yang memiliki kondisi intoleransi laktosa, vegan, atau mempunyai alasan kesehatan dan lingkungan tersendiri.', 9000000, '2022-01-20', '2021-12-22 03:46:31'),
(17, 9, 'Bengkel Motor Barokah', 'produk/16oVRKPvDJJ2I.jpg', 'Makin hari penambahan populasi kendaraan bermotor di Karanganyar makin meningkat, khususnya di daerah kebakkramat. Peningkatan penjualan sepeda motor ini menunjukkan indikasi daya beli masyarakat semakin membaik. Bahkan hampir setiap orang punya dan membutuhkan sepeda motor. Kepadatan aktivitas di jalan menuntut kenyamanan untuk itu kendaraan yang dipakai harus selalu dalam keadaan baik. Agar kendaraan selalu dalam keadaan baik maka diperlukan perawatan dan service berkala bahkan diperlukan juga perbaikan-perbaikan bagian yang rusak, untuk itu sangat dibutuhkan jasa bengkel motor.', 12000000, '2022-01-27', '2021-12-22 04:11:29'),
(18, 9, 'Senzral Motor', 'produk/16EsHKMMeNMuQ.jpg', 'Senzral Motor adalah bengkel motor terbaik di daerah Cikarang. Bengkel sudah berdiri sejak tahun 2019 dan perlu adanya perkembangan', 15000000, '2022-01-27', '2022-01-01 16:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `umkm`
--

CREATE TABLE `umkm` (
  `umkmid` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `notelp` varchar(25) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `umkm`
--

INSERT INTO `umkm` (`umkmid`, `nama`, `email`, `notelp`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '0000000000', '$2y$10$grvuZmuhTQ0ZdbVG2TJElOfuq52Cyc5izw3oOWkMrJuo6X2sR1fj2'),
(2, 'umkm1', 'umkm1@gmail.com', '0812329237', '$2y$10$F5QGjmiCvHgm2UypsAT7gu/O5GhZXVyHUZy92oazSFpkvnkfSVtg.');

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
(1, 'user', 'user@gmail.com', '0814729472', '$2y$10$RkR/zLtU21mJS4ehh5dSgur79sit/xuvw.nG6KmRNWLWeBEzdGLmG'),
(2, 'dika', 'dika123@gmail.com', '0812349764', '$2y$10$WHGR.ys76RRcbWZTz75Txu6huQEy/T.RFD/0hbUSoRD8AgcZid/3G'),
(3, 'wibi', 'wibi@gmail.com', '08123445679', '$2y$10$M8SU.APUjLwzJ6jupqiRhuR6kieilapJQ2tPEu03RqWIR2xfLUZOu'),
(4, 'yogi', 'yogi@gmail.com', '08123456678', '$2y$10$p7CRy58IwtAiYKUk4drSC.WNfGLWF4cKqXZlZdBjZEFr1GnKlySZO'),
(5, 'aldo', 'aldo@gmail.com', '01238721382', '$2y$10$7B7X1/WgNsP8HizfhH4gu.y8aFNc4PTYOxZRvhLlihohG2Yt53b/W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`iddonasi`),
  ADD UNIQUE KEY `kodeid` (`kodeid`),
  ADD UNIQUE KEY `idproduk` (`idproduk`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD UNIQUE KEY `userid` (`userid`);

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
-- Indexes for table `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`umkmid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donasi`
--
ALTER TABLE `donasi`
  MODIFY `iddonasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `umkm`
--
ALTER TABLE `umkm`
  MODIFY `umkmid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
