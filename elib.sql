-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for elibrary
DROP DATABASE IF EXISTS `elibrary`;
CREATE DATABASE IF NOT EXISTS `elibrary` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `elibrary`;

-- Dumping structure for table elibrary.tbelib_admin
DROP TABLE IF EXISTS `tbelib_admin`;
CREATE TABLE IF NOT EXISTS `tbelib_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `login_terakhir` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table elibrary.tbelib_admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbelib_admin` DISABLE KEYS */;
REPLACE INTO `tbelib_admin` (`id`, `username`, `password`, `level`, `login_terakhir`) VALUES
	(1, 'Admin', '$2y$10$JHoiNis267ppKdYTiNrAeu7rnSTnZuhKuQSdnWfCksBzJuDTP7TvW', 1, '2022-09-04 22:53:51');
/*!40000 ALTER TABLE `tbelib_admin` ENABLE KEYS */;

-- Dumping structure for table elibrary.tbelib_booking
DROP TABLE IF EXISTS `tbelib_booking`;
CREATE TABLE IF NOT EXISTS `tbelib_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` int(11) NOT NULL,
  `nama` char(50) NOT NULL,
  `notelp` char(50) NOT NULL DEFAULT '',
  `buku_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `tanggal_booking` varchar(20) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `updated_at` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Status :\r\n1 = Unverified\r\n2 = Verified\r\n3 = Due Date';

-- Dumping data for table elibrary.tbelib_booking: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbelib_booking` DISABLE KEYS */;
REPLACE INTO `tbelib_booking` (`id`, `nisn`, `nama`, `notelp`, `buku_id`, `status`, `tanggal_booking`, `created_at`, `updated_at`) VALUES
	(1, 12345, 'Stevan Andreas', '+6285845947669', 1, 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tbelib_booking` ENABLE KEYS */;

-- Dumping structure for table elibrary.tbelib_kategori
DROP TABLE IF EXISTS `tbelib_kategori`;
CREATE TABLE IF NOT EXISTS `tbelib_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table elibrary.tbelib_kategori: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbelib_kategori` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbelib_kategori` ENABLE KEYS */;

-- Dumping structure for table elibrary.tbelib_kurikulum
DROP TABLE IF EXISTS `tbelib_kurikulum`;
CREATE TABLE IF NOT EXISTS `tbelib_kurikulum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table elibrary.tbelib_kurikulum: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbelib_kurikulum` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbelib_kurikulum` ENABLE KEYS */;

-- Dumping structure for table elibrary.tb_user
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `kelas` int(11) NOT NULL DEFAULT '0',
  `login_terakhir` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

-- Dumping data for table elibrary.tb_user: 5 rows
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
REPLACE INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `level`, `kelas`, `login_terakhir`) VALUES
	(105, 'RAKEIN NARAYA PUTRA', '0021834761', '7f8e0f5a848549fb05d12b32de7a8309', 4, 0, '2021-05-03 04:54:51'),
	(106, 'AFINA KHOIRI AZIZAH', '0032277549', '875ef7ef98c51237a9fbbf5c50431e89', 4, 0, '2021-05-03 04:55:02'),
	(107, 'AHMAD NAFIQ UDIN', '0046058552', 'a8130527e1059350302b529be6cfadf6', 4, 0, '2020-12-02 07:27:44'),
	(108, 'AJI DANANG KUSUMA', '0034271005', 'a530181561aebab430c70e5e503ac5b6', 4, 0, '2020-12-08 07:29:46'),
	(109, 'ALDY RULANDA FIRMANSYAH', '0028792732', '351a1a85f9ce3933e089452d16fc3271', 4, 0, '2020-11-30 07:09:37');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
