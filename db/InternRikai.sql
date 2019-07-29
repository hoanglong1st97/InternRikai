-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 29, 2019 lúc 05:02 AM
-- Phiên bản máy phục vụ: 10.3.15-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `InternRikai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `active_admin_comments`
--

CREATE TABLE `active_admin_comments` (
  `id` bigint(20) NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`) VALUES
(1, 'ronnguyen1205@gmail.com', '$2a$11$03fJgF.1vuibFcLhX4bib.5ECsVHGTz9dQVzHvShVJizu0GAaPA.G', NULL, NULL, NULL, '2019-07-22 12:27:24', '2019-07-22 12:27:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2019-07-22 09:58:51', '2019-07-22 09:58:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ckeditor_assets`
--

CREATE TABLE `ckeditor_assets` (
  `id` bigint(20) NOT NULL,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'C#', 'C# is a language for professional programming. C# (pronounced C sharp) is a programming language designed for building a wide range of enterprise applications that run on the .NET Framework. The goal of C# is to provide a simple, safe, modern, object-oriented, highperformance , robust and durable language for .NET development. Also it enables developers to build solutions for the broadest range of clients, including Web applications, Microsoft Windows Forms-based applications, and thin- and smart-client devices.', '2019-07-22 12:47:05', '2019-07-23 09:10:26'),
(2, 'Java', '', '2019-07-22 12:47:15', '2019-07-22 12:47:15'),
(3, 'Ruby on rails', '', '2019-07-22 12:47:23', '2019-07-22 12:47:23'),
(4, 'Android', '', '2019-07-22 12:47:29', '2019-07-22 12:47:29'),
(5, 'Vue', '', '2019-07-22 12:47:36', '2019-07-22 12:47:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) NOT NULL,
  `chapter` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `course_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lessons`
--

INSERT INTO `lessons` (`id`, `chapter`, `content`, `created_at`, `updated_at`, `course_id`) VALUES
(1, 'Chapter 1: Tìm hiểu tổng quan', 'C# là một ngôn ngữ lập trình hướng đối tượng được phát triển bởi Microsoft, là phần khởi đầu cho kế hoạch .NET của họ. Tên của ngôn ngữ bao gồm ký tự thăng theo Microsoft nhưng theo ECMA là C#, chỉ bao gồm dấu số thường. Microsoft phát triển C# dựa trên C++ và Java.', '2019-07-22 13:08:13', '2019-07-25 03:34:55', 1),
(2, 'Chapter 1: Cài đặt môi trường lập trình Java', 'B!...', '2019-07-23 08:03:59', '2019-07-23 08:03:59', 2),
(3, 'Chương 2: Lập trình c#', 'C# là một ngôn ngữ lập trình hướng đối tượng được phát triển bởi Microsoft, là phần khởi đầu cho kế hoạch .NET của họ. Tên của ngôn ngữ bao gồm ký tự thăng theo Microsoft nhưng theo ECMA là C#, chỉ bao gồm dấu số thường. Microsoft phát triển C# dựa trên C++ và Java.', '2019-07-23 08:51:34', '2019-07-25 03:35:16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `reports`
--

INSERT INTO `reports` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Báo cáo thực tập', 'Long Nguyễn - 22/07/2019', 1, '2019-07-22 12:22:45', '2019-07-22 12:22:45'),
(3, 'Test report', 'Em chào các anh, chị và các bạn\r\nEm xin báo cáo thực tập ngày 22/07/2019.\r\nThời gian làm việc:\r\n12:00 Nghỉ trưa\r\n13:00 – 17:00  Sữa lỗi đăng nhập, đăng xuất, đưa các bài học lên trang chủ.\r\n17:30 Viết báo cáo\r\nEm xin kết thúc phần báo cáo. Chúc mọi người buổi tối vui vẻ.', 2, '2019-07-23 01:58:19', '2019-07-23 01:58:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20190722102017'),
('20190722102209'),
('20190722102319'),
('20190722120748'),
('20190722122438'),
('20190722122440'),
('20190722123354'),
('20190722123442'),
('20190722123522'),
('20190725042223');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`, `updated_at`, `password_digest`) VALUES
(1, 'Long Nguyễn', 'ronnguyen1205@gmail.com', '2019-07-22 11:46:38', '2019-07-22 11:46:38', '$2a$12$34s3XHWvGhMZIGfuxpyf5Ob6tePknGGnuYWXO2m7GFRQj553UZdfS'),
(2, 'Hiếu Trần', 'hieutran@gmail.com', '2019-07-23 01:45:37', '2019-07-23 01:45:37', '$2a$12$vJaDKegFnXJUVBGLJjqJ4uvLPyKX5rBdJ2nEVpZf227qXA9A2ys9W'),
(3, 'Kha Nguyễn', 'khanguyen@gmail.com', '2019-07-23 03:13:09', '2019-07-23 03:13:09', '$2a$12$.TwoQ1kqP4fg78V8KsAiOO6.dpYjHRtHozLMEwJnHz./yjFDrY3Mm');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  ADD KEY `index_active_admin_comments_on_namespace` (`namespace`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_admin_users_on_email` (`email`),
  ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Chỉ mục cho bảng `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `ckeditor_assets`
--
ALTER TABLE `ckeditor_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_ckeditor_assets_on_type` (`type`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_lessons_on_course_id` (`course_id`);

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_reports_on_user_id` (`user_id`),
  ADD KEY `index_reports_on_user_id_and_created_at` (`user_id`,`created_at`);

--
-- Chỉ mục cho bảng `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ckeditor_assets`
--
ALTER TABLE `ckeditor_assets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `fk_rails_4bcdb571d9` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Các ràng buộc cho bảng `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `fk_rails_c7699d537d` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
