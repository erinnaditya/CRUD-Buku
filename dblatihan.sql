-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: Localhost
-- Generation Time: 04 Des 2019 pada 17.54
-- Versi Server: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblatihan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `nip` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `golongan` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nip`, `nama`, `golongan`, `jabatan`) VALUES
('001', 'Adi', '1', 'Admin'),
('002', 'Budi', '2', 'Admin'),
('003', 'Imam K', '1', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nama`, `email`, `alamat`) VALUES
('', 'erinnaditya@yahoo.com', ''),
('', 'erinnaditya@yahoo.com', ''),
('erin naditya', 'erinnaditya@yahoo.com', ''),
('asdf', 'asdf@gmail.com', 'jakarta'),
('kirana', 'kirana@gmail.com', 'Bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `idmember` varchar(8) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`idmember`, `nama`, `alamat`) VALUES
('M001', 'Erin Naditya', 'Bogor'),
('M002', 'Kyrana', 'Jakarta'),
('001', 'Mamat', 'Purwakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbuku`
--

CREATE TABLE IF NOT EXISTS `tbbuku` (
  `kode` varchar(10) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `tahun` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbuku`
--

INSERT INTO `tbbuku` (`kode`, `judul`, `tahun`) VALUES
('01', 'DILANKU', '1990'),
('02', 'DILANKU', '1991'),
('03', 'BELAJAR PHP', '2010'),
('04', 'SISTEM BASIS DATA', '2006'),
('05', 'WEBSITE', '2006'),
('06', 'BELAJAR PHP 2', '2012');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE IF NOT EXISTS `tbuser` (
  `userid` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`userid`, `password`, `level`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user'),
('manajer', 'manajer', 'mnj');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `idtransaksi` varchar(15) NOT NULL,
  `idmember` varchar(8) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `idmember`, `jumlah`) VALUES
('               ', '\r\n				00', 253100),
('20181121       ', '\r\n				00', 253100),
('20181121       ', '\r\n				00', 253100),
('20181121       ', '\r\n				00', 253100),
('20181121       ', '\r\n				M0', 55000),
('201901050001', '\r\n				M0', 120000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `uts`
--

CREATE TABLE IF NOT EXISTS `uts` (
  `idsupp` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `nohp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `uts`
--

INSERT INTO `uts` (`idsupp`, `nama`, `email`, `lokasi`, `nohp`) VALUES
('S01', 'PT ABC', 'abc@gmail.com', 'Jawa', '0812'),
('S02', 'PT XYZ', 'xyz@gmail.com', 'sumatra', '021');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
