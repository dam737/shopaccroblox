-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 25, 2023 lúc 04:29 PM
-- Phiên bản máy phục vụ: 10.3.39-MariaDB-cll-lve
-- Phiên bản PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fcaythuebfcamera_nickngon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `acc_name` varchar(255) NOT NULL,
  `acc_pass` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `sold_at` datetime DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `seller_id`, `buyer_id`, `category_id`, `acc_name`, `acc_pass`, `price`, `image`, `content`, `description`, `status`, `created_at`, `updated_at`, `sold_at`, `checked_at`) VALUES
(6, 1, 13, 4, 'https://link68.net/EbaqNae', '', 123, '/storage/images/1694861028_vgqqGaSBpR.png', 'https://i.ibb.co/Fgms1KZ/Picsart-23-09-16-17-39-23-597.png', 'Acc Roblox Miá»…n PhÃ­ NÃ y CÃ³ Thá»ƒ TrÃºng Acc Khá»§ng TÃ¹y NgÆ°á»i Mua NhÃ©', 0, '2023-09-16 17:43:48', '2023-09-16 17:43:48', '2023-09-17 12:06:22', NULL),
(7, 1, NULL, 4, 'https://link68.net/GCgLA', '', 111, '/storage/images/1694861204_tm9zMJbfgq.png', 'https://i.ibb.co/Fgms1KZ/Picsart-23-09-16-17-39-23-597.png', 'Acc Roblox Miá»…n PhÃ­ NÃ y CÃ³ Thá»ƒ TrÃºng Acc Khá»§ng TÃ¹y NgÆ°á»i Mua NhÃ©', 1, '2023-09-16 17:46:44', '2023-09-16 17:46:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `type`, `name`, `description`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(4, 'game', 'Accounts Roblox Miá»…n PhÃ­', '&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;â€¢ LÆ°u Ã: Accounts Roblox Miá»…n PhÃ­&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- ChÃºng tÃ´i Ä‘á»ƒ giÃ¡ khoáº£ng 100Ä‘ Ä‘áº¿n 500Ä‘ Ä‘á»ƒ trÃ¡nh tÃ¬nh tráº¡ng spam accounts trÃªn web chÃºng tÃ´i.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- Ai Cáº§n Nháº­n 1 Accounts NÃ o Báº¥t Ká»³ HÃ£y LiÃªn Há»‡ Admin Äá»ƒ ÄÆ°á»£c Cá»™ng Tiá»n Tá»« 100Ä‘ Äáº¿n 1.000Ä‘&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- Admin:&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://zalo.me/0345251737&quot; target=&quot;_blank&quot;&gt;&lt;b&gt;Há»— Trá»£&lt;/b&gt;&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- Ai Náº¡p Mua Accounts Táº¡i ÄÃ¢y, Cáº§n CÃ¢n Nháº¯c VÃ¬ ÄÃ¢y Accounts Roblox Ngáº«u NhiÃªn CÃ³ Thá»ƒ Sai TÃ i Khoáº£n Hoáº·c Máº­t Kháº©u Roblox NhÃ©.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- ChÃºng TÃ´i Xin CÃ¢n Nháº¯c Láº¡i, Äá»ƒ Viá»‡c Tá»“n Táº¡i Duy TrÃ¬ Táº·ng Accounts Miá»…n PhÃ­ TrÃªn ThÃ¬ ChÃºng TÃ´i Má»—i NgÃ y Gáº¯n Link VÆ°á»£t Chá»‰ 3 Link Ngáº«u NhiÃªn Äá»‘i Vá»›i Accounts Miá»…n PhÃ­ TrÃ¡nh Mua Vá» Sá»­ Dá»¥ng MÃ  ChÃºng TÃ´i Háº¿t PhÃ­ Duy TrÃ¬ Shop Sáº½ Máº¥t Quyá»n Lá»£i Anh Em KhÃ´ng Muá»‘n Sá»­ Dá»¥ng Tiá»n ChÃ­nh Báº£n ThÃ¢n Bá» Ra.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- Æ¯u TiÃªn Cá»§a ChÃºng TÃ´i LÃ  QuÃ½ KhÃ¡ch NhÆ°ng Chá»‰ Cáº§n KhÃ¡ch KhÃ´ng Hiá»ƒu Biáº¿t Cá»© Nghe Dá»¥ Dá»— Cá»§a NgÆ°á»i KhÃ¡c Äang Khi ChÆ°a Biáº¿t Nguá»“n Gá»‘c ChÃ­nh Báº¡n ÄÃ£ Tháº¥y.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- Má»—i NgÃ y HÃ ng Loáº¡t Nick Táº¡i Shop ÄÆ°á»£c Cáº­p Nháº­p Ráº¥t Nhiá»u NÃªn QuÃ½ KhÃ¡ch HÃ£y Nhanh Tay NhÃ©.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- Accounts Roblox CÅ©ng Chá»‰ Ra Con Game NhÆ°ng ChÃºng TÃ´i CÅ©ng Muá»‘n CÃ¡c Báº¡n Má»›i Máº¥t Acc Hay Má»›i Biáº¿t Tá»›i Game NÃ y CÅ©ng Sáº½ CÃ³ Acc ChÆ¡i.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;- Video HÆ°á»›ng Dáº«n VÆ°á»£t Link Máº«u:&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://youtu.be/liAKmK9IrPU?si=KBlSaR7sVXikeMII&quot; target=&quot;_blank&quot;&gt;Link68&lt;/a&gt;&lt;/p&gt;', '/storage/images/1694860647_TJo9hmlZJc.gif', 'accounts-roblox-mien-phi', 1, '2023-09-16 17:37:27', '2023-09-16 17:37:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `charges`
--

CREATE TABLE `charges` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `telco` tinytext NOT NULL,
  `amount` int(11) DEFAULT 0,
  `amount_declared` int(11) NOT NULL,
  `serial` tinytext NOT NULL,
  `pin` tinytext NOT NULL,
  `request_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `charges`
--

INSERT INTO `charges` (`id`, `user_id`, `provider`, `telco`, `amount`, `amount_declared`, `serial`, `pin`, `request_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'CARDVIP', 'viettel', 0, 20000, '20936367191836', '535628181993661', 165270056, 3, '2023-09-05 13:29:08', '2023-09-05 13:29:19'),
(3, 14, 'CARDVIP', 'viettel', 0, 10000, '10001262694358', '715942926911473', 627789435, 3, '2023-09-18 12:31:14', '2023-09-18 12:31:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'title', 'Äáº¡i LÃ½ BÃ¡n Account Game Roblox - LiÃªn QuÃ¢n - Free Fire GiÃ¡ Ráº»'),
(2, 'keywords', 'mua acc game 0Ä‘, mua acc free fire,mua nick free fire, ff shop giÃ¡ ráº», shop bÃ¡n acc giÃ¡ ráº»,shop bÃ¡n acc liÃªn quÃ¢n, shop roblox 20k, acc game chá»‰ 20k'),
(3, 'description', 'Äáº¡i LÃ½ BÃ¡n Accounts Game Chá»‰ Tá»« 500Ä DÃ nh Ramdom Accounts Game Ngáº«u NhiÃªn CÆ¡ Há»™i Nháº­n Accounts Cá»±c Vip'),
(4, 'noticeModal', '&lt;p&gt;shop acc ráº»&lt;/p&gt;'),
(5, 'banners', 'https://cdn.upanh.info/storage/upload/images/Banner%20shop/BANNER-SHOPBQTHANH-01.gif'),
(6, 'logo', 'https://i.imgur.com/NJHUp0g.jpg'),
(7, 'facebook_app_id', ''),
(8, 'facebook_app_secret', ''),
(9, 'dark_mode', '0'),
(10, 'charge_provider', 'CARDVIP'),
(11, 'charge_partner_id', 'dd81067b96439a77c35b19e848bac88b'),
(12, 'charge_api_key', '22226068570'),
(13, 'color', '#ffff0'),
(14, 'icon', 'https://doithe1s.vn/storage/userfiles/files/sieudoithe3%20(3)(1).png'),
(15, 'sdtzalo', '#'),
(16, 'sodienthoai', '0392991811'),
(17, 'zalo_group', '#'),
(18, 'theme_color', '#ffff0'),
(19, 'footer_content', '&lt;p&gt;NickNgon.Pro Äáº¡i LÃ½ BÃ¡n Accounts 24/7 Tá»± Äá»™ng&lt;/p&gt;'),
(20, 'facebook_fanpage_id', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trade_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `trade_type`, `amount`, `balance`, `description`, `status`, `created_at`, `updated_at`) VALUES
(9, 13, 5, 200000, 200000, 'ÄÆ°á»£c quáº£n trá»‹ viÃªn cá»™ng 200,000Ä‘', 1, '2023-09-17 12:06:08', '2023-09-17 12:06:08'),
(10, 13, 8, 123, 199877, 'Mua tÃ i khoáº£n game #6', 1, '2023-09-17 12:06:22', '2023-09-17 12:06:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `role` varchar(45) NOT NULL DEFAULT 'user',
  `lock` tinyint(4) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `facebook_id`, `balance`, `role`, `lock`, `created_at`, `updated_at`) VALUES
(1, NULL, 'adminnickngon', '$2y$10$.Py5oYCclgrJRRmp5xSjZ.g8zKb85g0HzqM4clU2fTpqZe1gKe4.K', 'nroclub365@gmail.com', '0358566464', NULL, 500000, 'admin', 1, '2023-09-05 12:52:23', '2023-09-05 12:52:23'),
(2, NULL, 'Thanhevolution', '$2y$10$vhI0HJvbtmjUDLMNwshMMOND2rewcf.BETLmPUjUHwX4cl73nQyTW', 'vdbdjxjsjdkzjgsxjxjnxthjhsjs@gmail.com', '0907767546', NULL, 0, 'user', 1, '2023-09-05 13:31:58', '2023-09-05 13:31:58'),
(3, NULL, 'Kiet999vn', '$2y$10$UyObfCGvpZZScMMRiT6KTuJ3p3RlJnTDXehuzer6nEQoAAcZndVDK', 'thilanh.vn.1992@icloud.com', '0766609384', NULL, 0, 'user', 1, '2023-09-05 16:53:08', '2023-09-05 16:53:08'),
(4, NULL, 'tungdauanh', '$2y$10$b8HfEewJ/JFVw5PQ27dyC.OtJ.zDfNFlo/hdrKZAWDaty0S/RmXFS', 'nguyensonquan98@gmail.com', '0326504228', NULL, 0, 'user', 1, '2023-09-06 20:15:04', '2023-09-06 20:15:04'),
(5, NULL, 'kunkhanh', '$2y$10$Y0XgWqx13YTeYbB6mCKPHuIfOt8wsaNufhIrrdX.XKFEiKe5.1cHO', 'khanhinfo.idol@gmail.com', '0123456789', NULL, 0, 'user', 1, '2023-09-09 14:00:39', '2023-09-09 14:00:39'),
(6, NULL, 'adminnickngon2', '$2y$10$4883r6vKEP.Zk5tMljT7ZuRcyvVITpbcJkSGyhl35cOOWWRM/sf3K', 'udjsi@gmail.com', '0585664641', NULL, 0, 'user', 1, '2023-09-09 18:50:28', '2023-09-09 18:50:28'),
(7, NULL, 'khang09', '$2y$10$MeEVgTweC1OGIWWsKkE4kOcFxBE0tdrzGOKxzh.f6GisFrYGe0VcW', 'pdxszfbubzgpwsv@pretreer.com', '0464884616', NULL, 0, 'user', 1, '2023-09-09 19:31:38', '2023-09-09 19:31:38'),
(8, NULL, 'Accbloxfruithv1', '$2y$10$yuv4i1bnPwh0TiSA9ngj8OAlhJwZRYNShX8XIhO2tcYLwSO7RbpMK', 'tl8322981@gmail.com', '0879181804', NULL, 0, 'user', 1, '2023-09-16 18:06:19', '2023-09-16 18:06:19'),
(9, NULL, 'choeee', '$2y$10$K6xpw276vjUAHECaSONm2eeRPU.D0XA7rJ1rx/vfg6/tNkZa5tkMW', 'ly0751487@gmail.com', '0971849887', NULL, 0, 'user', 1, '2023-09-16 18:41:54', '2023-09-16 18:41:54'),
(10, NULL, 'caodinhtien', '$2y$10$5dKFR2EU37a52WNdMcMlF.FJjiV1fUdYfrRyCNydemz8z/H3M1yz6', 'bdbdb@gmail.com', '0369632151', NULL, 0, 'user', 1, '2023-09-16 18:50:41', '2023-09-16 18:50:41'),
(11, NULL, 'vc22-0368', '$2y$10$JZ4.ReKFOjBf8kRG4Gmm8ev0IlnrzR6iuybeFQ4nOnOW2OslR6tBK', 'taothickmaylamyena@gmail.com', '0914943241', NULL, 0, 'user', 1, '2023-09-16 20:22:30', '2023-09-16 20:22:30'),
(12, NULL, 'Hihadepzaiii', '$2y$10$Zmy1hziuAT5z5/DzCoNr7OipEv9BnFwqHd4fq8tjdHqJwDebu1e.e', 'nguyenngocvuvu31@gmail.com', '0969180160', NULL, 0, 'user', 1, '2023-09-17 06:32:19', '2023-09-17 06:32:19'),
(13, NULL, 'caodinhtien1', '$2y$10$A6W9628KfCvXiVHx/.0/MeZopkC1Db86.Q7j8eN9J21uOI1EtIqp6', 'caodinhtien1@gmail.com', '0337586573', NULL, 0, 'user', 1, '2023-09-17 11:49:50', '2023-09-17 11:49:50'),
(14, NULL, 'accvjp.73', '$2y$10$MCG4iMiGHIcEr6CtC2eXKe89SK.agAa5dFOo2FfFv8Bvr/Jb/gM/a', 'lkhoa9831@gmail.com', '0816249797', NULL, 0, 'user', 1, '2023-09-18 12:27:58', '2023-09-18 12:27:58'),
(15, NULL, 'dominhvu4a5@gmail.com', '$2y$10$69eXVVwitI6yC2NFihb7tey0NzTkO9pYtY2RpKB1JSuIH5dHveoh6', 'dominhvu4a5@gmail.com', '0389531934', NULL, 0, 'user', 1, '2023-09-18 13:31:26', '2023-09-18 13:31:26'),
(16, NULL, 'Khangvn666', '$2y$10$SXmkP7ZQIKdIUAYUuLaoyuYCHYzHwcxNZiuvZ6UYdBLHFRfjnv/7q', 'vukhangnguyen38@gmail.com', '0818899042', NULL, 0, 'user', 1, '2023-09-19 14:49:07', '2023-09-19 14:49:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charges_users_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_UNIQUE` (`key`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_users_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_users_id_fk` (`user_id`),
  ADD KEY `transfers_users_id_fk_2` (`recipient_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `phone_UNIQUE` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `charges`
--
ALTER TABLE `charges`
  ADD CONSTRAINT `charges_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfers_users_id_fk_2` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
