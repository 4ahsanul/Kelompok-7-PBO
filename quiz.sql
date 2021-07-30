-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 08:41 AM
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
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `noHp` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `jk`, `noHp`, `username`, `password`) VALUES
('  101', '  Rahayu', '  Perempuan', '  08776', '  rahayu1@mail', '123'),
('  123', '  Priya', '  Laki-Laki', '  082313782937', 'priya@gmail.ecom  ', '456'),
('102', 'Agung', 'Laki-Laki', '0821353124153', 'agung', '321'),
('12366', 'Joko', 'Laki-laki', '08776', 'joko123@mail', '123'),
('222', 'Hadi', 'Laki-Laki', '231341', 'dadi', '222'),
('433', 'Hani', 'Perempuan', '3819287328', 'hani', '433');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `optA` varchar(200) NOT NULL,
  `optB` varchar(200) NOT NULL,
  `optC` varchar(200) NOT NULL,
  `optD` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `mapel`, `soal`, `optA`, `optB`, `optC`, `optD`, `answer`) VALUES
(1, 'Matematika', 'Salah satu metode Matematika', 'Mamalia', 'Subtitusi', 'Ovipar', 'Ovovivipar', 'Subtitusi'),
(2, 'Matematika', 'Hasil dari 15 x 50 ÷ 30 adalah', '25', '35', '45', '55', '25'),
(3, 'Matematika', 'Hasil dari 70 – (–25) adalah', '–95', '–45', '45', '95', '95'),
(4, 'Matematika', 'Hasil dari 200 km + 15 hm – 21.000 m adalah…m', '180.500', '181.680', '182.366', '183.658', '180.500'),
(5, 'Matematika', 'Bilangan yang hanya memiliki dua faktor disebut', 'Bilangan Asli', 'Bilangan Cacah', 'Bilangan Prima', 'Bilangan Ganjil', 'Bilangan Prima'),
(6, 'Matematika', 'Bilangan yang bukan merupakan bilangan asli adalah', '23', '5', '119', '0', '0'),
(7, 'Matematika', 'Lambang bilangan Romawi dari 739 adalah', 'DCXXXIX', 'DCCXXXIX', 'DCCXXVIIII', 'DCCXXXVIIII', 'DCCXXXIX'),
(8, 'Matematika', 'Nilai dari MMXIV adalah', '2.014', '2.040', '2.140', '2.016', '2.014'),
(9, 'Matematika', '-5+17', '-22', '-12', '12', '11', '12'),
(10, 'Matematika', 'Hasil dari 11+ (-19) adalah', '30', '8', '-20', '-30', '-30'),
(11, 'Matematika', '2+2', '1', '2', '3', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nama` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `marks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nama`, `jk`, `nip`, `email`, `marks`) VALUES
('Eko Yanuarso Budi', 'Laki', '1145', 'eko@mail', 90),
('Budi', 'Laki-Laki', '32314', 'bud@gmail.com', 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
