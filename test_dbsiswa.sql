-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 04:54 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_dbsiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `gr_nip` int(20) NOT NULL,
  `gr_nama` varchar(100) NOT NULL,
  `gr_gender` varchar(10) NOT NULL,
  `gr_matpel` varchar(50) NOT NULL,
  `gr_email` varchar(100) NOT NULL,
  `gr_notelp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`gr_nip`, `gr_nama`, `gr_gender`, `gr_matpel`, `gr_email`, `gr_notelp`) VALUES
(999901, 'Rahayu Silalahi', 'Wanita', 'Matematika', 'silalahi.rahayu@guru.sch.id', '08195481212'),
(999902, 'Zainal Abidin', 'Pria', 'Agama', 'zainal.abidin@guru.sch.id', '081265654541'),
(999903, 'Dadang Nurjaman', 'Pria', 'Fisika', 'dadang.nurjaman@guru.sch.id', '022212447855');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `sw_nis` int(11) NOT NULL,
  `sw_nama` varchar(100) NOT NULL,
  `sw_gender` varchar(10) NOT NULL,
  `sw_alamat` varchar(50) NOT NULL,
  `sw_email` varchar(100) NOT NULL,
  `sw_notelp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`sw_nis`, `sw_nama`, `sw_gender`, `sw_alamat`, `sw_email`, `sw_notelp`) VALUES
(27030001, 'Rahmat Sentosa', 'Pria', 'Jl. Pasir Kaliki', 'rahmat.sentosa', '089150501010'),
(27030002, 'Siti Nurjannah', 'Wanita', 'Jl. Dago', 'siti.nurjannah@sch.id', '022564481111'),
(27030003, 'Ardhan Fahrezy', 'Pria', 'Jl. Dipatiukur', 'ardhan.fahrezy@sch.id', '022262624545'),
(27030004, 'Robert Simanjuntak', 'Pria', 'Jl. Dago', 'robert.siman@sch.id', '021245456612'),
(27030005, 'Olivia Nababan', 'Wanita', 'Jl. Jakarta', 'olivia.nababan@sch.id', '023849451111');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `pt_nama` varchar(50) NOT NULL,
  `pt_gender` varchar(50) NOT NULL,
  `pt_level` varchar(10) NOT NULL,
  `pt_email` varchar(50) NOT NULL,
  `pt_notelp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `pt_nama`, `pt_gender`, `pt_level`, `pt_email`, `pt_notelp`) VALUES
(12001, 'admin', 'admin', 'Reyhan Sabian', 'Pria', 'Admin', 'sabian.reyhan@ptg.sch.id', '081122334451'),
(12002, 'admin2', 'admin2', 'Rangga Umar Pratama', 'Pria', 'Admin', 'umar.rangga@ptg.sch.id', '088811112222');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`gr_nip`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`sw_nis`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
