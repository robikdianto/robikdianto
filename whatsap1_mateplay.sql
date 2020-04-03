-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 01 Apr 2020 pada 17.23
-- Versi server: 10.1.44-MariaDB-cll-lve
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whatsap1_mateplay`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_table`
--

CREATE TABLE `category_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `category_table`
--

INSERT INTO `category_table` (`id`, `media_id`, `title`, `position`) VALUES
(1, 1, 'Love', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_table`
--

CREATE TABLE `comment_table` (
  `id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `comment_table`
--

INSERT INTO `comment_table` (`id`, `status_id`, `user_id`, `content`, `created`, `enabled`) VALUES
(1, 11, 2, 'dGVzdA==\n', '2020-03-27 00:24:04', 1),
(2, 11, 2, 'dGVzdA==\n', '2020-03-27 00:24:16', 1),
(3, 11, 2, 'dGVzdA==\n', '2020-03-27 00:24:25', 1),
(4, 4, 3, 'YmFndXMgc2VrYWxp\n', '2020-03-28 18:24:04', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `device_table`
--

CREATE TABLE `device_table` (
  `id` int(11) NOT NULL,
  `token` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fos_user_table`
--

CREATE TABLE `fos_user_table` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` longtext COLLATE utf8_unicode_ci,
  `image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trusted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `fos_user_table`
--

INSERT INTO `fos_user_table` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `name`, `facebook`, `instagram`, `twitter`, `emailo`, `type`, `token`, `image`, `code`, `trusted`) VALUES
(1, 'ADMIN', 'admin', 'ADMIN', 'admin', 1, 'djtfgbufxr4gwk4k0gss4sgs4k48wc4', '$2y$13$djtfgbufxr4gwk4k0gss4ekodAwfJ3IP01OyKvMD.stoxgr6MMa2S', '2020-03-29 01:09:40', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 0, NULL, 'Admin', NULL, NULL, NULL, NULL, 'email', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq06v_YeFtM-5YtnSiHIP1vqUsYva3WqKPmXNzb_tpCzwk6E6W', '', 0),
(2, '+62085764885519', '+62085764885519', '+62085764885519', '+62085764885519', 1, 'b7a3fknfreo0w4kwkkg44o8o8css0kc', '$2y$13$b7a3fknfreo0w4kwkkg44efJrfCgoq95wYn7WudY7Luxh8AoHNkpW', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Arjuna', 'https://facebook.com', '', '', '', 'phone', 'd8pdy8-NQSm20KOpypjBpH:APA91bHyRoKKYqVB-1d_fG_zxLBFmET3tcSOZDESmGlURaUffEf35cXyPKy8nWP4r6RA6m3Dgyr8h3O6gSlqZh550N51x2AEWfs3ki8lYUJ93izO_eV7NQDMx0il5PRm53K95JzDC9Vx', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'c82310cc', 1),
(3, '+62081279957102', '+62081279957102', '+62081279957102', '+62081279957102', 1, 'dxyk5zygk944osskgos8os48cw4os8k', '$2y$13$dxyk5zygk944osskgos8oeuiqEXxsB65r9i/GGevR0Y.uPl0cbfEe', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Andra', '', '', '', '', 'phone', 'd25LxnY2RfS3K-CfL0l5ND:APA91bFzNlX-Ewsg33_5aith4KL7HLx9czubCcrVqK6R8r7EHEyFJmv0ax08OREinRALKBHv-jK4ZSp62AirTgv2iIvkK92lVZS9LClv2CJZOcrtOnwvGDDdiQdtmcJ2gEmQVUAE-19n', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', '26c9e3ce', 0),
(4, '+6281279957102', '+6281279957102', '+6281279957102', '+6281279957102', 1, 't5dapuz89z40w4c0ckgggsgs48csogo', '$2y$13$t5dapuz89z40w4c0ckgggeXi2JYNLWvcCYHznLuQjfLETkIJoQJf.', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Andra', NULL, NULL, NULL, NULL, 'phone', 'd25LxnY2RfS3K-CfL0l5ND:APA91bFzNlX-Ewsg33_5aith4KL7HLx9czubCcrVqK6R8r7EHEyFJmv0ax08OREinRALKBHv-jK4ZSp62AirTgv2iIvkK92lVZS9LClv2CJZOcrtOnwvGDDdiQdtmcJ2gEmQVUAE-19n', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'e9564ca8', 0),
(5, '+6285764885519', '+6285764885519', '+6285764885519', '+6285764885519', 1, '4f36gfiebl44ckg8c08wck4kss4s0wk', '$2y$13$4f36gfiebl44ckg8c08wceP5tM3XRTmmjp2ZemwyiLMxOO/FItKsG', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Fatah', NULL, NULL, NULL, NULL, 'phone', 'e_yLShPISUOXo8uXcWGd_F:APA91bHUVkQI7KUoHwIFYDAM8_QU7kbrAxAm0mp0TCJLz8VD7C4fvj49Zu-NDKc_D7JNq_3tNGxhr2JvuktxPFihF-K4PXyYYF7NlVV_VxyrgBNB6FRk-ndpT5NOkM-AqOo6Ft3frqH1', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', '8efb4bbc', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery_table`
--

CREATE TABLE `gallery_table` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `language_table`
--

CREATE TABLE `language_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `language_table`
--

INSERT INTO `language_table` (`id`, `media_id`, `language`, `position`, `enabled`) VALUES
(1, 2, 'English', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `medias_gallerys_table`
--

CREATE TABLE `medias_gallerys_table` (
  `gallery_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `media_table`
--

CREATE TABLE `media_table` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `media_table`
--

INSERT INTO `media_table` (`id`, `titre`, `url`, `type`, `extension`, `date`, `enabled`) VALUES
(1, 'romance-1934204_1280.jpg', '5106dc7ff38e43d14014aea67081b2b7.jpeg', 'image/jpeg', 'jpeg', '2020-03-20 11:37:25', 1),
(2, 'usa.png', '467d5e87040fc258db5a60be9cf9994f.png', 'image/png', 'png', '2020-03-20 11:40:41', 1),
(4, 'Sad Whatsapp Status Video', 'https://res.cloudinary.com/dyjyzwsye/video/upload/v1584704733/sad-whatsapp-status-video-rula-ke-gaya-ishq-tera_zm1byr.mp4', 'video/mp4', 'mp4', '2020-03-20 11:46:41', 0),
(5, 'preview.jpg', '5f5ef9b2cf83310acf3c23c308011586.jpeg', 'image/jpeg', 'jpeg', '2020-03-20 11:47:15', 1),
(6, 'preview.jpg', '08f7354b98e84319eff4527ad23942bd.jpeg', 'image/jpeg', 'jpeg', '2020-03-20 11:48:26', 1),
(10, 'team-386673_640.jpg', 'b8110dfd5b630517aeacaed1f5ff8ad2.jpeg', 'image/jpeg', 'jpeg', '2020-03-20 13:04:02', 1),
(14, 'Best love dialog video for Whatsapp Status', 'https://res.cloudinary.com/dyjyzwsye/video/upload/vc_h264/v1584704868/best-love-dialog-video-for-whatsapp-status_jr0dv5.mp4', 'video/mp4', 'mp4', '2020-03-21 03:00:51', 0),
(15, 'Senorita', 'https://videostatus.s3-ap-southeast-1.amazonaws.com/sad-whatsapp-status-video-rula-ke-gaya-ishq-tera.mp4', 'video/mp4', 'mp4', '2020-03-24 09:20:11', 0),
(16, 'preview.jpg', 'c6f2e1246030fca8c296c0d81a570c32.jpeg', 'image/jpeg', 'jpeg', '2020-03-24 10:05:59', 1),
(17, 'sfdfsdf', 'https://videostatus.s3-ap-southeast-1.amazonaws.com/Sajan+Sajan+Teri+Dulhan+Sajaungi+Status+Video+%5BVideoSongStatus.Com%5D+(1).mp4', 'video/mp4', 'mp4', '2020-03-24 10:05:59', 0),
(18, 'preview.jpg', '15b440ba3f58e9dea474ca187ff08ae6.jpeg', 'image/jpeg', 'jpeg', '2020-03-24 10:07:15', 1),
(19, 'fdsgshshsh', 'https://videostatus.s3-ap-southeast-1.amazonaws.com/Sajan+Sajan+Teri+Dulhan+Sajaungi+Status+Video+%5BVideoSongStatus.Com%5D+(1).mp4', 'video/mp4', 'mp4', '2020-03-24 10:07:15', 0),
(20, 'romance-1934204_1280.jpg', 'c60d92ddf41b62f2d6d46c6e58c9db4a.jpeg', 'image/jpeg', 'jpeg', '2020-03-25 03:24:27', 1),
(21, 'Sudah Nyaman', 'https://videodelivery.net/f4c9215b09600526824c0a01da9e52e7/video/360/stream_2-seg_1.mp4', 'video/mp4', 'mp4', '2020-03-25 03:24:27', 0),
(22, '713a1bbc4cf94ddf9d7cc9c7acc51b53.mp4', 'b2b2eba5f161b371c7fe3910e27ae01c.mp4', 'video/mp4', 'mp4', '2020-03-26 08:19:58', 1),
(23, '713a1bbc4cf94ddf9d7cc9c7acc51b53.mp4', '0318bfd843dfdbf48fe46838cbdbbb0f.jpeg', 'image/jpeg', 'jpeg', '2020-03-26 08:19:58', 1),
(24, '1866575120.mp4', 'fb4ae780743a139916e62e1d673121d9.mp4', 'video/mp4', 'mp4', '2020-03-26 08:24:21', 1),
(25, '1866575120.mp4', '8ea01005607b0386d8ceb7dfe28105bc.jpeg', 'image/jpeg', 'jpeg', '2020-03-26 08:24:21', 1),
(26, 'Siapa tau bahagia beneran_2106.mp4', '3232aaeb97f77b7fc4c3e33402ab2820.mp4', 'video/mp4', 'mp4', '2020-03-26 08:26:04', 1),
(27, 'Siapa tau bahagia beneran_2106.mp4', '130b58d84463c32e4f056e8d392792bf.jpeg', 'image/jpeg', 'jpeg', '2020-03-26 08:26:04', 1),
(28, '524416801.mp4', 'e0afd7b2af0f54272d87e70eb738dc5b.mp4', 'video/mp4', 'mp4', '2020-03-26 16:20:45', 1),
(29, '524416801.mp4', '34696879e47c0b5a6c4e2dc0209a1de2.jpeg', 'image/jpeg', 'jpeg', '2020-03-26 16:20:45', 1),
(30, '608267473.mp4', '4f9706a3f1d1332eed67aa90cea11eb4.mp4', 'video/mp4', 'mp4', '2020-03-27 00:18:06', 1),
(31, '608267473.mp4', '39d5911207c130a598b7f0ca0bdba599.jpeg', 'image/jpeg', 'jpeg', '2020-03-27 00:18:06', 1),
(32, 'CintaUtuh_407.mp4', '16c7f91017c26f00d158c72c48e7f9c5.mp4', 'video/mp4', 'mp4', '2020-03-28 18:25:50', 1),
(33, 'CintaUtuh_407.mp4', 'b0ade57c94ed6fc0e79f32c1dd192598.jpeg', 'image/jpeg', 'jpeg', '2020-03-28 18:25:50', 1),
(34, '2150998920-20200329-0001.mp4', 'cf33c8d6a8fa632f7100791d62c9142e.mp4', 'video/mp4', 'mp4', '2020-03-28 18:59:25', 1),
(35, '2150998920-20200329-0001.mp4', '1b9fbe74dff3e69fa541dedb07d37681.jpeg', 'image/jpeg', 'jpeg', '2020-03-28 18:59:25', 1),
(36, '1111598373.mp4', '6f9c5b75b0d4d254fb1b1d4be5980c3a.mp4', 'video/mp4', 'mp4', '2020-03-28 19:01:37', 1),
(37, '1111598373.mp4', '97dc684efd7321dfbcd0408797156b47.jpeg', 'image/jpeg', 'jpeg', '2020-03-28 19:01:37', 1),
(38, 'Perbaiki lah amal mu :)_2285.mp4', '28f500cea27b3a7314e99208e0fee8e5.mp4', 'video/mp4', 'mp4', '2020-03-28 19:25:48', 1),
(39, 'Perbaiki lah amal mu :)_2285.mp4', '9f6134f5f206464a5efcf108c54829d2.jpeg', 'image/jpeg', 'jpeg', '2020-03-28 19:25:48', 1),
(40, 'Bisa Pindah Ke Lain Hati_603.mp4', '01aaef30f2144597258782129c7549d0.mp4', 'video/mp4', 'mp4', '2020-03-29 01:17:18', 1),
(41, 'Bisa Pindah Ke Lain Hati_603.mp4', 'ef2ebe09a83b6541ccaf68c747fca699.jpeg', 'image/jpeg', 'jpeg', '2020-03-29 01:17:18', 1),
(42, 'Cinta adalah komitmen_2861.mp4', '2c5bd50bab7a1086b596e6b1777fe3a0.mp4', 'video/mp4', 'mp4', '2020-03-29 08:55:32', 1),
(43, 'Cinta adalah komitmen_2861.mp4', '1c565898e96ce53ea659dad7aac75852.jpeg', 'image/jpeg', 'jpeg', '2020-03-29 08:55:32', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_table`
--

CREATE TABLE `report_table` (
  `id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `report_table`
--

INSERT INTO `report_table` (`id`, `status_id`, `message`, `created`) VALUES
(1, 11, 'ttyyrwgd', '2020-03-28 10:26:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings_table`
--

CREATE TABLE `settings_table` (
  `id` int(11) NOT NULL,
  `firebasekey` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sharevideo` int(11) NOT NULL,
  `viewvideo` int(11) NOT NULL,
  `addvideo` int(11) NOT NULL,
  `shareimage` int(11) NOT NULL,
  `viewimage` int(11) NOT NULL,
  `addimage` int(11) NOT NULL,
  `sharegif` int(11) NOT NULL,
  `viewgif` int(11) NOT NULL,
  `addgif` int(11) NOT NULL,
  `sharequote` int(11) NOT NULL,
  `viewquote` int(11) NOT NULL,
  `addquote` int(11) NOT NULL,
  `minpoints` int(11) NOT NULL,
  `oneusdtopoints` int(11) NOT NULL,
  `adduser` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publisherid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rewardedadmobid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banneradmobid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bannerfacebookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativebannerfacebookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bannertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativeadmobid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativefacebookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativeitem` int(11) DEFAULT NULL,
  `nativetype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitialadmobid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitialfacebookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitialtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitialclick` int(11) DEFAULT NULL,
  `shareyoutube` int(11) NOT NULL,
  `viewyoutube` int(11) NOT NULL,
  `addyoutube` int(11) NOT NULL,
  `authoryoutube` int(11) NOT NULL,
  `authorvideo` int(11) NOT NULL,
  `authorimage` int(11) NOT NULL,
  `authorgif` int(11) NOT NULL,
  `authorquote` int(11) NOT NULL,
  `registeruser` int(11) NOT NULL,
  `privacypolicy` longtext COLLATE utf8_unicode_ci,
  `earning` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `settings_table`
--

INSERT INTO `settings_table` (`id`, `firebasekey`, `sharevideo`, `viewvideo`, `addvideo`, `shareimage`, `viewimage`, `addimage`, `sharegif`, `viewgif`, `addgif`, `sharequote`, `viewquote`, `addquote`, `minpoints`, `oneusdtopoints`, `adduser`, `currency`, `publisherid`, `appid`, `rewardedadmobid`, `banneradmobid`, `bannerfacebookid`, `nativebannerfacebookid`, `bannertype`, `nativeadmobid`, `nativefacebookid`, `nativeitem`, `nativetype`, `interstitialadmobid`, `interstitialfacebookid`, `interstitialtype`, `interstitialclick`, `shareyoutube`, `viewyoutube`, `addyoutube`, `authoryoutube`, `authorvideo`, `authorimage`, `authorgif`, `authorquote`, `registeruser`, `privacypolicy`, `earning`) VALUES
(1, 'AIzaSyDQBmXArHyS7tN00jzjICK6INiG_mlx0AA', 100, 20303, 2003, 23884, 3737, 37748, 37738, 378, 2738, 3773, 2773, 2737, 1000, 10000, 100, '$', 'pub-3940256099942544', 'ca-app-pub-3940256099942544~3347511713', 'ca-app-pub-3940256099942544/5224354917', 'ca-app-pub-3940256099942544/6300978111', '2209459515984057_2291710631092278', '2209459515984057_2209462722650403', 'ADMOB', 'ca-app-pub-3940256099942544/2247696110', '2209459515984057_2209462372650438', 4, 'BOTH', 'ca-app-pub-3940256099942544/1033173712', '2209459515984057_2291717214424953', 'ADMOB', 2, 6556, 4656, 5268, 5465415, 548848, 65416846, 6548, 5948, 6544, '<p>&nbsp;</p>\r\n\r\n<p>Privacy Policy</p>', 'TRUE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slide_table`
--

CREATE TABLE `slide_table` (
  `id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_categories`
--

CREATE TABLE `status_categories` (
  `status_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `status_categories`
--

INSERT INTO `status_categories` (`status_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_languages`
--

CREATE TABLE `status_languages` (
  `status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `status_languages`
--

INSERT INTO `status_languages` (`status_id`, `language_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_table`
--

CREATE TABLE `status_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `downloads` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `review` tinyint(1) NOT NULL,
  `comment` tinyint(1) NOT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `likes` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL,
  `font` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `angry` int(11) NOT NULL,
  `haha` int(11) NOT NULL,
  `love` int(11) NOT NULL,
  `sad` int(11) NOT NULL,
  `woow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `status_table`
--

INSERT INTO `status_table` (`id`, `media_id`, `user_id`, `title`, `type`, `description`, `downloads`, `created`, `enabled`, `review`, `comment`, `tags`, `likes`, `color`, `views`, `font`, `video_id`, `angry`, `haha`, `love`, `sad`, `woow`) VALUES
(1, 5, 1, 'Sad Whatsapp Status Video', 'fullscreen', NULL, 1, '2020-03-20 11:46:41', 1, 0, 1, 'Love', 0, NULL, 7, 1, 4, 0, 0, 0, 1, 0),
(2, 6, 1, 'Best love dialog video for Whatsapp Status', 'fullscreen', NULL, 0, '2020-03-20 11:48:26', 1, 0, 1, NULL, 0, NULL, 8, 1, 14, 0, 0, 0, 1, 0),
(3, 10, 1, 'Senorita', 'fullscreen', NULL, 1, '2020-03-20 13:04:02', 1, 0, 1, NULL, 0, NULL, 7, 1, 15, 2, 1, 0, 0, 0),
(4, 16, 1, 'sfdfsdf', 'video', NULL, 7, '2020-03-24 10:05:59', 1, 0, 1, NULL, 0, NULL, 11, 1, 17, 2, 0, 0, 1, 0),
(5, 18, 1, 'fdsgshshsh', 'fullscreen', NULL, 1, '2020-03-24 10:07:15', 1, 0, 1, NULL, 0, NULL, 7, 1, 19, 0, 0, 0, 0, 0),
(6, 20, 1, 'Sudah Nyaman', 'fullscreen', NULL, 0, '2020-03-25 03:24:27', 1, 0, 1, NULL, 0, NULL, 0, 1, 21, 0, 0, 0, 0, 0),
(7, 23, 2, 'Kan Ndores', 'video', NULL, 1, '2020-03-26 08:20:37', 1, 0, 1, NULL, 0, NULL, 4, 1, 22, 1, 0, 0, 0, 0),
(8, 25, 2, 'Kok Gitu Ban', 'fullscreen', '', 0, '2020-03-26 08:24:21', 1, 0, 1, NULL, 0, NULL, 5, 1, 24, 0, 1, 0, 0, 0),
(9, 27, 2, 'Siapa tau bahagia beneran', 'video', '', 1, '2020-03-26 08:26:05', 1, 0, 1, NULL, 0, NULL, 7, 1, 26, 0, 0, 0, 0, 1),
(10, 29, 2, '524416801', 'video', '', 0, '2020-03-26 16:20:45', 1, 0, 1, NULL, 0, NULL, 5, 1, 28, 0, 0, 0, 0, 0),
(11, 31, 2, '608267473', 'video', '', 1, '2020-03-27 00:18:06', 1, 0, 1, NULL, 0, NULL, 7, 1, 30, 0, 1, 1, 0, 0),
(12, 33, 3, 'Utuhhh', 'video', NULL, 2, '2020-03-28 18:26:45', 1, 0, 1, NULL, 0, NULL, 4, 1, 32, 0, 0, 0, 0, 0),
(13, 35, 2, 'Anak Siapa Sih', 'fullscreen', '', 0, '2020-03-28 18:59:25', 1, 0, 1, NULL, 0, NULL, 6, 1, 34, 0, 0, 0, 0, 0),
(14, 37, 2, 'Yang Bisa Kasih Dapat Pulsa', 'fullscreen', '', 1, '2020-03-28 19:01:37', 1, 0, 1, NULL, 0, NULL, 6, 1, 36, 0, 0, 0, 0, 0),
(15, 39, 2, 'Perbaiki lah amal mu :)_2285', 'video', '', 0, '2020-03-28 19:25:48', 1, 0, 1, NULL, 1, NULL, 4, 1, 38, 0, 0, 0, 0, 0),
(16, 41, 2, 'Bisa Pindah Ke Lain Hati_603', 'video', '', 1, '2020-03-29 01:17:18', 1, 0, 1, NULL, 0, NULL, 1, 1, 40, 0, 0, 0, 0, 0),
(17, 43, 2, 'Cinta adalah komitmen_2861', 'video', '', 0, '2020-03-29 08:55:32', 1, 0, 1, NULL, 1, NULL, 6, 1, 42, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `support_table`
--

CREATE TABLE `support_table` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_table`
--

CREATE TABLE `transaction_table` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invited_id` int(11) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `transaction_table`
--

INSERT INTO `transaction_table` (`id`, `label`, `points`, `user_id`, `status_id`, `created`, `type`, `invited_id`, `enabled`) VALUES
(1, 'You has been registered in the app', 6544, 2, NULL, '2020-03-26 08:06:17', 'register_user', NULL, 0),
(2, 'You watch the video : sfdfsdf', 20303, 2, 4, '2020-03-26 08:10:16', 'view_video', NULL, 0),
(3, 'New view in your video : sfdfsdf', 548848, 1, 4, '2020-03-26 08:10:16', 'author_video', NULL, 1),
(4, 'You share the video : sfdfsdf', 100, 2, 4, '2020-03-26 08:10:42', 'share_video', NULL, 0),
(5, 'You watch the video : Senorita', 20303, 2, 3, '2020-03-26 08:13:16', 'view_video', NULL, 0),
(6, 'New view in your video : Senorita', 548848, 1, 3, '2020-03-26 08:13:16', 'author_video', NULL, 1),
(7, 'You share the video : Senorita', 100, 2, 3, '2020-03-26 08:13:50', 'share_video', NULL, 0),
(8, 'You upload new video : Kan Ndores', 2003, 2, 7, '2020-03-26 08:20:37', 'add_video', NULL, 0),
(9, 'You upload new video : Kok Gitu Ban', 2003, 2, 8, '2020-03-26 08:24:21', 'add_video', NULL, 0),
(10, 'You upload new video : Siapa tau bahagia beneran', 2003, 2, 9, '2020-03-26 08:26:05', 'add_video', NULL, 0),
(11, 'You upload new video : 524416801', 2003, 2, 10, '2020-03-26 16:20:45', 'add_video', NULL, 0),
(12, 'You upload new video : 608267473', 2003, 2, 11, '2020-03-27 00:18:06', 'add_video', NULL, 0),
(13, 'You watch the video : Sad Whatsapp Status Video', 20303, 2, 1, '2020-03-27 00:19:17', 'view_video', NULL, 0),
(14, 'New view in your video : Sad Whatsapp Status Video', 548848, 1, 1, '2020-03-27 00:19:17', 'author_video', NULL, 1),
(15, 'You watch the video : fdsgshshsh', 20303, 2, 5, '2020-03-27 00:21:49', 'view_video', NULL, 0),
(16, 'New view in your video : fdsgshshsh', 548848, 1, 5, '2020-03-27 00:21:49', 'author_video', NULL, 1),
(17, 'You watch the video : Best love dialog video for Whatsapp Status', 20303, 2, 2, '2020-03-27 00:25:52', 'view_video', NULL, 0),
(18, 'New view in your video : Best love dialog video for Whatsapp Status', 548848, 1, 2, '2020-03-27 00:25:52', 'author_video', NULL, 1),
(19, 'You has been registered in the app', 6544, 3, NULL, '2020-03-28 17:42:14', 'register_user', NULL, 1),
(20, 'You watch the video : sfdfsdf', 20303, 3, 4, '2020-03-28 18:23:29', 'view_video', NULL, 1),
(21, 'New view in your video : sfdfsdf', 548848, 1, 4, '2020-03-28 18:23:29', 'author_video', NULL, 1),
(22, 'You upload new video : Utuhhh', 2003, 3, 12, '2020-03-28 18:26:45', 'add_video', NULL, 1),
(23, 'You has been registered in the app', 6544, 4, NULL, '2020-03-28 18:27:55', 'register_user', NULL, 1),
(24, 'Andra Has been registered by using your reference code', 100, 2, NULL, '2020-03-28 18:28:09', 'add_user', 4, 1),
(25, 'You share the video : Utuhhh', 100, 2, 12, '2020-03-28 18:38:04', 'share_video', NULL, 1),
(26, 'You upload new video : Anak Siapa Sih', 2003, 2, 13, '2020-03-28 18:59:25', 'add_video', NULL, 1),
(27, 'You upload new video : Yang Bisa Kasih Dapat Pulsa', 2003, 2, 14, '2020-03-28 19:01:37', 'add_video', NULL, 1),
(28, 'You upload new video : Perbaiki lah amal mu :)_2285', 2003, 2, 15, '2020-03-28 19:25:48', 'add_video', NULL, 1),
(29, 'You upload new video : Bisa Pindah Ke Lain Hati_603', 2003, 2, 16, '2020-03-29 01:17:18', 'add_video', NULL, 1),
(30, 'You upload new video : Cinta adalah komitmen_2861', 2003, 2, 17, '2020-03-29 08:55:32', 'add_video', NULL, 1),
(31, 'You has been registered in the app', 6544, 5, NULL, '2020-03-29 10:15:06', 'register_user', NULL, 1),
(32, 'You watch the video : Anak Siapa Sih', 20303, 5, 13, '2020-03-29 10:17:15', 'view_video', NULL, 1),
(33, 'New view in your video : Anak Siapa Sih', 548848, 2, 13, '2020-03-29 10:17:15', 'author_video', NULL, 1),
(34, 'You watch the video : Yang Bisa Kasih Dapat Pulsa', 20303, 5, 14, '2020-03-29 10:17:22', 'view_video', NULL, 1),
(35, 'New view in your video : Yang Bisa Kasih Dapat Pulsa', 548848, 2, 14, '2020-03-29 10:17:22', 'author_video', NULL, 1),
(36, 'You watch the video : Cinta adalah komitmen_2861', 20303, 5, 17, '2020-03-29 10:19:22', 'view_video', NULL, 1),
(37, 'New view in your video : Cinta adalah komitmen_2861', 548848, 2, 17, '2020-03-29 10:19:22', 'author_video', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_followers`
--

CREATE TABLE `user_followers` (
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user_followers`
--

INSERT INTO `user_followers` (`user_id`, `follower_id`) VALUES
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `version_table`
--

CREATE TABLE `version_table` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `features` longtext COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `withdraws_table`
--

CREATE TABLE `withdraws_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `methode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `withdraws_table`
--

INSERT INTO `withdraws_table` (`id`, `user_id`, `type`, `points`, `amount`, `created`, `methode`, `account`) VALUES
(1, 2, 'Paid', 26947, '2.6947 $', '2020-03-26 08:12:15', 'PayPal', 'ekaratnasari1998@gmail.com'),
(2, 2, 'Paid', 91327, '9.1327 $', '2020-03-27 00:29:01', 'PayPal', 'Paygsgs');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1E1AC00FEA9FDD75` (`media_id`);

--
-- Indeks untuk tabel `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5FB317B76BF700BD` (`status_id`),
  ADD KEY `IDX_5FB317B7A76ED395` (`user_id`);

--
-- Indeks untuk tabel `device_table`
--
ALTER TABLE `device_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fos_user_table`
--
ALTER TABLE `fos_user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C3D4D4BD92FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_C3D4D4BDA0D96FBF` (`email_canonical`);

--
-- Indeks untuk tabel `gallery_table`
--
ALTER TABLE `gallery_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `language_table`
--
ALTER TABLE `language_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_89718B17EA9FDD75` (`media_id`);

--
-- Indeks untuk tabel `medias_gallerys_table`
--
ALTER TABLE `medias_gallerys_table`
  ADD PRIMARY KEY (`gallery_id`,`media_id`),
  ADD KEY `IDX_CC965DCE4E7AF8F` (`gallery_id`),
  ADD KEY `IDX_CC965DCEEA9FDD75` (`media_id`);

--
-- Indeks untuk tabel `media_table`
--
ALTER TABLE `media_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `report_table`
--
ALTER TABLE `report_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DC35883F6BF700BD` (`status_id`);

--
-- Indeks untuk tabel `settings_table`
--
ALTER TABLE `settings_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slide_table`
--
ALTER TABLE `slide_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_77A059652B36786B` (`title`),
  ADD KEY `IDX_77A059656BF700BD` (`status_id`),
  ADD KEY `IDX_77A0596512469DE2` (`category_id`),
  ADD KEY `IDX_77A05965EA9FDD75` (`media_id`);

--
-- Indeks untuk tabel `status_categories`
--
ALTER TABLE `status_categories`
  ADD PRIMARY KEY (`status_id`,`category_id`),
  ADD KEY `IDX_3BA0A2EE6BF700BD` (`status_id`),
  ADD KEY `IDX_3BA0A2EE12469DE2` (`category_id`);

--
-- Indeks untuk tabel `status_languages`
--
ALTER TABLE `status_languages`
  ADD PRIMARY KEY (`status_id`,`language_id`),
  ADD KEY `IDX_2844D3386BF700BD` (`status_id`),
  ADD KEY `IDX_2844D33882F1BAF4` (`language_id`);

--
-- Indeks untuk tabel `status_table`
--
ALTER TABLE `status_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_173DEB6EA9FDD75` (`media_id`),
  ADD KEY `IDX_173DEB6A76ED395` (`user_id`),
  ADD KEY `IDX_173DEB629C1004E` (`video_id`);

--
-- Indeks untuk tabel `support_table`
--
ALTER TABLE `support_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_571A5F06A76ED395` (`user_id`),
  ADD KEY `IDX_571A5F066BF700BD` (`status_id`),
  ADD KEY `IDX_571A5F06C2ED4747` (`invited_id`);

--
-- Indeks untuk tabel `user_followers`
--
ALTER TABLE `user_followers`
  ADD PRIMARY KEY (`user_id`,`follower_id`),
  ADD KEY `IDX_84E87043A76ED395` (`user_id`),
  ADD KEY `IDX_84E87043AC24F853` (`follower_id`);

--
-- Indeks untuk tabel `version_table`
--
ALTER TABLE `version_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `withdraws_table`
--
ALTER TABLE `withdraws_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D3791F62A76ED395` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category_table`
--
ALTER TABLE `category_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `device_table`
--
ALTER TABLE `device_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fos_user_table`
--
ALTER TABLE `fos_user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `gallery_table`
--
ALTER TABLE `gallery_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `language_table`
--
ALTER TABLE `language_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `media_table`
--
ALTER TABLE `media_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `report_table`
--
ALTER TABLE `report_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings_table`
--
ALTER TABLE `settings_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `slide_table`
--
ALTER TABLE `slide_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_table`
--
ALTER TABLE `status_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `support_table`
--
ALTER TABLE `support_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaction_table`
--
ALTER TABLE `transaction_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `version_table`
--
ALTER TABLE `version_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `withdraws_table`
--
ALTER TABLE `withdraws_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `category_table`
--
ALTER TABLE `category_table`
  ADD CONSTRAINT `FK_1E1AC00FEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Ketidakleluasaan untuk tabel `comment_table`
--
ALTER TABLE `comment_table`
  ADD CONSTRAINT `FK_5FB317B76BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status_table` (`id`),
  ADD CONSTRAINT `FK_5FB317B7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`);

--
-- Ketidakleluasaan untuk tabel `language_table`
--
ALTER TABLE `language_table`
  ADD CONSTRAINT `FK_89718B17EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Ketidakleluasaan untuk tabel `medias_gallerys_table`
--
ALTER TABLE `medias_gallerys_table`
  ADD CONSTRAINT `FK_CC965DCE4E7AF8F` FOREIGN KEY (`gallery_id`) REFERENCES `gallery_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CC965DCEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `report_table`
--
ALTER TABLE `report_table`
  ADD CONSTRAINT `FK_DC35883F6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status_table` (`id`);

--
-- Ketidakleluasaan untuk tabel `slide_table`
--
ALTER TABLE `slide_table`
  ADD CONSTRAINT `FK_77A0596512469DE2` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`id`),
  ADD CONSTRAINT `FK_77A059656BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status_table` (`id`),
  ADD CONSTRAINT `FK_77A05965EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Ketidakleluasaan untuk tabel `status_categories`
--
ALTER TABLE `status_categories`
  ADD CONSTRAINT `FK_3BA0A2EE12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3BA0A2EE6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status_table` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `status_languages`
--
ALTER TABLE `status_languages`
  ADD CONSTRAINT `FK_2844D3386BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2844D33882F1BAF4` FOREIGN KEY (`language_id`) REFERENCES `language_table` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `status_table`
--
ALTER TABLE `status_table`
  ADD CONSTRAINT `FK_173DEB629C1004E` FOREIGN KEY (`video_id`) REFERENCES `media_table` (`id`),
  ADD CONSTRAINT `FK_173DEB6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`),
  ADD CONSTRAINT `FK_173DEB6EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD CONSTRAINT `FK_571A5F066BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status_table` (`id`),
  ADD CONSTRAINT `FK_571A5F06A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`),
  ADD CONSTRAINT `FK_571A5F06C2ED4747` FOREIGN KEY (`invited_id`) REFERENCES `fos_user_table` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_followers`
--
ALTER TABLE `user_followers`
  ADD CONSTRAINT `FK_84E87043A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_84E87043AC24F853` FOREIGN KEY (`follower_id`) REFERENCES `fos_user_table` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `withdraws_table`
--
ALTER TABLE `withdraws_table`
  ADD CONSTRAINT `FK_D3791F62A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
