-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 07:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbanhoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethd`
--

CREATE TABLE `chitiethd` (
  `SoDH` int(11) NOT NULL,
  `MaHoa` int(11) NOT NULL,
  `MaHD` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoa`
--

CREATE TABLE `hoa` (
  `MaHoa` int(11) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `TenHoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `ThanhPhan` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa`
--

INSERT INTO `hoa` (`MaHoa`, `MaLoai`, `TenHoa`, `GiaBan`, `ThanhPhan`, `Hinh`) VALUES
(1, 1, 'Đón xuân', 50000, 'Hồng xanh dương', 'hh2.jpg'),
(2, 1, 'Hồn nhiên', 60000, 'Hoa giỏ', 'hh3.jpg'),
(3, 1, 'Tím thuỷ chung', 45000, 'Hoa lan bó', 'hh4.jpg'),
(4, 1, 'Nét duyên tím', 40000, 'Hoa hồng màu tím nhạt', 'hh5.jpg'),
(5, 1, 'Cùng khoe sắc', 70000, 'Hoa hồng các màu', 'hh6.jpg'),
(6, 1, 'Trắng thơ ngây', 65000, 'Hồng nhung', 'hh7.jpg'),
(7, 2, 'Dây tơ hồng', 250000, 'Hoa hồng màu hồng đậm', 'hc1.jpg'),
(8, 2, 'Cầu thuỷ tinh', 220000, 'Hoa hồng xanh dương', 'hc2.jpg'),
(9, 2, 'Duyên thầm', 260000, 'Hoa cúc trắng, baby,', 'hc3.jpg'),
(10, 2, 'Đâm chồi nảy lộc', 180000, 'Hoa hồng trắng và cá', 'hc4.jpg'),
(11, 2, 'Hoà quyện', 270000, 'Hoa hồng trắng, lá t', 'hc5.jpg'),
(12, 2, 'Nồng nàn', 210000, 'Hoa hồng đỏ, lá thuỷ', 'hc6.jpg'),
(13, 3, 'Together', 120000, 'Hồng xác pháo, cúc t', 'hoa_sn_dam-me.jpg'),
(14, 3, 'Long trip', 85000, 'Hoa hồng đỏ, lá kim ', 'hoa_sn_may-man.jpg'),
(15, 3, 'Beautiful life', 100000, 'Hoa hồng đỏ, lá măng', 'hoa_sn_may-man-2.jpg'),
(16, 3, 'Morning Sun', 75000, 'Hoa hồng vàng\r\n', 'hoa_sn_nang-diu-dang.jpg'),
(17, 3, 'Pretty Bloom', 65000, 'Hoa hồng trắng và lá', 'hoa_sn_toa-nang.jpg'),
(18, 3, 'Red Rose', 45000, 'Hoa hồng đỏ và lá mă', 'hoa_sn_yeu-thuong.jpg'),
(19, 5, 'Vấn vương', 150000, 'Hoa hồng đỏ, hồng đậ', 'hoa_tuoi_bo_hanh-phuc.jpg'),
(20, 5, 'Nắng nhẹ nhàng', 50000, 'Hoa cúc xanh, hoa ly', 'hoa_tuoi_bo_ngay-chung-doi.jpg'),
(21, 5, 'Thanh tao', 120000, 'Hoa thủy tiên, cúa t', 'hoa_tuoi_bo_ngay-moi.jpg'),
(22, 5, 'Tinh khiết', 110000, 'Hồng trắng và salem\r', 'hoa_tuoi_bo_nong-am.jpg'),
(23, 5, 'Mùa xuân chín', 150000, 'Hồmg cam, cúc xanh, ', 'hoa_tuoi_bo_sac-thu.jpg'),
(24, 5, 'Rực rỡ nắng vàng', 75000, 'Hồng vàng và cúc vàn', 'hoa_tuoi_bo_toa-nang.jpg'),
(25, 3, 'Love Candy', 95000, 'Hoa hồng trắng tinh ', 'hh11.jpg'),
(26, 2, 'Happy Wedding', 210000, 'Hoa hồng môn và các ', 'hx2.jpg'),
(27, 1, 'Cúc nhiệt đới', 150000, 'Cúc vàng - hồng cam ', 'hx7.jpg'),
(28, 1, 'Hoa cúc', 123456, '3253232523', 'hx10.jpg'),
(29, 2, 'Hoa cưới May', 11111, 'N/A', 'hc1.jpg'),
(30, 1, 'Hoa tình yêu', 12300, 'N/A', 'androidmug.jpg'),
(31, 3, 'Sinh nhật Hoa', 191000, 'N/A Hoa SN', 'h2.png');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `NgayDat` datetime NOT NULL,
  `NoiGiao` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `MaKH` int(5) NOT NULL,
  `TinhTrang` enum('Mới đặt','Đã thanh toán','Đã giao hàng','Hủy đơn hàng') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `TenDN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` int(11) DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaKH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`TenDN`, `MatKhau`, `HoTen`, `DiaChi`, `DienThoai`, `Email`, `MaKH`) VALUES
('admin', 'admin', 'Quản trị Hệ thống', '280 An Dương Vương, P4, Q5', 989366990, 'admin@hoadep.com', 1),
('hienlth', 'hienlth', 'Lương Trần Hy Hiến', '396 Dương Bá Trạc, Q8', 989366990, 'hienlth@hcmup.edu.vn', 2),
('cuong', 'cuong', 'Chung Quốc Cường', '1bis Nguyễn Văn Trỗi Q.1', 912345678, 'cqcuong@hcmuns.edu.vn', 3),
('tung', 'tung', 'Lưu Hải Tùng', '1 Mạc Đỉnh Chi Q.1', 989766569, 'lhtung@yahoo.com', 4),
('dlthien', 'dlthien', 'Đỗ Lâm Thiên', '357 Lê Hồng Phong Q.10 ', 903123456, 'dlthien@hcmuns.edu.vn', 5),
('thanh', 'thanh', 'Nguyễn Ngọc Thanh', '357 Lê Hồng Phong Q.10', 903456789, 'lthanh@hcmuns.edu.vn', 6),
('hoadalat', '123456', 'Hoa Đà Lạt', '123 Hai Bà Trưng', 902314340, 'hoadalat@gmail.com', 7),
('hoainfo', '123123', 'Shop Hoa', '123 Đà Nẵng', 123213213, 'hoa@hoa.com', 8);

-- --------------------------------------------------------

--
-- Table structure for table `loaihoa`
--

CREATE TABLE `loaihoa` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaihoa`
--

INSERT INTO `loaihoa` (`MaLoai`, `TenLoai`) VALUES
(1, 'Hoa tình yêu'),
(2, 'Hoa cưới'),
(3, 'Hoa sinh nhật'),
(4, 'Hoa văn phòng'),
(5, 'Hoa tươi bó'),
(6, 'Hoa tươi giỏ'),
(7, 'Hoa khai trương');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD PRIMARY KEY (`SoDH`),
  ADD KEY `fk_chitiethd_hoa` (`MaHoa`),
  ADD KEY `fk_chitiethd_hoadon` (`MaHD`);

--
-- Indexes for table `hoa`
--
ALTER TABLE `hoa`
  ADD PRIMARY KEY (`MaHoa`),
  ADD KEY `maLoai` (`MaLoai`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `maKH` (`MaKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loaihoa`
--
ALTER TABLE `loaihoa`
  ADD PRIMARY KEY (`MaLoai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoa`
--
ALTER TABLE `hoa`
  MODIFY `MaHoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loaihoa`
--
ALTER TABLE `loaihoa`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD CONSTRAINT `fk_chitiethd_hoa` FOREIGN KEY (`MaHoa`) REFERENCES `hoa` (`MaHoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_chitiethd_hoadon` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoa`
--
ALTER TABLE `hoa`
  ADD CONSTRAINT `fk_hoa_loaihoa` FOREIGN KEY (`MaLoai`) REFERENCES `loaihoa` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_hoadon_khachhang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
