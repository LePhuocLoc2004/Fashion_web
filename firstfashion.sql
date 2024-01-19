-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3308
-- Thời gian đã tạo: Th8 10, 2023 lúc 11:32 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `firstfashion`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `brand_name`) VALUES
(1, 'H&M'),
(4, 'Vans');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `cat_name`) VALUES
(1, 'Pants'),
(2, 'Shirts'),
(3, 'Outerwears'),
(4, 'Shorts');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'thai@gmail.com', 'gfhgfhhgfghfh', '2023-08-09 23:19:34', '2023-08-09 23:19:34'),
(2, 'thai2@gmail.com', 'thai2@gmail.com', '2023-08-09 23:24:06', '2023-08-09 23:24:06'),
(3, 'thai2@gmail.com', 'thai2@gmail.com', '2023-08-09 23:25:54', '2023-08-09 23:25:54'),
(4, 'hgjs@gmail.com', 'ghfdggffdgdfgdfg', '2023-08-09 23:39:15', '2023-08-09 23:39:15'),
(5, 'thai@gmail.com', 'hello first fashion', '2023-08-09 23:40:22', '2023-08-09 23:40:22'),
(6, 'thai@gmail.com', 'hello firstfashion!!!', '2023-08-10 00:24:49', '2023-08-10 00:24:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_11_150216_create_categories_table', 1),
(6, '2023_07_11_153015_create_brands_table', 1),
(7, '2023_07_11_153330_create_products_table', 1),
(8, '2023_07_11_154153_create_feedback_table', 1),
(9, '2023_07_11_154506_create_orders_table', 1),
(10, '2023_08_04_050259_create_photos_table', 2),
(14, '2023_08_06_173824_create_orders_table', 3),
(15, '2023_08_06_180410_create_order_details_table', 4),
(16, '2023_08_10_052229_create_contacts_table', 5),
(17, '2023_08_10_061138_create_contacts_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `subTotal` int(11) NOT NULL,
  `fax` double(8,2) NOT NULL,
  `shipping` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullName`, `phoneNumber`, `address`, `subTotal`, `fax`, `shipping`, `total`, `created_at`, `updated_at`) VALUES
(11, 22, 'Phan Quốc Thái', '0231544618', 'HCM CITY', 742, 74.20, 0, 816.20, '2023-08-07 09:52:10', '2023-08-07 09:52:10'),
(12, 24, 'Nguyễn Văn A', '0687645631', 'HA NOI CITY', 631, 63.10, 0, 694.10, '2023-08-07 09:55:48', '2023-08-07 09:55:48'),
(13, 22, 'Phạm Hoàng A', '0656168415', 'Da Nang City', 948, 94.80, 0, 1042.80, '2023-08-07 10:01:00', '2023-08-07 10:01:00'),
(14, 22, 'Aptech D5', '0876485135', 'Hue City', 294, 29.40, 20, 343.40, '2023-08-07 10:02:04', '2023-08-07 10:02:04'),
(15, 22, 'Lê Phước Lộc', '0938217459', 'HCM CITY', 98, 9.80, 20, 127.80, '2023-08-07 23:01:37', '2023-08-07 23:01:37'),
(16, 22, 'phan quoc thai', '0924097091', 'hcm city', 765, 76.50, 0, 841.50, '2023-08-08 00:20:50', '2023-08-08 00:20:50'),
(17, 27, 'Lê Phước Lộc', '0949124874', 'aptechuser hcm', 1000, 100.00, 0, 1100.00, '2023-08-10 00:19:39', '2023-08-10 00:19:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(9, 11, 1, 'Long Hooded Cardigan', 98, 4, '2023-08-07 09:52:10', '2023-08-07 09:52:10'),
(10, 11, 7, 'Regular Fit Oxford Shirt', 200, 1, '2023-08-07 09:52:10', '2023-08-07 09:52:10'),
(11, 11, 100, 'CONCRETE FLORAL VINTAGE T-SHIRT', 150, 1, '2023-08-07 09:52:10', '2023-08-07 09:52:10'),
(12, 12, 62, 'Sweatshorts', 76, 7, '2023-08-07 09:55:48', '2023-08-07 09:55:48'),
(13, 12, 67, 'Embroidered Sweatshorts', 99, 1, '2023-08-07 09:55:48', '2023-08-07 09:55:48'),
(14, 13, 65, 'Linen Shorts', 150, 5, '2023-08-07 10:01:00', '2023-08-07 10:01:00'),
(15, 13, 69, 'Paper-bag Sweatshorts', 99, 2, '2023-08-07 10:01:00', '2023-08-07 10:01:00'),
(16, 14, 1, 'Long Hooded Cardigan', 98, 3, '2023-08-07 10:02:04', '2023-08-07 10:02:04'),
(17, 15, 1, 'Long Hooded Cardigan', 98, 1, '2023-08-07 23:01:37', '2023-08-07 23:01:37'),
(18, 16, 108, 'POOL HALL PULLOVER HOODIE', 255, 3, '2023-08-08 00:20:50', '2023-08-08 00:20:50'),
(19, 17, 119, 'VANS HOUSE LONG SLEEVE BOYFRIEND T-SHIRT', 200, 5, '2023-08-10 00:19:39', '2023-08-10 00:19:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `photo_src` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `photos`
--

INSERT INTO `photos` (`id`, `pro_id`, `photo_src`, `created_at`, `updated_at`) VALUES
(1, 1, '20230804055324.jpg', '2023-08-03 22:53:24', '2023-08-03 22:53:24'),
(2, 1, '20230804055339.jpg', '2023-08-03 22:53:39', '2023-08-03 22:53:39'),
(5, 2, '20230805093002.jpg', '2023-08-05 02:30:02', '2023-08-05 02:30:02'),
(6, 3, '20230805094342.jpg', '2023-08-05 02:43:42', '2023-08-05 02:43:42'),
(7, 3, '20230805094351.jpg', '2023-08-05 02:43:51', '2023-08-05 02:43:51'),
(10, 94, '20230807052339.jpg', '2023-08-06 22:23:39', '2023-08-06 22:23:39'),
(11, 94, '20230807052344.jpg', '2023-08-06 22:23:44', '2023-08-06 22:23:44'),
(12, 95, '20230807053036.jpg', '2023-08-06 22:30:36', '2023-08-06 22:30:36'),
(13, 96, '20230807053327.jpg', '2023-08-06 22:33:27', '2023-08-06 22:33:27'),
(14, 96, '20230807053332.jpg', '2023-08-06 22:33:32', '2023-08-06 22:33:32'),
(15, 97, '20230807053525.jpg', '2023-08-06 22:35:25', '2023-08-06 22:35:25'),
(16, 97, '20230807053530.jpg', '2023-08-06 22:35:30', '2023-08-06 22:35:30'),
(19, 100, '20230807054116.jpg', '2023-08-06 22:41:16', '2023-08-06 22:41:16'),
(20, 100, '20230807054122.jpg', '2023-08-06 22:41:22', '2023-08-06 22:41:22'),
(21, 101, '20230807054302.jpg', '2023-08-06 22:43:02', '2023-08-06 22:43:02'),
(22, 101, '20230807054306.jpg', '2023-08-06 22:43:06', '2023-08-06 22:43:06'),
(23, 102, '20230807054438.jpg', '2023-08-06 22:44:38', '2023-08-06 22:44:38'),
(24, 102, '20230807054443.jpg', '2023-08-06 22:44:43', '2023-08-06 22:44:43'),
(25, 103, '20230807054558.jpg', '2023-08-06 22:45:58', '2023-08-06 22:45:58'),
(26, 103, '20230807054603.jpg', '2023-08-06 22:46:03', '2023-08-06 22:46:03'),
(27, 104, '20230807054811.jpg', '2023-08-06 22:48:11', '2023-08-06 22:48:11'),
(28, 104, '20230807054816.jpg', '2023-08-06 22:48:16', '2023-08-06 22:48:16'),
(29, 105, '20230807054923.jpg', '2023-08-06 22:49:23', '2023-08-06 22:49:23'),
(30, 105, '20230807054928.jpg', '2023-08-06 22:49:28', '2023-08-06 22:49:28'),
(31, 106, '20230807055033.jpg', '2023-08-06 22:50:33', '2023-08-06 22:50:33'),
(32, 106, '20230807055037.jpg', '2023-08-06 22:50:37', '2023-08-06 22:50:37'),
(33, 107, '20230807055146.jpg', '2023-08-06 22:51:46', '2023-08-06 22:51:46'),
(34, 107, '20230807055150.jpg', '2023-08-06 22:51:50', '2023-08-06 22:51:50'),
(35, 108, '20230807055301.jpg', '2023-08-06 22:53:01', '2023-08-06 22:53:01'),
(36, 108, '20230807055306.jpg', '2023-08-06 22:53:06', '2023-08-06 22:53:06'),
(37, 109, '20230807055455.jpg', '2023-08-06 22:54:55', '2023-08-06 22:54:55'),
(38, 109, '20230807055459.jpg', '2023-08-06 22:54:59', '2023-08-06 22:54:59'),
(39, 110, '20230807055611.jpg', '2023-08-06 22:56:11', '2023-08-06 22:56:11'),
(40, 110, '20230807055615.jpg', '2023-08-06 22:56:15', '2023-08-06 22:56:15'),
(41, 111, '20230807055730.jpg', '2023-08-06 22:57:30', '2023-08-06 22:57:30'),
(42, 111, '20230807055735.jpg', '2023-08-06 22:57:35', '2023-08-06 22:57:35'),
(45, 113, '20230807061012.jpg', '2023-08-06 23:10:12', '2023-08-06 23:10:12'),
(46, 113, '20230807061017.jpg', '2023-08-06 23:10:17', '2023-08-06 23:10:17'),
(47, 114, '20230807061655.jpg', '2023-08-06 23:16:55', '2023-08-06 23:16:55'),
(48, 115, '20230807062929.jpg', '2023-08-06 23:29:29', '2023-08-06 23:29:29'),
(49, 115, '20230807062933.jpg', '2023-08-06 23:29:33', '2023-08-06 23:29:33'),
(50, 116, '20230807072952.jpg', '2023-08-07 00:29:52', '2023-08-07 00:29:52'),
(51, 116, '20230807072957.jpg', '2023-08-07 00:29:57', '2023-08-07 00:29:57'),
(52, 117, '20230807073202.jpg', '2023-08-07 00:32:02', '2023-08-07 00:32:02'),
(53, 117, '20230807073207.jpg', '2023-08-07 00:32:07', '2023-08-07 00:32:07'),
(56, 124, '20230808071627.jpg', '2023-08-08 00:16:27', '2023-08-08 00:16:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_src` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `gender` int(11) NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_src`, `quantity`, `price`, `description`, `gender`, `brand_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'Long Hooded Cardigan', 'shirt_1.jpg', 100, 98, 'Long cardigan in lightweight sweatshirt fabric with visible seams and a jersey-lined, drawstring hood. Long sleeves, side pockets, and asymmetric, raw-edge hem. No fasteners.', 1, 1, 2, NULL, NULL),
(2, 'Loose Fit T-shirt', 'shirt_2.jpg', 50, 200, 'Disney100 x H&M. In celebration of Disney\'s 100th anniversary, artist and former professional snowboarder Trevor Andrew has created this streetwear-inspired collection featuring new takes on some of the studio\'s most beloved characters. Loose-fit T-shirt in soft cotton jersey with a motif at front and back. Ribbed crew neck, dropped shoulders, and a straight-cut hem.', 1, 1, 2, NULL, NULL),
(3, 'Oversized Fit Cotton T-shirt', 'shirt_3.jpg', 40, 100, 'Oversized T-shirt in heavy cotton jersey with a round, rib-trimmed neckline, dropped shoulders and a straight-cut hem.', 1, 1, 2, NULL, NULL),
(4, 'Oversized Fit Printed Mesh T-shirt', 'shirt_4.jpg', 90, 125, 'Oversized t-shirt in mesh with a printed design. V-neck, dropped shoulders, and a straight-cut hem.', 1, 1, 2, NULL, NULL),
(5, 'Regular Fit Flannel Shirt', 'shirt_5.jpg', 200, 100, 'Regular-fit shirt in soft cotton flannel. Turn-down collar, buttons at front, and yoke at back. Open chest pocket, long sleeves, sleeve placket with link button, and button at cuffs. Gently rounded hem.', 1, 1, 2, NULL, NULL),
(6, 'Regular Fit Lyocell Overshirt', 'shirt_6.jpg', 10, 250, 'Regular-fit overshirt in lyocell twill. Collar, buttons at front, chest pockets with flap and button, and long sleeves with button at cuffs. Fabric made from lyocell is super soft, wrinkle resistant, and nicely draped.', 1, 1, 2, NULL, NULL),
(7, 'Regular Fit Oxford Shirt', 'shirt_7.jpg', 40, 200, 'Regular-fit shirt in oxford-weave cotton. Button-down collar, classic button placket, open chest pocket, and yoke at back. Long sleeves with sleeve placket, link button, and button at cuffs. Gently rounded hem.', 1, 1, 2, NULL, NULL),
(8, 'Regular Fit T-shirt', 'shirt_8.jpg', 68, 150, 'Regular-fit T-shirt in soft cotton jersey. Ribbed crew neck and a straight-cut hem.', 1, 1, 2, NULL, NULL),
(9, 'Relaxed Fit Cotton T-shirt', 'shirt_9.jpg', 200, 250, 'Relaxed-fit T-shirt in soft cotton jersey. Crew neck with fine ribbing, dropped shoulders, and a straight-cut hem.', 1, 1, 2, NULL, NULL),
(10, 'Relaxed Fit Printed T-shirt', 'shirt_10.jpg', 45, 190, 'Relaxed-fit T-shirt in soft cotton jersey with a printed motif. Ribbed crew neck, dropped shoulders, and straight-cut hem.', 1, 1, 2, NULL, NULL),
(11, 'Relaxed Fit Sweatshirt', 'shirt_11.jpg', 60, 320, 'Relaxed-fit sweatshirt in cotton-blend fabric with soft, brushed inside. Dropped shoulders and ribbing at neck, cuffs, and hem.', 1, 1, 2, NULL, NULL),
(12, 'Twill Overshirt', 'shirt_12.jpg', 50, 150, 'Overshirt in twill with a collar, buttons at front, and yoke at back. Chest pockets with flap and button. Long sleeves with buttons at cuffs.', 1, 1, 2, NULL, NULL),
(21, 'Regular Fit Twill shacket', 'jacket_1.jpg', 34, 98, 'Regular-fit shirt jacket in thick cotton twill. Collar, buttons at front, and long sleeves. Open chest pocket, open patch front pockets, and a straight-cut hem. Unlined.', 1, 1, 3, NULL, NULL),
(22, 'Imitation leather jacket', 'jacket_2.jpg', 135, 98, 'Jacket in soft faux leather with a collar and zipper at front. Two inner pockets, diagonal side pockets with concealed snap fastener, and button at cuffs. Lined.', 1, 1, 3, NULL, NULL),
(23, 'Bomber jacket', 'jacket_3.jpg', 55, 55, 'Loose-fit bomber jacket in sequined mesh. Low collar, zipper at front, and long sleeves. Ribbing at collar, cuffs, and hem. Lined.', 1, 1, 3, NULL, NULL),
(24, 'Regular Fit Lyocell overshirt', 'jacket_4.jpg', 52, 33, 'Regular-fit overshirt in lyocell twill. Collar, buttons at front, chest pockets with flap and button, and long sleeves with button at cuffs. Fabric made from lyocell is super soft, wrinkle resistant, and nicely draped.', 1, 1, 3, NULL, NULL),
(27, 'Martin Linen Jacket', 'jacket_7.jpg', 88, 67, 'A regular-fit jacket made from soft cotton and linen. It has a front zip closure with shell fabric piping details, roomy welt pockets, an inner breast pocket, and a shirt collar.', 1, 1, 3, NULL, NULL),
(28, 'Regular Fit Lyocell overshirt', 'jacket_8.jpg', 42, 44, 'Regular-fit overshirt in lyocell twill. Collar, buttons at front, chest pockets with flap and button, and long sleeves with button at cuffs. Fabric made from lyocell is super soft, wrinkle resistant, and nicely draped.', 1, 1, 3, NULL, NULL),
(29, 'Overdyed Twill Overshirt', 'jacket_9.jpg', 55, 49, 'In brushed left hand cotton twill, this overshirt is inspired by French workwear style. With a slightly boxy fit and a button-up front, this version has an overdyed appearance.', 1, 1, 3, NULL, NULL),
(30, 'Regular Fit Twill shacket', 'jacket_10.jpg', 77, 159, 'Regular-fit shirt jacket in thick cotton twill. Collar, buttons at front, and long sleeves. Open chest pocket, open patch front pockets, and a straight-cut hem. Unlined.', 1, 1, 3, NULL, NULL),
(32, 'Straight Regular Jeans', 'pant_2.jpg', 100, 98, '5-pocket jeans in cotton denim with a slight stretch for good comfort. Straight leg and a regular fit from the waist to the hem with a comfortable, looser feel around the whole leg. Regular waist and a zip fly. This is denim that lasts.', 1, 1, 1, NULL, NULL),
(33, 'Loose Jeans', 'pant_3.jpg', 100, 98, '5-pocket jeans in non-stretch cotton denim. Rounded legs and loose fit from seat to hem for extra room around legs. Regular waist, zip fly, and dropped gusset. Perfect for the full denim look.', 1, 1, 1, NULL, NULL),
(34, 'Cargo joggers', 'pant_4.jpg', 100, 98, 'Joggers in woven cotton fabric. Waistband with drawstring and covered elastic. Diagonal side pockets, back pockets with flap and concealed snap fasteners, and leg pockets with flap and concealed snap fasteners. Tapered legs with seams and darts at knees and covered elastic at hems.', 1, 1, 1, NULL, NULL),
(35, 'Regular Fit Linen-blend trousers', 'pant_5.jpg', 200, 199, 'Regular-fit pants in an airy, woven cotton and linen blend. Concealed drawstring and covered elastic at waistband, zip fly with button, discreet side pockets, and welt back pockets with button. Cotton and linen blends combine the softness of cotton with the sturdiness of linen, creating a beautiful, textured fabric that is breathable and perfectly draped.', 1, 1, 1, NULL, NULL),
(36, 'Slim Jeans', 'pant_6.jpg', 129, 129, 'Straight-leg, 5-pocket jeans in cotton denim with gentle stretch for added comfort. Slim fit from waist through thighs. Regular waist and zip fly. Easily styled for a sleek or sporty look.', 1, 1, 1, NULL, NULL),
(37, 'Baggy Jeans', 'pant_7.jpg', 180, 999, '5-pocket jeans in non-stretch cotton denim that feels firm at first, softening and relaxing with wear. Loose fit from waist to hip and baggy fit from thigh to hem. Regular waist and zip fly with button. Straight, longer legs, designed to fall over foot with a stacking effect. A denim statement that goes the distance.', 1, 1, 1, NULL, NULL),
(38, 'Straight Regular Jeans', 'pant_8.jpg', 160, 149, '5-pocket jeans in cotton denim with a slight stretch for good comfort. Straight leg and a regular fit from the waist to the hem with a comfortable, looser feel around the whole leg. Regular waist and a zip fly. This is denim that lasts.', 1, 1, 1, NULL, NULL),
(39, 'Slim Fit Cotton twill shorts', 'short_1.jpg', 35, 120, 'Slim-fit, 5-pocket shorts in thick cotton twill. Zip fly with button.', 1, 1, 4, NULL, NULL),
(40, 'Fast-drying sports shorts', 'short_2.jpg', 33, 400, 'Sports shorts in fast-drying, functional fabric to help keep you dry and cool while exercising. Covered elastic and concealed drawstring at waistband and side pockets. Liner shorts in soft mesh.', 1, 1, 4, NULL, NULL),
(41, 'Regular Fit Lyocell shorts', 'short_3.jpg', 55, 300, 'Regular-fit shorts in woven lyocell. Drawstring and covered elastic at waistband, mock fly, side-seam pockets, and a welt back pocket. Fabric made from lyocell is super soft, wrinkle resistant, and nicely draped.', 1, 1, 4, NULL, NULL),
(42, 'Regular Fit Knee-length cargo shorts', 'short_4.jpg', 51, 299, 'Regular-fit, knee-length cargo shorts in woven cotton fabric. Waistband with covered elastic, drawstring, and zip fly with snap fastener. Side pockets, back pockets with flap and hook-loop fastening, one leg pocket with zipper, and two leg pockets with flap and hook-loop fastening.', 1, 1, 4, NULL, NULL),
(43, 'Regular Fit Sweatshorts', 'short_5.jpg', 56, 277, 'Sweatshorts in a cotton blend. Elasticized waistband with drawstring, side pockets, and an open back pocket. Raw, rolled-edge hems.', 1, 1, 4, NULL, NULL),
(45, 'Regular Fit Cotton shorts', 'short_7.jpg', 57, 133, 'Regular-fit shorts in woven cotton fabric. Drawstring waistband with covered elastic and mock fly. Side pockets and a welt back pocket.', 1, 1, 4, NULL, NULL),
(46, 'Hybrid Regular Denim shorts', 'short_8.jpg', 75, 122, '5-pocket jogger shorts in cotton-blend stretch denim. Regular waist and waistband with concealed drawstring at front, covered elastic at back, and zip fly with button. Straight legs with good room for movement over thighs and knees. Made using Lycra® Hybrid Technology for exceptional softness and comfort without compromising the authentic denim look.', 1, 1, 4, NULL, NULL),
(62, 'Sweatshorts', '20230804034833.jpg', 41, 76, 'Lightweight sweatshorts made from a cotton blend. High waist, covered, elasticized waistband with drawstring, and side pockets.', 0, 1, 4, '2023-08-03 20:48:33', '2023-08-03 20:48:33'),
(63, 'High Denim Shorts', '20230804035201.jpg', 765, 99, '5-pocket shorts in denim with gentle stretch. High waist, zip fly with button, and raw-edge hems.', 0, 1, 4, '2023-08-03 20:52:01', '2023-08-03 20:52:01'),
(64, 'Mom Comfort Ultra High Denim Shorts', '20230804035257.jpg', 53, 75, '5-pocket shorts in thick cotton denim with heavily distressed details. Extra-high waist, supersoft waistband for comfortable fit, and zip fly with button. Raw-edge hems.', 0, 1, 4, '2023-08-03 20:52:57', '2023-08-03 20:52:57'),
(65, 'Linen Shorts', '20230804035502.jpg', 56, 150, 'Shorts in airy linen. High waist, waistband with ruffle trim at top and covered elastic, and diagonal side pockets.', 0, 1, 4, '2023-08-03 20:55:02', '2023-08-03 20:55:02'),
(66, 'High Waist Denim Shorts', '20230804035613.jpg', 76, 125, 'Slim-fit, 5-pocket shorts in cotton denim with gentle stretch. High waist, zip fly with button, and raw-edge hems.', 0, 1, 4, '2023-08-03 20:56:13', '2023-08-03 20:56:13'),
(67, 'Embroidered Sweatshorts', '20230804035703.jpg', 124, 99, 'Loose-fit, lightweight sweatshorts with an embroidered motif on one leg. High waist, drawstring and covered elastic at waistband, and diagonal side pockets. Raw-edge hems.', 0, 1, 4, '2023-08-03 20:57:03', '2023-08-03 20:57:03'),
(68, 'Curvy Fit Bermuda High Denim Shorts', '20230804035838.jpg', 51, 85, 'Curvy-fit, 5-pocket shorts in non-stretch cotton denim designed for less gaping at waist and more room through hip and thigh. High waist and button fly.', 0, 1, 4, '2023-08-03 20:58:38', '2023-08-03 20:58:38'),
(69, 'Paper-bag Sweatshorts', '20230804035940.jpg', 64, 99, 'Loose-fit, lightweight sweatshorts. High waist, ruffle-trimmed waistband with drawstring and covered elastic, and discreet side-seam pockets.', 0, 1, 4, '2023-08-03 20:59:40', '2023-08-03 20:59:40'),
(70, 'Twill Cargo Pants', '20230804040224.jpg', 64, 199, 'Loose-fit cargo pants in cotton twill. High waist, zip fly with button, and straight legs with a visible seam below knees. Diagonal front pockets, back pockets, and bellows leg pockets.', 0, 1, 1, '2023-08-03 21:02:24', '2023-08-03 21:02:24'),
(71, 'Wide-leg Twill Pants', '20230804040334.jpg', 65, 149, 'Pants in cotton twill. High waist, zip fly with button, and front and back pockets. Straight, wide legs.', 0, 1, 1, '2023-08-03 21:03:34', '2023-08-03 21:03:34'),
(72, 'Canvas Cargo Pants', '20230804040415.jpg', 45, 99, 'Relaxed-fit cargo pants in cotton canvas with straight legs. Low waist, covered elastic at sides and back of waistband, and zip fly with snap fastener. Diagonal side pockets, leg pockets with flap, and an additional pocket on one leg.', 0, 1, 1, '2023-08-03 21:04:15', '2023-08-03 21:04:15'),
(73, 'Parachute Pants', '20230804040517.jpg', 43, 135, 'Relaxed-fit pants in crisp woven fabric with a regular waist. Drawstring at waistband with cord stopper. Diagonal side pockets, mock back pockets with flap, and wide legs with pleats at sides of knees for added volume. Elastic drawstring at hems with cord stopper.', 0, 1, 1, '2023-08-03 21:05:17', '2023-08-03 21:05:17'),
(74, 'Twill Cargo Pants', '20230804040639.jpg', 23, 150, 'Loose-fit cargo pants in soft cotton twill. High waist, zip fly with button, and dropped gusset. Diagonal front pockets, back pockets, and leg pockets with flap. Extra-long, straight legs.', 0, 1, 1, '2023-08-03 21:06:39', '2023-08-03 21:06:39'),
(75, 'Open-backed Poplin Shirt', '20230804040851.jpg', 34, 189, 'Slightly longer shirt in crisp cotton poplin. Collar, buttons at front, yoke at back, and a partially open back with narrow ties. Dropped shoulders, long sleeves, sleeve placket with link button, and wide cuffs with button.', 0, 1, 2, '2023-08-03 21:08:51', '2023-08-03 21:08:51'),
(76, 'Lyocell-blend Shirt', '20230804040934.jpg', 523, 299, 'Loose-fit shirt in a woven lyocell blend. Pointed collar, buttons at front, and double-layered yoke at back with box pleat. Gently dropped shoulders and long sleeves with sleeve placket, link button, and button at cuffs. Gently rounded hem.', 0, 1, 2, '2023-08-03 21:09:34', '2023-08-03 21:09:34'),
(77, 'Oversized Blouse', '20230804041029.jpg', 23, 145, 'Oversized blouse in woven fabric with a slight sheen. Collar, buttons at front, and a double-layered yoke at back with box pleat. Gently dropped shoulders and long sleeves with button at cuffs. Gently rounded hem.', 0, 1, 2, '2023-08-03 21:10:29', '2023-08-03 21:10:29'),
(78, 'Ruffle-trimmed Cotton Blouse', '20230804041249.jpg', 32, 199, 'Loose-fit blouse in double-weave cotton fabric. Round, ruffle-trimmed neckline, V-shaped opening at front, and cap sleeves. Rounded hem.', 0, 1, 2, '2023-08-03 21:12:49', '2023-08-03 21:12:49'),
(79, 'Striped Cotton Shirt', '20230804041437.jpg', 54, 99, 'Loose-fit, striped shirt in woven cotton fabric. Collar, buttons at front, and yoke at back. Dropped shoulders, long sleeves with button at cuffs, and sleeve placket with link button. Rounded hem.', 0, 1, 2, '2023-08-03 21:14:37', '2023-08-03 21:14:37'),
(80, 'Ruffle-trimmed Cotton Blouse', '20230804041533.jpg', 53, 149, 'Short blouse in woven cotton fabric. Round neckline, keyhole opening at back of neck with a button, and scallop-edged ruffle trim with eyelet embroidery over shoulders extending to front and back. Gently flared peplum with eyelet embroidery and a scallop-edged hem.', 0, 1, 2, '2023-08-03 21:15:33', '2023-08-03 21:15:33'),
(81, 'Linen-blend Shirt', '20230804041612.jpg', 25, 125, 'Longer, loose-fit shirt in woven fabric made from a cotton and linen blend. Collar, buttons at front, and a patch chest pocket. Dropped shoulders, long sleeves with button at cuffs, and a rounded hem.', 0, 1, 2, '2023-08-03 21:16:12', '2023-08-03 21:16:12'),
(82, 'Crinkled Cotton Shirt', '20230804041654.jpg', 534, 99, 'Relaxed-fit shirt in woven, crinkled cotton fabric. Pointed collar, buttons at front, and yoke at back with box pleat. Open chest pocket, dropped shoulders, and long sleeves with button at cuffs. Rounded hem.', 0, 1, 2, '2023-08-03 21:16:54', '2023-08-03 21:16:54'),
(83, 'Oversized Shirt', '20230804041741.jpg', 436, 99, 'Oversized shirt in woven cotton fabric. Collar, buttons at front, and yoke at back with pleat. Dropped shoulders, long sleeves, and button at cuffs. Rounded hem, longer at back.', 0, 1, 2, '2023-08-03 21:17:41', '2023-08-03 21:17:41'),
(84, 'Cotton-blend Shirt', '20230804041850.jpg', 7, 79, 'Shirt in a woven cotton blend. Collar, buttons at front, and yoke at back. Long sleeves with buttons at cuffs. Rounded hem.', 0, 1, 2, '2023-08-03 21:18:50', '2023-08-03 21:18:50'),
(85, 'Oversized Satin Blouse', '20230804042021.jpg', 52, 199, 'Oversized blouse in softly draped viscose satin. Collar, buttons at front, and a double-layer yoke at back. Dropped shoulders and long sleeves with button at cuffs. Rounded hem, slightly longer at back.', 0, 1, 2, '2023-08-03 21:20:21', '2023-08-03 21:20:21'),
(86, 'Puff-sleeved Blouse', '20230804042141.jpg', 324, 159, 'Fitted crop blouse in crisp cotton poplin. Square neckline, wide smocking at back, and narrow elastic at shoulders. Short puff sleeves with eyelet embroidery and narrow elastic at cuffs.', 0, 1, 2, '2023-08-03 21:21:41', '2023-08-03 21:21:41'),
(87, 'Biker Jacket', '20230804043024.jpg', 31, 199, 'Loose-fit biker jacket. Notched lapels, diagonal zipper at front, and front-facing shoulder seams. Chest pocket with zipper, welt front pockets, and an adjustable belt at hem. Lined.', 0, 1, 3, '2023-08-03 21:30:24', '2023-08-03 21:30:24'),
(88, 'Nylon Parka', '20230804043116.jpg', 32, 99, 'Loose-fit parka in nylon. Stand-up collar, zipper at front with wind flap and concealed snap fasteners, and a drawstring at waist. Bellows chest pockets, welt front pockets, dropped shoulders, and covered elastic at cuffs. Lined.', 0, 1, 3, '2023-08-03 21:31:16', '2023-08-03 21:31:16'),
(89, 'Nylon Windbreaker', '20230804043152.jpg', 32, 159, 'Loose-fit, nylon windbreaker. Stand-up collar, zipper at front with wind flap and hook-loop fastening, and yoke at front and back. Diagonal welt front pockets, dropped shoulders, and long sleeves with covered elastic at cuffs. Elasticized drawstring at hem with cord stoppers. Unlined.', 0, 1, 3, '2023-08-03 21:31:52', '2023-08-03 21:31:52'),
(90, 'Cotton Twill Utility Jacket', '20230804043238.jpg', 32, 299, 'Loose-fit utility jacket in cotton twill. Collar, concealed snap fasteners at front, and yoke at back. Shoulder tabs, dropped shoulders, and tab at cuffs with snap fastener. Bellows chest pockets, bellows front pockets, and a drawstring at waist. Unlined.', 0, 1, 3, '2023-08-03 21:32:38', '2023-08-03 21:32:38'),
(91, 'Oversized Jacket', '20230804043335.jpg', 23, 179, 'Oversized jacket with a collar, concealed zipper at front, gently dropped shoulders, and snap fastener at cuffs. Welt chest pocket with concealed zipper and diagonal welt front pockets. Lined.', 0, 1, 3, '2023-08-03 21:33:35', '2023-08-03 21:33:35'),
(92, 'Cotton Twill Utility Jacket', '20230804043436.jpg', 32, 199, 'Loose-fit utility jacket in cotton twill. Collar, concealed snap fasteners at front, and yoke at back. Shoulder tabs, dropped shoulders, and tab at cuffs with snap fastener. Bellows chest pockets, bellows front pockets, and a drawstring at waist. Unlined.', 0, 1, 3, '2023-08-03 21:34:36', '2023-08-03 21:34:36'),
(94, 'ORIGINAL TALL TYPE T-SHIRT', '20230807065242.jpg', 34, 125, 'The Original Tall Type T-Shirt is made from a heavier weight cotton and has screen printed graphics on the front and back.', 1, 4, 2, '2023-08-06 22:18:28', '2023-08-06 23:52:42'),
(95, 'SAVIANO LONG SLEEVE SHIRT', '20230807065549.jpg', 234, 150, 'The Saviano Long Sleeve Shirt is a long sleeve button down top with a broken herringbone weave and features dual front button closure pockets on the chest.', 1, 4, 2, '2023-08-06 22:30:08', '2023-08-06 23:55:49'),
(96, 'WARPED CHECKERBOARD LOGO T-SHIRT', '20230807065718.jpg', 32, 175, 'The Warped Checkerboard Logo T-Shirt is made from a heavier weight cotton and has screen printed graphics on the front and back.', 1, 4, 2, '2023-08-06 22:33:09', '2023-08-06 23:57:19'),
(97, 'RACOON SIGN T-SHIRT', '20230807065815.jpg', 234, 225, 'The Racoon Sign T-Shirt is made from a heavier weight cotton and has screen printed graphics on the front and back.', 1, 4, 2, '2023-08-06 22:35:10', '2023-08-06 23:58:15'),
(100, 'CONCRETE FLORAL VINTAGE T-SHIRT', '20230807070349.jpg', 32, 150, 'The Concrete Floral Vintage T-Shirt is made from a heavier weight cotton and has screen printed graphics on the front and back.', 1, 4, 2, '2023-08-06 22:41:06', '2023-08-07 00:03:49'),
(101, 'DOOM VOLCANO T-SHIRT', '20230807070426.jpg', 21, 99, 'The Doom Volcano T-Shirt is made from a heavier weight cotton and has screen printed graphics on the front and back.', 1, 4, 2, '2023-08-06 22:42:42', '2023-08-07 00:04:26'),
(102, 'BUTLER LONG SLEEVE SHIRT', '20230807071143.jpg', 15, 250, 'The Butler Long Sleeve Shirt is a long sleeve woven top featuring a full buttondown closure, allover tonal warped checkerboard pattern,and topped off with two front pocket which will keep you looking good whether you\'re on-the-board or out on-the-town.', 1, 4, 2, '2023-08-06 22:44:28', '2023-08-07 00:11:43'),
(103, 'TURTLE RACER REPAIR LONG SLEEVE T-SHIRT', '20230807071312.jpg', 21, 120, 'The Turtle Racer Repair Long Sleeve T-Shirt is made from a heavier weight cotton and has screen printed graphics on the front and back.', 1, 4, 2, '2023-08-06 22:45:46', '2023-08-07 00:13:12'),
(104, 'STEVENS VARSITY JACKET', '20230807071751.jpg', 42, 150, 'The Stevens Varsity Jacket is a classic bomber jacket with added Off-The-Wall flair that only Vans can offer. Featuring a knit collar, faux leather sleeves, snap closure front, and stylish patches throughout.', 1, 4, 3, '2023-08-06 22:48:01', '2023-08-07 00:17:51'),
(105, 'HALECREST CARDIGAN', '20230807071901.jpg', 32, 155, 'The perfect way to stay warm on those cooler days. The Halecrest Cardigan sweater is a simple take on a classic piece. Featuring v-neck front, this button down cardigan sweater has dual front pockets, embroidered logo on left chest, and ribbed hem and contrast yarn dye stripe cuffs.', 1, 4, 3, '2023-08-06 22:49:14', '2023-08-07 00:19:01'),
(106, 'WHITNEY PLAID JACKET', '20230807072153.jpg', 21, 250, 'Inspired by classic workwear with an added contemporary twist, the Whitney Plaid Jacket has a yarn dyed plaid pattern, contrasting corduroy collar, front zip closure, dual front pockets, and is finished off with a patch logo.', 1, 4, 3, '2023-08-06 22:50:21', '2023-08-07 00:21:53'),
(107, 'COMFYCUSH PULLOVER HOODIE', '20230807072333.jpg', 51, 150, 'When we first envisioned the ComfyCush™ collection, we knew we wanted to create the softest, most comfortable clothing you have ever worn. The Comfycush Pullover Hoodie is a soft cotton fleece hooded pullover with a front pouch pocket and embroidered logo on left chest.', 1, 4, 3, '2023-08-06 22:51:35', '2023-08-07 00:23:33'),
(108, 'POOL HALL PULLOVER HOODIE', '20230807072437.jpg', 12, 255, 'The Pool Hall Pullover Hoodie is a cotton fleece hooded sweatshirt with a front pouch pocket and screen printed graphics on the chest.', 1, 4, 3, '2023-08-06 22:52:52', '2023-08-07 00:24:37'),
(109, 'KELLER STATION JACKET', '20230807072540.jpg', 23, 320, 'A nice way to keep warm while transitioning to the cooler weather. The Keller Station Jacket is a workwear inspired twill station jacket. Featuring a full zip front and dual front pockets, this jacket is built for daily use whether it\'s at school, work, or a skate session.', 1, 4, 3, '2023-08-06 22:54:46', '2023-08-07 00:25:41'),
(110, 'MIKEY FEBRUARY JACKET', '20230807072631.jpg', 12, 155, 'Surfing’s romance is not found solely in the act of riding a wave, but in experiencing the communities that surround it. Michael February’s journey of self-discovery in the water is a direct result of the inspiration he finds on land. Inspired by surfing’s connection to art, music, and culture, this timeless collection highlights the beauty you can find when you look beyond the break.', 1, 4, 3, '2023-08-06 22:56:01', '2023-08-07 00:26:31'),
(111, 'TORREY SKATE JACKET', '20230807072721.jpg', 213, 250, 'Reminiscent of retro sports jackets, the Torrey Skate Jacket is made with organic cotton canvas for a contemporary take on the old school workwear vibe. Along with a screen printed logo at left chest, this easy-wearing coaches jacket has a front button closure, slit pockets at the hips, and a drawstring at the hem for a customizable fit.', 1, 4, 3, '2023-08-06 22:57:21', '2023-08-07 00:27:21'),
(113, 'PRIMARY ELASTIC 17\'\' VOLLEY SHORTS', '20230807065042.jpg', 23, 125, 'The Primary Print Elastic Short is a cotton nylon blend classic boardshort with a relaxed fit. The elastic waist and drawcord provide comfort, while the side seam hand pockets offer plenty of everyday to-go-to portability. • 60% Cotton, 40% Nylon • Elastic waist with faux fly and drawcord • Front side seam hand pockets • Key loop on right rear waistband • Vans woven flag label on left side seam • Relaxed fit • 17\'\' outseam • Model wearing size Medium', 1, 4, 4, '2023-08-06 23:10:00', '2023-08-06 23:50:42'),
(114, 'PRIMARY ELASTIC 17\'\' VOLLEY SHORTS', '20230807064519.jpg', 32, 150, 'The Primary Print Elastic boardshort is a modern take on a classic surf short. Featuring an elastic waist with drawcord allows for all day comfort in and out of the water, side seam pockets, and a keyloop for security.', 1, 4, 4, '2023-08-06 23:16:40', '2023-08-06 23:45:19'),
(115, 'AUTHENTIC CHINO RELAXED 20\'\' SHORTS', '20230807063601.jpg', 15, 125, 'The Authentic Chino Relaxed Short is a 64% cotton, 34% polyester, and 2% LYCRA® relaxed short with a new, improved soft fabrication. Classic chino styling includes front hand pockets with a new coin pocket on the right, rear welt pockets with button closures, and multiple embroidered Drop V bartacks. The new “V” belt loop detail on the back waistband and checkerboard twill taping inside the fly give this chino short an iconic Vans look and feel. Model wearing size 32 or Medium.', 1, 4, 4, '2023-08-06 23:29:18', '2023-08-06 23:36:01'),
(116, 'VANS X BARBIE FLOW FITTED CROP TOP', '20230807072924.jpg', 12, 150, 'A global icon with over 250 careers and counting, Barbie™ breaks down boundaries, inspiring us all to live that dream life. Since 1959, her unwavering ambition and optimism keep her evergreen in our hearts, while her drive for representation and diversity leads us into a brighter future.', 0, 4, 2, '2023-08-07 00:29:24', '2023-08-07 00:29:24'),
(117, 'VANS X BARBIE SASS SCOOP CROP LONG SLEEVE TOP', '20230807073122.jpg', 23, 250, 'A global icon with over 250 careers and counting, Barbie™ breaks down boundaries, inspiring us all to live that dream life. Since 1959, her unwavering ambition and optimism keep her evergreen in our hearts, while her drive for representation and diversity leads us into a brighter future.', 0, 4, 2, '2023-08-07 00:31:22', '2023-08-07 00:31:22'),
(118, 'UNITY ROOT BOYFRIEND T-SHIRT', '20230807073521.jpg', 34, 135, 'Unity Root Boyfriend T-Shirt', 0, 4, 2, '2023-08-07 00:33:07', '2023-08-07 00:35:21'),
(119, 'VANS HOUSE LONG SLEEVE BOYFRIEND T-SHIRT', '20230807073640.jpg', 15, 200, 'The Vans House Long Sleeve Boyfriend T-Shirt is a heavy cotton jersey T-Shirt with long sleeves, a boyfrient fit, and graphics at the chest and sleeves.', 0, 4, 2, '2023-08-07 00:33:51', '2023-08-07 00:36:40'),
(120, 'LONNIE POCKET T-SHIRT', '20230807074229.jpg', 34, 175, 'The Lonnie Pocket T-Shirt is made from a heavier weight cotton, featuring a chest pocket and a yin-yang inspired graphic print on the back.', 0, 4, 2, '2023-08-07 00:42:29', '2023-08-07 00:42:29'),
(121, 'FLYING V OVERSIZED', '20230807074339.jpg', 34, 125, 'The Flying V Oversized T-Shirt is something that you can throw on and stay comfy in all day long. It features an oversized fit and embroidered logo on the chest, bringing some personality to a classic piece.', 0, 4, 2, '2023-08-07 00:43:39', '2023-08-07 00:43:39'),
(122, 'BOLTS OVERSIZED T-SHIRT', '20230807074450.jpg', 234, 250, 'Bolts Oversized T-Shirt', 0, 4, 2, '2023-08-07 00:44:50', '2023-08-07 00:44:50'),
(123, 'FLIP IT PULLOVER HOODIE', '20230807074628.jpg', 32, 175, 'The Vans Flip It Hoodie is a pullover hooded sweatshirt made with a cotton blend. It also features a front pouch pocket, paneled detailing, contrasting ribbed hems, and finished with emboridery on the front pocket.', 0, 4, 3, '2023-08-07 00:46:28', '2023-08-07 00:46:28'),
(124, 'SPELLMAN CREW SWEATSHIRT', '20230807074740.jpg', 324, 350, 'Perfect for those cooler Fall days, the Spellman Crew Sweatshirt is a pullover crewneck sweatshirt featuring a pigment wash for a worn-in look, kangaroo pocket, and an embroidered logo on the left chest.', 0, 4, 3, '2023-08-07 00:47:40', '2023-08-07 00:47:40'),
(125, 'MENDED CHECK DENIM PRINTED JACKET', '20230807074856.jpg', 25, 325, 'The Mended Check Denim Printed Jacket features front button closures, front and chest pockets, allover check pattern, and embroidered patch detailing. Giving this classic workwear inspired piece a stylish worn-in look.', 0, 4, 3, '2023-08-07 00:48:56', '2023-08-07 00:48:56'),
(126, 'DUSK DOWNER RELAXED CARDIGAN', '20230807075530.jpg', 15, 250, 'The Dusk Downer Relaxed Cardigan sweater is made to help you weather the cooler days. Featuring a button front, this classic inspired piece is finished off with contrasting checkered patterns on the arms and embroidered logos on the front and back.', 0, 4, 3, '2023-08-07 00:55:30', '2023-08-07 00:55:30'),
(127, 'TIME OFF CREW SWEATSHIRT', '20230807075907.jpg', 42, 155, 'Perfect for those cooler Fall days, the Time Off Crew Pullover is a pullover crewneck sweatshirt featuring a pigment wash for a worn-in look, front center pocket, and an embroidered logo on the left chest.', 0, 4, 3, '2023-08-07 00:58:12', '2023-08-07 00:59:07'),
(128, 'HARMONY SHACKET', '20230807080051.jpg', 34, 150, 'A relaxed shirt jacket to help you weather the transitional months, the Harmony Shacket is made with a comfortable corduroy construction and features a full front button closure, two front chest pockets with flap closures with Vans logo patch, and a crop cut to it, adding an Off-The-Wall twist to a timeless look.', 0, 4, 3, '2023-08-07 01:00:51', '2023-08-07 01:00:51'),
(129, 'GROUND WORK DENIM PANTS', '20230807080430.jpg', 34, 85, 'A workwear inspired everyday piece, the Ground Work Denim Pants is a high-rise worker pant with classic work pant detailing—hammer loop and side pocket— and a wide leg for comfort whether you\'re on-the-board or on-the-go.', 0, 4, 1, '2023-08-07 01:04:30', '2023-08-07 01:04:30'),
(130, 'MENDED CHECK DENIM RANGE LOOSE CROP PANTS', '20230807080623.jpg', 42, 150, 'Built around an easy pull-on elastic waist for all-day, everyday wear, the Mended Check Denim Range Loose Crop Pants has a long rise at the waist that stays baggy through the hip and thigh, ending in a tapered leg. This pant also features a checkered denim pattern and is finished with embroidery and patching details.', 0, 4, 1, '2023-08-07 01:06:23', '2023-08-07 01:06:23'),
(131, 'SIDEWALK PANTS', '20230807080724.jpg', 34, 235, 'Classic workwear styling gets a modern upgrade in the Sidewalk Pants. This canvas cargo pant offers a wider leg for all-day comfort, bellowed cargo pockets along with front slash pockets, and a hemmed cuff.', 0, 4, 1, '2023-08-07 01:07:24', '2023-08-07 01:07:24'),
(132, 'SIDEWALK PANTS', '20230807080842.jpg', 25, 150, 'Classic workwear styling gets a modern upgrade in the Sidewalk Pants. This canvas cargo pant offers a wider leg for all-day comfort, bellowed cargo pockets along with front slash pockets, and a hemmed cuff.', 0, 4, 1, '2023-08-07 01:08:42', '2023-08-07 01:08:42'),
(133, 'GROUND WORK PANT', '20230807081036.jpg', 25, 165, 'Classic workwear styling gets an upgrade in the Ground Work Pants. This high-rise, cotton canvas, straight-leg pant combines traditional carpenter-style pockets and novelty stitch details with a comfortable, relaxed fit and is finished off with a Vans woven logo patch at the back pocket.', 0, 4, 1, '2023-08-07 01:10:36', '2023-08-07 01:10:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `password`, `user_role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(22, 'ROLE ADMIN', 'admin@admin.com', 'roleadmin', '$2y$10$WJ0yYz5/zTmSJOMfVy/Ul.XaRzYFPwdJ7YUOUwF3XyCWgzDifE/72', 1, NULL, NULL, '2023-08-04 00:57:06', '2023-08-04 00:57:36'),
(23, 'ROLE USER', 'user@user.com', 'roleuser', '$2y$10$dETmW9E/B8b/FT.EbBkpmObLb.ivEZkZBgDaVYHMMXVL7ZPAkrspW', 0, NULL, NULL, '2023-08-04 00:57:27', '2023-08-04 00:57:27'),
(24, 'Phan Quốc Thái User', 'userThai@gmail.com', 'userthaiAdmin', '$2y$10$HEsE0Cc0AJTBE9.KV41kHeKprXwzop/nK3JznkoWaADhMdfNWRc4y', 1, NULL, NULL, '2023-08-07 09:43:13', '2023-08-07 23:20:19'),
(25, 'Aptech', 'aptech@gmail.com', 'userAptech', '$2y$10$uq8IwLfiTSg3TfpearP5XuudrXs3J5YEMxfvkLFPAPxO1JHMaL1aK', 0, NULL, NULL, '2023-08-07 23:14:02', '2023-08-07 23:14:02'),
(27, 'aptechuser', 'aptechuser@gmail.com', 'aptechuser', '$2y$10$g/nHmtNTDItiGhR2wv9Tue8/tLOq6LEP57CK3EZJH5pxWswlNwdYG', 1, NULL, NULL, '2023-08-10 00:17:08', '2023-08-10 00:20:25');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
