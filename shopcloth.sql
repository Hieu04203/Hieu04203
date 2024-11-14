-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2024 lúc 06:57 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopcloth`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image_url`) VALUES
(1, 'Áo Thun Nam', 'Áo thun cotton chất lượng cao, thoáng mát.', 199000.00, 'https://example.com/images/ao_thun_nam.jpg'),
(2, 'Áo Sơ Mi Nữ', 'Áo sơ mi trắng thanh lịch, phù hợp cho công sở.', 299000.00, 'https://example.com/images/ao_so_mi_nu.jpg'),
(3, 'Quần Jean', 'Quần jean thời trang cho cả nam và nữ.', 499000.00, 'https://example.com/images/quan_jean.jpg'),
(4, 'Giày Thể Thao', 'Giày thể thao năng động, phong cách hiện đại.', 599000.00, 'https://example.com/images/giay_the_thao.jpg'),
(5, 'Váy Dạ Hội', 'Váy dạ hội thiết kế sang trọng cho các sự kiện đặc biệt.', 1299000.00, 'https://example.com/images/vay_da_hoi.jpg'),
(6, 'Balo Thời Trang', 'Balo đa năng, phù hợp cho mọi hoạt động.', 399000.00, 'https://example.com/images/balo_thoi_trang.jpg'),
(7, 'Áo Khoác Nam', 'Áo khoác nam mùa đông giữ ấm và phong cách.', 799000.00, 'https://example.com/images/ao_khoac_nam.jpg'),
(8, 'Nón Lưỡi Trai', 'Nón lưỡi trai cá tính, phù hợp cho giới trẻ.', 149000.00, 'https://example.com/images/non_luoi_trai.jpg'),
(9, 'Đồng Hồ Thông Minh', 'Đồng hồ thông minh với nhiều tính năng hiện đại.', 1599000.00, 'https://example.com/images/dong_ho_thong_minh.jpg'),
(10, 'Kính Mát', 'Kính mát chống UV bảo vệ mắt hiệu quả.', 249000.00, 'https://example.com/images/kinh_mat.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
