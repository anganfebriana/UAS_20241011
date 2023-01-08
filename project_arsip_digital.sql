-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 12:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_arsip_digital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_foto`) VALUES
(1, 'Angan Febriana', 'admin', '0192023a7bbd73250516f069df18b500', '1315075193_profil.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `petugas_id` int(11) NOT NULL,
  `mahasiswa_nama` varchar(255) NOT NULL,
  `mahasiswa_nim` int(255) NOT NULL,
  `mahasiswa_email` varchar(100) NOT NULL,
  `mahasiswa_jurusan` varchar(100) NOT NULL,
  `petugas_password` varchar(255) NOT NULL,
  `petugas_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`petugas_id`, `mahasiswa_nama`, `mahasiswa_nim`, `mahasiswa_email`, `mahasiswa_jurusan`, `petugas_password`, `petugas_foto`) VALUES
(18, 'Fikri', 20241026, 'fikri@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(19, 'M. Citra Satria', 20241025, 'citrasatria@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(20, 'Azliya Zulfa Arini', 20241023, 'Azliyazulfa@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(21, 'Ahmad Yusron Anshori', 20241022, 'Angan Febriana', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(22, 'Muhammad Aldi Kurniawan', 20241020, 'Angan Febriana', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(23, 'Aurilya Wahyu Kalimahaqqani', 20241017, 'Aurilyawahyu@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(24, 'Rahmad Dinata', 20241015, 'rahmaddinata@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(25, 'Sri Indriani', 20241013, 'Angan Febriana', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(26, 'Angan Febriana', 20241011, 'anganfebriana90@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(27, 'Muhammad Ajahari', 20241009, 'muhammadajahari@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(28, 'Saidah Raudatul Jannah', 20241008, 'saidahraudatul@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(29, 'Safarrudin', 20241006, 'safarrudin@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(30, 'Muhammad Zuhri Fahmi', 20241005, 'zuhrifahmi@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(31, 'Amin Setiaji', 20241003, 'aminsetiaji@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(32, 'Jafa Adisanjaya', 20241002, 'jafaadisanjaya@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', ''),
(33, 'Muhammad Gilang Ramdhani', 20241016, 'gilangramdhani@gmail.com', 'PTI A', 'e10adc3949ba59abbe56e057f20f883e', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `mahasiswa_nama` varchar(100) NOT NULL,
  `mahasiswa_nim` varchar(100) NOT NULL,
  `mahasiswa_email` varchar(100) NOT NULL,
  `mahasiswa_jurusan` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `mahasiswa_nama`, `mahasiswa_nim`, `mahasiswa_email`, `mahasiswa_jurusan`, `user_password`, `user_foto`) VALUES
(25, 'Mukhlis Saputra', '22244036', 'mukhlissaputra@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(26, 'Anugrah Firman Arif', '20241055', 'firmanarif@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(27, 'Elwan Adrian Antama', '20241054', 'elwanadrian@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(28, 'Danil Agus Syaputra', '20241051', 'danilagus@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(29, 'Asri Hundayani', '20241046', 'asrihundayani@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(30, 'Muh. Mardiyanshah', '20241044', 'mardiyansyah@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(31, 'Lalu Bayu Ali Haikal', '20241041', 'bayuhaikal@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(32, 'Jihansah', '20241039', 'jihansah@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(33, 'Dewi Agustina', '20241038', 'dewi@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(34, 'Eka Bagas Karyatama', '20241037', 'ekabagas@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(35, 'Fandi Resa Aditia', '20241036', 'fandiresa@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(36, 'Ika Arisandi', '20241035', 'ikaarisandi@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(37, 'Ahmad Nabil Fikri', '20241033', 'ahmadnabilfikri@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(38, 'Salsa Oktariani', '20241032', 'salsaoktariani@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(39, 'Toibatun Wahidah', '20241031', 'toibatun wahidah', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(40, 'Riska wahyuningsih', '20241030', 'riskawahyuningsih@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(41, 'Muhammad Fadil Salmansyah', '20241028', 'fadilsalmansyah@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', ''),
(42, 'Rizki Nandiawan', '20241027', 'Rizkinandiawan@gmail.com', 'PTI B', 'e10adc3949ba59abbe56e057f20f883e', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`petugas_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `petugas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
