-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2024 lúc 11:07 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `create_at`, `update_at`, `status`, `creator`) VALUES
(1, '  lenovo', '2023-04-05 23:08:18', '2023-04-12 13:24:45', 0, 1),
(2, 'acer', '2023-04-06 12:57:18', '2023-04-09 19:29:13', 0, 1),
(19, 'asus', '2023-04-09 19:29:21', NULL, 0, 1),
(20, 'demo', '2023-04-11 15:45:47', NULL, 0, 1),
(31, ' demo 1', '2023-04-12 23:09:38', '2023-04-12 23:09:45', 0, 1),
(32, 'Apple', '2023-05-28 00:05:03', NULL, 1, 1),
(33, 'Samsung', '2023-05-28 00:05:08', NULL, 1, 1),
(34, 'Realme', '2023-05-28 00:05:13', NULL, 1, 1),
(35, 'Xiaomi', '2023-05-28 00:05:23', NULL, 1, 1),
(36, 'Nokia', '2023-05-28 00:05:45', NULL, 1, 1),
(37, 'Vivo', '2023-05-28 00:05:50', NULL, 1, 1),
(38, 'Asus', '2023-05-28 00:17:46', NULL, 1, 1),
(39, 'Logitech ', '2023-05-28 00:27:06', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` int(11) DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `status`, `creator`, `create_at`, `update_at`) VALUES
(1, 'Laptop Văn phòng', 0, 0, 1, '2023-04-05 23:08:33', '2023-04-12 14:40:08'),
(2, 'Laptop Gaming', 0, 0, 1, '2023-04-07 13:46:26', '2023-04-07 13:48:57'),
(3, 'Laptop Mỏng nhẹ', 0, 0, 1, '2023-04-07 13:46:32', '2023-04-07 13:49:03'),
(4, 'Laptop Đồ họa - Kỹ thuật', 0, 0, 1, '2023-04-07 13:47:07', '2023-04-07 13:49:12'),
(5, 'Laptop Sinh viên', 0, 0, 1, '2023-04-07 13:47:19', '2023-04-07 13:49:21'),
(6, 'Laptop Cảm ứng', 0, 0, 1, '2023-04-07 13:47:24', '2023-04-07 13:49:27'),
(7, 'demo', 0, 0, 1, '2023-04-12 23:10:39', NULL),
(8, 'Chơi game', 0, 1, 1, '2023-05-28 00:03:45', NULL),
(9, 'Pin trâu - dung lượng lớn', 0, 1, 1, '2023-05-28 00:03:53', '2023-05-28 00:04:02'),
(10, 'Cấu hình cao', 0, 1, 1, '2023-05-28 00:04:14', NULL),
(11, 'Mỏng nhẹ', 0, 1, 1, '2023-05-28 00:04:20', NULL),
(12, 'Chụp hình đẹp', 0, 1, 1, '2023-05-28 00:04:34', NULL),
(13, 'Phụ Kiện', 0, 1, 1, '2023-05-28 00:04:46', NULL),
(14, 'demo', 0, 0, 1, '2023-05-30 15:09:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `content` varchar(100) NOT NULL,
  `rate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `status_comment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `content`, `status`, `customer_id`) VALUES
(9, 'Ly Binh Son', 'lbs20102002s@gmail.com', 'nnnnn', 1, 21),
(10, 'Ly Binh Son', 'lbs20102002s@gmail.com', 'nnnnn', 1, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `birthday`, `address`, `phone`, `create_at`, `update_at`, `status`) VALUES
(19, 'Test1', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1999-12-02', 'TP.HCM', '0123455678', '2023-05-30 14:45:40', '2023-05-30 14:45:40', 0),
(20, 'Test1', 'test1@gmail.com', '25f9e794323b453885f5181f1b624d0b', '1999-12-12', 'HaNoi', '0123455678', '2023-05-30 14:47:45', '2023-05-30 14:47:45', 1),
(21, 'Ly Binh Son', 'lbs20102002s@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2002-10-20', 'sg', '0905292665', '2023-06-22 18:51:21', '2023-06-22 18:51:21', 1),
(22, 'Ly Binh Son', 'lbs201002@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2002-10-20', 't3', '0905292665', '2024-04-02 07:46:58', '2024-04-02 07:46:58', 1),
(23, 'Son', 'lbs2010@gmail.com', 'f15e85b6c079fd054911bcf5c0052e47', '2002-10-20', 'Binh Duong', '0905292665', '2024-04-05 11:24:19', '2024-04-05 11:24:19', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `name_receive` varchar(250) NOT NULL,
  `phone_receive` varchar(15) NOT NULL,
  `address_receive` text NOT NULL,
  `note` text NOT NULL,
  `total` decimal(18,0) NOT NULL DEFAULT 0,
  `status_order` int(11) NOT NULL DEFAULT 1,
  `customer_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL DEFAULT 0,
  `payment_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `approver` int(11) NOT NULL DEFAULT 1,
  `delivery` varchar(250) NOT NULL DEFAULT 'Giao hàng bình thường'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `name_receive`, `phone_receive`, `address_receive`, `note`, `total`, `status_order`, `customer_id`, `promotion_id`, `payment_id`, `status`, `create_at`, `update_at`, `approver`, `delivery`) VALUES
(80, '2023-05-30 14:48:49', 'Van Minh', '012345678', 'TPhcm', '', 23900000, 5, 20, 0, 1, 1, '2023-05-30 14:48:49', '2023-05-30 14:52:00', 1, 'Giao hàng nhanh'),
(81, '2023-05-30 14:55:12', 'Van Minh', '4564654', 'TPhcm', '', 16980000, 3, 20, 0, 1, 1, '2023-05-30 14:55:12', '2023-06-22 21:14:08', 1, 'Giao hàng tiết kiệm'),
(82, '2023-05-30 15:01:36', 'Van Minh', '4564654', 'TPhcm', '', 16980000, 3, 20, 0, 1, 1, '2023-05-30 15:01:36', NULL, 1, 'Giao hàng tiết kiệm'),
(83, '2023-05-30 15:02:03', 'Van Minh', '4564654678', 'TPhcm', 'abc', 23980000, 3, 20, 0, 1, 1, '2023-05-30 15:02:03', '2023-05-30 15:13:45', 1, 'Giao hàng tiết kiệm'),
(84, '2023-06-22 18:52:22', 'lbs', '0905292665', 'sg', 'vc', 23950000, 2, 21, 0, 1, 1, '2023-06-22 18:52:22', '2023-06-22 18:53:57', 1, 'Giao hàng bình thường'),
(85, '2023-06-23 10:48:45', 'lbs', '0905292665', 'sg', 'hhh', 16950000, 5, 21, 0, 1, 1, '2023-06-23 10:48:45', '2023-06-23 10:52:15', 1, 'Giao hàng bình thường'),
(86, '2024-04-02 07:48:35', 'lbs', '0905292665', 'sg', 'sss', 40800000, 1, 22, 0, 1, 1, '2024-04-02 07:48:35', NULL, 1, 'Giao hàng hỏa tốc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(18,0) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `price`, `product_id`, `order_id`, `create_at`, `update_at`) VALUES
(47, 1, 24000000, 11, 80, '2023-05-30 14:48:49', NULL),
(48, 1, 17000000, 9, 81, '2023-05-30 14:55:12', NULL),
(49, 1, 24000000, 11, 83, '2023-05-30 15:02:03', NULL),
(50, 1, 24000000, 11, 84, '2023-06-22 18:52:22', NULL),
(51, 1, 17000000, 9, 85, '2023-06-23 10:48:45', NULL),
(52, 1, 17000000, 9, 86, '2024-04-02 07:48:35', NULL),
(53, 1, 24000000, 11, 86, '2024-04-02 07:48:35', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `creator` int(11) DEFAULT 1,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `name`, `status`, `create_at`, `creator`, `update_at`) VALUES
(1, 'Thanh toán khi nhận hàng xxx', 1, '2023-04-06 13:25:22', 1, '2023-04-12 14:39:49'),
(2, 'demo 1', 0, '2023-04-12 23:11:49', 1, '2023-04-12 23:11:55'),
(3, 'Ly Binh Son', 0, '2023-06-22 21:14:30', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` decimal(18,0) NOT NULL,
  `sale_price` decimal(18,0) NOT NULL,
  `serial` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `img` text NOT NULL,
  `content` text NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` int(11) DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT 0,
  `list_img` text NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `sale_price`, `serial`, `description`, `img`, `content`, `view_count`, `category_id`, `brand_id`, `status`, `creator`, `create_at`, `update_at`, `hot`, `list_img`, `quantity`) VALUES
(1, 'Acer nitro 502', 16000000, 12000000, 'Acer123', '<p>- CPU: Intel Core i5-1230U<br>- Màn hình: 13.3\" (2880 x 1800)<br>- RAM: 8GB Onboard LPDDR4X 4266MHz<br>- Đồ họa: Onboard Intel Iris Xe Graphics<br>- Lưu trữ: 512GB SSD M.2 NVMe /<br>- Hệ điều hành: Windows 11 Home SL<br>- Pin: 4 cell 66 Wh Pin liền<br>- Khối lượng: 1.3kg</p>', '8eea2d02dffe1a5a872a40672f1eb216.jpg', '', 6, 1, 1, 0, 1, '2023-04-07 13:13:22', '2023-04-18 00:21:40', 0, 'af1d413887bef07aed78d75bd2e75323.jpg,57b249718913c9b4a297ad5783a121fa.jpg', 5),
(2, 'Legon 505', 16000000, 12000000, '11', '<p>- CPU: Intel Core i5-1230U<br>- Màn hình: 13.3\" (2880 x 1800)<br>- RAM: 8GB Onboard LPDDR4X 4266MHz<br>- Đồ họa: Onboard Intel Iris Xe Graphics<br>- Lưu trữ: 512GB SSD M.2 NVMe /<br>- Hệ điều hành: Windows 11 Home SL<br>- Pin: 4 cell 66 Wh Pin liền<br>- Khối lượng: 1.3kg</p>', 'd1d7e8502113bec539f1d25a0006c50d.jpg', '', 55, 1, 1, 0, 1, '2023-04-07 13:35:32', '2023-04-18 00:21:44', 1, '4c858dfbb442895e7b09f66a921d4206.jpg,8d41131de98a951e9f25f7ebbed58fa8.png,703c87cdba693975c652272ca61fa45f.jpg,af6d5d2b29957881df69fadab3a434f6.png,3150d64eb7ff4053fbdb3bcd51f99681.jpg', 9),
(3, 'test', 720000, 120000, 'Acer2', '<p>test</p>', '69872eb433739afb0d1ce65f04fdc43e.jpg', '', 0, 1, 2, 0, 1, '2023-04-07 13:36:01', NULL, 0, '', 0),
(4, 'Lenovo', 12000000, 10000000, '#12', '<p>- CPU: AMD Ryzen 7 4800H<br>- Màn hình: 15.6\" IPS (1920 x 1080),144Hz<br>- RAM: 1 x 8GB DDR4 3200MHz<br>- Đồ họa: RTX 3050Ti 4GB GDDR6 / AMD Radeon Graphics<br>- Lưu trữ: 512GB SSD M.2 NVMe /<br>- Hệ điều hành: Windows 11 Home<br>- Pin: 4 cell 56 Wh Pin liền<br>- Khối lượng: 2.1kg</p>', '050a2754e1c75606a427c86c23dd59d5.jpg', '', 2, 3, 1, 0, 1, '2023-04-07 23:06:47', '2023-04-15 16:04:03', 0, '5b242ef3cde7d937f11effec90248f25.', 7),
(5, 'macbook', 23000000, 21000000, 'Mac#102', '<ul><li>Phù hợp cho lập trình viên, thiết kế đồ họa 2D, dân văn phòng</li><li>Hiệu năng vượt trội - Cân mọi tác vụ từ word, exel đến chỉnh sửa ảnh trên các phần mềm như AI, PTS</li><li>Đa nhiệm mượt mà - Ram 8GB cho phép vừa mở trình duyệt để tra cứu thông tin, vừa làm việc trên phần mềm</li><li>Trang bị SSD 256GB - Cho thời gian khởi động nhanh chóng, tối ưu hoá thời gian load ứng dụng</li><li>Chất lượng hình ảnh sắc nét - Màn hình Retina cao cấp cùng công nghệ TrueTone cân bằng màu sắc</li><li>Thiết kế sang trọng - Nặng chỉ 1.29KG, độ dày 16.1mm. Tiện lợi mang theo mọi nơi</li></ul>', '80dbbe3cf4949b52ef87bb51c3a5ebed.png', '', 0, 3, 19, 0, 1, '2023-04-11 16:45:35', '2023-04-11 16:46:46', 1, '6565eb269b8b56d170cda33f407b18a7.webp,c8a4b9e289e569899f28b0a6d9617a26.webp,4ed8ae9b692455d380a23c9668a69e2c.webp', 0),
(6, 'demo', 160000, 12000000, '11', '<ul><li>Phù hợp cho lập trình viên, thiết kế đồ họa 2D, dân văn phòng</li><li>Hiệu năng vượt trội - Cân mọi tác vụ từ word, exel đến chỉnh sửa ảnh trên các phần mềm như AI, PTS</li><li>Đa nhiệm mượt mà - Ram 8GB cho phép vừa mở trình duyệt để tra cứu thông tin, vừa làm việc trên phần mềm</li><li>Trang bị SSD 256GB - Cho thời gian khởi động nhanh chóng, tối ưu hoá thời gian load ứng dụng</li><li>Chất lượng hình ảnh sắc nét - Màn hình Retina cao cấp cùng công nghệ TrueTone cân bằng màu sắc</li><li>Thiết kế sang trọng - Nặng chỉ 1.29KG, độ dày 16.1mm. Tiện lợi mang theo mọi nơi</li></ul>', '6f34a3edbab0ea28f04c054a76c49bd6.jpg', '', 0, 1, 1, 0, 1, '2023-04-11 16:47:24', '2023-04-11 16:48:57', 1, '6519f11c8fac7b4fd18c8cb498a42be9.jpg,6ebf32e4efcf0e9f5af25d60e99000e3.png,be0462f976dfc8de5835823b22aedd76.jpg', 0),
(7, 'demo', 160000, 120000, '11', '<ul><li>Phù hợp cho lập trình viên, thiết kế đồ họa 2D, dân văn phòng</li><li>Hiệu năng vượt trội - Cân mọi tác vụ từ word, exel đến chỉnh sửa ảnh trên các phần mềm như AI, PTS</li><li>Đa nhiệm mượt mà - Ram 8GB cho phép vừa mở trình duyệt để tra cứu thông tin, vừa làm việc trên phần mềm</li><li>Trang bị SSD 256GB - Cho thời gian khởi động nhanh chóng, tối ưu hoá thời gian load ứng dụng</li><li>Chất lượng hình ảnh sắc nét - Màn hình Retina cao cấp cùng công nghệ TrueTone cân bằng màu sắc</li><li>Thiết kế sang trọng - Nặng chỉ 1.29KG, độ dày 16.1mm. Tiện lợi mang theo mọi nơi</li></ul>', '70b734aa16d9e5938c646664287e4ace.jpg', '', 0, 1, 2, 0, 1, '2023-04-11 16:49:23', NULL, 1, 'bf58a8733f2c56c004552c2bcaa7365f.jpg,c312381d55c0e8ecc81b6f570f890d52.jpg,bb2cec25341366ae646abdbaaecfefdd.png', 0),
(8, 'demo', 160000, 120000, '11', '<ul><li>Phù hợp cho lập trình viên, thiết kế đồ họa 2D, dân văn phòng</li><li>Hiệu năng vượt trội - Cân mọi tác vụ từ word, exel đến chỉnh sửa ảnh trên các phần mềm như AI, PTS</li><li>Đa nhiệm mượt mà - Ram 8GB cho phép vừa mở trình duyệt để tra cứu thông tin, vừa làm việc trên phần mềm</li><li>Trang bị SSD 256GB - Cho thời gian khởi động nhanh chóng, tối ưu hoá thời gian load ứng dụng</li><li>Chất lượng hình ảnh sắc nét - Màn hình Retina cao cấp cùng công nghệ TrueTone cân bằng màu sắc</li><li>Thiết kế sang trọng - Nặng chỉ 1.29KG, độ dày 16.1mm. Tiện lợi mang theo mọi nơi</li></ul>', 'db907a01b455e0089002ac97c4a31475.jpg', '', 0, 1, 1, 0, 1, '2023-04-11 17:23:24', '2023-04-11 17:28:46', 1, '2f9840dc495091e19d7637373e80faa3.jpg', 0),
(9, 'ASUS ROG Phone 6 12GB 256GB', 19000000, 17000000, '#12', '<ul><li>Hiệu năng dẫn đầu mọi trận đấu - Chip Snapdragon® 8+ Gen 1 mạnh mẽ cùng RAM 12GB</li><li>Chất lượng hiển thị đúng chuẩn gaming - Màn hình 6.78 inches, FullHD+, HDR10+ cùng tần số quét 165Hz</li><li>Thiết kế thân thiện cho chơi game, mặt lưng ánh sáng Aura RGB độc đáo</li><li>Bùng nổ năng lượng cho ngày dài ấn tượng - Viên pin 6000 mAh, sạc nhanh siêu tốc 65W</li></ul>', '1e689d23d124b4f05bd2d36f0c7aff06.png', '', 11, 8, 38, 1, 1, '2023-05-28 00:11:22', '2023-06-22 21:14:08', 1, '690a3c8c8f487af49551e12dfb8266a3.webp,57ad2b484f11ac22385986a9628e8eae.webp', 2),
(10, 'Nokia C31 4GB 128GB', 2490000, 2290000, '#11', '<ul><li>Bộ 3 camera AI sắc nét 13MP tích hợp ứng dụng Camera từ Google cho những bức ảnh hoàn hảo</li><li>Màn hình siêu rộng 6.7” chuẩn HD+ mang đến trải nghiệm giải trí chất lượng cao với hình ảnh sống động</li><li>Hệ điều hành Android 12 mới nhất với tính năng bảo mật và chia sẻ dễ dàng kết hợp vi xử lý 8 nhân mạnh mẽ giúp thao tác mượt mà</li><li>Dung lượng pin 5050 mAh, cùng chế độ siêu tiết kiệm pin cho thời gian sử dụng lên đến 3 ngày</li><li>Tiêu chuẩn kháng nước IP52 phù hợp với điều kiện thời tiết tại Việt Nam.</li><li>Trọn an tâm với 02 năm cập nhật bảo mật hàng quý, mở khóa vân tay và nhận diện khuôn mặt</li></ul>', 'be7dd466bcf99e8ef8933a9f2235feff.png', '', 2, 9, 36, 1, 1, '2023-05-28 00:21:09', '2023-05-28 00:21:17', 0, 'f2ee8e8b7582c4aa329a342a4190733a.png,5a0f45032fc8385bc24752dbf8ef1e60.png', 2),
(11, 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 26000000, 24000000, '#33', '<ul><li>Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display</li><li>Cấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic</li><li>Làm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động</li><li>Pin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến</li></ul><p><strong>iPhone 14 Pro Max</strong> là mẫu flagship nổi bật nhất của Apple trong lần trở lại năm 2022 với nhiều cải tiến về công nghệ cũng như vẻ ngoài cao cấp, sang chảnh hợp với gu thẩm mỹ đại chúng. Những chiếc điện thoại đến từ nhà Táo Khuyết nhận được rất nhiều sự kỳ vọng của thị trường ngay từ khi chưa ra mắt. Vậy liệu những chiếc flagship đến từ công ty công nghệ hàng đầu thế giới này có làm bạn thất vọng? Cùng khám phá những điều thú vị về iPhone 14 Pro Max ở bài viết dưới đây nhé.</p>', '12e957dfaa67444d6de3b51ee548adec.png', '', 10, 10, 32, 1, 1, '2023-05-28 00:23:31', '2023-05-30 15:13:45', 1, 'b64a32e1f68ace5c98c276482a9f1a58.png,377c6bcc167a2720df904d5afd73bf7c.png', 8),
(12, 'Chuột chơi Game không dây Logitech G903', 3800000, 2400000, '#123', '<p>Chuột được trang bị cảm biến quang học HERO mang lại hiệu suất ổn định và chính xác vượt trội với khả năng làm mượt, lọc và tăng tốc lên tới 16.000 DPI<br>Trang bị công nghệ không dây LIGHTSPEED giảm độ trễ xuống còn 1ms và tăng độ ổn định và khả năng kết nối<br>Trang bị pin sạc thông cả Micro USB cho khả năng sử dụng 140 giờ chơi game với đèn LIGHTSYNC RGB<br>Công nghệ ánh sáng LIGHTSYNC RGB có thể tùy chỉnh hình động và hiệu ứng ánh sáng lên tới 16,8 triệu màu thông qua phần mềm G Hub<br>Tích hợp 11 nút có thể lập trình thông qua phần mềm G Hub của Logitech<br>Thiết kế bền bỉ, thông minh thuận cả hai tay và khoang chứa đầu thu nano USB tích hợp có thể sử dụng lên tới 10m</p>', 'a73bdff6f55908dddac1196d25621184.png', '', 3, 13, 39, 1, 1, '2023-05-28 00:25:45', '2023-05-28 00:27:14', 0, '0c6f341a33249630d844d435a3bbd437.webp,259d4010818f1975be415821c3b42655.webp,3e0005dcd75ab4a7bbed34ca36c77c90.webp', 0),
(13, 'phu kien 1', 390000, 250000, '#12', '<p>DemDemo</p>', '3c8e5562b7380659b20ae1ad1547b030.jpg', '', 3, 13, 32, 0, 1, '2023-05-30 15:06:40', '2023-05-30 15:07:06', 1, '7af119cf8e4afb4d79096ebe0cacadaa.jpg,9fd6ee483a686f7acaf064121a253c0d.jpg,0e942731caaaaf68d1d4391f0d32c07e.jpg', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `price` decimal(18,0) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` int(11) DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `promotions`
--

INSERT INTO `promotions` (`id`, `code`, `price`, `name`, `status`, `creator`, `create_at`, `update_at`) VALUES
(5, 'A21', 160000, 'demo', 1, 1, '2023-04-09 21:41:19', NULL),
(6, 'C0073', 120000, 'demo', 1, 1, '2023-04-09 21:41:37', '2023-04-12 23:10:10'),
(7, '13213', 1200, 'test', 0, 1, '2023-04-12 23:10:20', NULL),
(8, 'abc', 200000, 'test', 1, 1, '2023-04-18 00:21:28', NULL),
(9, 'demo', 200000, 'demo', 1, 1, '2023-05-30 15:09:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `specifications`
--

CREATE TABLE `specifications` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `key` varchar(250) NOT NULL,
  `value` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator` int(11) DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `specifications`
--

INSERT INTO `specifications` (`id`, `product_id`, `key`, `value`, `status`, `creator`, `create_at`, `update_at`) VALUES
(1, 4, 'test 234', '1232', 0, 1, '2023-04-10 23:59:15', '2023-04-11 14:13:53'),
(2, 4, 'Màn hình', '32 inch', 0, 1, '2023-04-11 00:27:07', '2023-04-11 14:17:03'),
(3, 4, 'Cận nặng', '3.6 Kg', 0, 1, '2023-04-11 00:35:10', '2023-04-11 14:17:01'),
(4, 4, 'demo', 'text demo', 0, 1, '2023-04-11 00:36:15', '2023-04-11 14:13:49'),
(5, 4, 'test', 'test', 0, 1, '2023-04-11 14:08:06', '2023-04-11 14:12:23'),
(6, 4, 'test 1', 'test 123', 0, 1, '2023-04-11 14:08:34', '2023-04-11 14:12:08'),
(7, 4, 'Loại card đồ họa', 'NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500MHz, TGP 85W', 1, 1, '2023-04-11 14:17:20', NULL),
(8, 4, 'Dung lượng RAM', '8GB', 1, 1, '2023-04-11 14:17:35', NULL),
(9, 4, 'Loại RAM', 'DDR5-4800', 1, 1, '2023-04-11 14:17:49', NULL),
(10, 4, 'Số khe ram', '2 khe', 1, 1, '2023-04-11 14:18:03', NULL),
(11, 4, 'Kích thước màn hình', '15.6 inches', 1, 1, '2023-04-11 14:18:17', NULL),
(12, 4, 'Công nghệ màn hình', 'IPS 250nits Anti-glare, 120Hz, 45% NTSC, Free-Sync, DC dimmer', 1, 1, '2023-04-11 14:18:30', NULL),
(13, 4, 'Pin', '3 Cell, 60Wh', 1, 1, '2023-04-11 14:18:46', NULL),
(14, 4, 'Hệ điều hành', 'Windows 11', 1, 1, '2023-04-11 14:18:57', NULL),
(15, 2, 'GPU', 'AMD rga 8 (AMD)', 1, 1, '2023-04-11 15:48:27', NULL),
(16, 1, 'CPU  1', '185.199.108.153', 1, 1, '2023-04-12 23:09:21', NULL),
(17, 9, 'Kích thước màn hình', '6.78 inches', 1, 1, '2023-05-28 00:14:31', NULL),
(18, 9, 'Độ phân giải màn hình', '1080 x 2448 pixels (FullHD+)', 1, 1, '2023-05-28 00:14:47', NULL),
(19, 9, 'Hệ điều hành', 'Android 12', 1, 1, '2023-05-28 00:14:57', NULL),
(20, 9, 'Công nghệ màn hình', 'AMOLED', 1, 1, '2023-05-28 00:15:06', NULL),
(21, 9, 'Camera sau', 'Camera chính: 50 MP, f/1.9 Camera góc siêu rộng: 13 MP Camera macro: 5 MP', 1, 1, '2023-05-28 00:15:25', NULL),
(22, 9, 'Camera trước', '12 MP', 1, 1, '2023-05-28 00:15:37', NULL),
(23, 9, 'Dung lượng RAM', '12 GB', 1, 1, '2023-05-28 00:15:46', NULL),
(24, 9, 'Bộ nhớ trong', '256 GB', 1, 1, '2023-05-28 00:15:56', NULL),
(25, 9, 'Thẻ SIM', '2 SIM', 1, 1, '2023-05-28 00:16:09', NULL),
(26, 9, 'Tính năng màn hình', 'Corning ® Gorilla ® Glass Victus, 165Hz, Độ sáng tối đa: 1200 nits, Mật độ điểm ảnh: 395 ppi', 1, 1, '2023-05-28 00:16:21', NULL),
(27, 9, 'Pin', '6000 mAh', 1, 1, '2023-05-28 00:16:30', NULL),
(28, 9, 'Chipset', 'Qualcomm ® Snapdragon ® 8+ thế hệ 1', 1, 1, '2023-05-28 00:16:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` int(15) NOT NULL,
  `gender` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `gender`, `role`, `create_at`, `update_at`, `status`) VALUES
(1, 'Admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', 907090909, 1, 0, '2023-03-29 00:00:00', '2023-03-29 00:00:00', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator` (`creator`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator` (`creator`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `promotion_id` (`promotion_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `approver` (`approver`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `creator` (`creator`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator` (`creator`);

--
-- Chỉ mục cho bảng `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `creator` (`creator`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`approver`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`creator`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `specifications_ibfk_2` FOREIGN KEY (`creator`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
