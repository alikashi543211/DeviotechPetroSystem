-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 08:45 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deviotech_petro_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_types`
--

INSERT INTO `account_types` (`id`, `code`, `account_type`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Type A', '2020-11-06 10:02:39', '2020-11-06 10:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `availbilities`
--

CREATE TABLE `availbilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availbilities`
--

INSERT INTO `availbilities` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Subject to confirmation of order', '2020-11-06 10:04:24', '2020-11-06 10:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `type`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Block 1', 'Block 1 Details', '2020-11-06 10:02:09', '2020-11-06 10:02:09'),
(2, 'Block 2', 'Block 2 Details', '2020-11-06 10:02:24', '2020-11-06 10:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'ECO-M', '2020-11-06 10:12:45', '2020-11-06 10:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `cc_emails`
--

CREATE TABLE `cc_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cc_emails`
--

INSERT INTO `cc_emails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'bpidemo3@gmail.com', '2020-12-10 15:59:02', '2020-12-10 20:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `enteredBy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `job_id`, `customer_id`, `enteredBy`, `verification_date`, `created_at`, `updated_at`, `name`, `address`) VALUES
(1, 70, 13, 'Admin', '10/03/2021 11:27 am', '2021-03-10 06:29:49', '2021-03-10 06:29:49', 'AIB FINANCE & LEASING', 'PO BOX 11143 BANK CENTRE BALLSBRIDGE, DUBLIN 4'),
(3, 76, 1157, 'Admin', '16/03/2021 10:29 am', '2021-03-16 05:30:29', '2021-03-16 05:30:29', 'lkskdlkf', 'lksdjl lkskdjlk lkdksdlkf');

-- --------------------------------------------------------

--
-- Table structure for table `communications`
--

CREATE TABLE `communications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action_taken` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communications`
--

INSERT INTO `communications` (`id`, `action_taken`, `created_at`, `updated_at`) VALUES
(1, 'Communication/Action Tacken', '2020-11-06 10:01:51', '2020-11-06 10:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `forename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `van` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `forename`, `surname`, `mobilephone`, `workphone`, `homephone`, `email`, `address1`, `address2`, `address3`, `charge`, `created_at`, `updated_at`, `van`) VALUES
(1, 'Eng Donal', 'O Leary', '12345678', NULL, '879597412', 'doleary@petrosystems.ie', 'addr 1', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '840'),
(3, 'ENG CJ', 'RELIHAN', '1234', NULL, '868194893', 'cjrelihan@petrosystems.ie', 'test', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '298'),
(5, 'ENG John', 'O LEARY', '1234', NULL, '860314053', 'joleary@petrosystems.ie', 'TEST', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '889'),
(6, 'Richard', 'Looney', '', '', '872730842', 'richardlooneymotors@gmail.com', '', '', '', 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '390'),
(8, 'ENG Richard', 'FITZGERALD', '(086)-0437770', NULL, '860497771', 'rfitzgerald@petrosystems.ie', 'TEST', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '388'),
(9, 'AR Mark', 'RYAN', '1234', NULL, '863169173', 'allroundsystems@gmail.com', 'TEST', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '412'),
(10, 'AR Technical', 'SUPPORT', '1234', NULL, NULL, 'technicalsupport@petrosystems.ie', 'TEST', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '423'),
(11, 'AR RAY', 'RYAN', '', '', '868497332', 'rayryan1@gmail.com', '', '', '', 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '681'),
(13, 'OFFICE Nora', 'O LEARY', '879979516', NULL, '879979516', 'noleary@petrosystems.ie', 'test addr', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '398'),
(14, 'AR DERMOT', 'RYAN', '', '', '863305699', 'dermotryan1976@gmail.com', '', '', '', 65.00, '0000-00-00 00:00:00', '2021-06-18 00:15:55', '245678'),
(15, 'OFFICE Elizabeth', 'HARRINGTON', '222222222', NULL, NULL, 'accounts@petrosystems.ie', 'test addr', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '710'),
(17, 'ENG BARRY', 'BUCKLEY', '8973485934', '983475934', '872678282', 'kashifali@gmail.com', 'kmjnkskjsdhf', 'kjfsdjkfsd', 'kjsdslkjfljds', 65.00, '0000-00-00 00:00:00', '2021-02-23 07:58:13', '995'),
(18, 'OFFICE Cathy', 'NOONAN', '1234', NULL, NULL, 'SERVICE@PETROSYSTEMS.ie', 'test addr', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '312'),
(23, 'ENG DENIS', 'O LEARY', '', '', '861734319', 'denisoleary@petrosystems.ie', '', '', '', 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '615'),
(25, 'AR PHILIP', 'MURRAY', '', '', '879919354', 'philip.allroundsystems@gmail.com', '', '', '', 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '133'),
(28, 'ENG RYAN', 'MULLANE', '(083)-8974853', '', '860258469', 'rmullane@petrosystems.ie', '', '', '', 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '566'),
(29, 'ENG RIZWAN', 'KHAN', '', '', '868077479', 'rkhan@petrosystems.ie', '', '', '', 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '476'),
(30, 'ALL ROUND SYSTEMS', 'SUPPORT', '', '', '', 'customersuportars@gmail.com', '', '', '', 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '379'),
(32, 'ENG GUS', 'MALONE', '', '', '879173344', 'gusmalone65@gmail.com', '', '', '', 0.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '510'),
(33, 'AR VINCENT', 'RYAN', '', '', '', 'uhsdias', '', '', '', 0.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '799'),
(34, 'Office Aisling', 'BURKE', '1234567', NULL, '879979492', 'aburke@petrosystems.ie', 'test', NULL, NULL, 65.00, '0000-00-00 00:00:00', '2021-01-14 18:09:29', '568'),
(36, 'test', 'Developer', '00000000000000', NULL, NULL, 'bpidemo3@gmail.com', 'abc', NULL, NULL, 10.00, '2020-11-30 15:32:25', '2021-01-14 18:09:29', '665'),
(37, 'john', 'oshanahan', '0877444887', '0877444887', '12123', 'johnoshanahan@leanbpi.ie', 'abc', 'abv', 'sjkdfh', NULL, '2020-11-30 21:05:05', '2021-01-14 18:09:29', '582'),
(40, 'Deviotech', 'Deviotech', '3000000000', '3000000000', '3000000000', 'ayeshaalloudin@gmail.com', ',nfd300', 'xcfsD', 'sdcs', 20.00, '2021-01-14 11:42:36', '2021-01-14 18:09:29', '119'),
(41, 'Sahb Engineer', 'Nidaad', '24234234', '234234234234234', '234234234', 'nidad77905@vss6.com', 'test address 1', 'test address 2', 'test address 3', 900.00, '2021-01-14 16:57:16', '2021-01-14 18:09:29', NULL),
(42, 'dsfdsfdsf', 'sdfdsfds', '234234234', '24234234', '234234', 'lemadi2330@vss6.com', 'dsfdsf', 'dsfdsf', 'dsfdsfdsf', 4545.00, '2021-01-14 17:07:52', '2021-01-14 18:09:29', '225'),
(43, 'dsfdsfdsf', 'sdfdsfds', '234234234', '24234234', '234234', 'lemadi2330@vssdfs6.com', 'dsfdsf', 'dsfdsf', 'dsfdsfdsf', 4545.00, '2021-01-14 17:14:25', '2021-01-14 18:09:29', '211'),
(44, 'dsfdsfdsf', 'sdfdsfds', '234234234', '24234234', '234234', 'vowawi8302@vu38.com', 'dsfdsf', 'dsfdsf', 'dsfdsfdsf', 4545.00, '2021-01-14 17:17:56', '2021-01-14 18:09:29', '632'),
(45, 'dsfdsf', 'sdfdsfdsf', '234234', '23423423423', '23423423', 'hahit12118@vy89.com', '23234', '234234', '234234', 32423.00, '2021-01-14 17:21:02', '2021-01-14 18:09:29', '792'),
(46, 'dsfdsf', 'sdfdsfdsf', '234234', '23423423423', '23423423', 'givolop120@vss6.com', '23234', '234234', '234234', 32423.00, '2021-01-14 17:22:27', '2021-01-14 18:09:29', '773'),
(47, 'dsfdsf', 'sdfdsfdsf', '234234', '23423423423', '23423423', 'pekafi6601@yutongdt.com', '23234', '234234', '234234', 32423.00, '2021-01-14 17:23:27', '2021-01-14 18:09:29', '780'),
(48, 'sdfdsf', 'sfdsf', '23423423423', '234234234234', 'fdsfdsf', 'veneg14109@vy89.com', 'sdfdsfdsf', 'sdfdsfdsf', 'dsfdsfds', 2324.00, '2021-01-14 17:33:31', '2021-01-14 18:09:29', '591'),
(49, 'sdfdsf', 'sdfdsf', '234234234234', '234234234234234', '234234234234', 'rotegil547@yutongdt.com', 'sdfsdfds', 'sdfdsfdsf', 'dsfdsfsdf', 234.00, '2021-01-14 21:38:09', '2021-01-14 21:38:09', NULL),
(50, 'sdfdsf', 'sdfdsfdsf', '234234234', '23423423', '23423423', 'dokavi3521@yutongdt.com', 'dfdfdsf', 'dsfdsfds', 'fsdfdsfdsfds', 44.00, '2021-01-14 21:45:34', '2021-01-14 21:45:34', NULL),
(51, 'sdfdsf', 'sdfdsfdsf', '234234234', '23423423', '23423423', 'pareb31362@yutongdt.com', 'dfdfdsf', 'dsfdsfds', 'fsdfdsfdsfds', 44.00, '2021-01-14 21:47:05', '2021-01-14 21:47:05', NULL),
(52, 'ewrewr', 'werwerew', '234234234234', '23234234234', '234234234', '7halil.derin.338c@createdrive.net', 'sfddsfdsf', 'sdfdsfsdf', 'dsfdsf', 23.00, '2021-01-14 21:48:34', '2021-01-14 21:48:34', NULL),
(53, 'Engineer', 'John', '237894273492384', '97328942738943', '83475893457', 'ftitaex.box3@coexn.com', 'klsdjfsdf', 'kljdsfsdl', 'kljsdfldsf', 700.00, '2021-01-14 22:54:57', '2021-01-14 22:54:57', '9164'),
(54, 'test', 'test', '03000000000', '03000000000', '03000000000', 'hriko@cafeqrmenu.xyz', '03000000000', 'g tb', 'tyfjgh', NULL, '2021-01-15 09:49:56', '2021-01-15 09:49:56', '1004'),
(55, 'test', 'test', '03000000000', '03000000000', '03000000000', 'ayeshaalloudin123@gmail.com', '03000000000', 'g tb', 'tyfjgh', 20.00, '2021-01-15 09:58:10', '2021-01-15 09:58:10', '8253'),
(56, 'Karajaa', 'Engineer', '3485080934', '02348930284', '940358345', 'krajaa@statenislandmvp.com', 'lsjdlskfjdls', 'fklsdjfkldsjf', 'dklsfjdklsf', 500.00, '2021-01-18 15:17:43', '2021-01-18 15:17:43', '3641'),
(59, 'test', 'Test', '39487534', '9834759834', '3092453409', 'test@test.com', 'LSDKFJL', 'WEWLJRWEq', 'lklsdfj', 33.00, '2021-03-09 04:25:50', '2021-03-09 04:25:50', '9516'),
(60, 'test', 'Test', '39487534', '9834759834', '3092453409', 'test@test2.com', 'LSDKFJL', 'WEWLJRWEq', 'lklsdfj', 33.00, '2021-03-09 04:26:37', '2021-03-09 04:26:37', '8447'),
(61, 'lksfksjd', 'lkdksdfjl', '90392945', '893578934', '0923983', 'testtest@test2.com', 'M,SD,NSD', 'LKWERJ', 'EDLKSKJR', 9403.00, '2021-03-09 04:34:07', '2021-03-09 04:34:07', '7465'),
(62, 'test', 'test', '908345', '349875', '9832324', 'test@test3.com', 'kjlsjd', 'dksf', 'sdkdjjhfs', 43.00, '2021-03-09 04:35:29', '2021-03-09 04:35:29', '3399'),
(63, 'test', 'test', '3454435', '098234', '345345', 'test@test4.com', 'laskjfd', 'fdlsdkjfl', 'dflksdf', 33.00, '2021-03-09 04:37:10', '2021-03-09 04:37:10', '4350'),
(64, 'lksd', 'lksad', '8934543', '8345438', '835349', 'kasd@gmail.com', 'lsdkjsjdlk', 'sdskjds', 'dsksdl', 48.00, '2021-03-10 23:06:19', '2021-03-10 23:06:19', '5727'),
(65, 'Best', 'Test', '398475834', '837499889', '984743998', 'testbest@engineer.com', 'TEST BEST', 'LKSD', 'SLKDJ', NULL, '2021-03-11 02:30:55', '2021-03-11 02:30:55', '3199'),
(66, 'LKDSD', 'skldj', '34389059', '4853487', '983754', 'lsfjldskjflk@gmail.com', 'kjlsdhjfklsd', 'dsjk', 'sdsdlkjfs', 80.00, '2021-03-11 23:07:16', '2021-03-11 23:07:16', '2896'),
(67, 'LKDSD', 'skldj', '34389059', '4853487', '983754', 'lsfjldssdfkjflk@gmail.com', 'kjlsdhjfklsd', 'dsjk', 'sdsdlkjfs', 80.00, '2021-03-11 23:08:12', '2021-03-11 23:08:12', '6127'),
(72, 'LKDSDJFLK', 'LKJSDFKL', '984358934', '9832479834', '9834578934', 'contact_id@gmail.com', 'LKJSDFLQ', 'KLSDLFKJD', 'DLKSFSDJFL', 3894.00, '2021-03-16 04:03:17', '2021-03-16 04:03:17', '2100'),
(73, 'LKDSJDFLK', 'LKJKJLSDKFJ', '9834587934', '93848589374', '98347985', 'LKSDJDFL@GMAIL.COM', 'klsjdflk', 'lksdlfkdjklsjdfq', 'ldskdjflkds', 487.00, '2021-03-16 08:37:05', '2021-03-16 08:37:05', '1751'),
(74, 'dslkskdj', 'lsfkfjkkdjfl', '984398349', '8324977589354', '98345893479', 'dflsjdlkf@kgskskdf.com', 'lsdjflkdj', 'dlkdsjlsjdl', 'lkddkslfk', 3894.00, '2021-03-18 04:21:32', '2021-03-18 04:21:32', '8936'),
(75, 'dslkskdj', 'lsfkfjkkdjfl', '984398349', '8324977589354', '98345893479', 'dflsjdlkf@kgsksksldkjkfjldf.com', 'lsdjflkdj', 'dlkdsjlsjdl', 'lkddkslfk', 3894.00, '2021-03-18 04:21:54', '2021-03-18 04:21:54', '4634'),
(76, 'dslkskdj', 'lsfkfjkkdjfl', '984398349', '8324977589354', '98345893479', 'dflsjdlkf@kgsks4897ksldkjkfjldf.com', 'lsdjflkdj', 'dlkdsjlsjdl', 'lkddkslfk', 3894.00, '2021-03-18 04:22:26', '2021-03-18 04:22:26', '5797'),
(77, 'Engineer', 'KFC', '9834734987', '93847534987', '9873489347', 'kfc123@gmail.com', 'KLSFKLSDJ', 'LKSDJFLK', 'LSDKJFL', 400.00, '2021-03-26 03:09:30', '2021-03-26 03:09:30', '8996'),
(78, 'lksjdl', 'lksjdkfl', '9798347953', '938475934', '987349853974', 'lsksjdlslk@gmail.com', 'KSJKLDFJL', 'SLDKJFL', 'DSLSDJLK', 8943.00, '2021-03-31 07:03:57', '2021-03-31 07:03:57', '5199'),
(79, 'dlsksd', 'jsdk', '0934', '03498', '34095', 'lkskjlfd@lksdklfsd.com', 'slkjdfl', 'lkdsjfl', 'lkdsdjfl', 32.00, '2021-04-14 04:35:04', '2021-04-14 04:35:04', '3141'),
(80, 'ldkfj', 'jsldklk', '3098580948504', '374893485094', '0938589478943', 'testengineerkds@gmail.com', 'KLSDJKL', 'KLDFJGLS', 'LKDFJD', 800.00, '2021-04-15 01:15:44', '2021-04-15 01:15:44', '2518'),
(81, 'LSKDJ', 'KLJSD', '983443987', '984398349483', '984389347598734', 'test@engineerengineer.com', 'lkjksjdlk', 'KLSJD', 'DSFLKJ', NULL, '2021-04-15 01:16:39', '2021-04-15 01:16:39', '9436'),
(82, 'Engineer', 'Test Learning', '098098098098', '0980989008', '09808098098', 'test@learning.com', 'lsjdflkj', 'ljsdlkj', 'lkkjsld', NULL, '2021-04-21 00:55:05', '2021-04-21 00:55:05', '4688'),
(83, 'Newengineer', 'Test', '0983409', '02930492390', '03489908', 'testnewengineer@gmail.com', 'Test', 'Test', 'Test', 200.00, '2021-06-17 05:45:08', '2021-06-17 05:45:08', '5069'),
(84, 'Engineer 1', 'Deviotech', '982749823742', '238498237988', '298374923', 'deviotech@engr1.com', 'Deviotech Addresss 1', 'Deviotech Address 2', 'Deviotech Addresss 3', 100.00, '2021-06-29 23:56:13', '2021-06-29 23:56:13', NULL),
(85, 'Engineer 2', 'Deviotech', '023409283409', '0240923840932', '0238409284039', 'deviotech@engr2.com', 'Deviotech Address 1', 'Deviotech Address 2', 'Deviotech Addresss 3', 100.00, '2021-06-29 23:58:52', '2021-06-29 23:58:52', NULL),
(86, 'Engineer 3', 'Deviotech', '23423423424232', '2342342342423', '42342342343', 'deviotech@engr3.com', 'Test', 'Test', 'Test', 100.00, '2021-06-29 23:59:46', '2021-06-29 23:59:46', NULL),
(87, 'Engineer 4', 'Deviotech', '23423423423', '23423423423', '23423423424', 'deviotech@engr4.com', 'Test', 'Test', 'Test', 100.00, '2021-06-30 00:00:34', '2021-06-30 00:00:34', NULL),
(88, 'Engineer 5', 'Deviotech', '34534534534', '342342342324222423', '43534534534534', 'deviotech@engr5.com', 'Test', 'Test', 'Test', 100.00, '2021-06-30 00:01:29', '2021-06-30 00:01:29', NULL),
(89, 'Test', 'sdfds', '09348039480`', '90809', '29023489023', 'sdfkdlssdf@gmail.com', 'lskdfj', 'dskffjlsj', 'ljdslf', NULL, '2021-07-09 05:44:41', '2021-07-09 05:44:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(8,2) DEFAULT NULL,
  `status` enum('Pending','Active','Completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eircode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_type_id` bigint(20) UNSIGNED NOT NULL,
  `service_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_tanks` int(11) DEFAULT NULL,
  `pos` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `code`, `name`, `email`, `workphone`, `address1`, `address2`, `address3`, `address4`, `eircode`, `notes`, `status`, `created_at`, `updated_at`, `account_type_id`, `service_contract`, `no_of_tanks`, `pos`, `cc_email_1`, `cc_email_2`, `cc_email_3`, `cc_email_4`, `cc_email_5`) VALUES
(1, 'A OF', 'BALLYSIMON GREAT GAS SERVICE STATION', 'matthew@gmail.com', NULL, 'FAO: ALBERT O FLYNN', 'BALLYSIMON', 'CO. LIMERICK Eircode xyz', NULL, NULL, 'some text needed', 'Hold ref Nora', '0000-00-00 00:00:00', '2021-03-04 04:47:23', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'A3', 'AUTOTRANS TRANSPORT SERVICES,', 'alikashi54321@hotmail.com', '069 62888', 'CULLINAGH,', 'NEWCASTLE WEST,', 'CO. LIMERICK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ABO1', 'AB OILS', 'abrowneoil@gmail.com', '090 6481213', 'DUBLIN ROAD,', 'BAWNOGES,', 'MOATE, CO WESTMEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ACR1', 'PIT STOP FUELS LTD', 'sparthurles@gmail.com', '086 0442239', 'SPAR TOP OIL', 'RAILWAY ROAD', 'BIRR, CO OFFALY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'AD1', 'ADAMAR DEVELOPMENTS LTD', 'accounts@wexlow.com', '539484280', 'T/A WEXFORD LOW ENERGY HOMES', 'PO BOX 50 ENNISCORTHY', 'CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'AER1', 'AERODINE LTD T/A THE HUNGRY NUT', 'thehungrynut22@gmail.com', '024 86509', 'BALLINAPARKA,', 'AGLISH,', 'CAPPOQUIN, CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'AHE1', 'MAURICE AHERN', '', '872989898', 'ARDFINNAN', 'CO. TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'AIB1', 'AIB FINANCE & LEASING', 'michael.m.walsh@aib.ie', '', 'PO BOX 11143', 'BANKCENTRE', 'BALLSBRIDGE, DUBLIN 4', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'AIB2', 'AIB FINANCE & LEASING', 'johnenright@atlanticoils.com', '', 'LOCK K3', 'BANK CENTRE', 'DUBLIN 4', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'AIB3', 'AIB FINANCE & LEASING', 'pat.moore@practicalfinance.ie', 'pat 087 0668363', 'PO BOX 11143', 'BANK CENTRE', 'BALLSBRIDGE, DUBLIN 4', '', '', '', '', '0000-00-00 00:00:00', '2021-03-11 08:02:10', 0, NULL, 10, 'skldl', NULL, NULL, NULL, NULL, NULL),
(14, 'AIB4', 'AIB Finance & Leasing', 'mortimer.g.downey@aib.ie', '', 'PO Box 11143', 'BankCentre', 'BALLSBRIDGE, DUBLIN 4', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'AIR1', 'AIR SERV', 'chris.purcell@air-serv.co.uk', '', 'REDGATE ROAD, SOUTH LANCASHIRE IND. EST.', 'ASHTON-IN-MAKERFIELD', 'NEAR WIGAN, LANCASHIRE, UK', '', 'WN4 8DT', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'AIR2', 'AIR-SERV IRELAND,', 'dessie.aughey@air-serv.co.uk', '', 'UNIT 3 CIDO BUSINESS COMPLEX,', 'CARN DRIVE, CARN INDUSTRIAL AREA,', 'PORTADOWN, CO. ARMAGH', '', 'BD635WH', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'ALB1', 'ALBA FAREFOODS LTD', 'sparmallow@spar.ie', '022 43748', 'KNIGHTS SPAR', 'OLD CORK ROAD', 'MALLOW, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'ALD1', 'ALDI STORES (IRELAND) LIMITED', 'invoices.mit@aldi.ie', '2552950', 'ALDI RDC', 'LIMERICK ROAD', 'MITCHELSTOWN, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'ALL1', 'SEAN ALLEN,', '', '021 4770845', 'ALLEN\'S FILLING STATION,', 'BELGOOLY,', 'CO.CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'ALL2', 'ALLMAN CONTRACT LTD', 'office@allman.ie', '6823909', 'GREENVILLE', 'LISTOWEL', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'ALL3', 'ALL ROUND SYSTEMS', 'allroundsystems@gmail.com', '50458886', 'GORTNAHOE', 'THURLES', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'ALL4', 'GORTNAHOE FILLING STATION', 'allroundsystems@gmail.com', '', 'GORTNAHOE', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'AMB', 'AMBER 1 PETROLEUM', 'AccountsPayable@amberoil.ie', '025 46000 / 0504 44222', 'ACRES', 'FERMOY', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'AMB 1', 'AMBULANCE CONTROL CENTRE', '', '61', 'NENAGH', 'CO TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'AMB1', 'MID WESTERN REGIONAL  AMBULANCE SERVICE', '', '061 482373', 'DOORADOYLE', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'AMB10', 'AMBER 10 CLONMEL', '', '052 6125582', 'WATERFORD RD.', 'CLONMEL', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'AMB11', 'AMBER 11 CURRAGLASS', '', '058 56815', 'CURRAGLASS', 'CONNA', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'AMB12', 'AMBER 12 GLOUNTHANE', '', '', 'GLOUNTHANE SERVICE STATION', 'GLOUNTHANE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'AMB13', 'AMBER 13 YOUGHAL', '', '024 93458', 'CORK ROAD', 'YOUGHAL', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'AMB14', 'AMBER 14 BALLYHOOLY', '', '025 39955', 'MAIN STREET', 'BALLYHOOLY', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'AMB15', 'AMBER 15 THURLES', '', '0504 24257', 'MATTHEW AVENUE', 'THURLES', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'AMB16', 'AMBER 16 CHARLEVILLE', '', '', 'CORK ROAD', 'CHARLEVILLE', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'AMB17', 'AMBER 17 LIMERICK', '', '', 'OLD CORK ROAD', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'AMB18', 'AMBER 18  CHARLEVILLE', '', '063 21740', 'MAIN STREET', 'CHARLEVILLE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'AMB19', 'AMBER 19 WATERFORD', '', '051 373908', 'PADDY BROWNS ROAD', 'LISDUGGAN', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'AMB2', 'AMBER 2 TIPPERARY TOWN', '', '062 52753', 'BANSHA ROAD', 'TIPPERARY TOWN', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'AMB20', 'ATHY RETAIL LTD', 'ipl-accounts@hotmail.com', '599131773', 'AMBER OIL SERVICE STATION', 'FRAISER SITE', 'CHURCH ROAD, GRAIGCULLEN, CARLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'AMB21', 'AMBER 21 SS FERMOY', '', '', 'DUBLIN ROAD', 'FERMOY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'AMB22', 'AMBER 22 LISTOWEL', '', '068 23933', 'TARBERT ROAD', 'LISTOWEL', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'AMB23', 'AMBER MACROOM', '', '', 'MILSTREET ROAD,', 'MACROOM,', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'AMB3', 'AMBER 3 LIMERICK ROAD', '', '', 'LIMERICK ROAD', 'TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'AMB4', 'AMBER 4 MITCHELSTOWN', '', '025 41839', 'BANK PLACE', 'MITCHLESTOWN', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'AMB5', 'AMBER 5 HORSE & JOCKEY', '', '', 'HORSE & JOCKEY', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'AMB6', 'AMBER 6 TEMPLEMORE', 'tombourke1952@gmail.com', '50456634', 'BOURKE FILLING STATION LTD', 'ROSCREA ROAD', 'TEMPLEMORE, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'AMB7', 'AMBER 7 DUNGARVAN', '', '058 24170', 'CORK ROAD', 'DUNGARVAN', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'AMB8', 'AMBER 8 MAYFIELD', '', '021 4553070', 'OLD YOUGHAL ROAD', 'MAYFIELD,', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'AMB9', 'AMBER 9 ATHY', '', ' 059 8634517', 'WOODSTOCK ROAD', 'ATHY', 'CO KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'AN P', 'EAMON RAYTHORN', '', '01 7057157', 'PROPERTY MANAGER', 'AN POST PROPERTY SECTION', '4B, GPO, O\' CONNELL STREET, DUBLIN 1', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'ANC1', 'ANCONA FUELS LTD', '', '086 2128080', 'DUNGARVAN', 'CO WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'ANG1', 'DENIS ANGLAND\'S', 'denisangland@hotmail.com', '029 78033', 'DROMAGH', 'MALLOW', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'AOR1', 'AOR INTERNATIONAL TRANSPORT LTD', 'accounts@aorinternationaltransport.com', '086 8382574', 'AGLISH', 'COACHFORD', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'ARA1', 'ARAN VIEW FILLING STATION LTD', 'j4aran@yahoo.com', '065 7075995', 'DOOLIN CROSS', 'DOOLIN', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'ARD1', 'ARDFERT FUELS', 'centraardfert@gmail.com', '066 7134050', 'T/A HORGAN\'S CENTRA', 'ARDFERT', 'CO.KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'ARD2', 'ARDGROOM POST OFFICE', '', '2774003', 'BEARA', 'WEST CORK', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'ARD3', 'ARDFERT QUARRIES', 'accounts@aqp.ie', '066 7134144', 'SACKVILLE,', 'ARDFERT', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'ARK', 'JOHN COLLINS', '', '214775973', 'ARKIL LTD', 'BALLYHANDLE QUARRY', 'CROSSBARRY, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'ARK1', 'ARKIL LTD,  RATHANGAN', 'roseobrien@arkil.ie', '045 524520', 'DRENNANSTOWN', 'RATHANGAN', 'CO. KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'ARM1', 'DIRECTOR OF TRANSPORT', '', '01 8046741', 'C/O TOM MASTERSON', 'MCKEE  BARRACKS', 'BLACKHORSE AVENUE, DUBLIN 7', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'ASP1', 'ASPEL\'S CENTRA', 'aspelspar@gmail.com', '029 50622 Catherine acc', 'KANTURK', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'ATL O', 'ATLANTIC OILS LTD', 'kwiseman@atlanticoils.com', '066 7134184', 'TRALEE ROAD', 'ARDFERT', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'AUD1', 'AUDI CORK', 'andreasemetas@blackwatermotors.ie', '1850 449500', 'BANDON ROAD ROUNDABOUT', 'BISHOPSTOWN', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'AUT1', 'AUTOPORT SERVICE STATION', '', '51371631', 'CORK ROAD', 'WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'AVI1', 'EVERYGREY (AVIS CAR RENTAL)', 'nora.naughton@budget.ie', '090 6627711', 'ATHOLONE ROAD', 'ROSCOMMON', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'B CHS', 'BALLINCOLLIG COACHES', 'balcoach@eircom.net', '021 4873828', 'WOODVIEW', 'INNISCARRA', 'CO.  CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'B&D1', 'BYRNES AND DILLON LTD', '', '6321300', 'LOVELANE,', 'CHARLEVILLE,', 'Co. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'B1', 'BARRYS SERVICE STATION,', '', '061 351797', 'BARRY\'S CROSS,', 'FRIARSTOWN,', 'GRANGE, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'B10', 'BUCKLEYS GARAGE,', 'buckleycarsale@eircom.net', '029 50686', 'KANTURK,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'B11', 'HEITON BUCKLEY', '', '021 4966955', 'BUILDERS MERCHANTS,', 'TORY TOP ROAD,', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'B12', 'BEAL NA BLATH,', '', '021 7336373', 'SERVICE STATION,', 'CROOKSTOWN,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'B14', 'JOHN BARRY', '', '021 4871946', 'SERVICE STATION,', 'INNISCARRA,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'B2', 'PAUL BUCKLEY CAR SALES', '', '029/506861', 'MALLOW ROAD,', 'KANTURK,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'B3', 'BRENDAN MEAGHER', 'jennifer.meagher31@gmail.com', '058 54204', 'BALLYSAGGART', 'LISMORE', 'CO. WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'B4', 'BROOKLODGE SERVICE STATION,', '', '021 4866090', 'BROOKLODGE,', 'GLAMIRE,', 'CO.CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'B6', 'BRODERICK FILLING STATION', 'brodericksfillingstation.shan@yahoo.ie', '021 4646132', 'SHANAGARRY', 'MIDLETON', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'B7', 'BARRYS COACHES', 'info@barrycoaches.com', '021 4505390', 'THE GLEN,', 'MAYFIELD,', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'BAL1', 'BALLINALARD LOGISTICS LTD', 'niall@ballinalardlogistics.com', '062 52401', 'BALLINALARD', 'TIPPERARY TOWN', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'BAL2', 'BALLYMORE OIL LIMITED', 'BALLYMOREOILS08@GMAIL.COM', '458644999', 'MULLABODEN', 'BALLYMORE EUSTACE', 'CO KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'BAN1', 'BANNER OIL', '', '065 9050179', 'KILMIHILL', 'KILRUSH', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'BAN2', 'BANDON CO-OP HEAD OFFICE', 'accounts@bandoncoop.ie', '023 8841409', 'WATERGATE STREET', 'BANDON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'BAN3', 'BANDON CO-OP ENNISKEANE', '', '(023) 884 7866', 'ENNISKEANE', 'CO CORK', 'INV BAN2', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'BAN4', 'BANDON CO-OP KILBROGAN', '', ' 023 882 9000', 'KILBROGAN HILL', 'BANDON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'BAN5', 'BANDON CO-OP KINSALE', '', '021 477 4080', 'FARM LANE', 'KINSALE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'BAR1', 'JAMES BARRETT & SONS', 'jim@coppeenconcrete.com', '238847205', 'COPPEEN,', 'ENNISKEANE,', 'CO, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'BAR2', 'BARRYROE CO-OP LTD', 'accountspayable@barryroeco-op.ie', '021 4778221  0238840000', 'BALLINSPITTLE BRANCH', 'KINSALE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'BAR3', 'SEAN BARRY', '', '', 'BARRY\'S FILLING STATION', 'INNISCARRA', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'BAR4', 'BARRA OIL LTD', 'lindaokeeffe@yahoo.co.uk', '657071021', 'ENNIS ROAD', 'ENNISTYMON', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'BAR5', 'BARRETT AGRI', 'THERESA@COPPEENCONCRETE.COM', '023 8847005', 'COPPEEN', 'ENNISKEEN', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'BAR6', 'JAMES AND THERESA BARRETT', 'etbarrettshop@gmail.com', '023 8847205', 'Trading as BARRETTS SHOP', 'COPPEEN', 'ENNISKEANE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'BAR7', 'BARRYROE CO-OP LTD', 'accountspayable@barryroeco-op.ie', '023 8840000', 'LISLEVANE  (HEAD OFFICE)', 'BANDON', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'BAR8', 'BARRYROE CO-OP LTD', 'accountspayable@barryroeco-op.ie', '023 8846207', 'INCHY BRIDGE', 'TIMOLEAGUE', 'BANDON, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'BAR9', 'BARRYROE CO-OP LTD', 'accountspayable@barryroeco-op.ie', '023 8849605', 'KILBRITTAIN BRANCH', 'KILBRITTAIN', 'BANDON, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'BARRY', 'BARRY GROUP', 'accounts@barrys.ie', '02230168/02230100', 'UPPERQUARTERTOWN', 'MALLOW', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'BAT1', 'BATES OIL', 'accounts@batesoil.com', '053 9143978', 'ARDCAVAN,', 'CO-WEXFORD', 'Y35 W354', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'BC1', 'BC TRANSPORT LTD.,', '', '021 4355505', 'WALLINGSTOWN,', 'LITTLE ISLAND,', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'BDG', 'BRENDAN DUGGAN', '', '', 'GALTEE VIEW HOUSE', 'CASHEL ROAD', 'TIPPERARY TOWN, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'BEA1', 'TESTING', '', NULL, 'BEARYS CROSS', 'CO WATERFORD', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2021-02-17 23:46:55', 0, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'BEA2', 'BEARY\'S CROSS SERVICE STATION,', 'johnny.mcgrath2@hotmail.com', '878292184', 'BEARYS CROSS,', 'CO WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'BEE1', 'NORTH BRIDGE SERVICE STATION', 'beechinornbss@gmail.com', '6320444', 'LIMERICK ROAD', 'KILMALLOCK', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'BEH1', 'BRIAN BEHAN', 'colm_white@msn.com', '045 892673', 'CELLBRIDGE ROAD', 'CLANE', 'CO. KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'BEN1', 'BENNETTS OF ROXBORO LTD', 'trbennetts@gmail.com', '61311110', 'ROXBORO ROAD', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'BFS1', 'BLARNEY FILLING STATION', 'blarneyfillingstation@gmail.com', '021 4381789', 'SHEAN LOWER', 'BLARNEY', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'BHQ', 'ARKIL', 'roseobrien@arkil.ie', '021/4775988', 'BALLYHANDLE QUARRIES', 'CROSSBARRY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'BIN1', 'MR BINMAN', 'info@mrbinman.com', '086 8638941', 'HEAD OFFICE, FLOOR 2, ASHBOURNE HALL,', 'ASHBOURNE BUSINESS PARKS,', 'DOCK ROAD, LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'BL OIL', 'BLARNEY OIL', '', '021 4385444', 'MONARD', 'RATHPEACON', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'BL S', 'BLENHEIM SYSTEMS', 'blenheim@baltor.co.uk', '042 938 0388', 'CARRICKARNON', 'RAVENSDALE', 'DUNDALK, CO LOUTH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'BLA1', 'BLACKWATER MOTORS', 'andreasemetas@blackwatermotors.ie', '025 49500', 'DUBLIN ROAD', 'FERMOY', ' CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'BLA2', 'BLARNEY AUTO CENTRE', 'blarneyautocentre@live.ie', '021 4381528', 'THE SQUARE', 'BLARNEY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'BLA3', 'BLACKWATER LEASE OPT', 'andreasemetas@blackwatermotors.ie', '021 434 5900', 'FORGE HILL', 'BALLYCUREEN', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'BNM 1', 'BORD NA MONA', 'fsscpayables@bnm.ie', '043 3321117', 'MOUNT DILLON WORKS', 'LANESBOURAGH', 'CO. LONGFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'BNM 2', 'BORD NA MONA', 'FSSCPAYABLES@BNM.IE', '057 9345900', 'BOORA WORKS', 'LEABEG', 'TULLAMORE, CO OFFALY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'BNM 3', 'BORD NA MONA', 'FSSCPAYABLSE@BNM.IE', '090 9674114', 'BLACKWATER', 'SHANNAGHBRIDGE', 'ATHLONE, WESTMEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'BOH1', 'SUPERVALU', 'ANNEMARIE@boherbuecoop.ie', '029 76004', 'BOHERBUE CO-OP', 'BOHERBUE', 'MALLOW, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'BOI', 'BANK OF IRELAND FINANCE\'', 'marylouise.murphy@boi.com', '', 'PO BOX 5225', 'DUBLIN 22', 'ATT MARY LOUISE MURPHY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'BON1', 'BABCOCK INTERNATIONAL GROUP', 'maureen.walsh@babcockinternational.com', '021 4888801', 'MISSION CRITICAL SERVICES ONSHORE LTD', 'UPPER BALLYGARVAN', 'KINSALE ROAD, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'BOS1', 'BEN O\' SULLIVAN,', 'ben.osullian@kerry.ie', '6382002', 'BALLYAGRAN STORES,', 'KILMALLOCK,', 'CO. LIMERICK', '', '', 'INVOICE ON KAGR A/C', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'BOW1', 'E. & J.G. BOWLER,', '', '876724672', 'CAMP,', 'TRALEE,', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'BOW2', 'JOHN BOWLER', 'reekskillarney@gmail.com', '064 6636883', 'CENTRA THE REEKS', 'TRALEE ROAD', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'BOW3', 'BOWLER GARAGE', 'bowlers@toyota.ie', '064 6631032', 'BALLYCASHEEN', 'KILLARNEY', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'BRA1', 'BRADLEY EUROPEAN HAULAGE LTD', 'bradleysales@eircom.net', '074 9322714', 'UMRICAM,', 'BUNCRANA,', 'CO. DONEGAL', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'BRA2', 'TOMANGA LTD T/A TONY BRADY & SONS', 'gabybrady1@gmail.com', '057 8662621', 'ABBEYLEIX ROAD', 'PORTLAOISE', 'CO LAOISE', '', 'R32W66V', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'BRC1', 'B & R COMMERCIAL', 'bandrcommercialsltd@gmail.com', '026 42488', 'ARDNACRUSHY', 'CLONDROHID', 'MACROOM, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'BRE1', 'NOEL BRENNAN,', '', '', 'KILNAGRANGE,', 'KILMACTHOMAS,', 'CO. WATERFORD.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'BRE2', 'BREEN LOGISTICS LTD', 'patricia@breentrans.com', '51562000', 'DUNMAIN', 'NEW ROSS', 'CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'BRO1', 'BROWNE BROS SITE SERVICES LIMITED,', '', '026 48130', 'LOUGHLEE,', 'KILLINARDRISH,', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'BRO2', 'ALAN BROWNE', 'alan.browne@nypro.com', '', 'RUFT DOCTOR', 'BARRACK HILL', 'RATHMOYLE, CO KILKENNY', '', 'R95 AAP02', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'BROS', 'TRIA WEST CORK OIL', 'ACCOUNTS@TRIA.IE', '2248234', 'BROSNAN OIL', 'LISCARROLL', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'BRY1', 'BYRNES RETAIL LTD T/A CENTRA', '355-Hacketstown-Owner@SuperValu.ie', '059 8632533/34/35', 'TONLEGEE,', 'ATHY,', 'CO KILDARE', '', 'R14EV66', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'BUC1', 'BUCKLEY SERVICE STATION', '', '061 380016', 'DOON', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'BUC2', 'MICHAEL BUCKLEY', 'NO EMAIL ADDRESS', '062 46617', 'MAIN STREET', 'BALLYLANDERS', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'BUR1', 'SWIFT SERVICE STATION', 'stephenmowens@gmail.com', '', 'BURGESS', 'KILLEAGH', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'BUR2', 'JOE BURKE', '', '', 'AMBER SERVICE STATION', 'TEMPLEMORE', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'BWG1', 'MASTERLINK LOGISTICS LTD', 'accountspayable@masterlink.ie', '021 4382914', 'T/A BWG FOODS', 'UNIT 3,', 'BLARNEY BUSINESS PARK, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'BYR1', 'BYRNES STORES LTD', 'byrnesstores@outlook.ie', '0402 36112', 'MAIN STREET,', 'AUGHRIM,', 'CO-WICKLOW', '', 'Y14F7P9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'C SS', 'COMERAGH SERVICE STATION', 'andrewdillon82@gmail.com', '526122905', 'WATERFORD ROAD', 'CLONMEL', 'Co. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'C&D', 'C&D LIMITED,', '', '', 'RIVERSTICK,', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'C1', 'COONEY\'S GARAGE,', '', '217334011', 'COACHFORD,', 'CO.CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'C10', 'COLLINS OIL PRODUCTS LTD.,', '', '2345417', 'UNDERHILL,', 'DUNMANWAY,', 'Co. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'C11', 'COURTBRACK STORES,', '', '021 4382447', 'COURTBRACK,', 'BLARNEY,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'C12', 'IARNROD EIREANN', '', '021/ 4557042', 'PENROSE WHARF,', 'CO.CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'C13', 'COLEMAN DONAL', '', '021 4885101', 'HALFWAY,', 'BALLINHASSIG,', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'C14', 'CRONINS COACHES,', 'mary@croninscoaches.com', '021 4309090', 'SHANNON BUILDINGS,', 'MALLOW ROAD,', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'C16', 'JIM CAREY CAR SALES LTD', '', '052 42077', 'KILCORAN SERVICE STATION,', 'KILCORAN,', 'CAHIR, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'C17', 'SEAN COLLINS MOTOR LTD', 'scollinsmotors@gmail.com', '028 31206', 'SERVICE STATION,', 'BANTRY ROAD', 'DRIMOLEAGUE, co cork', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'C18', 'CLASSIC BUILDING SOLUTIONS.,', '', '021 4875833', 'OVENS,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'C2', 'CAHIR OIL', 'cahiroilltd@gmail.com', '052 7441014', 'CAHIR', 'CO. TIPPERARY.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'C3', 'CASEY OF BALTIMORE', '', '028 20197', 'BALTIMORE', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'C5', 'C.R.L OIL', '', '064 32677', 'LISSIDIGEEN', 'KILLARNEY,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'C6', 'JOHN CROWLEY', '', '217339001', 'RYLANE', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'C7', 'COLLINS SERVICE STATION', '', '217338064', 'NEWCESTOWN', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'C8', 'COCA COLA', '', '064 31042', 'FAIRHILL,', 'KILLARNEY,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'C9', 'CURTINS SERVICE STATION', '', '021/4886107', 'RATHDUFF SERVICE STATION,', 'RATHDUFF,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'CAH1', 'CAMO FUELS LTD T/A ESSO SERVICE STATION', 'SPARTHURLES@GMAIL.COM', '052 7441154', 'DUBLIN ROAD', 'CAHIR', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'CAH2', 'CAHERCONLISH SERVICE STATION', 'caherconlish@centra.ie', '61338287', 'MAIN STREET', 'CAHERCONLISH', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'CAH3', 'CAHALANE BILLY SERVICE STATION LTD', 'costcutterbandon@gmail.com', '023 8820859', 'MAIN CORK ROAD', 'BANDON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'CAL1', 'JONAS AND BETTY CALLANAN', 'jonascallanan@live.ie', '062 57128', 'THE CROSS', 'EMLY', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'CAL2', 'CALOR GAS', 'Nicola.Maguire@calorgas.ie', '1850 812 450', 'LONG MILE ROAD', 'DUBLIN 12', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'CAL3', 'CALLAN CO OP', 'coop-callan@londisretailers.ie', '567725146', 'WEST STREET', 'CALLAN', 'CO. KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'CAM', 'CAMP S/S', '', '', 'CAMP', 'TRALEE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'CAM1', 'Camelot Property Management Ltd.,', '', '01 8809270', 'Unit 3 The Business Centre,', 'Northwest Business Park (phase 3),', 'Blanchardstown, DUBLIN 15', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'CAM2', 'CAMIER\'S GALA', 'CAMIERSGALA@GMAIL.COM', '028 37414', 'MAIN STREET', 'BALLYDEHOB', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'CAMP', 'CAMPUS OIL LTD,', 'info@campusoil.ie', '051 425208', 'MARSH MEADOWS', 'NEW ROSS', 'CO. WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'CAN1', 'DENIS & NIALL CANTY', '', '087 2497882', 'REAROUR', 'AHERALA,', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'CAN2', 'CANAVANS LONDIS RETAILERS', 'canavan-inch@londisretailers.ie', '0402 37161', 'INCH,', 'GOREY,', 'CO-WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'CAP1', 'CAPITALFLOW', 'pdoyle@capitalflow.ie', '01 5632400', '2ND FLOOR BLOCK A', 'THE CRESCENT BUILDING', 'NORTHWOOD BUSINESS PARK, SANTRY , DUBLIN 9', '', 'D09 X8W3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'CAP2', 'CAPPAMORE SERVICE STATION', 'beechinornbss@gmail.com', '', 'DROMSALLY WOODS,', 'CAPPAMORE', 'CO-LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'CAR 1', 'CARRIG ROAD SERVICE STATION', 'sparroscrea@hotmail.com', '0505 23488', 'PARKMORE', 'ROSCREA', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'CAR1', 'CARRIG SHOP', 'scarrig@eircom.net', '656838633', 'DRUMQUIN', 'TIERMACLANE', 'ENNIS, CO. CLARE ', '', 'V95 E2XE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'CAS', 'CASTLETOWNBERE FISHERMAN CO-OP', 'donal@ctbfishcoop.eu', '027 70045', 'DANISH ISLAND', 'CASTLETOWNBERE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'CAS1', 'CASH SALES', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'CAS2', 'JOHN AND EILEEN CASEY,', 'jpcaseyjb@hotmail.com', '029 60368', 'CASEY\'S FILLING STATION,', 'JOHNS BRIDGE,', 'KANTURK, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'CASE', 'CASEYS SERVICE STATION', '', '2750591', 'GLENGARIFFE RD', 'BANTRY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'CASH', 'CASHELL MOTOR WORKS - BAD DEBT', 'BAD DEBT', '062 70900', 'CORK RD', 'CASHELL', 'CO TIPPERARY', '', '', '***BAD DEBT*****', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'CAT1', 'CATARE LTD', 'riverstickcentra@fcos.ie', '021-4838408', 'CENTRA FOOD MARKET', 'RIVERSTICK', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'CAT2', 'CATROCK COMPANY LTD', 'edmhogan@eircom.net', '051-640407', 'GREENSIDE', 'CARRICK ON SUIR', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'CAV1', 'Cavecourt  S/S', '', '052 67312', 'Skeheenarinky', 'Burnfort', 'Cahir, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'CAV2', 'CAVAN GENERAL HOSPITAL', 'michelle.smith@hse.ie', '041-9875200', '2 R212 LISDARAN', 'CAVAN', 'H12 PC80', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'CCB1', 'C&C BUILDERS PROVIDERS', 'sales@candcproviders.com', '053 9137606', 'SCREEN', 'CO WEXFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'CCT', 'CLARE COUNTY TRUCKING', 'deborah@irishtrucking.ie', '065 6829261', 'DRUMCLIFFE', 'ENNIS', 'CO. CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'CDC1', 'CDC LTD', 'info@cdcltd.ie', '', 'FAO: COLM DESMOND', 'BERRINGS', 'DRIPSEY, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'CEI1', 'CEILING & ALLIED SERVICES LTD,', '', '', 'KILNAP,', 'MALLOW ROAD,', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'CEL1', 'Celtic Fuels (Texoil )', '', '021 4873424', 'Poulavoune', 'Ballincollig', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'CEN1', 'CEDARGLADE LIMITED', 'coco.ap@musgrave.ie', '01 2557769 SITE', 'T/A CENTRA GREYSTONES', 'GREYSTONES', 'CO WICKLOW', '', '', 'STORE NO 1105', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'CEN2', 'CENTRA CAVAN', 'AccountsMullagh@centra.ie', '469242458', 'ARDLO MANOR', 'MULLAGH', 'CO CAVAN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'CEN3', 'CENTENARY THURLES CO-OP', 'bclarke@centenarythurles.com', '0504 91900', 'TEMPLEMORE ROAD', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'CEN4', 'CENTRA CROSSBARRY', 'gold-242@centra.ie', '021 4775577', 'CROSSBARRY', 'INNISHANNON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'CFI1', 'CFIELD CONSTRUCTION LTD', 'therese.ennis@cfield.ie', '021 6019010', '4TH FLOOR,', 'CENTRE PARK HOUSE,', 'CENTRE PARK ROAD, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'CILL1', 'CILLBREAC LTD', 'londisdingle@gmail.com', '066 9150628', 'MILLTOWN', 'DINGLE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'CIR1', 'CIRCLE K CLONARD WEXFORD', 'info@dirrhilldev.com', '', 'NEWLINE STORES', 'CLONARD ROAD', 'WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'CIT1', 'CITY DIRECT BUS LTD', 'accounts@citydirect.ie', '91564776', 'LOUGH ATALIA ROAD', 'GALWAY CITY', 'H91 CDD8', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'CLA1', 'CLANCY CONSTRUCTION,', '', '052 52166', 'DRANGAN,', 'THURLES,', 'CO. TIPPERARY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'CLA2', 'CLANCYS FOODSTORE LTD', 'clancysfoodstore@gmail.com', '061 348848', 'GRIFFENS CROSS', 'BLACKWATER', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'CLA3', 'A/C CANCELLED', 'daybreakshops@gmail.com', '066 7102249', 'CLAREMORRIS DAYBREAK LTD', 'BALLYHAUNIS ROAD', 'CLAREMORRIS, CO MAYO', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'CLA4', 'CLARE\'S LEADING STORE LTD', 'danmcinerneysennis@gmail.com', '065 6828029', 'T/A DAN MC INERNEYS & SONS', 'MILL ROAD', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'CLG', 'CLG LTD', '', '', 'WHITESCROSS', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'CLO1', 'CLONREASK SERVICE STATION', '', '061 398656', 'RYANS CENTRA SUPERMARKET', 'CLONREASK', 'ASKEATON, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'CLO2', 'CLONROCHE AGRI BUILD LTD', 'sales@clonrocheagri.com', '053 9244856', 'ROSS ROAD', 'CLONROCHE', 'ENNISCORTHY, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'CLO3', 'CLOYNE FILLING STATION', 'liamr7@gmail.com', '021 4652689', 'RIVER STREET', 'CLOYNE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'CM', 'CORK METAL COMPANY LTD', 'linda.osullivan@corkmetalco.ie', '021 4309910', 'DUBLIN HILL', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'CN', 'PAT NAUGHTON', '', '069 64081', 'KILSCANNELL', 'ARDAGH', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'COB', 'CATHERINE O BRIEN', '', '087 6507734', '28 AN GRAIQNAN', 'BALLIN ROAD', 'DUNGARVAN, CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'COG1', 'COGNIS IRELAND LTD', '', '021 4517100', 'LITTLE ISLAND INDUSTRAIL ESTATE', 'LITTLE ISLAND', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'COG2', 'COGAN\'S CARRIGALINE', 'accounts@cogans.ie', '214852500', 'CORK ROAD', 'CARRIGALINE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'COH', 'COH TRANSPORT', '', '214884584', 'BALLNABOURTAGH', 'CARRIGNABHEAR', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'COL G', 'COLLINS GARAGE', 'e_collins@eircom.net', '022 48222', 'LISCARROL', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'COL1', 'COLLINS & QUINLAN', 'millgrange@eircom.net', '061 227472', 'STATOIL SERVICE STATION', 'DOORADOYLE', 'LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'COL2', 'COLLINS GALA EXPRESS & FILLING STATION', 'galatarbert100@gmail.com', '068 29809', 'CHAPEL STREET', 'TARBERT', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'COL3', 'THOMAS COLLINS', '', '', 'SHANDAGAN', 'CARRIGADROIDH', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'COM1', 'JADE PROPERTIES LTD', '', '5222905', 'DAVIS ROAD', 'CLONMEL', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'CONB', 'Con Barry', '', '5852789', 'Barry\'s Service Station', 'Cappoquinn', 'Co.Waterford', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'CONO', 'DO NOT USE THIS ACCOUNT', 'ger.looney@conocophilips.com', '4.41E+11', 'WHITEGATE REFINERY LTD', 'PO BOX 96', 'IMMINGHAM, uk', '', 'DN40 9AP', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'COO', 'COOLMORE CONSULTANCY SERVICES LTD,', '', '', 'KILLARNEY,', 'CO. KERRY.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'COO1', 'COOLAGH SERVICE STATION GARVEYS', 'heleng@garveygroup.ie', '058 42071', 'GARVEY\'S HEAD OFFICE', 'ROCK STREET', 'TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'COO2', 'THE COONEY FURLONG GRAIN CO LTD', 'nbolger@cooneyfurlong.com', '539122735', 'DRANAGH', 'CAIM', 'ENNISCORTHY, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'COO3', 'COOGAN AGRI & GENERAL HARDWARE', 'geraldine@cooganhardware.com', '0402 38111', 'LUGDUFF', 'TINAHELY', 'CO WICKLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'COO4', 'COOLMORE STUD', 'ehally@coolmore.ie', '052 6130281', 'FETHARD', 'CLONMEL', 'CO. TIPPERARY', '', 'E91 XK26', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'COO5', 'GALA BALLYROAN', 'techno2001@eircom.net', '', 'COOLNABACCA LTD', 'BALLYROAN', 'PORTLAOISE, CO LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'COO6', 'MIDLAND SERVICE STATION BORRIS-IN-OSSORY', '', '', 'COOLNABACCA LTD', 'BORRIS-IN-ORRORY', 'CO. LAOISE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'COP S', 'COPPEEN SAND & GRAVEL CO LTD', '', '023 8847205', 'COPPEEN', 'ENNISKEANE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'COP W', 'DO NOT USE THIS ACCOUNT', '', '021 4622318', ' c/o CONOCOPHILLIPS NORGE', 'Att : INVOICE HANDLING', 'PO BOX 393, STAVANGER  NORWAY', '', 'N - 4067 ', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'COP1', 'COPE FOUNDATION', 'hartem@cope-foundation.ie', '021 464 3283', 'FAIR STREET', 'MALLOW', 'CO. CORK', '', 'P51 E229', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'COR1', 'CORRIB OIL', 'uhayes@corriboil.com', '066 7121022', 'DROMTACKER', 'LISTOWEL RD', 'TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'CORP01', 'CORPAX LTD', 'jimnoconnor@gmail.com', '', 'CRONINS YARD', 'CROOKSTOWN', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'COS1', 'COSTCUTTERS,', '', '', 'BALLYHEA,', 'CHARLEVILLE,', 'Co. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `code`, `name`, `email`, `workphone`, `address1`, `address2`, `address3`, `address4`, `eircode`, `notes`, `status`, `created_at`, `updated_at`, `account_type_id`, `service_contract`, `no_of_tanks`, `pos`, `cc_email_1`, `cc_email_2`, `cc_email_3`, `cc_email_4`, `cc_email_5`) VALUES
(224, 'COS2', 'EAMON COSGRAVE', '', '879270007', 'MULCAHIR DRIVE', 'ANNACOTTY', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'COS3', 'COSTCUTTER MALLOW', 'cotoole@supermacs.ie', '2222295', 'MACS PLACE LTD', 'LIMERICK RD', 'MALLOW, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'COS4', 'COSTCUTTER GRENAGH', 'costcuttergrenagh@gmail.com', '214886727', 'MATSUE LTD', 'GRENAGH', 'MALLOW, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'COSG', 'PAUL COSGRAVE', 'cosgrave_oil@eircom.net', '61377777', 'COSGRAVE OIL', 'CASTLECONNELL', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'COT1', 'KIERAN COTTER', 'cotterkieran@hotmail.com', '', 'C/O TEXACO SERVICE STATION', 'EASTERN ROAD', 'KINSALE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'COT2', 'COTTER & KEANE LTD', 'cotterandkeane@eircom.net', '023 8845115', 'WEST MILLS, KILBARRY RD', 'DUNMANWAY', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'CP1', 'CORK PLASTICS (MANUFACTURING) ULC', 'accountspayable@cpm.ie', '021 4510600', 'LITTLE ISLAND', 'CORK.', 'T45 TX05', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'CRA', 'CRAIG O NEILL HAULAGE LTD', '', '', 'CARRIGILEENA', 'BWEEING', 'MALLOW, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'CRE1', 'ROBERT CREED', '', '062 53003', 'ELTON SERVICE STATION', 'ELTON', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'CRE2', 'CREMIN COACHES', 'info@cremincoaches.com', '', 'KEALKIL', 'BANTRY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'CRE3', 'CREMINS SHOP AGHABULLOGUE', 'cremins.shop@gmail.com', '021 7334057', 'DROMATIMORE,', 'AGHABULLOGUE,', 'CO-CORK', '', 'P12 YY96', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'CRO', 'JIM CROWLEY LTD.,', '', '', 'BEAL NA BLATH,', 'CROOKSTOWN,', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'CRO1', 'CROKES SERVICE STATION', '', '', 'MOICOIN', 'CO KILKENNY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'CRO2', 'CROSS REFRIGERATION LTD', 'jwalsh@cross-refrig.ie', '01 4511915', 'FITZS BOREEN', 'MALLOW ROAD', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'CRO3', 'CRONIN SERVICE STATION', 'croninsfoodstore@gmail.com', '', 'BALLYLICKEY', 'BANTRY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'CRO4', 'SEAN CROWLEY', 'crowleysfillingstation@gmail.com', '064 6689136', 'FILLING STATION', 'KENMARE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'CRO5', 'CROSBIE TRANS CAR LTD', 'carina@crosbietranscar.com', '214507655', 'TIVOLI INDUSTRIAL  ESTATE', 'TIVOLI', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'CRO6', 'CROWES MINISTER\'S CROSS', 'crowesservicestation@gmail.com', '061 369132', 'MAXOL SERVICE STATION', 'THE MINISTERS CROSS', 'SIXMILEBRIDGE, CO CLARE', '', 'V95 AEY0', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'CRO7', 'TIMOTHY CROWE JUNIOR', 'croweskilkishen@gmail.com', '061 367854', 'KILKISHEN', 'CO. CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'CROW', 'CROWLEY ENGINEERING', 'info@crowley.ie', '0214396666 EX214', 'UPPER GLANMIRE BRIDGE', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'CUH1', 'AMBULANCE HEADQUARTERS, MR JOHN MCCARTHY', '', '', 'UNIT 5A AMBULANCE HEAD QUARTERS,', 'SOUTH LINK BUSINESS PARK,', 'KINSALE ROAD, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'CUR1', 'MRS. CURRAN,', '', '', 'LEAP,', 'CO.CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'CUR2', 'DARYL CURRAN TRANSPORT SERVICES', 'BAD DEBT', '45252017', 'PLUCKERSTOWN, KILMEAGUE', 'NASS', 'CO. KILDARE', '', '', '****BAD DEBT*********', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'CUR3', 'JOHN C CURRAN', 'office@currans.email', '059 9721117', 'CURRANS SERVICE STATION', 'LEIGHLINBRIDGE', 'CO CARLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'CWD', 'COUNTY WIDE DRAIN SERVICES LTD', '', '021 7334550', 'CRONODY', 'DRIPSEY CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'D & H', 'DOWN\'S & HOWARD', '', '', '7A WEST GATE BUSINESS PARK', 'KILLRUSH ROAD', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'D ST', 'DENIS STACK', '', '', 'CORNER  HOUSE', 'ABBEYFEALE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'D&G1', 'DAVE CONROY', 'dconroy44@eircom.net', '025 84938', 'D&G CONROY', 'FERMOY ROAD', 'MITCHELSTOWN, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'D1', 'TEDDY DUNNE', '', '2648007', 'POST OFFICE', 'CARRIGADROHID', 'CO CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'D10', 'DAIRYGOLD,', '', '', 'CLOUGHDUV,', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'D2', 'GILES DRAKE', '', '023 44712', 'DISTILLERY ROAD,', 'BANDON,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'D3', 'DAIRYGOLD AGRI BUSINESS LIMITED', 'accountspayable@dairygold.ie', '022 47152 DENIS', 'ACCOUNTS PAYABLE DEPARTMENT', 'CLONMEL ROAD', 'MITCHELSTOWN, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'D4', 'DUCON CONCRETE LTD.', 'accounts@duconconcrete.com', '029 56037', 'KANTURK,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'D5', 'DALY\"S SERVICE STATION,', '', '066 9474842', 'MURREIGH,', 'WATERVILLE,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'D6', 'DONEGAN\'S GARAGE', '', '063 80082', 'SERVICE STATION,', 'MILFORD,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'D7', 'MIKE DILLANE', 'dillanesgarage1@eircom.net', '064 7756228', 't/a DILLANES GARAGE & FILLING STATION', 'GNEEVEGUILLA', 'RATHMORE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'D8', 'JAMES DOHERTY    ,DO NOT USE', '', '61395813', 'RATHKEALE ROAD,', 'ADARE,', 'CO. LIMERICK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'DAI1', 'DAIRYGOLD LOMBARDSTOWN', 'lombardstown@dairygold.ie', '(022) 47152', 'LOMBARDSTOWN', 'MALLOW', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'DAI2', 'DAIRYGOLD CO OP CARRIGALINE', 'ekelleher@dairygold.ie', '(021) 437 2308', 'KILMONEY ROAD LOWER', 'CARRIGALINE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'DAI3', 'DAIRYGOLD CO OP GARRYSPILLANE', 'garryspillane@dairygold.ie', '062 - 53109', 'GARRYSPILLANE', 'KILLMALLOCK', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'DAI4', 'DAIRYGOLD CO OP CLONDROHID', '', '(026) 41707', 'CLONDROHID', 'MACROOM', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'DAL1', 'DALY\'S FILLING STATION', 'michaeldaly.scartaglin@gmail.com', '066 7147022', 'SCARTAGLIN', 'CO KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'DAL2', 'DALYS SERVICE STATION', '4DICKDALY@EIRCOM.NET', '056 8831221', 'JOHNSTOWN', 'CO KILKENNY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'DAN1', 'DAN O\' SHEA SERVICE STATION,', '', '066 9158166', 'INCH,', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'DAN2', 'DANIEL KICKHAM', 'dmkickham@gmail.com', '', 'CARRIG-A-FOYLE', 'ENNISCORTHY', 'CO-WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'DAV', 'DAVE HODKINSONS', '', '', 'PATRICKS WELL SERVICE STATION', 'PATRICKS WELL', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'DAV1', 'DAVSEA LTD', 'davidryanhome@gmail.com', '862645012', 'DUBLIN ROAD', 'FERMOY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'DAVE', 'DAVE CURTIN', '', '061 396611', 'ARDHEALY', 'STATION ROAD', 'ADARE, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'DAY1', 'DAYBREAK NURNEY', 'daybreaknurney@gmail.com', '045 526320', 'THE VILLAGE GREEN', 'NURNEY', 'CO KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'DE1', 'DENN FOODS', 'GDenn@denn.ie', '5854100', 'PAT DENN AGRICULTURE LTD', 'CAPPAQUINN IND ESTATE', 'CAPPOQUINCO WATERFORD', '', 'P51 W290', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'DEI', 'DEICE FUELS do not use', '', '5845151', 'BURGERY', 'DUNGARVAN', 'CO, WATERFORD.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'DEM1', 'DEMPSEY OF CORK LIMITED', 'info@dempseyofcork.com', '021 4866005', 'BROOKHILL', 'GLANMIRE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'DEM2', 'DEMPSEYS GALA', 'dempseysgala@gmail.com', '863687531', 'D4 COURT RETAIL LTD', 'PATRICK STREET', 'PORTARLINGTON, CO OFFALY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'DEMP', 'DEMPSEY\'S FOODSTORE', '', '021 4887474', 'MINANE BRIDGE', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'DEN', 'DENNEHY BUILDERS LTD', 'dennehybuilders@eircom.ne', '021  4303573', 'CASTLEMARKET STREET', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'DEP', 'DEPARTMENT OF DEFENCE', '', '', 'RENMORE', 'GALWAY', 'CO. GALWAY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'DER1', 'DERRY HARRINGTON', '', '026 48012', 'KILLINARDRISH', 'CO-CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'DES1', 'DESMOND LIVESTOCK LTD', 'suzannedesmond71@gmail.com', '086 2592191', 'SOUTH BERRINGS', 'COACHFORD', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'DES2', 'SEAN DESMOND TRANS LIMITED', '', '', 'COACHFORD', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'DEV1', 'DEVOYS GARAGE LTD', 'devoysgarage@eircom.net', '059 9140400', 'TULLOW ROAD', 'CARLOW', 'ATT JOHN DEVOY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'DEV2', 'DO NOT USE THIS ACCOUNT USE C2 CAHIR OIL', '', '', 'KEDRA,', 'CAHIR,', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'DEWH', 'DENIS WHITE', '', '', 'THE BRIDGE SHOP', 'TOOMS BRIDBE', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'DGH', 'DAVID GLEESON & SON HAULAGE', '', '', 'FARREN', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'DIL1', 'T & S DILLON', 'tsdillon@eircom.net', '061 397336', 'BANOGUE CROSS', 'CROOM', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'DILL1', 'DILLANE\'S SERVICE STATION', 'dillane-abbeyd@londisretailers.ie', '066 7135138', 'ABBEYDORNEY', 'TRALEE', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'DILL2', 'ANDREW DILLON', 'andrewdillon@eircom.net', '', 'TEXACO SERVICE STATION', 'JACKSONS CROSS CAHIR ROAD', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'DKC1', 'DKC STORES LTD', 'clocarao@gmail.com', '086 8831222 JUNE', 'T/A LUGSDUFF CENTRA TOPOIL', 'LUGSDUFF TINAHELY', 'CO WICKLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'DLG', 'DL ENGINEERING GROUP', '', '021 4876650', '1 HODDERS VILLA', 'BALLINCOLLIG', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'DLS1', 'D.L. Service Station', '', '063 89477', 'Cork Road', 'Charleville', 'Co Cork', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'DMG1', 'DMG ENERGY LTD(in voluntary liquidation)', 'dwalsh@bakertillyrg.ie', '14965388', 'c/o George Maloney', 'Baker Tilly Ryan Glennon', 'Trinity , Charleston Road Ranelagh, Dublin 6', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'DOB1', 'DOBBS OIL LTD', '', '059 - 9151323', 'INDUSTRIAL ESTATE', 'TULLOW', 'CO CARLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'DOC1', 'Denis O CallaghanTransport', '', '086 3065616', 'Drominagh', 'Co Cork', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'DOL1', 'NOEL DOLLERY\'S', '', '063 90755', 'AMBER STATION', 'BRUREE', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'DON01', 'DONNYBROOK SERVICE STATION', 'sales@breensuzuki.com', '214363595', 'DOUGLAS', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'DON1', 'TONYS TIPP TOP SHOP', 'kieran.hogan@unitedmetals.ie', '067 42042', 'BALLYCOMMON', 'NENAGH', 'CO TIPPERARY', '', 'E45 P596', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'DOO1', 'DOONBEG GOLF COURSE', 'dgriffin@trumphotels.com', '087 4108230 BARRY MURPHY', 'FAO: DIARMUID GRIFFIN', 'DOONBEG', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'DOO2', 'DAN DOOLEY GROUP LTD', 'sales@dan-dooley.ie', '6253103', 'THE CROSS', 'KNOCKLONG', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'DOR1', 'DORAN OIL', 'info@doranoil.ie', '0504 45554', 'GARRANROE,', 'THURLES,', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'DOR2', 'SISTER ITA LTD T/A DORAN OIL', 'info@doranoil.ie', '0504 45554', 'KILLASTAFFORD CROSS', 'KILLASTAFFORD', 'CASHEL, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'DOW', 'DENIS J DOWNEY LTD', 'nora@downeytransport.com', '021 7337038', 'TRANSPORT AND WAREHOUSING', 'GURRANEREDMOND', 'DONOUGHMORE, CO CORK', '', ' P32 NY27', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'DOW1', 'DOWNES SERVICE STATION', 'richdownes@eircom.net', '053 9136237', 'WELLS,', 'GOREY,', 'CO. WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'DOY1', 'DOYLES FOODSTORE', '', '', 'CLONCOOL', 'O\' CALLAGHANS MILLS', 'CO.CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'DRE1', 'DREA\'S FILLING STATION', 'NO EMAIL', '45522089', 'STATION ROAD', 'KILDARE TOWN', 'CO KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'DRI1', 'DRINAGH CO-OP', 'boneill@drinaghco-op.ie', '', 'DRINAGH', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'DRI2', 'DRIVE SERVICE STATION, GOREY', 'Accounts@driveservicestations.ie', '053 9424426', 'HARBOUR ROAD, COURTOWN,', 'GOREY', 'CO. WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'DRI3', 'DRIVE SERVICE STATION CARLOW', 'accounts@driveservicestations.ie', 'PAY DATE 10TH OF MONTH', 'LEIGHLINN BRIDGE', 'CO CARLOW', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'DRI4', 'DRIVE SERVICE STATION BALLINABOOLA', 'accounts@driveservicestations.ie', '051 428441', 'BALLINABOOLA', 'CO. WEXFORD', 'Y35 EPH0', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'DRI5', 'DRIVE SERVICE STATION ENNISCORTHY', 'Accounts@driveservicestations.ie', '', 'MILE HOUSE', 'ENNISCORTHY', 'CO.WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'DRI6', 'CENTRA / GREAT GAS PORTLAOISE', 'accounts@driveservicestations.ie', '057 8665245', 'MOUNTMELLICK ROAD', 'PORTLAOISE', 'CO LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'DRI7', 'DRIVE SERVICE STATION  CENTRA TUBBERCURR', 'accounts@driveservicestations.ie', '071 918 6092', 'SLIGO ROAD', 'TUBBERCURRY', 'CO SLIGO', '', 'F91 CKW2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'DRI8', 'DRIVE SERVICE STATION - QUARRY PARK', 'Accounts@driveservicestations.ie', '', 'QUARRY PARK,', 'ENNISCORTHY,', 'CO-WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'DRI9', 'DRIVE SERVICE STATION - PORTLAOISE', 'Accounts@driveservicestations.ie', '', 'MOUNTRATH ROAD,', 'BOGHLONE,', 'PORTLAOISE, CO LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'DRO', 'DELANEY RYAN OIL', '', '062 63244', 'KILLISTAFFORD CROSS', 'DUALLA ROAD', 'CASHEL, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'DRO1', 'DROMBANE CO OP AGRI & DAIRY SOCIETY LTD', 'drombanefeeds@gmail.com', '0504 54136', 'DROMBANE', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'DTS', 'Doyle\'s Topshop - BAD DEBT', 'BAD DEBT', '064 6622849', '31 Woodlawn Park', 'Killarney', 'Co Kerry', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'DUN1', 'DUNKEEN OIL LTD.,', '', '', 'PORTLAOISE,', 'CO. LAOIS.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'DUN2', 'JAMES DUNNE ENGINEERING LTD', 'jdunne@jdengineering.com', '045 895232', '7 MORELL LAWN', 'NAAS', 'CO.KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'DUN3', 'DERMOT DUNNE', '', '0504 54259', 'DROMBANE', 'THURLES', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'DUN4', 'DUNDALK OIL PRODUCTS', '', '868210031', 'UNIT 45 BRUREE BUSINESS PARK', 'ARDEE ROAD', 'DUNDALKCO LOUTH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'DUNLAOG1', 'DUN LAOGHAIRE MARINA', 'ruth@dlmarina.com', '01 2020040', 'HARBOUR ROAD', 'DUN LAOGHAIRE', 'DUBLIN', '', 'A96 D376', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'DW', 'DENIS WHITE DO NOT USE', '', '', 'TOOMS BRIDGE', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'DW 1', 'DYMPNA WATSON', 'pheasantchaser@yahoo.ie', '063 83400', 'NORTH ROAD SERVICE STATION', 'DRUMCOLLOGHER', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'E O C', 'EAMON O CONNOR', '', '', 'AMBULANCE DEPARTMENT', 'KERRY GENERAL HOSPITAL', 'RATHASS, TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'E1', 'IRISH AGGREGATES', '', '021/ 4872733', 'CLASSIS,', 'OVENS,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'E2', 'RADIO TELEFIS EIREANN,', '', '021 4805890/4805805', 'FATHER MATHEW STREET,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'E3', 'ROSS OIL COMPANY LTD.,', '', '021 7335010', 'FARNANES,', 'CO.CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'E5', 'SCOTT ENGINEERING LTD', 'hildadscott@gmail.com', '045 895 895', 'CONFREYS', 'CRADDOCKSTOWN', 'NASS, CO KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'E6', 'EAST CORK OIL LTD.,', 'rlucey@eastcorkoil.com', '021 4631206', 'BROOMFIELD WEST,', 'MIDLETON,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'EAS1', 'EAST CORK OIL 1 MIDLETON SITE', '', '214631206', 'BROOMFIELD WEST', 'MIDLETON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'EAS10', 'EAST CORK OIL 10 FARNANES', '', '021-7335010', 'ROSS OIL', 'KNOCKSHANAWEE', 'FARNANES, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'EAS11', 'EAST CORK OIL 11 BROSNA SITE', '', '068-44211', 'INCHINAPOAGH', 'BROSNA', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'EAS12', 'EAST CORK OIL 12  CLARE OIL SITE', '', '065-6838042', 'TIERMACLANE', 'ENNIS', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'EAS13', 'EAST CORK OIL 13 UNECOLWATERFORD', '', '051-392400', 'CORK RD', 'WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'EAS14', 'EAST CORK OIL 14 UNECOL KILKENNY', '', '056-7755989', 'CALLAN', 'CO KILKENNY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'EAS15', 'EAST CORK OIL 15  CRL KILLARNEY SITE', '', '064-6632677', 'UPPER LISSIVIGEEN', 'KILLARNEY', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'EAS16', 'EAST CORK OIL 16  D.OIL SITE', '', '023-8845417', 'UNDERHILL', 'DUNMANWAY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'EAS17', 'EAST CORK OIL 17 JOHN O NEILL SITE', '', '063-81800', 'RAILWAY ROAD CHARLEVILLE', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'EAS18', 'EAST CORK OIL 18 TRALEE SITE', '', '066-7121155', 'KERRY PETROLEUM SITE', 'TRALEE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'EAS19', 'EAST CORK OIL 19 SKIBBREEN SITE', '', '028-21024', 'SOUTH OF IRELAND', 'SKIBBREEN', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'EAS2', 'EAST CORK OIL 2  AGLISH SITE', '', '024-96222', 'AGLISH', 'CAPPAQUINN', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'EAS20', 'EAST CORK OIL 20 CLONAKILTY SITE', '', '023-8833251', 'SOUTH OF IRELAND', 'CLONAKILTY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'EAS21', 'EAST CORK OIL 21 WEXFORD SITE', '', '539233014', 'BLACKSTOOPS', 'OLD DUBLIN ROAD', 'ENNISCORTHY, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'EAS22', 'EAST CORK OIL 22 CAHERSIVEEN SITE', '', '', 'QUAY STREET', 'CAHIRCIVEEN', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'EAS23', 'EAST CORK OIL 23 TARA OIL', 'KKETT@EASTCORKOIL.COM', '61440077', 'DOCK ROAD', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'EAS24', 'EAST CORK OIL 24 TARA OIL', '', '061 361216', 'BUNRATTY', 'CO. CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'EAS25', 'EAST CORK OIL 25 TALLOW CO WATERFORD', '', '', 'SOUTH OF IRELAND PETROLEUM', 'CONVENT ST.', 'TALLOW, CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'EAS26', 'EAST CORK OIL 26 OLD CORK RD MALLOW', '', '', 'SOUTH OF IRELAND PETROLEUM', 'OLD CORK ROAD', 'MALLOW, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'EAS27', 'EAST CORK OIL  27 BURGESS KILLEAGH SITE', '', '', 'BURGESS', 'KILLEAGH', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'EAS28', 'EAST CORK OIL 28 ROUND HILL', 'stephenmowens@gmail.com', '023 8852846', 'ROUNDHILL SERVICE STATION', 'ROUND HILL', 'OLD CHAPEL, BANDON , CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'EAS29', 'EAST CORK OIL FOYNES', '', '', 'MAXOL FILLING STATION', 'FOYNES', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'EAS3', 'EAST CORK OIL 3  COMERAGH OIL WATERFORD', '', '058-43700', 'DUNGARVAN BUSINESS PARK', 'CO WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'EAS30', 'EAST CORK OIL TIMOLEAGUE SITE', '', '086 2583544', 'CREGANE,', 'TIMOLEAGUE', 'P72 Y447', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'EAS31', 'EAST CORK OIL - THURLES (VALE OIL)', 'fosullivan@eastcorkoil.com', '050-421811', 'CASTLEMEADOWS,', 'GORTATAGGART,', 'THURLES, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'EAS32', 'EAST CORK OIL NEW ROSS (VALE OIL)', 'fosullivan@eastcorkoil.com', '051-422168', 'ROSBERCON,', 'NEW ROSS,', 'CO-WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'EAS33', 'EAST CORK OIL CLONMEL (VALE OIL)', 'fosullivan@eastcorkoil.com;', '052-6121043', 'PRIOR PARK,', 'CLONMEL,', 'CO-TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'EAS34', 'EAST CORK OIL CARLOW (VALE OIL)', 'fosullivan@eastcorkoil.com', '059-9131814', 'TULLOW ROAD,', 'CARLOW,', 'CO-CARLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'EAS35', 'EAST CORK OIL KILKENNY (VALE OIL)', 'fosullivan@eastcorkoil.com;', '056-7722067', 'HEBRON INDUSTRIAL ESTATE,', 'KILKENNY CITY,', 'KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'EAS36', 'EAST CORK OIL MOATE', '', '090-6481213', 'DUBLIN ROAD,', 'BAWNOGES,', 'MOATE, CO WESTMEATH', '', 'N37 W2H3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'EAS4', 'EAST CORK OIL 4 KILDORRERY SITE', '', '022-25510', 'SHREELAWN OIL', 'KILDORRERY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'EAS5', 'EAST CORK OIL 5  NEWMARKET SITE', '', '029-60034', 'SHREELAWN OIL', 'NEWMARKET', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'EAS6', 'EAST CORK OIL 6  BANSHA SITE', '', '062-54011', 'SHREELAWN OIL', 'BANSHA', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'EAS7', 'EAST CORK OIL 7  DOCK RD SITE', '', '061-400611', 'SHREELAWN OIL', 'DOCK ROAD', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'EAS8', 'EAST CORK OIL 8 MILL OILS SITE', '', '2970612', 'MACROOM ROAD', 'MILSTREET', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'EAS9', 'EAST CORK OIL 9 ENNISKEANE SITE', '', '023-8839383', 'ROSS OIL', 'WHITESGATE', 'CASHELMORE, ENNISKEANE CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'EGA1', 'EGAN COACHES', '', '', 'ROSEHILL IND. ESTATE', 'BALLINACURRA,', 'MIDELTON. CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'EH1', 'EAMON HOBBINS', '', '', 'COOLROE', 'KILORGLIN', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'EIV1', 'EIVERS ESSO SERVICE STATION', 'johneivers@gmail.com', '567761521', 'IRISHTOWN', 'CO KILKENNY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'ELY1', 'WARA SUPERMARKETS LTD (THURLES)', 'elythurles@centra.ie', '0504 23778', 'ELY\'S FILLING STATION', 'SLIEVENAMON ROAD,', 'THURLES, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'ELY2', 'WARA SUPERMARKETS LTD (URLINGFORD)', 'ELYTHURLES@CENTRA.IE', '056 8838634', 'ELY\'S SERVICE STATION', 'MAIN STREET', 'URLINGFORD, CO KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'EMO1', 'EMO LOCK QUAY SERVICE STATION', '', '', 'CLARE STREET', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'EMO2', 'EMO SERVICE STATION', 'doleary@petrosystems.ie', '6831137', 'CONVENT ROAD', 'ABBEYFEALE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'EPH1', 'EPH CONTROLS', 'trevorcasey@ephcontrols.com', '021 4346238', 'UNIT 4 DOUGHCLOYNE COURT', 'DOUGHCLOYNE IND ESTATE', 'WILTON, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'EST1', 'ESTUARY FUEL DISTRIBUTION,', 'jimmulcair@estuaryfuel.com', '069 65588', 'FOYNES,', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'ETB', 'USE BAR6 ACC **EDWARD & THERESA BARRETT', 'etbarrettshop@gmail.com', '023 8847205', '*EDWARD & THERESA BARRETT SHOP ACCOUNT', 'COPPEEN', 'ENNISKEANE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'EUR1', 'EURO-MED LTD', '', '214378022', 'LOUGHBEG', 'LITTLEISLAND', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'EUR2', 'EUROFUELS DISTRIBUTORS LTD', '', '051 830380', 'THE OLD CREMARY', 'RATHPATRICK', 'SLIEVERUE, CO KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'EXE1', 'CORK EXPRESS PALLETS', 'sales@corkexpresspallets.com', '872586996', 'UNIT 16', 'GB BUSINNESS PARK', 'LITTLEISLAND, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'F2', 'FIVE MILE SERVICE STATION,', '', '021 4888186', 'FIVE MILE BRIDGE,', 'BALLINHASSIG,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'F3', 'FLOW MANAGEMENT LTD.,', '', '01 4564789', '6 TURNPIKE BUSINESS PARK,', 'BALLYMOUNT ,', 'DUBLIN 22.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'F4', 'FOLEYS SERVICE STATION,', 'centratimoleague@gmail.com', '023 8846839', 'TIMOLEAGUE,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'F5', 'FITZGERALD GROCERY & SERVICE STATION', '', '0504  428644', 'CABRA ROAD', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'F6', 'JOHN FOLEY', '', '066 9764056', 'MOUNTHENRY,', 'FIRIES,', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'F7', 'FITZGERALD COMMERCIALS,', '', '021 4633077', 'YOUGHAL ROAD,', 'MIDLETON.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'FAH1', 'FAHEY COUNTRY CONVENIENCE', '', '0504 54011', 'METAL BRIDGE', 'UPPERCHURCH', 'THURLES, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'FAH2', 'MAURICE FAHEY MINI COACH HIRE', '', '058 44688', 'PULLA', 'DUNGARVAN', 'CO WATERFORD', '', 'X35 E379', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'FAS1', 'FASTNET JET ALLIANCE', 'mark.casey@afta.ie', '021 4888747/4888500', 'BALLYGARVAN UPPER', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'FCR', 'FINBAR CREED', '', '', 'BALLINGEARY', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'FEA1', 'MICHAEL FEARON', '', '', 'DROGHEDA', 'CO LOUTH', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'FEN1', 'FENNELLY FUELS LTD', 'ryanpatricia9@gmail.com', '2532717', 'CORK ROAD', 'FERMOY', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'FERI', 'CIARAN FERITTER', 'laffeyc@gmail.com', '094 9540922', 'C/O ROUNDFORT STORES LTD', 'HOLLYMOUNT', 'CO MAYO', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'FEX1', 'FEXCO ASSET FINANCE UNLIMITED COMPANY', 'smoriarty@fexcoassetfinance.com', '066 9761258', 'IVERAGH ROAD,', 'KILLORGLIN', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'FIS1', 'FISHER\'S STORES LTD', '968-baltinglass-store@centra.ie', '059 6482633 THERESA', 'CENTRA BALTINGLASS', 'EDWARD STREET', 'BALTINGLASSCO, CO WICKLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'FIT1', 'SEAMUS FITZGERALD,', '', '', 'FITZGERALD FILLING STATION,', 'HOSPITAL,', 'CO. LIMERICK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'FIT2', 'FITZGERALD TYRE CENTRE,', 'Diarmuid.Ryan@brookfieldretail.com', '068 21040', 'TARBERT ROAD', 'LISTOWEL', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'FIT3', 'DAVE FITZPATRICK', 'aideenfitzpatrick@eircom.net', '061 351179', 'FITZPATRICKS SERVICE STATION', 'BALLYNEETY', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'FIT4', 'FITZGIBBONS GARAGE LTD', 'fitzgibbonsgarage@hotmail.com', '2495113', 'KILLEAGH', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'FIT5', 'FITZ MAURICE CHADWICK', 'FITZMAURICECHADWICK@GMAIL.COM', '50451389', 'MAIN STREET', 'BORRISOLEIGH', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'FL 2', 'FLANCARE LTD', '', '043 335030', 'ATHLONE ROAD', 'LONGFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'FLA', 'FLANCARE LTD', '', '5226800', 'CLONMEL', 'CO. TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'FLA1', 'MARTIN FLAHERTY', '', '214886105', 'GRENAGH', 'CO.CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'FLA2', 'PAUL FLAHERTY - BAD DEBT', '', '091 505725', 'NA HAILLE', 'INVERIN', 'GALWAY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'FLA3', 'FLANAGAN\'S SERVICE STATION', '', '053 9159958', 'CASTLEBRIDGE,', 'CO. WEXFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'FLO1', 'FLOGAS LTD', 'acronin@flogas.ie', '041 9815700', 'KNOCKBRACK HOUSE', 'MATTHEWS LANE', 'DONORE ROAD, DROGHEDA, CO LOUTH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'FLY1', 'DENIS O\' FLYNN,', '', 'O214667137', 'LADY\'SBRIDGE,', 'CASTLEMARTYR,', 'CO.CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'FLY2', 'FLYNN\'S SERVICE STATION', '', '021 4771752', 'RIVERSTICK', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'FLY3', 'GERARD & MARY FLYNN LTD', 'info@flynnscoaches.com', '066 9767330', 'TULLIGMORE', 'KILLORGLIN', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'FLY4', 'O FLYNN MOTORS LTD', 'sales@oflynnmotors.ie', '022 20808', 'LIMERICK ROAD', 'MALLOW', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'FOG', 'FRANK O GORMAN SERVICE STATION', '', '065 9056696', 'CARRIGAHOLT ROAD', 'KILLKEE', 'CO. CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'FOL1', 'FOLEYS SPAR EXPRESS', 'nataliawestcarrig@gmail.com', '066 976118', 'IVORY ROAD', 'KILLORGLIN', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'FOL2', 'FOLEY ROCK', '', '', 'ACCOUNT SET UP FOR MONIES RECEIVED', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'FOL3', 'FOLEYS INVER SERVICE STATION', 'trish@westcarrig.com', '064 6633907', 'GORTROE', 'FOSSA', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'FOR1', 'FORECOURT & TECHNICAL SERVICES,', '', '16266641', 'ESSMORE HOUSE,', 'JAMESTOWN ROAD,', 'DUBLIN 8', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'FRA1', 'FRANCY DALY MOTORS', '', '065 6824429', 'ESTUARY FILLING STATION', 'LIMERICK ROAD', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'FRBL', 'FRANK BLACKWELL SERVICE STATION', '', '052 7466370', 'ARDFINNAN', 'CO. TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'FRE1', 'FRESH AND EASY', 'freshneasyinverin@gmail.com', '091 505725', 'OZERLINE LTD', 'NA HAILLE', 'INVERIN, CO GALWAY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'FUE1', 'FUELTEK LTD', 'jennys@fuelteck.co.uk', ' 0044 1254 291391', 'LAND COURT, NUTTALLS WAY', 'SHADSWORTH BUSINESS PARK', 'BLACKBURN , uk', '', 'BB1 2JT', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'FUR1', 'FURLONG FLOORING LTD', 'pwalsh@furlongflooring.com', '14092001', 'UNIT A,', 'BALLYMOUNT CROSS INDUSTRIAL ESTATE,', 'NAAS ROAD, DUBLIN 24', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'G CHEM', 'GREENCHEM HOLDING B.V', '', '31 765812727', 'P.O. BOX 1101', 'NL-4801BC BREDA', 'THE NETHERLANDS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'G.E.', 'G.E.CAPITAL WOODCHESTER LTD', '', '', 'BAY 77 SHANNON FREE ZONE', 'SHANNON', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'G.I.M', 'GREAT ISLAND MOTORS', 'info@greatislandcarrentals.com', '021 4811609', 'RUSHBROOKE', 'COBH', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'G1', 'ROBERT GUERIN', 'guerins1@gmail.com', '029 70015', 'BALLYDALY', 'MILLSTREET', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'G10', 'GEANEY OIL Dingle', 'kwiseman@atlanticoils.com', '066 7134184', 'DINGLE', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'G2', 'GRAINGER SAWMILLS LTD.,', '', '023 22800', 'ENNISKEANE,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'G3', 'GOOD FISH PROCESSING LTD.', 'l.weldon@goodfish.ie', '021 4373917', 'IND PARK ,CROSSHAVEN RD.,', 'CARRIGALINE,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'G4', 'JIM GLEESON', '', '021 7331138', 'POST OFFICE,', 'FARRAN,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'G5', 'GLANBIA', 'TriciaPower@glanbia.ie', '025 36337', 'CASTLELYONS', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'G6', 'G & E BOWLER,', '', '066 7130111', 'CAMP,', 'CO. KERRY.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'G7', 'EAMONN GLEESON TYRES,', 'EAMONGLEESONTYRESLTD@EIRCOM.NET', '527441399', 'FILLING STATION,', 'CARNIGEEN ESTATE,', 'CAHIR. CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'G8', 'GLENMORE STORES,(CEASED TRADING)********', '', '214821802', 'GLENMORE,', 'GLANMIRE', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'G9', 'GEANEY OIL,', 'kwiseman@atlanticoils.com', '669767272', 'CASTLEMAINE,', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'GACI', 'GARVEY GROUP (CI)', 'castleisland@garveyssupervalu.ie', '(066) 714 2232', 'CHURCH STREET', 'CAHEREEN EAST', 'CASTLEISLAND, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'GADG', 'GARVEY GROUP (DG)', 'dungarvan@garveyssupervalu.ie', '058 45333', '117 ROCK STREET', 'TRALEE', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'GADI', 'GARVEY GROUP (DI)', 'dingle@garveyssupervalue.ie', '(066) 915 1397', 'HOLY GROUND', 'DINGLE', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'GAL1', 'GALCO LIMITED', '', '', 'TRAMORE ROAD', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'GAL2', 'GALTEE SERVICE STATION - BAD DEBT', 'BAD DEBT', '062 52077', 'LIMERICK ROAD', 'CO TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'GAL3', 'GALA CAHERCONLISH SERVICE STATION', '', '061 351219', 'CAHERCONLISH', 'CAPPAMORE', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'GAL4', 'GALFER FILLING STATION LTD', 'aiden.healy@yahoo.ie', '906457455', 'HILL STREET', 'CLOGHAN', 'CO OFFALY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'GANW', 'GARVEY GROUP (NW)', 'deirdrec@garveygroup.ie', '(069) 77444', 'ST MARYS ROAD', 'NEWCASTLEWEST', 'CO LIMERICK', '', 'V42 KW35', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'GAR1', 'VERA GARY', 'ngarry925@gmail.com', '', 'TOP SERVICE STATION', 'TINNAHASK', 'OIL GATE, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `code`, `name`, `email`, `workphone`, `address1`, `address2`, `address3`, `address4`, `eircode`, `notes`, `status`, `created_at`, `updated_at`, `account_type_id`, `service_contract`, `no_of_tanks`, `pos`, `cc_email_1`, `cc_email_2`, `cc_email_3`, `cc_email_4`, `cc_email_5`) VALUES
(443, 'GAS1', 'GASH TRANSPORT', 'ops.gashtransport@outlook.com', '238829048', 'AVALON, CASTLELACK', 'BANDON', 'CO CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'GEE1', 'GEELANS SHOP & FILLING STATION', 'GEELANS@EIRCOM.NET', '053 9139384', 'WADDINGTON', 'CLEARSIESTOWN', 'WEXFORD', '', 'Y35 W30E', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'GEN1', 'GENEVA STORES (CAMPUS)', '', '', 'CRETTYARD', 'CO-LAOIS R93 K4W8', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'GER', 'GER MC GRATH', '', '066 7194367', 'C/O HORANS SERVICE STATION', 'CLASH CROSS', 'TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'GGP', 'EMO OIL LTD T/A GREAT GAS', 'purchaseledger@dccoilireland.com', '44289706107', 'D/O DCC ENERGY LTD', '197 AIRPORT ROAD WEST', 'BELFAST', '', 'BT3 9ED', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'GH1', 'GERARD HAYES,', '', '0505 22366', 'ROSCREA,', 'CO. TIPPERARY.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'GLE1', 'GLENMORE STORES', 'liamring@ymail.com', '021 4821802', 'GLANMIRE', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'GLO1', 'GLOUNTHAUNE SERVICE STATION', 'mlinehan12@gmail.com', '879189246', 'GLOUNTHAUNE', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'GLY1', 'GLYNNS HOMEVALUE', 'LG@GLYNNS.IE', '093 51328', 'MILLTOWN', 'CO GALWAY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'GOU1', 'GOULDING FERTILISERS', 'odonnelld@gouldings.ie', '61392388', 'MORGAN\'S SOUTH', 'ASKEATON', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'GP 1', 'GRAHAM PERROTT', '', '', 'BALLINACARRA HOUSE', 'INNISHANNON', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'GRAS', 'GRASSLAND FERTILISERS', '', '', 'TULRANE ROAD', 'KILKENNY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'GRE', 'GREEN\'S SERVICE STATION', '', '', 'CAPPAMORE', 'CO, LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'GRE1', 'GREYHOUND & PET WORLD,', '', '068 31389', 'CONVENT STREET,', 'Co. LIMERICK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'GRE2', 'GREAT GAS', '', '', 'BANSHA', '(JOHN O NEILLS)', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'GRE3', 'GREENHALL MOTORS (OPEL) LTD', 'yellard@greenhallmotors.com', '022 23338', 'CHARLEVILLE ROAD', 'BUTTERVANT', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'GRE4', 'GREAT GAS FILLING STATION - BAD DEBT', 'BAD DEBTOR', '214320860', 'TURNERS CROSS', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'GRE5', 'GRENKE IRELAND', 'john@lease.ie', '', '5th Floor, River House,', 'Blackpool Retail Centre', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'GRI1', 'GRIFFINS GARAGE LTD', 'griffinsgardenmachinery@eircom.net', '051 294213', 'AHANAGLOUGH', 'KILMACTHOMAS', 'CO. WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'GRS1', 'Greenstar', 'accountspayable@greenstar.ie', '021 4822488/012947909', 'Unit 6,Ballyogan Business Park', 'Ballyogan Road', 'Sandyford, DUBLIN 18', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'GU G', 'GUINEY\'S GARAGE', '', '', 'CURRAGHBEG', 'ADARE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'H-2', 'H 2  GROUP LTD', 'liz@h2group.ie', '6857391', 'SPAR EXPRESS', 'BRIDGE STREET', 'LISTOWEL, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'H1', 'HENNESSEY LORCON,', 'hennessystation@gmail.com', '021 4306060', 'HENNESSEY\'S SERVICE STATION,', 'WHITES CROSS,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'H10', 'HORGAN\'S DELICATESSEN SUPPLIES,', '', '025 41200', 'MITCHELSTOWN,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'H2', 'HEALY-REAS MACE & MAXOL SERVICE STATION', 'donny@joanosullivan.com', '064 6685982/5782', 'SANDYMOUNT,', 'KILGARVAN,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'H3', 'MICHAEL J HURLEY', 'HURLEY.HAULAGE@GMAIL.COM', 'O21 4775920', 'CLOURAGAUN', 'INNISHANNON', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'H4', 'HENNESSY TRANSPORT LTD.,', '', '023 47131', 'ST JOSEPH\'S BALLINEEN', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'H5', 'HERLIHY\'S FILLING STATION', '', '068 31441', 'KILLARNEY ROAD,', 'ABBEYFEALE,', 'CO LIMERICK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'H6', 'MICHAEL J HOARE', '', '066 9761314', 'TULLIGMORE,', 'KILLORGLIN,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'H7', 'HENNESSEY\'S SERVICE STSTION ,', '', '063 89453', 'BALLY HEA,', 'CHARLEVILLE,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'H9', 'HENNESSY\'S SERVICE STATION,', '', '', 'TAUR,', 'NEWMARKET,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'HAL1', 'HALPINS SERVICE STATION', 'jdhalpin1@gmail.com', '061 638108', 'LIMERICK ROAD', 'NEWMARKET-ON-FERGUS', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'HAM1', 'PJ HAMMOND COACH HIRE', 'hammondcoachhire@gmail.com', '+353 22 47396', 'DROMAHANE', 'MALLOW', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'HAN', 'HANNAFIN\'S SERVICE STATION', '', '', 'CAHERAGH', 'DRIMOLEAGUE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'HAN1', 'HANNON\'S SERVICE STATION,', '', '', 'NEWMARKET,', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'HAN2', 'HANLEY AUTOMATION', 'padraig@hanleyautomation.ie', '18833800', 'BRENT HOUSE', 'SWORDS BUSINESS PARK', 'SWORDS, CO DUBLIN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'HAR1', 'HARRINGTON', '', '2646100', 'TERELTON', 'MACROOM', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'HAR2', 'MICHAEL HARNETT', '', '069 84009', 'DEVAN CROSS', 'TEMPLEGLANTINE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'HAR3', 'HARVEY\'S THURLES', '', '0504 29277', 'RACECOURSE ROAD,', 'GORTATAGGART,', 'THURLES, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'HART', 'HARTNETTS SERVICE STATION', '', '', 'ABBYFEALE', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'HAY1', 'DAMIEN HAYES', '', '', 'ASPLEL\'S CENTRA', 'KANTURK', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'HD1', 'HOSE DOCTOR LTD', 'shane@hosedoctor.ie', '14190675', 'UNIT F1 RIVERVIEW BUSINESS PARK', 'NANGOR ROAD', 'DUBLIN 12', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'HEA1', 'HEALY BROS LTD', '', '021 4882315', 'MILEBUSH', 'MIDLETON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'HEG', 'HEGARTY\'S TRUCK BUILDERS', '', '064 6631064', 'MUCKROSS ROAD', 'KILLARNEY', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'HEG1', 'PADDY HEGARTY', '', '087 2596649', 'REGAL GARAGE', 'CASTLETOWNSEND RD', 'SKIBBEREEN, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'HER1', 'HURLEY & WHITE BUILDERS', 'dwathw@eircom.net', '238855272', 'KILBARRY ROAD', 'DUNMANWAY', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'HER2', 'Ryans Investments Ltd', 'joe@mahonfox.com', '', 'Ferrybank', 'Wexford', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'HIC1', 'DONAGH HICKEY MOTORS', 'sales@donaghhickeymotors.com', '064 7758030', 'SHINAGH CROSS', 'RATHMORE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'HIC2', 'VINCENT HICKEY SERVICE STATION', 'VINHICKEY@GMAIL.COM', '', 'KILBRITTAIN', 'BANDON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'HIG1', 'HI-WAY OIL', '', '91566406', 'NEW DOCKS,', 'GALWAY.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'HIN1', 'HINCHY\'S GARAGE LTD', 'jodrea@hinchys.ie', '876796176', 'GARRYSPILLANE', 'KNOCKLONG', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'HIN2', 'HINCH PLANT HIRE LTD', 'accounts@hinch.ie', '057 8624201', 'TOWNSPARK', 'MOUNTMELLICK', 'CO. LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'HIR', 'LYONS OF LIMERICK', 'elainefleming@lyonsoflimerick.com', '061 413344', 'HIRAVAN LTD', 'BALLYSIMON ROAD', 'LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'HOL1', 'COLLEGE ROAD FILLING STATION LTD', 'accountskilkenny@eircom.net', '056 7721724', 'HOLLIGAN\'S SERVICE STATION,', 'COLLEGE ROAD', 'KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'HOL2', 'HOLYCROSS SERVICE STATION', 'HOLYCROSSSERVICESTATION@EIRCOM.NET', '051 590798', 'CORK ROAD', 'WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'HOR1', 'CON HORGAN', '', '087 2626869', 'BELROSE', 'ENNISKEANE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'HOS1', 'HOSETECH', 'fionacooke@hosetech.ie', '021 4520600', 'EURO BUSINESS PARK,', 'LITTLE ISLAND,', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, 'HOW1', 'BOB HOWARDS', '', '647751121', 'LAKEVALE', 'BALLYDESMOND', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 'HOW2', 'NOEL HOWARD TRANSPORT LTD', 'noelhoward123@eircom.net', '6389428', 'ARDNAGEEHY', 'CHARLEVILLE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'HSE1', 'HEALTH SERVICE EXECUTIVE', 'carmel', '066 7184000', 'MAINTENANCE DEPARTMENT', 'KERRY GENERAL HOSPITAL', 'TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'HUR', 'HURLEY\'S SERVICE STATION', 'patriciahurley@eircom.net', '087 2517236', 'AGLISH', 'CAPPAQUIN', 'CO. WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'HUR1', 'CHARLIE O HURLEY', 'coh@ohbconsulting.ie', '061 400515', 'LIQUIDATOR', 'CAREW INVESTMENTS LTD', '26 BARRINGTON STREET, LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'HVG1', 'HVG IRISH RECYCLING LIMITED', 'antoinette@batteryrecycling.ie', '50434946', 'BALLYDUFF', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'HZ1', 'HZ TRANSPORT POLAND', 'beniamin.bednarski@hzpoland.com', '+48 34 32 62 155', 'TRANSPORTOWA 4, KOLONIA', 'KLEPACZKA, 42-260 KAMIENICA,', 'POLAND', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'I1', 'IRISH REFINERY', '', '021 4622237', 'WHITEGATE', 'CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, 'I2', 'IMOKILLY OIL LTD', 'accounts@southernfuels.ie', '021 4633888', 'KNOCKGRIFFIN', 'MIDLETON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 'I3', 'IMOKILLY OIL LTD', 'accounts@southernfuels.ie', '021 4633888', 'COPPEEN', 'ENNISKEANE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 'IIT', 'Irish International Trading,', 'bernadettemccarrick@iitc.ie', '214705800', 'Tramore Road,', 'Cork.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'IMCO', 'IMOKILLY CO-OP', '', '', 'MOGEELY', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 'INV1', 'INVER ENERGY', 'inver@inverenergy.com', '021 4396950', 'RIVER HOUSE', 'BLACKPOOL PARK', 'BLACKPOOL CORK', '', 'T23 R5TF', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, 'IPT', 'IRISH PUMP & TANK', 'nmccoy@irishpumptank.ie', '16267544', 'CHAPELIZOD INDUSTRIAL ESTATE', 'DUBLIN 20', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, 'IRI', 'IRISH TRUCK & TANK', '', '', 'CHAPELIZOD INDUSTRIAL ESTATE', 'DUBLIN 20', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, 'IRI1', 'IRISH PARACHUTE CLUB', 'INFO@SKYDIVE.IE', '046 9730103', 'CLONBULLOGUE', 'EDENDERRY', 'CO OFFALY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, 'J MC H', 'JOHN MC HALE', '', '086 6776916', 'BUILDING SERVICES', '155 CARNLOUGH', 'CABRA, DUBLIN 7', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, 'J&P1', 'JOHNSON & PERROTT LTD.,', 'geoffrey.russell@jpmg.ie', '021 4916300', 'DOUGLAS ROAD,', 'CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 'J. LAM', 'J. LAMBERT & SONS lTD', '', '', 'ARDFINNAN', 'CO. TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, 'J.MC', 'JOHN MC CARTHY ARGRI', '', '', 'BALLYRICHARD', 'CARRIGTWOHILL', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, 'J0S1', 'O SULLIVAN\'S GARAGE', '', '027 70040', 'JAMES O SULLIVAN', 'CASTLETOWNBERE,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 'JAY1', 'JAYBEES', '', '', 'BALLINAKINA', 'DUNMORE ROAD', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'JB', 'JIM BOBS SERVICE STATION,', '', '', 'GRANGE,', 'BALLINCOLLIG,', 'Co.CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 'JC1', 'JACKIE CRONIN', 'info@glynnscoaches.com', '065 6828234', 'GLYNNS COACHES', 'TULLA ROAD', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'JD 1', 'DOWLINGS SERVICE STATION', '', '066 9767316', 'CASTLEMAINE', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 'JD 2', 'JAMES DOHERTY', '', '061 396376', 'DOHERTY\'S FARM MACHINERY', 'ADARE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 'JD1', 'ADARE SERVICE STATION', 'miriamjamesadare@hotmail.com', '', 'KILLARNEY ROAD,', 'ADARE,', 'CO-LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, 'JER1', 'JEREMY MURPHY MOTOR ACCESSORIES,', '', '', 'DRUMCUMMER,', 'kANTURK,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 'JH1', 'JOHN HALPIN', '', '052 7441343', 'CASHEL ROAD', 'CAHIR', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 'JK', 'JOHN KISSANE', 'johnkissane1@yahoo.co.uk', '064 6644272', 'CARNAHONE', 'BEAUFORT', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 'JK1', 'JERRY KEOHANE & OTHERS', '', '', 'BALLYDUFF', 'BAREFIELD', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 'JMC1', 'J & M CARRYOUT', 'carryoutoffice@yahoo.com', '', 'MUCKROSS ROAD,', 'KILARNEY,', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 'JON', 'JOHN O NEILL RETAILING LTD', 'oneilloilltd@eircom.net', '61353864', 'BALLYBROWNE', 'CLARINA', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 'JONE\'S', 'JONES OIL LTD', 'accountspayable@jonesoil.ie', '01 4684800', '407 - 410 THE CAPEL BUILDING', 'MARYS ABBEY', 'DUBLIN 7', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 'JONES1', 'JONES OIL DEPOT', 'carrick@jonesoil.ie', '', 'CARRICK-ON-SHANNON', 'CORTUBBER', 'CO ROSCOMMON', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 'JONES10', 'JONES OIL KILKENNY', 'kilkenny@jonesoil.ie', '', 'CASLECOMER ROAD', 'KILKENNY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 'JONES11', 'JONES OIL DUNDALK', 'dundalk@jonesoil.ie', '', 'BARRACK STREET', 'DUNDALK', 'CO LOUTH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 'JONES12', 'JONES OIL BALLINA', 'ballina@jonesoil.ie', '', 'CULLEENS', 'KILLALA ROAD', 'BALLINA, CO MAYO', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 'JONES13', 'JONES OIL SLIGO', 'sligo@jonesoil.ie', '', 'FINISKLIN ROAD', 'SLIGO', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'JONES14', 'JONES OIL CLONMEL', 'clonmel@jonesoil.ie', '', 'PRIOR PARK', 'CLONMEL', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'JONES15', 'JONES OIL ARKLOW', 'arklow@jonesoil.ie', '', 'RAILWAY YARD', 'ARKLOW', 'CO WICKLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'JONES16', 'JONES OIL CARLOW', '', '', 'RAILWAY YARD', 'CARLOW', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'JONES2', 'JONES OIL DEPOT ATHLONE', 'athlone@jonesoil.ie', '', 'ATHLONE', 'CO WESTMEATH', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'JONES3', 'JONES OIL DEPOT PORTLAOISE', 'portlaoise@jonesoil.ie', '', 'TEA LANE', 'MOUNTHRATH ROAD', 'PORTLAOISE, CO LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'JONES4', 'JONES OIL DEPOT MULLINGAR', 'mullingar@jonesoil.ie', '', 'MULLINGAR BUSINESS PARK', 'CO WESTMEATH', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 'JONES5', 'JONES OIL DEPOT CAVAN', 'cavan@jonesoil.ie', 'ORNA -0494332312', 'FARNHAM', 'CO CAVAN', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 'JONES6', 'JONES OIL TALLAGHT', 'debbie.farrell@jonesoil.ie', '01 462 0404', 'GREENHILLS ROAD', 'TALLAGHT', 'DUBLIN 24', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'JONES7', 'JONES OIL WATERFORD', 'waterford@jonesoil.ie', '(071) 965 0144', 'MANOR STREET', 'WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'JONES8', 'JONES OIL CLAREMORRIS', 'catherine.gaughan@jonesoil.ie', '', 'STATION ROAD', 'CLAREMORRIS', 'CO MAYO', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'JONES9', 'JONES OIL LETTERKENNY', 'letterkenny@jonesoil.ie', '', 'PORT ROAD', 'LETTERKENNY', 'CO DONEGAL', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'JOS1', 'JOHN & MARTINA O\'SULLIVAN', 'lerrigstores@gmail.com', '', 'T/A LERRIG STORES', 'LERRIG CROSS,', 'ARDFERT, CO KERRY', '', 'V92Y76D', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 'JRSS', 'J R. SERVICE STATION', '', '', 'BANSHA ,', 'CO. TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 'JS', 'JOHN SHEEHAN', '', '069 984001', 'TEMPLAGLANTINE', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 'JUS1', 'JUSTSCAN LTD', 'info@justscan.ie', '071 9144599', 'JUST HOUSE', 'BRIDGE STREET', 'SLIGO', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 'JW 1', 'JOHN WARD', 'jward8@eircom.net', '052 6131181', 'WARD\'S GARAGE', 'FETHARD', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 'K KE', 'TEXACO SERVICE STATION', '', '0505 48885', 'MOORE STREET', 'RATHDOWNEY', 'CO LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'K SP', 'KINGSPAN  GSP', 'noreen.farrelly@titanenv.com', '042 9690022', 'DUNDALK ROAD', 'CARRICKMACROSS', 'CO. MONAGHAN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 'K2', 'KENNY TRANSPORT', '', '021 4886186 / 4886303', 'GREYSTONES,', 'GRENAGH,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 'K3', 'KEOHANE READYMIX', '', '023/ 38710', 'BALLYGURTEEN,', 'ROSSMORE,', 'CLONAKILTY, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 'K5', 'DOMINIC KELLY', '', '068 40220', 'SIX CROSSES,', 'LISTOWEL,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'K6', 'KILLARNEY OIL LTD.,', 'killarneyoils@gmail.com', '064 6632159', 'MILL ROAD,', 'KILLARNEY,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'KAGR', 'KERRY AGRIBUSINESS', 'siobhain.kenny@kerry.ie', '063 35413', 'KILMALLOCK ROAD', 'CHARLEVILLE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 'KAV1', 'JJ KAVANAGH & SONS', 'info@jjkavanagh.ie', '818333222', 'MAIN ST.', 'URLINGFORD', 'CO. KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'KAV2', 'PIERCE KAVANAGH PROPERTIES LTD', 'hello@kavanaghcoaches.com', '056 8831213', 'CHURCH VIEW,', 'URLINGFORD,', 'CO. KILKENNY', '', 'E41 W8Y6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'KEA1', 'KEANE\'S SERVICE STATION,', '', '', 'TUAM,', 'CO. GALWAY.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'KEA2', 'KEANE\'S FOODSTORE', 'kaffeell@hotmail.com', '066 7139001', 'FAO: GABRIEL KEANE', 'AUGHACHASLA', 'CASTLEGREGORY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'KEA3', 'KEANE\'S SERVICE STATION', '', '', 'RATHDOWNEY', 'CO LAOIS', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'KEA4', 'KEATINGS LONDIS PLUS SUPERMARKET', 'keatingslondis123@eircom.net', '021 4908444', 'NEWTOWN', 'COBH', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'KEA5', 'KEARNEY\'S OF FENAGH', 'kearneysxl@gmail.com', '599727115', 'FENAGH,', 'BAGNELSTOWN', 'CO. CARLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'KEA6', 'TOM KEANE', 'MIDWESTHS@EIRCOM.NET', '868334116', 'FRANCY DALY GARAGE', 'CLARE ROAD,', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'KEA7', 'GLENFERRY COACHES t/a KEARNEY\'S OF CORK', 'info@kearneysofcork.com', '021 423 2252', 'UNIT 3/4 WATERFRONT BUSINESS PARK', 'LITTLE ISLAND', 'CO CORK', '', 'T45 D883', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'KEH1', 'PAT KEHOE', 'patkehoe02@gmail.com', '051 423640', 'THE ROWER VILLAGE', 'CO KILKENNY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 'KELL1', 'KELLEHERS OF MACROOM', '', '2641521', 'CORK ROAD', 'MACROOM', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 'KEN1', 'JOSEPH KENNY', 'joekennycork@gmail.com', '021 4886186', 'GREYSTONES', 'GRENAGH', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 'KER1', 'KERRY GROUP BUSINESS SERVICES LTD', '', '066 7182000', 'PRINCES STREET', 'TRALEE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 'KER10', 'KERRY AGRIBUSINESS GLENWILLIAM', '', '069 68102', 'GLENWILLIAM', 'BALLINGARRY', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'KER11', 'KERRY AGRIBUSINESS HERBERTSTOWN', '', '061 385277', 'HERBERTSTOWN', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'KER12', 'KERRY AGRIBUSINESS KILRUSH', '', '065 9051007', 'KILRUSH', 'CO CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'KER13', 'KERRY AGRIBUSINESS MILFORD', '', '063 80003', 'MILFORD', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'KER14', 'KERRY AGRIBUSINESS MILTOWN MALBAY', '', '065 7084333', 'MILTOWN MALBAY', 'CO CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'KER15', 'KERRY AGRIBUSINESS NEWCASTLEWEST', '', '069 62033', 'NEWCASTLEWEST', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'KER16', 'KERRY AGRIBUSINESS RATHKEALE', '', '069 64634', 'MAIN STREET', 'RATHKEALE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'KER17', 'KERRY AGRIBUSINESS SCARIFF', '', '061 921057', 'SCARIFF', 'CO CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 'KER18', 'KERRY AGRIBUSINESS KILMALLOCK', 'siobhain.kenny@kerry.ie', '063 98125', 'DEEBERT', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'KER2', 'KERRY FOODS', '', '066 7125088', 'KILLERISK', 'TRALEE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'KER3', 'KERRY AGRIBUSINESS ASKEATON', '', '061 392104', 'ASKEATON', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'KER4', 'KERRY AGRIBUSINESS BELLA CROSS', '', '065 9058037', 'BELLA CROSS', 'CARRIGAHOLT', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'KER5', 'KERRY AGRIBUSINESS CASTELISLAND', '', '066 7163205', 'CASTLEISLAND', 'CO KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'KER6', 'KERRY AGRIBUSINESS COROFIN', '', '065 6837659', 'COROFIN', 'CO CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 'KER7', 'KERRY AGRIBUSINESS ENNIS', '', '065 6820330', 'QUIN ROAD', 'ENNIS', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 'KER8', 'KERRY AGRIBUSINESS ENNISTYMON', '', '065 7071006', 'ENNISTYMON', 'CO CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 'KER9', 'KERRY AGRIBUSINESS FREEMOUNT', '', '022 28623', 'FREEMOUNT', 'CHARLEVILLE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'KEVI', 'KEVIN COLLINS TYRES', '', '4371720', 'UNIT 1', 'KILNAGLEARY BUSINESS PARK', 'CROSSHAVEN ROAD, CARRAGALINE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'KEVL', 'Kevin Lowe', '', '086 6073565', 'Texaco Service Station', 'Grange', 'Co Sligo', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 'KFI', 'KANE FITZ INTERIORS LTD', 'myleskane@hotmail.com', '061 395448', 'ADARE SERVICE STATION', 'ADARE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'KFI2', 'KANE FITZ', 'myleskane@hotmail.com', '61388424', 'T/A DAYBREAK DROMKEEN', 'DROMKEEN,', 'CO-LIMERICK', '', 'V94 VY97', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 'KIE1', 'KIELYS SERVICE STATION', 'kielycentra@gmail.com', '053 9158862', 'ROSSLARE ROAD', 'KILLINICK', 'ROSSLARE, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'KIE2', 'JEREMIAH KIELY', 'DOES NOT HAVE ONE', '052 6131117', 'CLONEEN', 'FETHARD', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 'KIL1', 'KILLEENS SERVICE STATION', 'KILLEENSERVICES@EIRCOM.NET', '053 9145305', 'KILLEEN', 'NEW LINE ROAD', 'WEXFORD, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'KIL2', 'KILLARNEY AUTOS LTD', 'barry@killarneyautos.ie', '064 66 31355', 'PARK ROAD', 'KILLARNEY', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 'KIL3', 'KILMOSS LTD', 'lizcarrigan@hotmail.com', '052 41019', 'BALLYDREHID', 'CAHIR', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'KILD', 'KILDIMO FOOD COURT,', '', '', 'KILDIMO,', 'CO. LIMERICK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'KIR1', 'TONY KIRWAN PLANT HIRE LTD', '', '051 294238', 'BALLYBREAK', 'KILLMACKTHOMAS', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'KIR2', 'TONY KIRWAN CIVIL ENGINEERING LTD', '', '051 294238', 'BALLYBREAK', 'KILLMACKTHOMAS', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'KISS1', 'ANNE KISSANE', 'annekissane@yahoo.ie', '62251238', 'TIPPERARY TOWN', 'CO TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 'KLANE', 'KEVIN LANE', '', '', 'ANGLESBOROUGH SERVICE STATION', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 'KNO1', 'KNOCKDOWN SERVICE STATION', 'tamullane4663@gmail.com', '068 26846', 'ATHEA', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'KO', 'KELL OIL', 'KELLOIL@KELLIHERS.IE', '667120000', 'KELLIHER ENERGY LTD', 'RATHASS', 'TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'KPMG1', ' DAVID SWINBURNE', 'mark.cunningham@kpmg.ie', '216025036', 'FIXED CHARGE RECEIVER OVER CERTAIN ASSET', 'OF TERESA O CALLAGHAN', 'C/O KPMG 90 SOUTH MALL, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'KSS', 'KILLENAULE SERVICE STATION', '', '052 9156172', 'GREAT GAS', 'KILLENAULE', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'KTH', 'KELLTECH ELECTRO MECHANICAL SERVICES LTD', '', '', '14 HILLCREST', 'BALLYMORE EUSTACE', 'CO. KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'KWD', 'KWD RECYCLING', 'accounts@kwd.ie', '', 'AUGHACUREEN', 'KILLARNEY', 'CO.KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'L1', 'LUCEY TRANSPORT LOGISTICS LTD', 'tguiney@luceytransport.ie', '029 70042', 'MILSTREET', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'L2', 'MARGARET LYNCH', 'INV NORMALLY SCELIG OLA', '086/ 3537864/ 0669476165', 'SERVICE STATION,', 'VALENTIA ISLAND.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'L3', 'WEST BUILDING PRODUCTS', '', '021 4372929', 'CARRIGALINE INDUSTRIAL PARK', 'CARRIGALINE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 'L4', 'NA TRI LOCHA FILLING STATION,', '', '', 'DRIMOLEAGUE,', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 'L5', 'LEHANE ENVIRONMENTAL,', '', '021 4351020', 'UNIT 5 WALLINGTON INDUSTRIAL ESTATE', 'LITTLE ISLAND', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, 'L6', 'JOSEPH LANE & SONS LIMITED,', '', '021 4965233', 'BUILDERS & CONTRACTORS,', 'LANE BUSINESS PARK,', 'MONAHAN ROAD, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 'L7', 'MAURICE LYNCH', '', '069 72248', 'SAND & GRAVEL, SERVICE STATION,', 'CASTLEMAHON,', 'CO LIMERICK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 'LAC1', 'LEE AUTO CENTRE', 'jgood@leeauto.ie', '021 4542933', 'MODEL FARM ROAD', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 'LAG1', 'LAGAN ASPHALT LTD', 'INFO@LAGANDUBLIN.COM', '01 8859999', 'T/A LAGAN SOUTH', 'ROSEMOUNT BUSINESS PARK', 'BALLYCOOLIN ROAD, DUBLIN 11', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, 'LAM1', 'PAT LAMBERT', '', '872616906', 'MAIN STREET', 'CAMOLIN', 'CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, 'LAM2', 'LAMBE\'S OIL', 'sales@lambesoil.ie', '057 9321000', 'CLONCOLLIG INDUSTRIAL ESTATE,', 'CLONCOLLIG,', 'TULLAMORE, CO OFFALY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, 'LAN1', 'LANE & SONS LIMITED', 'roderick@lanestralee.com', '066 7121977', 'CLASH INDUSTRIAL ESTATE', 'TRALEE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, 'LAS1', 'LASERCHASER', 'david@laserchaser.ie', '18347000', 'UNIT D19', 'NORTH CITY BUSINESS PARK', 'FINGLAS, DUBLIN 11', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 'LBJ', 'lbj builders', '', '', 'limerick', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, 'LEA1', 'LEAP SERVICE STATION', 'keithcrnn@yahoo.co.uk', '028-34667', 'DROUM', 'LEAP', 'CO-CORK P81 YK16', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, 'LEE1', 'LEE OIL', 'cs@leeoil.ie', '214313261', 'CENTRE PARK ROAD', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, 'LEE2', 'LEESIDE NURSERIES LTD', 'info@leesidenurseries.ie', '026 48012', 'KILLINARDRISH', 'CARRIGADROHID', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, 'LEO1', 'LEONARD VAUGHAN CRASH REPAIRS LTD', 'leonardvaughansgarage@gmail.com', '065 7084734', 'SPANISH POINT ROAD', 'MILTOWN MALBAY', 'CO. CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 'LER1', 'LERRIG STORES', 'lerrigstores@gmail.com', '066 7134716', 'LERRIG', 'CO KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 'LES1', 'LESLIE KIRK - BAD DEBT', 'BAD DEBT', '063 89477', 'CAMPUS SERVICE STATION,', 'CHARLEVILLE,', 'Co. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 'LIA1', 'CAMO FUELS T/A SPAR MAXOL', 'sparthurles@gmail.com', '050422525 EILEEN', 'TURTULLA', 'THURLES', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, 'LID 1', 'LIDDYS - BAD DEBTOR', 'BAD DEBT', '', 'GREAT GAS SERVICE STATION', 'KILMIHELL ROAD', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 'LIE1', 'LIEBHERR CONTAINER CRANES LTD', 'invoices.lcc@liebherr.com', '064 6670266', 'KILLARNEY', 'CO KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 'LIM1', 'LIMERICK HYRAULICS LTD', 'joe@limerickhydraulics.ie', '061 302244', 'UNIT13 ASHBOURNE BUSINESS PARK', 'DOCK ROAD', 'LIMERICK', '', 'V94 R8NI', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 'LIS', 'LISMORE SERVICE STATION', '', '', 'LISMORE', 'CO. WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 'LIS1', 'LISTOWEL TRANSPORT', 'acclistoweltransport@gmail.com', 'thomas 087 1271477', 'BANEMORE', 'LISTOWEL', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 'LIS2', 'LISAVAIRD CO-OP CREAMERY LTD', 'fonsie@lisavairdco-op.ie', '023 8833334', 'LISAVAIRD', 'CLONAKILTY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 'LIS3', 'LISAVAIRD CO-OPERATIVE BALLINASCARTHY', 'fonsie@lisavairdco-op.ie', '238839105', 'BALLINASCARTHY', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, 'LIS4', 'LISAVAIRD CO-OPERATIVE BALLYCUMMER', 'fonsie@lisavairdco-op.ie', '238838609', 'BALLYCUMMER', 'LISROE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, 'LIS5', 'LISAVAIRD CO-OPERATIVE ARDFIELD', 'fonsie@lisavairdco-op.ie', '238840614', 'ARDFIELD', 'CO.CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 'LIS6', 'LISCANNOR SERVICE STATION', 'j4aran@yahoo.com', '', 'LISCANNOR', 'CO CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 'LIS7', 'LISAVAIRD CO OPERATIVE REENASCREENA', 'fonsie@lisavairdco-op.ie', '023 8848148', 'REENASCREENA', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 'LIS8', 'LISAVAIRD CO OPERATIVE MANCH', 'fonsie@lisavairdco-op.ie', '023 8845171', 'BUNANUMERS', 'DUNMANWAY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 'LIT', 'LITTLE ISLAND TRANSPORT LTD', '', '087 2999714', 'CARHOO', 'CARRIGTOWHILL', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 'LK O', 'LIMERICK OIL LIMITED', '', '061 331766', 'NEWPORT ROAD', 'LISNAGRY', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 'LMK1', 'L&M KEATING MARITIME LIMITED', 'info@kilrushmarina.ie', '065 9050090', 'KILMIHIL', 'KILRUSH', 'CO. CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 'LON1', 'JOHN LONG', 'fodaccountants@eircom.net', '', 'GREAT GAS SERVICE STATION', 'BOHER', 'BALLYSIMON, LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 'LOU1', 'LOUGH GUR SERVICE STATION', 'beechinornbss@gmail.com', '063 20444', 'HOLYCROSS,', 'BRUFF,', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 'LOX', 'LOXAM ACCESS LTD', '', '4315984', 'TRAMORE ROAD', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 'LPDO', 'LAURANCE & PATRICA DOYLE', '', '876529870', 'CLONCOOL', 'O\' CALLAGHANS MILLS', 'CO. CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 'LUC1', 'RLBL LTD', 'CAHERNE@fcos.ie', '6381888', 'CENTRA', 'LIMERICK ROAD', 'CHARLEVILLE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 'LUC2', 'LUCEY TRANSPORT LOGISTICS LTD - DUBLIN', 'INFO@LUCEYTRANSPORT.IE', '01-4018670', 'GREENOGUE BUSINESS PARK,', 'RATHCOOLE,', 'CO.DUBLIN', '', '', 'A/C L1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 'LUC3', 'LUCEY TRANSPORT LOGISTICS LITTLE ISLAND', 'INFO@LUCEYTRANSPORT.IE', '021-4353056', 'COURTSTOWN INDUSTRIAL ESTATE,', 'LITTLE ISLAND,', 'CO.CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 'LUC4', 'CHRISTY LUCEY SERVICE STATION LTD', 'accounts@cltransport.ie', '021 45059', 'BALLYMAKEARA,', 'MACROOM,', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 'LUCH', 'LUCEY MOTORS CHARLEVILLE LTD', '', '063 89222', 'LIMERICK RD', 'CHARLEVILLE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 'LYN1', 'Lynch Engineering Ltd', '', '086 8126800', 'Newcastlewest', 'Co Limerick', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, 'LYN2', 'PAT LYNCH', '', '6836117', 'TARBERT', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, 'LYN3', 'L LYNCH & COMPANY LTD', 'tsheridan@leolynch.com', '01 626 1144', 'UNIT 16 FONTHILL INDUSTRIAL PARK', 'FONTHILL ROAD NORTH', 'CLONDALKIN, DUBLIN 22', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, 'LYN4', 'LYNCHS OIL PRODUCTS LTD', 'lynchsoil@gmail.com', '068 27304', 'TULLAMORE', 'BALLYBUNION', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 'LYN5', 'LIAM LYNCH QUARRY & GARAGE', 'liamlynchquarries1@yahoo.ie', '061-397246', 'CARRIGEEN,', 'CROOM,', 'CO-LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 'M DIL', 'MICHAEL & MARGARET DILLANE', '', '', 'GNEEVEGUILLA', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 'M GR', 'MUSGRAVE RETAIL PARTNERS iRELAND', '', '', 'TRAMORE ROAD', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 'M O C', 'MARTIN O CALLAGHAN', '', '021 4373311', 'CIVIL ENGINEER', 'KILMONEY', 'CARRIGALINE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 'M RG', 'MICHAEL MOLONEY', '', '', 'C/O MOLONEY\'S TYRES', 'ROSE GREEN', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `code`, `name`, `email`, `workphone`, `address1`, `address2`, `address3`, `address4`, `eircode`, `notes`, `status`, `created_at`, `updated_at`, `account_type_id`, `service_contract`, `no_of_tanks`, `pos`, `cc_email_1`, `cc_email_2`, `cc_email_3`, `cc_email_4`, `cc_email_5`) VALUES
(666, 'M&J H', 'MICHAEL & JOAN HOULIHAN', 'ballyrafterss@gmail.com', '058 54665', 'C/O LISMORE SERVICE STATION', 'LISMORE', 'CO. WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 'M.S.I', 'M.S.I LTD', 'info@msigroup.ie', '01 8391000', 'UNIT 107', 'BALDOYLE INDUSTRIAL ESTATE', 'DUBLIN 13.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 'M1', 'JIMMY MURPHY', '', '0862391123 / 0214812685', 'TICK KNOCK SERVICE STATION,', 'COBH,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 'M10', 'MC CARTHY GARAGE', 'mccarthyrecovery@gmail.com', '61410771', 'DRUMBANNA,', 'CO. LIMERICK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 'M11', 'MC GRATH OILS,', 'mcgrathoil@hotmail.com', '062 57379 / 57471', 'EMLY,', 'CO. TIPPERARY.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 'M2', 'DEWLANDS SERVICE STATION,', 'irene@jeremycmurphy.net', '086 3848253', 'DROMCUMMER,', 'KANTURK,', 'Co. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 'M3', 'Mc DONALD OIL', '', '4316300', 'FAO: DENISE', 'TOP OIL, TOP HOUSE,', 'PROMENADE ROAD, DUBLIN 5', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 'M4', 'MC SWEENEY DENIS & SON LTD', 'info@dmcsweeneyandson.com', '023 8847130', 'BRIDGE STREET,', 'ENNISKEANE,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 'M5', 'Manutec Limited', '', '069 68144', 'Balingary,', 'Co.Limrick', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 'M6', 'MANOR FARM SERVICE STATION', '', '066 7128000', 'P & T FITZGERLAD (TRALEE) LTD', 'CENTRA,', 'MANOR VILLAGE, KILLERISK, TRALEE, CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 'M7', 'MURPHY TRANSPORT LTD,', 'john.lehane@murphytransport.ie', '021 4916500', 'MARYFIELD,', 'BALLINLOUGH RD.,', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 'M9', 'GEORGE & MICHELLE MURRAY', '', '063 70201/70208', 'T/A  KEANES FOODSTORE,', 'DROMINA,', 'CHARLEVILLE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 'MAC1', 'MACS FILLING STATION', 'jwhelan@supermacs.ie', '091 774170', 'BALLYHEA', 'CHARLEVILLE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, 'MAC2', 'MACE KILDIMO', 'jim@emeraldretail.com', '6965588', 'KILDIMO', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 'MAC3', 'MACE MAXOL SERVICE STATION', 'maceclonmel@gmail.com', '052 6189300', 'MOANGARRIFF ROUNDABOUT', 'CLONMEL', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 'MAC4', 'MANGAN RETAIL PROPERTIES LTD', 'maria@manganproperties.ie', '', 'UNIT 12', 'TRACKLANDS BUSINESS PARK', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 'MAC5', 'MAC-CASS LTD T/A MCL AGRI/SPAR', 'maccass@ymail.com', '', 'BALLYMAHON ROAD,', 'KNOCK,', 'LANESBORO, CO LONGFORD', '', 'N39 Y2A3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, 'MACI', 'MACINTYRES COSTCUTTERS', '', '069 60822', 'SHANNAGOLDEN', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 'MACS', 'DONAL MC CARTHY', 'tcullmac@gmail.com', '087 9299874', 'C/O MAC\'S  S/S', 'SHELBOURNE ST', 'KENMARE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 'MAD1', 'MAD CAT RETAIL LTD', 'dquirkekells@gmail.com', '46 928 0090', 'T/A MCKEOWNS SHOP & DELI', 'BECTIVE STREET,', 'KELLS, CO MEATH', '', 'A82 E8R2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 'MAH1', 'IAN MAHERS LTD', '', '526130889', 'FETHARDS,', 'CASHEL,', 'CO. TIPPERARY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, 'MAH2', 'MAHER\'S CONVENIENCE STORE LTD', 'spargoresbridge@gmail.com', '', 'MAIN STREET,', 'GORESBRIDGE,', 'CO-KILKENNY R95 XYY2', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, 'MAR', 'MARTIN SHEEHAN', '', '862511009', 'LISMORRIS', 'LISACASEY', 'CO. CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, '1-Mar', 'MARINANS SERVICE STATION', '', '065 9051443', 'HENRY STREET', 'KILLRUSH', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, '2-Mar', 'MARTIN MC AULIFFE', '', '', 'KNOCKDOWN ATHEA', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, '3-Mar', 'RICHARD & LOUISA MARTIN', '', '', 'MAIN STREET', 'DOON', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, '4-Mar', 'MACE SERVICE STATION', 'macemanager@grandons.ie', '(021) 485 8344', 'DUNKETTLE,', 'GLANMIRE,', 'CO-CORK', '', 'T45 RD78', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, 'MAS1', 'MASTERLINK LOGISTICS', 'lmeade@masterlinklogistics.com', '022 30800', 'LIMERICK ROAD,', 'MALLOW,', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, 'MAU1', 'MAUNSELL\'S GARAGE LTD', 'MAUNSELLLIAM@YAHOO.IE', '066 7139944', 'COLLEGE STREET', 'CASTLEGREGORY', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, 'MAX', 'MAXOL LIMITED', 'purchasing@maxol.ie', '214964544', 'NO. 3, CUSTOM HOUSE,', 'PLAZA  IFSC', 'DUBLIN 1', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, 'MAX L', 'MAXOL LUBRICANT LTD', '', 'A/C 01 6080300', 'UNIT D AIRPORT BUSINESS CAMPUS', 'SANTRY', 'DUBLIN 9', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, 'MAX1', 'MAXOL SERVICE STATION', 'rory_ohare1@hotmail.com', '879235666', 'MILL ROAD', 'MIDLETON', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, 'MAX2', 'SPAR/MAXOL', 'BRIANFARRELL33@GMAIL.COM', '61375012', 'FARRELL RETAIL LTD', 'CULLINAGH', 'BALLINA/KILLALOE, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, 'MAX3', 'MAXOL LUBRICANT', 'ncarroll@maxol.ie', '01 8060300/8061056', 'UNIT D', 'AIRPORT BUSINESS CAMPUS', 'SANTRY, DUBLIN 9', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'MAX4', 'MAXOL SERVICE STATION BALLIVOR', 'macemaxolballivor@gmail.com', '046 9546027', 'MAIN STREET', 'BALLIVOR', 'CO. MEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, '1-May', 'MAYBURY COACH & BUS HIRE', 'anne@clonamayburycoachhire.ie', '023 8855057', 'RIVERSIDE COMMERCIAL PARK', 'DUNMANWAY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, '2-May', 'DOON MAYFLY LTD', 'john@nixas.ie', 'JULIETTE 0667102249', 'MONAVALLEY', 'TRALEE', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, '3-May', 'MAYFIELD SERVICE STATION', 'Billy <shellmayfield@eircom.net>', '214506252', 'GREAT GAS', 'MAYFIELD', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'MC C', 'MC CARTHYS SERVICE STATION', '', '', 'BALLYMEKERRA', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'MC1', 'Mc CARTHY\'S FILLING STATION,', '', '064 33907', 'KILLORGAN ROAD,', 'KILARNEY,', 'Co. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'MCC', 'MICK MC CARTHY', '', '238847138', 'BALLINEEN', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, 'MCC1', 'TEDDY MC CARTHY,', '', '872315014', 'MC CARTHY COACHES,', 'SNEEM,', 'CO. KERRY,', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, 'MCC2', 'JOHN MCCARTHY', '', '086 8200462', 'MOSSGROVE', 'BANDON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'MCC3', 'RAYMOND MCCARTHY', '', '087 2397661', 'BALLYVONGANE', 'COACHFORD', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'MCC4', 'TONY MC CARTHY', '', '', 'CROOKSTOWN', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, 'MCC5', 'MCCARTHY MACE', 'pmccarthy@fermoy.nissan.ie', '', 'DUBLIN ROAD', 'FERMOY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, 'MCC6', 'JOHN MC CORMACK', 'segan04@hotmail.com', '6278105', 'KILCOMMON CROSS', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'MCD1', 'DAVID MC DERMOTT', 'mcdermottsgarage@eircom.net', '051 389998', 'MC DERMOTTS GARAGE,', 'ARTHURSTOWN,', 'NEW ROSS, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, 'MCD2', 'MAURICE MCDERMOTT', '', '061 355143', 'CRECORA,', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'MCE1', 'MCELLIGOTT OILS - MACOIL', 'eamonmac93@gmail.com', '068 41166', 'ASDEE', 'LISTOWEL', 'CO KERRY', '', 'V31 YA30', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, 'MCG', 'MC GUCKIAN OILS LIMITED', 'margot@mcguckianoils.ie', '214881190', 'CARRIGTWOHILL INDUSTRIAL ESTATE', 'CARRIGTWOHILL', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, 'MCG1', 'MC GRATH QUARRIES', '', '', 'O\' CALLAGHAN\'S MILLS', 'CO CLARE', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, 'MCH', 'Mc Hughes Service Station', '', '074 9145434', 'Meeting House Street', 'Raphoe', 'Co Donegal', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, 'MCN1', 'MCNAMARA\'S GENERAL MERCHANTS LTD', 'kevin@mcnamara.ie', '061 380164', 'MAIN STREET', 'DOON', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'MCN2', 'MCNULTY SWIFT', 'mcnulty.lowcostfuels@gmail.com', '087 2634742', 'COOLALOUGH', 'HOSPITAL', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'MCP1', 'McPARTLAND OILS', 'damien@mcpartlandoils.com', '071 9855065', 'CHERRYBROOK,', 'MANORHAMILTON,', 'CO. LEITRIM', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'MCS1', 'MCSWEENEY OILS', 'mcsweeneyoils@gmail.com', '066 9150747', 'MAIL ROAD', 'DINGLE,', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'MCT', 'MCSWEENEY BROS CONTRACTS LTD', 'susan.noon@mcsweeneybros.ie', '023 8855000', 'BALLINACARRIGA', 'DUNMANWAY', 'CO CORK', '', '', '***PO\'S REQUIRED**', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'MEA1', 'FIVE ROADS SERVICE STATION', '', '6964912', 'BLOSSOM HILL', 'RATHKEALE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'MFR', 'MARK FRASER', '', '', 'SERVICE STATION', 'CARLOW', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'MHL1', 'MURIEL HEALY LTD', 'accounts@healysdaybreak.com', '058 23824', 'THE PIKE SERVICE STATION', 'BALLYMACMAGUE', 'DUNGARVAN, CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'MID1', 'MIDWAY SERVICE STATION', '', '', 'CULLEN', 'LISLEHAN', 'MALLOW CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'MID2', 'MID WEST SAND & GRAVEL', 'info@mwsandg.ie', '50454129', 'GURTNASKEHA,', 'UPPERCHURCH', 'THURLES, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'MID3', 'MIDLAND HARDWARE LIMITED', 'bredacorrigan@midlandhardware.ie', '50546177', 'RATHDOWNEY', 'PORTLAOISE', 'CO LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 'MID4', 'MID WEST OIL CO LTD', 'info@midwestoil.ie', '0504 54193', 'GURTNASKEHA', 'UPPERCHURCH', 'THURLES, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 'MIK1', 'MIKE FISHER', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'MIL2', 'MILLFIELD SERVICE STATION,', 'millfieldservicestn@eircom.net', '021 4391094', 'OLD MALLOW ROAD', 'CORK.', 'T23 XR12', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'MIL3', 'MILLSTREET REWINDS', '', '086 2749387', 'HOLLYMOUNT', 'RATHMORE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'MILS', 'MACROOM MILS', '', '026 41111', 'MACROOM', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'MJK1', 'M & J KELLEHER', 'info@mjkoils.com', '026 41236', 'CLONDROHID,', 'MACROOM,', 'CO.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'ML C', 'MICHAEL CONDON', '', '069 84943', 'TRACKCARE ENGINEERING', 'DEVON ROAD', 'TEMPLEGLANTINE, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'MMD', 'MMD CONSTRUCTION (CORK) LTD,', 'miriam@mmd.ie', '021 4975979', 'UNIT 1', 'BUILDING 2500', 'AVENUE 2000, CORK AIRPORT BUSINESS PARK. CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'MMG1', 'MICHAEL & MARY GALVIN LTD', 'MMGALVIN@EIRCOM.NET', '61926002', 'GALVINS SERVICE STATION,', 'MOUNTSHANNON,', 'CO.CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'MOC1', 'MOCKLER SERVICE STATION', 'kaymockler@yahoo.co.uk', '50423254', 'JOHN MOCKLER', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 'MOL', 'MOLONEY\'S GARAGE', 'moloneysgrg@eircom.net', '068 31138', 'KILARNEY RD', 'ABBEYFEALE', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 'MOL1', 'MOLONEY\'S DAYBREAK CARRIGKERRY', 'moloneysgrg@eircom.net', '6831138', 'KNOCKNAGUN', 'CARRIGKERRY', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'MOLO', 'MOLONEY\'S SERVICE STATION', 'trevormoloney1979@gmail.com', '087 2205459', 'BALLYPATRICK', 'THE RAGG', ' THURLES, CO TIPPERARY ', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'MON1', 'MONALEEN STORES', 'macemonaleen@mace.ie', '61338287', 'MONALEEN', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'MOR S', 'MORONEY\'S SHOP', 'buggymoroney@gmail.com', '062 56156', 'LISVERNANE', 'AHERLOW', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'MOR1', 'LEO MORRISON', 'saundramorrison@eircom.net', '871214130', 'SERVICE STATION', 'BALLYSIMON', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, 'MOR2', 'MORRIS OIL COMPANY LTD', 'dkidd@morris-oil.ie', '051 643317', 'FIDDOWN', 'CO. KILKENNY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, 'MOT1', 'MOTORPOINT SERVICE STATION LTD', 'motorpoint@hotmail.com', '051 875922', 'MILITARY ROAD', 'WATERFORD', 'X91 ACOA', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, 'MOU1', 'MOUNTMELLICK SERVICE STATION LTD', 'EILISH@HINCH.IE', '057 8697760', 'TOWN PARK', 'MOUNTMELLICK', 'CO LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, 'MOY1', 'MOYNAN FUEL SERVICES', 'MOYNANSFUEL@GMAIL.COM', '578731221', 'BALLINAKILL ROAD', 'ABBEYLEIX', 'CO LAOIS', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, 'MRY', 'MARTIN RYAN', 'martinryanlacken@gmail.com', '067 25160', 'EAGLES NEST,', 'DOLLA,', 'NENAGH, CO TIPPERARY', '', 'E45 CD68', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, 'MS1', 'MARTIN SCANLON', 'scanlonsaccounts@eircom.net', '061 351797', 'SCANLON\'S SERVICE STATION', 'BARRY\'S CROSS, FRIARSTOWN,', 'GRANGE, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, 'MSL1', 'MSL CORK MERCEDES-BENZ', 'michelle.osullivan@msl.ie', '021 240 8600', 'EASTGATE BUSINESS PARK', 'LITTLE ISLAND', 'CORK', '', 'T45 Y658', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, 'MTS1', 'MTS TYRE CENTRE', '', '061 315788', 'DUBLIN ROAD', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, 'MUL1', 'SEAN MULROONEY', 'mulrooney@eircom.net', '', 'TEXACO GARAGE', 'ROSCREA', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, 'MUN1', 'MUNSTER DRAIN SERVICES', 'info@munsterdrain.com', '021 4770797', 'BALLINGARRY', 'BELGOOLY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, 'MUR', 'MURRY\'S SERVICE STATION,', '', '', 'DROMINA,', 'Co. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, 'MUR1', 'K & D  DALTON LIMITED', 'murphyfuels@gmail.com', '052 74 41688', 'T/A  MURPHY FUELS', 'BALLYDREHID', 'CAHIR CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, 'MUR2', 'HARRY MURPHY', 'harrypmurphy@hotmail.com', '063 91018', 'KILFINANE SERVICE STATION', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, 'MUR3', 'HOSPITAL FUELS LTD', 'infomurphyfuels@gmail.com', '061 383463', 't/a  C&L MURPHY FUELS', 'BARRYSFARM', 'HOSPITAL, CO LIMERICK', '', 'V35 T266', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, 'MUR4', 'MURPHY ELECTRICAL', 'murphyelectrical@msn.com', '', 'COACHFORD', 'CO-CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, 'MUS1', 'MUSGRAVE WHOLESALE PARTNERS', 'mwproinontrade@musgrave.ie', '064 6631687', 'WHITEBRIDGE', 'BALLYCASHEEN', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, 'MYE1', 'DENIS MYERS HAULAGE', 'MYERSHAULAGE@EIRCOM.NET', '064 6632065', 'BARLEYMOUNT WEST', 'KILLARNEY', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, 'N BR', 'BROWNE\'S SERVICE STATION', '', '087 251 4413', 'BALLINSKELLIG', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, 'N.OIL', 'NAUGHTON OIL', 'jNaughtonAnnacotty@eircom.net', '061-331122', 'MULLCAIR DRIVE', 'ANNACOTTY', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, 'N2', 'DAVID NORMYLE', '', '061 396189', 'RIEN ROE,', 'CROOM ROAD,', 'ADARE, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, 'N3', 'WESTERN BEVERAGES (HEINEKEN)', 'lila.maloney@heineken.ie', '066 7141100', 'TRALEE RD.,', 'CASTLEISLAND,', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, 'N72', 'N72 DINNER', '', '', 'MICHAEL O REGAN', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, 'NALI', 'NASH\'S', '', '', 'DOCKLANDS INDUSTRIAL ESTATE', 'DOCK ROAD', 'LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, 'NAS', 'NASH BEVERAGES,', '', '021 4314666', 'O C COMMERCIAL PARK,', 'LITTLE ISLAND,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, 'NAS1', 'FRANK NASH SERVICE STATION', '', '', 'CASTLETOWNROCHE', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, 'NAT1', 'NATIONAL SEAWAYS FREIGHT LTD', 'amy@nationalseaways.com', '021 4501888', 'MERCHANT HOUSE', 'TIVOLI INDUSTRIAL ESTATE', 'TIVOLI, CORK', '', 'T23 TK5R', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, 'NAU1', 'NAUGHTONS SERVICE STATION', 'tommynaughton10@gmail.com', '', 'BALLYDAINGAN', 'ROSCOMMON', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, 'NCE', 'NCE CIVIL ENGINEERS', '', '061 353818', 'CLARINA SITE OFFICE', 'CLARINA', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(774, 'NEW', 'NEWMARKET MOTORS  LTD', 'joanne.sheahan@newmarketmotors.ie', '029 60100', 'NEWMARKET', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, 'NEW1', 'TREENA NEWMARK', '', '063 80007', 'MILLFORD,', 'Co. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(776, 'NEW2', 'NEWPARK SERVICE STATION', '', '12883970', 'NEWTOWNPARK AVENUE', 'BLACKROCK', 'CO. DUBLIN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, 'NEW3', 'NEWTOWNSANDES CO-OP LTD', 'email:newtownsandescoop@yahoo.ie', '068 49354', 'MOYVANE', 'LISTOWEL', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, 'NEW4', 'NEWCASTLE GARAGE LTD', 'newcastlexl@outlook.com', '12011871', 'NEWCASTLE,', 'CO.WICKLOW', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, 'NIB', 'NATIONAL IRISH', '', '', 'ASSET FINANCE LTD', '5/6 O CONNELL STREET', 'CLONMEL. CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, 'NK1', 'N.K. PETROLEUM SERVICES', '', '051 421651', 'BREFFNI', 'NEWTOWN COMMONS', 'NEW ROSSCO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, 'NOD T', 'NOEL O DONNELL', 'woodviewss@eircom.net', '052 7441529', 'WOODVIEW SERVICE STATION', 'MICHELSTOWN ROAD', 'CAHIR, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, 'NOL', 'NOLANS SERVICE STATION', 'info@nolansgarage.ie', '667121237', 'NORTH CIRCULAR ROAD', 'TRALEE', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, 'NSAI', 'NSAI', 'Siobhan.Lennon@nsai.ie', '18073816', '1 SWIFT AVENUE', 'NORTHWOOD', 'SANTRY, DUBLIN 9', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, 'NSC1', 'NS CONSTRUCTION', 'helen.nsconstruction@gmail.com', '', 'T/A DALCASSIAN FILLING STATION', 'RUAN,', 'ENNIS, CO CLARE', '', 'V95 C447', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'NYH1', 'NYHAN TRANSPORT', '', '021 4892561', 'NYHAN INDUSTRIAL ESTATE', 'TRAMORE ROAD', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, 'O CO', 'O CONNELL  BROS PLANT HIRE,', 'CAROLINE.1OCONNELL@GMAIL.COM', '0877612629 JOE', 'CAHIRCIVEEN,', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, 'O COF', 'DO NOT USE SEE OCO3', ' info@oconnorfuneralcork.ie', '021.430.4444', 'O\'CONNOR BROS FUNERAL HOMES', 'NORTH GATE BRIDGE', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, 'O DO', 'O DOHERTY BUIDERS', '', '', '25 PATRICK STREET', 'FERMOY', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789, 'O HER', 'O HERLIHY\'S GARAGE', '', '', 'KILLARNEY ROAD', 'ABBEYFEALE', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(790, 'O L2', 'O LEARYS LISSARDA', 'jacqveale@olearyslissarda.ie', '021 7336146', 'LISSARDA', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791, 'O M C', 'OMC ENGINEERING LTD', '', '061 419333', 'BALLYSIMON ROAD', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(792, 'O\'C TRA1', 'O CONNELL TRANSPORT', 'tina@oconnellgroup.ie', '021 4500900', 'TIVOLLI   INDUSTRIAL ESTATE', 'CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(793, 'O\'CA', 'SIRIO RETAIL OPERATIONS LTD', 'payables@sirio.ie', '45256940', 'OBO O CALLAGHAN\'S FILLING STATION', 'BALLYHOOLEY ROAD', 'BALLYVOLANE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(794, 'O\'CON', 'O CONNELLS FOODSTORE', '', '069 76317', 'STEPHEN O CONNELL', 'CARRIGKERRY', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(795, 'O\'CW', 'O CONNELL WAREHOUSING', 'INFO@OCONNELLGROUP.IE', '021 4821357', 'BROOKELODGE', 'GLANMIRE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(796, 'O\'K B', 'O KEEFFES BAKERY', 'sean@okeeffesbakery.ie', '', 'WEST POINT BUSINESS PARK', 'LINK ROAD', 'BALLINCOLLIG', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(797, 'O\'L', 'O LEARYS SERVICE STATION', 'towerdb@fcos.ie', '021 4385375', 'TOWER', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798, 'O\'R', 'O REGAN QUARRY & ENVIRONMENTAL LTD', 'INFO@OREGANQUARRY.IE', '021 7335958', 'TULLIG,', 'DRIPSEY,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(799, 'O,S', 'O SULLIVANS SERVICE STATION,', 'EODRISCOLL@FCOS.IE', '021 4839352', 'INNISHANNON,', 'CO.CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, 'O1', 'O CALLAGHANS', '', '022  22719', 'DROMAHANE', 'CO.CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'O10', 'DENIS O BRIEN', '', '064 54003', 'SERVICE STATION,', 'GLENFLESK,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, 'O11', 'CLONMEL OIL CO. LTD', 'info@clonmeloil.com', '052 6124177', 'WATERFORD ROAD', 'CLONMEL', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, 'O13', 'JERH O\' CALLAGHAN ENTERPRISES LTD,.', '', '023 47132', 'CASTLETOWN,', 'ENNISKEANE,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, 'O14', 'DAVID O SULLIVAN GARAGE', '', '063 91207', 'ARDPATRICK,', 'KILMALLOCK,', 'CO. LIMERICK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, 'O15', 'JOHN JOE O LEARY', '', '066 9475175', 'SERVICE STATION,', 'CAHIRDANIEL,', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, 'O16', 'TED O MAHONY', '', '021 7331069', 'SERVICE STATION,', 'AHERLA,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, 'O17', 'O SHEAS GARAGE', '', '065 9051234', 'TOP GARAGE,', 'HIGH STREET,', 'KILRUSH, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, 'O18', 'CAHERLAG TRANSPORT LTD', '', '7437754', 't/a O\' REGAN INTERNATIONAL TRANSPORT', 'COOLMONA', 'DONOUGHMORE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, 'O19', 'O DONOVANS TRANSPORT,', '', '021 4883399', 'CARRIGTWOHILL,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(810, 'O2', 'DENIS O FLYNN', '', '021 4667122', 'LADYS BRIDGE,', 'CASTLEMARTER,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(811, 'O22', 'O DONOGHUES BAR & GARAGE', 'philipod47@gmail.com', '027 70033', 'SERVICE STATION,', 'THE SQUARE,', 'CASTLETOWNBERE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(812, 'O23', 'BORD GAS', '', '', 'CASTLE MUNGRET IND. ESTATE', 'DOCK ROAD', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(813, 'O25', 'CON O SULLIVAN', '', '', 'SERVICE STATION,', 'CULLEN,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(814, 'O26', 'CARRIGDHOUN SERVICE STATION LTD', '', '021/ 4888494', 'FIVE MILE BRIDGE,', 'BALLINHASSIG,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(815, 'O27', 'REGIONAL OIL,', '', '061 353248', 'CORBALLY,', 'MUNGRET,', 'CO. LIMERICK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(816, 'O29', 'DAN DONOVAN & CO LTD', 'dandonovanltd@gmail.com', '021 7332153', 'GENERAL MERCHANTS', 'BALLYSHONIN', 'BERRINGS, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(817, 'O30', 'O SULLIVAN & HANSBURY,', 'mwoods@osullivanhansbury.ie', '065 6820312', 'KILRUSH ROAD,', 'ENNIS,', 'CO. CLARE.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(818, 'O31', 'O CALLAGHAN SERVICE STATION,', '', '2960101', 'TAUR,', 'NEWMARKET,', 'Co.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(819, 'O4', 'UNA O SULLIVAN', 'SCEILG OLA', '', 'SNEEM HOUSE,', 'SNEEM,', 'CO. KERRY.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(820, 'O6', 'GERRY O MAHONY', '', '', 'SERVICE STATION,', 'ENNISKEANE.', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(821, 'O7', 'FINBARR O NEILL & SONS', '', '021 4871933', 'POULAVONE ROAD,', 'BALLINCOLLIG,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(822, 'O8', 'MID WESTERN OIL,', '', '065 6828469', 'DOORA,', 'ENNIS,', 'CO CLARE.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(823, 'O9', 'O SULLIVAN COACHES', '', '022 25185', 'FARRAHY ROAD', 'KILDORREY,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(824, 'OAK1', 'OAKPARK FILLING STATION', '', '087 9090785', 'LISTOWEL ROAD', 'TRALEE', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(825, 'OB1', 'O BRIENS SERVICE STATION,', '', '868109706', 'MOUNTSHANNON,', 'CO. CLARE.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(826, 'OB2', 'O BRIENS FILLING STATION,', '', '', 'BALLYWIRE,', 'CO. TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(827, 'OBR1', 'DAVID O BRIEN AUTO SERVICES', 'obrienauto@eircom.net', '526132758', 'THE GREEN', 'FETHARD', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(828, 'OBR2', 'O BRIEN SERVICE STATION', 'obriensofbishopstown@yahoo.com', '214624236', 'ARDROSTIG', 'BANDON ROAD', 'BISHOPSTOWN, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(829, 'OCO1', 'DAN O\' CONNOR FEEDS', 'joriordan@arrabawn.ie', '061 414988', 'BALLYSIMON ROAD,', 'LIMERICK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(830, 'OCO2', 'O CONNELL CONCRETE LTD', 'marie@oconnellquarries.com', '061 325071', 'BALLYCAR', 'ARDNACRUSHA', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(831, 'OCO3', 'O CONNOR BROS FUNERAL HOMES', 'therese@oconnorfuneralcork.ie', '214304444', 'NORTH GATE BRIDGE', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(832, 'ODO1', 'O DWYER OIL OLD PALLAS', 'info@odwyeroil.com', '61384396', 'OLD PALLAS,', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(833, 'ODO10', 'O DWYER OIL CAPPAWHITE', 'odwyermichelle@yahoo.co.uk', '61384396', 'TIPPERARY ROAD', 'CAPPAWHITE', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(834, 'ODO11', 'O DWYER OIL BALLYSIMON', 'odwyermichelle@yahoo.co.uk', '61384396', 'CLOUGHNADROMIN', 'BALLYSIMON', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(835, 'ODO12', 'O DWYER OIL FRIARSTOWN', 'info@odwyeroil.com', '061 3847396', 'BARRYS CROSS, FRIARSTOWN', 'CO-LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(836, 'ODO2', 'MICHAEL O\'DONOVAN', '', '', 'ELMGLEN', 'LISSARDA', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(837, 'ODO3', 'MIKE O DONOGHUE', 'info@odonoghuesbarraduff.ie', '064 7754080', 'O DONOGHUE\'S SERVICE STATION', 'BARRADUFF', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(838, 'ODO4', 'JAMES O DONOVAN', 'peggyodonovan@hotmail.com', '062 47133', 'TOP FILLING STATION', 'MAIN ST', 'OOLA, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(839, 'ODO5', 'O DONOVANS SERVICE STATION', 'BERKWAY@HOTMAIL.COM', '021 4873941', 'LEEMOUNT', 'CARRIGROHANE', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(840, 'ODO6', 'TEDDY O DONOVAN', 'deirdreandted@eircom.net', '', 'MADAME', 'BALLINASCARTHY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(841, 'ODO7', 'MARCUS O DWYER LTD', 'CARRIGH2004@YAHOO.IE', '062 62833', '23 CARRAIG DOWNES', 'DUALLA ROAD', 'CASHEL, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(842, 'ODO8', 'PADDY O DONNELL ELECTRICAL', 'odonnellpat07@eircom.net', '087 9670133', 'MARTINSTOWN', 'KILLMALLOCK', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(843, 'ODO9', 'P O DWYER', 'odwyercirclek@gmail.com', '065 7087078', 'CIRCLE K FILLING STATION', 'QUILTY', 'ENNIS, CO CLARE', '', 'V95 YFTO', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(844, 'ODW1', 'EDDIE O DWYER', 'ODWYERBOHERLAHAN@GMAIL.COM', '876101508', 'BOHERLAHAN', 'CASHEL', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(845, 'OFL1', 'DAN O FLYNN', 'dancentra@eircom.net', '', 'NEWTOWN', 'BRUFF', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(846, 'OFL2', 'O FLYNN\'S SERVICE STATION', 'oflynnsgarage1@hotmail.com', '527467131', 'BALLYPOREEN', 'CO TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(847, 'OFL3', 'O FLYNN MEDICAL', 'conor@oflynnmedical.com', '(029) 21799', 'MACROOM E-PARK,', 'BOWL ROAD,', 'MACROOM', '', 'P12 YD92', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(848, 'OKE1', 'O KEEFFE OIL,', 'peter@peadarokeeffeoil.ie', ' (065) 682 4063', 'DRUMCLIFF ROAD', 'ENNIS', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(849, 'OKE10', 'O KEEFFES XL SHOP', 'brendan.kelleher@okeeffesrathmore.ie', '064 7758016', 'WEST END', 'RATHMORE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850, 'OKE2', 'DAN JOE O KEEFFE', '', '029 58001', 'RATHCOOLE', 'MILLSTREET', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851, 'OKE3', 'O KEEFFE OILS RATHMORE LTD', 'bk@okrl.ie', '647758016', 'WEST END', 'RATHMORE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(852, 'OKE4', 'O KEEFFE\'S OIL DEPOT', 'BRENDAN.KELLEHER@OKEEFFESRATHMORE.IE', '064 7758013', 'RATHMORE OIL DEPOT', 'WEST END', 'RATHMORE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(853, 'OKE5', 'KINGDOM OIL DEPOT', 'brendan.kelleher@okeeffesrathmore.ie', '066 7141345', 'KILLARNEY ROAD', 'CASTLEISLAND', 'CO KERRY', '', '', '(BILL TO O KEEFFE OIL OKE3)*************', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(854, 'OKE6', 'KINGDOM OIL - DCI 24HR UNMANNED SITE', 'brendan.kelleher@okeeffesrathmore.ie', '066 7141345', 'TRALEE ROAD', 'CASTLEISLAND', 'CO KERRY', '', '', '****BILL TO O KEEFFE OIL OKE3******', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(855, 'OKE7', 'MOURNEABBEY OIL', 'brendan.kelleher@okeeffesrathmore.ie', '022 29197', 'BOTTLEHILL', 'MOURNEABBEY', 'MALLOW CO CORK', '', '', '*****BILL TO O KEEFFE OIL OKE3**********', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(856, 'OKE8', 'KINGDOM OIL TRALEE', 'brendan.kelleher@okeeffesrathmore.ie', '066-7102024', 'RATHASS', 'TRALEE', 'CO KERRY', '', '', '*BILL OKE3 O KEEFFEES RATHMORE LTD******', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(857, 'OKE9', 'O\' KEEFFE OIL XL SHOP', 'BK@OKRL.IE', '066 7141345', 'KILLARNEY OIL', 'CASTLEISLAND', 'CO KERRY', '', '', '(BILL TO O KEEFFE OIL OKE10)**********', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(858, 'OL1', 'O LEARY AUTO SERVICES', '', '', 'BALLYREGAN', 'KINSALE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(859, 'OLE1', 'O LEARY FILLING STATION(do not use)', '', '', 'CAHERDANIEL', 'CO KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(860, 'OLE2', 'NORA O LEARY', '', '', 'INCHIRAHIILY', 'CROOKSTOWN', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(861, 'OLE3', 'O LEARYS SERVICE STATION,', '', '', 'CAHERDANIEL,', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(862, 'OLI1', 'OLIVE VENTURES LTD KANTURK', 'olivesventureltd@gmail.com', '029 60368', 'JOHN\'S BRIDGE,', 'KANTURK,', 'CORK', '', 'P51 WR29', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(863, 'OLI2', 'OLIVES VENTURES KILKENNY', 'olivesventureltd@gmail.com', '894844787', 'LISTERLIN,', 'TULLOGHER,', 'CO-KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(864, 'OLY1', 'OLYMPIC EXPRESS', 'oconnor-ncw@londisretailers.ie', '069 61137', 'CHURCHTOWN', 'NEWCASTLE WEST', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(865, 'OMA', 'O MALLEY SERVICE STATION', '', '', 'CLASHMORE', 'CO. WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(866, 'OMA1', 'O MAHONYS SERVICE STATION,', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(867, 'OMC1', 'O MALLEY COACHES LTD', 'eomalleycoaches@eircom.net', '061 378119', 'FREIGH', 'NEWPORT', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(868, 'ONE1', 'O NEILL INDUSTRIAL', '', '061 313888', 'EAST LINK BUSINESS PARK', 'BALLYSIMON ROAD', 'LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(869, 'ONE2', 'TEDDY O NEILL', 'oneillsam@hotmail.com', '064 6682003', 'BLACKWATER TAVERN', 'RAYCOSLOUGH', 'KILLARNEYCO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(870, 'ONT1', 'DENIS O NEILL TRANSPORT LTD', '', '', 'RATHDUFF', 'GRENAGH', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(871, 'OPW1', 'THE OFFICE OF PUBLIC WORKS', 'ptop@opw.ie', '', 'ACCOUNTS PAYABLE', 'GOVERNMENT BUILDINGS', 'HEBRON ROAD, CO KILKENNY', '', 'R95 H4XC', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(872, 'ORE1', 'MARTIN O REGAN ENTERPRISES', 'INFO@OREGANQUARRY.IE', '', 'TULLIG', 'COACHFORD', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(873, 'ORE2', 'O REILLYS STORES', 'oreillyvalue@gmail.com', '596482944', 'PARKMORE', 'BALTINGLASS', 'CO WICKLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(874, 'ORE3', 'O\'REILLYS MAXOL', 'oreillysblackpool@gmail.com', '214503613', '62 WATERCOURSE ROAD,', 'BLACKPOOL,', 'CORK', '', 'T23ND99', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(875, 'OREG', 'MICHEAL O\' REGAN,', '', '025 36721', 'MICHEAL O\' REGAN FILLING STATION,', 'RATHCORMAC,', 'CO.CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(876, 'ORG1', 'O REGAN PRECAST LTD.,', '', '021 7334304', 'COOLNAGEARAGH,', 'COACHFORD,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(877, 'OSH1', 'O SHEA\'S SHOP & SERVICE STATION', 'osheasblennerville@yahoo.ie', '667122892', 'BLENNERVILLE', 'TRALEE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(878, 'OSHE', 'Mary O\' Shea', '', '', 'Inch,', 'Co. Kerry', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(879, 'OSU1', 'JOHN O SULLIVAN TRANSPORT LTD', '', '087 2689238', 'BOHER BANNA', 'ARDFERT', 'TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(880, 'OSU2', 'O SULLIVAN LONDIS', 'michael.osullivan@icof.ie', '066 9796948', 'KILLARNEY ROAD', 'KILLORGLIN', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(881, 'OSU3', 'JOHN TERRY O SULLIVAN  DAYTODAY', 'allihiesseaview@gmail.com', '027 73044', 'ALLIHIES', 'BEARA', 'CO CORK', '', 'P75 WD26', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(882, 'OSUL1', 'O\'SULLIVAN\'S QUICK PICK SERVICE STATION', 'jsullym@gmail.com', '027 63065', 'REENMEEN EAST', 'GLENGARRIFF', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(883, 'OWN1', 'OWNLEASING LTD  MUNSTER JOINERY - BALLYD', 'accountspayable@munsterjoinery.ie', '064 7751151', 'T/A MUNSTER JOINERY', 'LACKA CROSS,', 'BALLYDESMOND, ,ALLOW , CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `code`, `name`, `email`, `workphone`, `address1`, `address2`, `address3`, `address4`, `eircode`, `notes`, `status`, `created_at`, `updated_at`, `account_type_id`, `service_contract`, `no_of_tanks`, `pos`, `cc_email_1`, `cc_email_2`, `cc_email_3`, `cc_email_4`, `cc_email_5`) VALUES
(884, 'OWN2', 'OWNLEASING LTD -MUNSTER JOINERY DUBLIN', '', '', 'KANTORS COMPLEX', 'BALLYMOUNT ROAD UPPER', 'TALLAGH DUBLIN 24', '', 'D24 EHN4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(885, 'OWN3', 'OWNLEASING LTD -MUNSTER JOINERY - SLIGO', '', '', 'BALLISODARE,', 'CO SLIGO', 'F91 WC94', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(886, 'OWN4', 'BASKIL WINDOW SYSTEMS BELFAST', '', '879090009', 'T/A MUNSTER JOINERY', 'BELFAST', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(887, 'P.J RY', 'P J RYAN', '', '', 'LISMORE OIL COMPANY LTD', 'NIRE ROAD', 'BALLYMACARBERY, CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(888, 'P1', 'WESTLINK SERVICE STATION', 'westlinkservicestation@gmail.com', '021 4315454', 'LOWER POULADUFF ROAD,', 'CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(889, 'P2', 'WESTLINK SERVICE STATION,DO NOT USE', '', '4315599', 'LOWER POULADUFF ROAD,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(890, 'P3', 'POETS CORNER,', '', '061 397479 / 497858', 'CROOM,', 'CO. LIMERICK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(891, 'PAL1', 'PALLAS SERVICE STATION', 'pallasservicestation@yahoo.ie', '022 470 98', 'PALLAS', 'LOMBARDSTOWN', 'MALLOW, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(892, 'PB1', 'PADRAIG BUCKLEY,', '', '', 'BALLYBUNION,', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(893, 'PC P', 'PAUL CREEDON PLANT HIRE SERVICES', '', '021 4661321', 'CHURCH ROAD', 'UPPER AGHADA', 'MIDLETON, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(894, 'PC1', 'Pat Cleary', '', '6255882', 'Killross', 'Tipperary Town', 'Co Tipperary', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(895, 'PCOF', 'PAT COFFEY', 'coffeygang@eircom.net', '061 381396', 'TOP SERVICE STATION', 'TURAGH', 'CAPPAMORE, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(896, 'PEA1', 'LES PEACOCK TRADING  COMPANY LTD', 'CATHY.PEACOCK@GMAIL.COM', '087 8156920', 'ROCHLAND\'S HOUSE', 'CHERRYS ROAD', 'NEW ROSS, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(897, 'PER1', 'DEREK PERROTT', 'derekperrott@gmail.com', '085 8255343', 'AHIOHILL', 'ENNISKEANE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(898, 'PER2', 'ALICE PERRY', 'NON', '052 9156371', 'BALLYNUNTY', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(899, 'PER3', 'PERMARK PUMPS', 'SALES@PERMARKPUMPS.COM', '042 9663059', 'DUNDALK ROAD,', 'CARRICKMACROSS,', 'CO. MONAGHAN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(900, 'PER4', 'PERCIVAL\'S POST OFFICE', 'percival.michele@gmail.com', '539427125', 'BALLYCANEW,', 'GOREY,', 'CO-WEXFORD', '', 'Y26Y1F7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(901, 'PES', 'P E SERVICES', 'peservices@eircom.net', '049 4379144', 'UNIT 1 CRUBANY BUSINESS PARK', 'CRUBANY', 'CAVAN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(902, 'PET', 'PETRO COURT LTD - BAD DEBTOR', 'BAD DEBTOR', '096 21767', 'GURTEEN', 'BALLINA', 'CO. MAYO', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(903, 'PET1', 'PETROSTER - SERWIS SP. J', 'adam.kozbial@petroster-serwis.pl', '0048 509101317', 'CHOLERZYN 279', '32-060 LISZKI', 'POLAND', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(904, 'PG', 'GOLDENS TOURISM SERVICES LTD', 'goldenkells@gmail.com', '066 9477601', 'KELLS', 'CAHERCIVEEN', 'CO. KERRY', '', 'V23 K132', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(905, 'PH1', 'PADRAIG HAYES', '', '065 9055054', 'DOONBEG', 'KILRUSH', 'CO. CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(906, 'PHI1', 'IRVING OIL', 'APInvoices@irvingoil.com', '0214622829 EMILA CZEPIA', 'IRELAND INVOICING', 'WHITEGATE REFINERY LTD', 'MIDELTON, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(907, 'PHOR', 'PAT HORGAN', '', '', '28 NORTH AVENUE', 'MATHEWS HILL', 'LEHENAGHMORE, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(908, 'PICK', 'PICKERSTOWN SERVICE STATION', 'TRAMORESUZUKI@FARRELLAUTOPORT.IE', '51386353', 'TRAMORE', 'CO. WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(909, 'PIE1', 'A/C CLOSED - DOON MAYFLY LTD', 'lorraineb@dsb.ie', '877479503', 'MAIN STREET', 'DOON', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(910, 'PIER', 'PIER STORES ( JIMMY O REILLY )', 'ecmotorsltd@gmail.com', '021 4661131', 'AGHADA', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(911, 'PIR1', 'PIRTEK DUBLIN', 'DUBLIN@PIRTEKONLINE.COM', '', 'UNIT D1,', 'BALLYMOUNT CROSS INDUSTRIAL ESTATE,', 'BALLYMOUNT ROAD, DUBLIN 12', '', 'D24 HKF7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(912, 'PIT1', 'PIT STOP FUELS LIMITED', 'sparthurles@gmail.com', '879228238', 'OLD DUBLIN ROAD', 'NENAGH', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(913, 'PJH', 'P J HEGARTY & SONS', '', '01 4556270', 'BUILDING & CIVIL ENGINEERING CONTRACTORS', 'DAVITT RD', 'INCHICORE, DUBLIN 12', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(914, 'PJH 2', 'P J HEGARTY & SONS', 'geraldine.mckenna@PJHEGGARTY.IE', '021 4502371', 'BUILDING AND ENGINEERING CONTRACTORS', 'HEGARTY PLANT YARD', 'DUBLIN HILL, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(915, 'PJM', 'P J MURPHY,', '', '656839042', 'KILMALEY  INN,', 'KILMALEY,', 'Co.CLARE.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(916, 'PK1', 'PETER KEANE LTD', 'killorglinmargaretgaynor@supervalu.ie', '066 9762166', 'IVERAGH ROAD', 'KILLORGLIN', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(917, 'PLEH', 'LEHANE\'S GARAGE', '', '058 54253', 'CAPPOQUIN', 'CO WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(918, 'PM1', 'PREMIER MOLLASSES,', '', '069 65311', 'FOYNES,', 'CO. LIMERICK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(919, 'POR1', 'PORTWAY TRAILERS LTD', 'annmurphy@portway.ie', '042 9338260', 'INDUSTRIAL ESTATE', 'COES ROAD', 'DUNDALK, CO LOUTH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(920, 'POR2', 'PORTROE FILLING STATION', 'portroe@spar.ie', '', 'PORTROE,', 'NENAGH,', 'CO-TIPPERARY', '', 'E45RD26', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(921, 'PRI1', 'PRIOR PARK SERVICE STATION LTD', 'clonmeloilss@gmail.com', '052 6126160', 'ORMONDE CENTRE', 'CLONMEL', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(922, 'PRM', 'PAT RYAN MOTORS', '', '2493919', 'CORK ROAD', 'YOUGHAL', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(923, 'PTF1', 'P & T FITZGERALD LTD', '', '066 7128000', 'CENTRA MANOR VILLAGE', 'MANOR HOUSE', 'KILLERISK, TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(924, 'PTO', 'PAT TOOMEY', 'toomeymaxol@hotmail.com', '6247770', 'c/o TOOMEY\'S SERVICE STATION', 'MONARD', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(925, 'PUL1', 'PULSE LOGISTICS', 'michelleolney@pulselogistics.ie', '353 52 6126800', 'CARRIGEEN BUSINESS PARK', 'CLONMEL', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(926, 'PUM1', 'PUMPTRONICS EUROPE LTD', '', '0044 1692 500640', 'FOLGATE ROAD', 'NORTH WALSHAM', 'NORFOLKUK', '', 'NR28 OAJ', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(927, 'PUM2', 'PUMPS AND FUEL INSTALLATIONS LTD', 'info@pumpsandfuel.com', '028 90242421', '36F OLD COACH ROAD', 'HILLSBOROUGH', 'CO DOWN', '', 'BT26 6PB', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(928, 'PZ', 'PILZ', '', '021 4346535', 'IRELAND INDUSTRIAL AUTOMATION', 'CORK BUSINESS & TECHNOLOGY PARK', 'MODEL FARM ROAD, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(929, 'QS&G', 'ML. F. QUIRKE & SONS', 'rheffernan@quirkes.com', '066 9790075.A/C\'S', 'RANGUE', 'KILLORGLIN', 'CO. KERRY', '', 'V93 XA31', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(930, 'QUI1', 'QUINN\'S SERVICE STATION', '', '876139094', 'FIERIES', 'FARRANFORE', 'KILARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(931, 'QUI2', 'QUIRKES GARAGE', 'quirkesgar@eircom.net', '062 71141', 'GARRYDUFF EAST', 'DUNDRUM', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(932, 'R MC', 'RORY MC CARTHY', '', '', 'BEALNAMORIVE', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(933, 'R&M1', 'R&M TECHNOLOGIES LTD', 'RMFUELTECH@GMAIL.COM', '056 8834787', 'GORTNAHOE', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(934, 'R1', 'READY MIX (ROI) LTD.,', '', '50621485', 'ACCOUNTS PAYABLE,', 'ARDEN,', 'TULLAMORE, CO OFFALY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(935, 'R2', 'REVENUE REFUND', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(936, 'R3', 'TEDDY ROCHE', '', '021 4884106', 'WHITE CHURCH SERVICE STATION,', 'WHITE CHURCH,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(937, 'R4', 'ROAD MAINTENANCE SERVICES LTD.DO NOT USE', '', '022 21684', 'QUATERTOWN MILLS,', 'MALLOW.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(938, 'R5', 'ROAD BINDERS LTD.,', '', '022/ 21545    OR 21116', 'QUATERSTOWN MILLS,', 'MALLOW,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(939, 'R6', 'ROAD TANKER MAINTENANCE,', '', '087 2570284/ 0214631807', 'MILVIEW,', 'CORK RD,', 'MIDLETON.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(940, 'R7', 'TONY ROCHE', '', '069 60411', 'COSTCUTTERS', 'SHANAGOLDEN', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(941, 'R8', 'RISING SUN', '', '021 4771374', 'C/O NOEL CRONIN', 'BALLINHASSIG', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(942, 'R9', 'JIM RYAN,', '', '', 'FILLING STATION,', 'TOGHER ROAD,', 'CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(943, 'RAD1', 'RADLEY ENGINEERING LTD', 'anne@radleyeng.ie', '058 41199', 'KILLADANGAN', 'DUNGARVAN', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(944, 'RAH1', 'RAHEEN SERVICE STATION', 'SHANONVIEWRETAIL@GMAIL.COM', '061 229399', 'TEXACO', 'CORK ROAD', 'RAHEEN, LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(945, 'RAN1', 'PAT SHEEHAN', 'info@mgob.ie', '646636363', 'C/O MOSCA MCGILLYCUDDY & ASSOCIATES', '95 NEW STREET', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(946, 'RAT', 'RATHCORMAC TYRES LTD', 'pjnugent@rathcormactyres.com', '025 36301', 'MOUNTDANIEL', 'RATHCORMAC', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(947, 'RAT1', 'RATH FAMILY STORES', 'rathfamilyshop@gmail.com', '087 6680153', 'BALLYGARRETT,', 'GOREY,', 'CO-WEXFORD Y25 WP71', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(948, 'RED', 'REDBRIDGE SERVICE STATION', 'redbridgeautostop@gmail.com', '872566724', 'GRANNAGH', 'WATERFORD', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(949, 'REE1', 'SPAR THE REEKS GATEWAY ***DONOTUSE***', 'sparreeks@eircom.net', '064 6636883', 'FONIX (NEWSAGENTS) LTD', 'TRALEE ROAD ROUNDABOUT', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(950, 'REY1', 'REYNOLDS LOGISTICS LTD', 'BEATA@REYNOLDSLOGISTICS.COM', '01 4242300', '2011 ORCHARD AVE', 'CITYWEST BUSINESS PARK', 'DUBLIN 24', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(951, 'RGJ1', 'RG JOHNSON', '', '504561913', 'SPRINGMOUNT GARAGE', 'TEMPLEMORE', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(952, 'RIC', 'RICHARD BOYLE & SONS', '', '', 'CASTLEMAINE', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(953, 'RIC1', 'RICHARD LOONEY', 'richardlooneymotors@gmail.com', '', 'CURRAHALY', 'FARNANES', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(954, 'RIG  B', 'RIGNEY BROS', '', '', 'DUNGOURNEY', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955, 'RIL1', 'RILTA ENVIRONMENTAL LTD', 'accounts.payable@rilta.ie', '(01) 401 8000', 'BLOCK 402 GRANTS DR', 'GREENOGUE IND EST', 'RATHCOOLE, CO DUBLIN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(956, 'RIV', '786 FILLING STATION', 'makz.club@live.co.uk', '61336007', 'NEWPORT ROAD', 'LISNAGRY', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(957, 'RL 1', 'ROSLEVAN STORES', '', '656824313', 'TULLA ROAD', 'ENNIS', 'CO. CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(958, 'RM', 'RM PUMPS (CUMBIA ) LTD', '', '', 'UNIT 68 GILWILLY INDUSTRIAL ESTATE', 'PENRITH', 'CUMBRIA', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(959, 'ROA', 'ROADBRIDGE', 'sinead.kirby@roadbridge.ie', '061 414874', 'BALLYCLOUGH', 'BALLYSHEEDY', 'LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(960, 'ROA1', 'ROADBRIDGE', 'headoffice@roadbridge.ie', '061 414874', 'CROSSAGALLA,', 'BALLYSIMON ROAD,', 'LIMERICK,', '', 'V94 X2E1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(961, 'ROB1', 'ROBERT HARTE,', '', '', 'FLANHARTE LIMITED,', 'MACE (TOP) QUINN RD.,', 'ENNIS, CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(962, 'ROC', 'ROCHES FEED\'S', 'vanessa@rochesfeeds.com', '061 308111', 'DOCK ROAD', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(963, 'ROC1', 'ROCK SERVICE STATION', '', '', 'TRALEE ROAD', 'KILLARNEY', 'CO KERRY', '', '', '(TEXACO)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(964, 'ROC2', 'APPLE GREEN SITE ROCHES FILLING STATION,', 'rochesfillingstation@gmail.com', '069 60822', 'FAO: SINEAD ROCHE', 'SHANAGOLDEN', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(965, 'ROC3', 'ROCK ROAD FILLING STATION', 'reekskillarney@gmail.com', '646638937', 'TRALEE ROAD', 'KILLARNEY', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(966, 'ROC4', 'ROCHES FILLING STATION', 'ROCHESGARAGECARRIGTWOHILL@gmail.com', '021 4883112', 'CARRIGTWOHILL', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(967, 'ROC5', 'ROCHES TYRES', '', '058 54185', 'BALLYSAGGART', 'LISMORE', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(968, 'ROC6', 'ROCHE\'S LONDIS', 'roche-doneraile@londisretailers.ie', '022 24233', 'MAIN STREET', 'DONERAILE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(969, 'RON1', 'RONAYNE SHIPPING', 'ACCOUNTS@MAINPORT.IE', '021 5004206/16', 'MAINPORT, MONAHAN ROAD', 'CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(970, 'ROS1', 'ROSSMORE CIVILS LTD', 'jcurtin@rehl.ie', '021 4533030', 'ROSSMORE', 'CARRIGTWOHILL', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(971, 'ROS2', 'ROSCREA CRSS LTD', '1623-roscrea-store@centra.ie', '0505 23488', 'T/A CARRIG ROAD SERVICE STATION', 'CARRIG ROAD,', 'ROSCREA, CO TIPPERARY', '', 'E53 RD76', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(972, 'ROT2', 'ROTECH', 'ROCHELLE@ROTECH.IE', '539135165', 'HILLTOWN', 'KILLINICK', 'CO-WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(973, 'ROU', 'ROUNDABOUT INN', '', '', 'MALLOW', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(974, 'ROU1', 'XPRESS STOP ROURKES CROSS', 'beechinornbss@gmail.com', '', 'BRUREE', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(975, 'ROU2', 'USE ACCOUNT EAS28 FOR JOBS', 'stephenmowens@gmail.com', '238852846', 'ROUNDHILL', 'OLD CHAPEL', 'BANDON, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(976, 'ROW1', 'ROWEX LTD', 'hshorten@rowa-pharma.ie', '2750077', 'ROWA PHARMACEUTICALS', 'NEWTOWN,', 'BANTRY, CO CORK', '', 'P75 V009', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(977, 'ROY1', 'THE ROYAL CORK YACHT CLUB', 'mark@royalcork.com', '021 4831023', 'CROSSHAVEN,', 'CO-CORK', 'P43 HD40', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(978, 'RY 1', 'ROBERT RYAN', 'mryanmace@gmail.com', '068 47126', 'DAYBREAK', 'LISSELTON CROSS', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(979, 'RYA1', 'JAMES RYAN,', 'jrbl@eircom.net', '6246647', 'BALLYLANDERS,', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(980, 'RYA2', 'NEIL RYAN\'S FOODSTORE', '', '0504 54129', 'GURTNASKEHA', 'UPPERCHURCH', 'THURLES, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(981, 'RYA3', 'ROSSCARBERY RYAN\'S SHOP & FORECOURT', 'GERCOLL@HOTMAIL.COM', '023 8848018', 'OWENAHINCHA CROSS', 'ROSSCARBERY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(982, 'RYA4', 'D&R SERVICES', 'dandrservicesthurles@gmail.com', '863169173', 'LIMERICK ROAD', 'KILLINAN', 'THURLES, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(983, 'RYA5', 'RYANS GARAGE AND SERVICE STATION', 'GURTEENY@EIRCOM.NET', '0504 51334', 'THURLES ROAD', 'BORRISOLEIGH', 'CO TIPPERARY', '', 'E41T2D3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(984, 'RYN1', 'RYANS FOODSTORE', 'no email address available', '061 382202', 'HOLY CROSS', 'BRUFF', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(985, 'S2', 'CORK MINI SKIPS', '', '', 'CHURCHFIELD IND ESTATE,', 'JOHN F CONNOLLY ROAD,', 'CHURCHFIELD, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(986, 'S3', 'IWT WORLDWIDE LOGISTICS,', '', '01 8044800', 'OCEAN HOUSE,', 'ARRAN QUAY,', 'ARRON COURT, DUBLIN 7', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(987, 'S4', 'SCEILG OLA', 'joanne@sceilgola.ie', '066 9474109', 'MAISTIR GAOITHE', 'CILL AIRNE', 'CO CHIARRAI', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(988, 'S5', 'SOUTH FUEL & FARM SUPPLIES,', '', '4632020', 'MIDLETON,', 'CO. CORK.', '', '', '', 'ACCOUNTS DEPARTMENT.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(989, 'S7', 'PAT SHINE,', '', '', 'TULLYLEASE,', 'CHARLEVILLE', 'Co.CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(990, 'SAD1', 'SADLIER\'S CENTRA SERVICE STATION', 'targetpropertiesltd@eircom.net', '061 382757', 'NEWTOWN', 'BRUFF', 'CO. LIMERICK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(991, 'SAF1', 'SAVE FUELS LTD. - BAD DEBT', 'BAD DEBT', '906433563', 'UNITS 1 & 2, KENNA CENTRE,', 'DUBLIN ROAD,', 'ATHLONE, CO WESTMEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(992, 'SAFE1', 'SAFE FUELS LTD ATHLONE - BAD DEBT', 'BAD DEBT', '', 'ROSCOMMON ROAD', 'ATHLONE', 'CO. ROSCOMMON', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(993, 'SAN1', 'SANDAR CONSTRUCTION', 'damien@sandar.ie', '049-4372326', 'UNIT 2, 39 RAILWAY ROAD,', 'ABBEYLAND,', 'CAVAN', '', 'H12 DT66', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(994, 'SCA1', 'Scallys Supervalue', '', '021 7331853', 'JFH Ltd Supervalue,', 'Skehard Road,', 'Blackrock, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(995, 'SCA2', 'SCALLY\'S SUPERVALU', 'info@supervaluclon.ie', '023 8833088', 'FAXBRIDGE', 'CLONAKILTY', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(996, 'SCAN1', 'LEC COMPANY LTD', 'colinhughes@eircom.net', '01 8412802', 'T/A SCANLANS SERVICE STATION', 'TEXACO DUBLIN STREET', 'BALBRIGGAN, CO DUBLIN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(997, 'SEA', 'SEAN TRUNWIT', 'trunwit.acc@gmail.com', '023 8841306', 'TRUNWIT TRANSPORT', 'ALLEN SQUARE', 'BANDON, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(998, 'SEAN', 'SEAN QUINN SERVICE STATION', '', '', 'NENAGH TOWN', 'CO. TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(999, 'SED1', 'SEDGWICK', 'Cormac.Fitzgerald@ie.sedgwick.com', '01 2994605', 'MERRION HALL,', 'STRAND ROAD,', 'SANDYMOUNT,', '', 'D04 K744', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1000, 'SET', 'SEAN TREACY', '', '', 'KILLORGLIN', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1001, 'SH1', 'SHEEHAN\'S SERVICE STATION', 'sheehan23@live.co.uk', '066 9473416', 'CAHERCIVEEN', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1002, 'SHA1', 'SHANNON CASTLE LINE,', '', '61927042', 'CO. CLARE', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1003, 'SHA2', 'SHANNON INTERNATIONAL LTD', 'info@castleparkmarina.com', '087 7502737', 'CASTLEPARK MARINA', 'KINSALE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1004, 'SHA3', 'SHANLEYS GARAGE', 'sheenashanley1@icloud.com', '044 9373132', 'MAIN STREET', 'BALLYNACARGY', 'MULLINGARCO, CO WESTMEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1005, 'SHE1', 'TOP DARRAGH SERVICE STATION', '', '065 6838078', 'ENNIS EAST', 'CO CLARE', 'FAO: MICHAEL SHEEDY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1006, 'SHE2', 'GLEANNBEITHE MANAGEMENT & TRADING SVCS', '1545-Glenbeigh-Store@Centra.ie', '066 9794821', 'THE VILLAGE', 'GLENBEIGH', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1007, 'SHE3', 'SHEAHAN IMPORTERS LTD', 'arenasupermarket@gmail.com', '069 78947', 'NEWCASTLEWEST', 'CO LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1008, 'SHE4', 'MICHAEL SHEEDY', '', '', 'DARRAGH', 'ENNIS', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1009, 'SHE5', 'TOM CHERRY', '', '872859133', 'LAGHILE', 'CRATHLOE', 'CO CLARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1010, 'SHE6', 'MARTIN SHEEHAN', '', '', 'SHEEHANS GARAGE', 'CROOKSTOWN', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1011, 'SHE7', 'SHEEDY OIL', 'sheedyoil@hotmail.com', '61351977', 'CAHERCONLISH SERVICE STATION', 'OLD BARRACK ROAD', 'CAHERCONLISH, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1012, 'SHE8', 'GLEANNBEITHE MANAGEMENT & TRADING SVCS', 'sheahanmuckross@gmail.com', '064 6634456', 'MUCKROSS ROAD', 'KILLARNEY', 'Co. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1013, 'SHO 1', 'SHORTON\'S GARAGE', 'info@shortensgarage.ie', '023 8822870', 'BALLINEEN', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1014, 'SHO1', 'SHORTCASTLE SERVICES', '', '022 53302', 'SHORTCASTLE STREET', 'MALLOW', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1015, 'SIA1', 'SIAC CONSTRUCTION', '', '021 431322', 'ROOFING AND CLADDING', 'AIRPORT ROAD', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1016, 'SIL1', 'SILVERSTREAM SERVICE STATION', ' info@silverstreamservices.com', '', 'MAIN STREET,', 'BALLYPOREEN,', 'CO-TIPPERARY', '', 'E21TN50', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1017, 'SIN', 'SINGLAND MOTORS', '', '061 331933', 'DUBLIN RD', 'LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1018, 'SIR1', 'SIRIO RETAIL OPERATIONS LTD', 'payables@top.ie', '045 256940', 'UNIT W9C LADYTOWN INDUSTRIAL ESTATE', 'NEWHALL', 'NAAS, CO KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1019, 'SIR2', 'SIRIO RETAIL OPERATIONS ENNIS', 'mhughes@top.ie', '', 'ACORN HOUSE', 'LIMERICK ROAD', 'ENNIS', '', 'V95 YEY5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1020, 'SIS', 'JOHN SISK & SONS LTD', '', '01 4091500', 'WILTON WORKS', 'NAAS ROAD', 'DUBLIN 22', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1021, 'SIX1', 'SIXT CAR HIRE DUBLIN', 'INFO@SIXT.IE', '01 6142800', 'MURRAY\'S RENT A CAR', 'BAGGOT STREET BRIDGE', 'DUBLIN 4', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1022, 'SKY', 'SKY LIFT HIRE', '', '061 304646 limerick', 'CARRIGTWOHILL IND ESTATE', 'CARRIGTWOHILL', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1023, 'SL1', 'SLATTERY\'S SERVICE STATION,', '', '', 'CLARINA,', 'CO.LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1024, 'SLA1', 'SLATTERYS SERVICE STATION', 'anthonyslatterygarage@gmail.com', '529152135', 'DRANGAN', 'THURLES', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1025, 'SLE1', 'SLEMONS DAYBREAK SERVICE STATION', 'slemonsfurbo@eircom.net', '091 867433', 'FURBO', 'CO.GALWAY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1026, 'SM1', 'Smithfield S/S', '', '069 64931', 'Croagh', 'Co Limerick', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1027, 'SNE1', 'GLESK QUARRIES LTD', 'gleeskquarries@gmail.com', '', 'SNEEM MOTOR WORKS', 'DRIMNA BEG, SNEEM', 'KILLARNEY, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1028, 'SNO', 'SNOW SERVICE STATION', '', '087 2773300', 'GLENWILLIAM CROSS', 'BALLINGARRY', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1029, 'SOR', 'SHAUN & MARDY O\'RIORDAN LIMITED', 'daybreakkanturk@gmail.com', '029 514222', 'LOWER BLUEPOOL', 'KANTURK', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1030, 'SOU1', 'SOUTHERN FRUIT DISTRIBUTING COMPANY LTD,', 'sales@southernfruit.ie', '021 4964322', 'LEHENAGHMORE,', 'TOGHER,', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1031, 'SOU2', 'SOUHAN\'S GARAGE AND FILLING STATION', 'nicola@souhan.ie', '046 9456000', '1 HAGGARD STREET', 'TRIM', 'CO. MEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1032, 'SPA1', 'SPAR EXPRESS', 'nataliawestcarrig@gmail.com', '066 7127311', 'CASTLEMAINE ROAD,', 'TRALEE,', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1033, 'SPA2', 'SPANNERS LIMITED', 'accounts@spanners.ie', '16523333', 'M50 BUSINESS PARK', 'BALLYMOUNT AVENUE', 'BALLYMOUNT, DUBLIN 12', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1034, 'SPA3', 'SPAR RING', 'paidiyoughaltrack@yahoo.ie', '058 46010', 'PAIDI BREATHNACH', 'BALLINAGOUL', 'RING, CO WATERFORD', '', 'X35VY68', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1035, 'SPI1', 'FRANK SPILLANE', '', '023 8847397', 'SPILLAANE AGRI', 'BALLINEEN', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1036, 'SPR1', 'SPRING NURSERIES', '', '022 24451', 'RICHARDSTOWN', 'DONERAILE', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1037, 'STA1', 'STAR FUELS & FARM SUPPLIES LTD', 'starfuelsclonmel@gmail.com', '052 6125777', 'POWERSTOWN PARK ROAD', 'CLONMEL', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1038, 'STA2', 'STATION MASTER', 'mary@stationmaster.ie', '01 610 2000', 'CHURCH HOUSE', 'CHURCH ROAD', 'CELBRIDGE, CO KILDARE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1039, 'STE1', 'STEVO\'S PITSTOP ( DO NOT USE)', '', '', 'STEVEN O CONNELL', 'DROMCOLLOGHER', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1040, 'STR1', 'S- TRANSPORT CORK LTD', 'edna@stransport.ie', '021 4353962', 'FREIGHT TERMINAL, NORTH ESK', 'GLANMIRE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1041, 'SUT1', '***DO NOT USE ACCOUNT***', 'alan.ohalloran@bnm.ie', '667121022', 'USE OKE8', 'SUTTONS OILS RATHASS', 'TRALEE, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1042, 'SUT2', 'SUTTONS OILS', 'joe.o\'mahoney@suttonsoil.ie', '063 98811', 'RAILWAY ROAD', 'KILMALLOCK', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1043, 'SWE', 'SWEENEY\'S ESSO SERVICE STATION', '', '061 378198', 'NEWPORT', 'CO. TIPPERARY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1044, 'SWE1', 'SWEENEY OIL', '', '', 'COURTYARD BY MARRIOT,', 'HEADFOED ROAD,', 'GALWAY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1045, 'SWE2', 'TOP SWEENEY OIL,', '', '', 'UNIT 2,', 'BRIARHILL BUSINESS PARK,', 'GALWAY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1046, 'SWI1', 'SWIFT SERVICE STATION MOATE', 'stephenmowens@gmail.com', '', 'DUBLIN ROAD,', 'MOATE,', 'CO-WESTMEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1047, 'T&J1', 'T & J HEALY,', '', '086 2588293', 'BROWN HILL,', 'OVENS,', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1048, 'T1', 'TRANSBOUND TRANSPORT', 'transbound@eircom.net', '021 4776220', 'STATION HOUSE', 'UPTON', 'INNISHANNON, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1049, 'T10', 'EIRCOM PROPERTY', '', '01 7018320', 'MR. JOE TROY', 'FLOOR 5, FINDLATER HSE,', 'CATHAL BRUGHA STREET, DIUBLIN 1', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1050, 'T11', 'TOGHER OIL,', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1051, 'T4', 'O HANLON TRANSPORT', '', '', 'MOURNABBEY,', 'MALLOW,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1052, 'T5', 'TOGHER OIL,', '', '021  4341359', 'CHETWYND,', 'TOGHER,', 'CO. CORK.', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1053, 'T6', 'TDG.,', '', '01 8044800', 'GB BUSINESS PARK,', 'LITTLE ISLAND IND EST,', 'LITTLE ISLAND, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1054, 'T7', 'COLLINS TRANSPORT RATHCOOLE LTD.,', '', '029 58014', 'GENERAL HAULAGE CONTRACTORS,', 'KNOCKCAHILL,', 'RATHCOOLE, MALLOW, CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1055, 'T9', 'PAT EGAN TRANSPORT,', '', '', 'MIDLETON,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1056, 'TAR1', 'TARRANT INTERNATIONAL LTD', 'accounts@tarrantinternational.com', '214556130', 'SARSFIELD COURT IND ESTATE', 'GLANMIRE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1057, 'TAT1', 'TATSUNO EUROPE', 'fischer@tatsuno-europe.com', '', 'PRAZSKA cp 2325/68', '678 01 BLANSKO', 'CZECH REPUBLIC', '', '', 'TATSUNO EUROPE VAT NO CZ26221454', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1058, 'TAT2', 'TATTAN TRAWLERS LTD', 'tattantrawlers@eircom.net', '021 4647910', 'CLIFF ROAD', 'BALLYCOTTON', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1059, 'TAY', 'TAYLOR', '', '', 'LAUGHILL', 'CO. LIMERICK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1060, 'TD', 'TONY DOYLE TRANSPORT LTD,', '', '214866354', 'GLAMIRE,', 'CO.CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1061, 'TD1', 'TEDDY CROWLEY', '', '023 55351', 'DUNMANWAY', 'CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1062, 'TEA1', 'TEAGASC', 'accounts.payable@Teagasc.ie', '025 42222', 'ACCOUNTS PAYABLE', 'OAK PARK', 'CARLOW, CO CARLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1063, 'TED', 'TOP OIL LTD', 'payables@top.ie', '214352929', 'UNIT W9C LADYTOWN BUSINESS PARK', 'NEWHALL', 'NAAS, CO KILDARE', '', 'W91C93H', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1064, 'TED1', 'TEDCASTLES OIL PRODUCTS', '', '01 8786911', 'PROMENADE ROAD', 'DUBLIN 3', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1065, 'TEM1', 'TEMPLEMORE MOTOR WORKS LTD', 'templemoremotors@eircom.net', '0504 31222', '1 PATRICK ST', 'BELLEVILLE', 'TEMPLEMORE, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1066, 'TEX.IR', 'CHEVRON (IRELAND) LTD', '', '', 'FIRST FLOOR, BLOCK B', 'LIFFEY  VALLEY  OFFICE CAMPUS', 'QUARRYVALE, CO DUBLIN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1067, 'TEX1', 'TEXOIL LTD', 'john.crowley@texoil.ie', '021 4893900', 'LEE TUNNEL S/S', 'GLOUNTHAUNE', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1068, 'TEX2', 'TEXOIL HEAD OFFICE', 'moonika.moonveld-nkosi@texoil.ie', '01 8566100', 'ALEXANDRA ROAD', 'DUBLIN PORT', 'DUBLIN1', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1069, 'TEX3', 'TEXOIL LTD', 'deirdre.cregan@texoil.ie', '16983443', 'RETAIL DIVISION, FIRST FLOOR', 'BLOCK B, LIFFEY VALLEY OFFICE CAMPUS', 'QUARRYVALE, CO DUBLIN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1070, 'TFAR', 'TOMMY FARRELL', 'tramoresuzuki@eircom.net', '', 'PICKARDSTOWN SERVICE STATION', 'TRAMORE', 'CO. WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1071, 'TFB', 'T F B AGRI & ELECTRICAL', '', '', 'SHANACASHEL', 'KILMICHAEL', 'MACROOM, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1072, 'TFC1', 'T F COSTELLO @ SONS LTD T/A COSTELLO OIL', 'office@costellooil.com', '6731488', 'CIAMALTHA ROAD,', 'NENAGH,', 'CO. TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1073, 'TH1', 'NORTH ROAD SERVICE STATION', '', '063 83400', 'THOMAS NOONAN', 'COOLABOY', 'DROMCOLLOGHER, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1074, 'THR1', 'THREE LAKES SERVICE STATION', '', '028 31843', 'C/O TADGH NYHAN', 'INCHAFUNE', 'DUNMANWAY, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1075, 'THR2', 'THREE LAKES SERVICE STATION', 'LBIPA@ME.COM', '867943606', 'DRIMOLEAGUE', 'CO CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1076, 'THR3', '3 ROCK ECO LTD', 'reception@3rockeco.ie', '14570188', '7-8 CRAG AVENUE', 'CLONDALKIN IND EST', 'DUBLIN 22', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1077, 'THS1', 'THS TOOL HIRE', 'mbths@eircom.net', '021 4384931', 'TOWER ROAD', 'BLARNEY', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1078, 'TIP1', 'TIPPERARY CO-OP', 'tmoher@tipperary-coop.ie', '50442444', 'GOULDS CROSS', 'CASHEL', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1079, 'TIP2', 'TIPPERARY CO OP LTD', 'dharvey@TIPPERARY-COOP.IE', '062 33111', 'STATION ROAD', 'TIPPERARY', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1080, 'TIP3', 'TIPPERARY COUNTY COUNCIL', 'james.swords@tipperarycoco.ie', '086-8472063', 'CIVIC OFFICES,', 'EMMET STREET,', 'CLONMEL, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1081, 'TMC 1', 'TONY MC CARTHY', '', '064 7754489', 'MC CARTHY\'S SERVICE STATION', 'BARRADUFF', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1082, 'TMC1', 'Tom McCarthy Fuels', '', '51391044', 'Industrial Estate', 'Tramore', 'Co. Waterford', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1083, 'TOC', 'TADHG O CONAILL', '', '', 'HEATING & PLUMBING LTD', 'BALLYVOURNEY MACROOM CO. CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1084, 'TOG', 'TOM O GORMAN', '', '061 399226', 'CHANKES CROSS', 'GRANAGH', 'CO. LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1085, 'TOP1', 'TOP OIL SERVICE STATION COBH CROSS', 'payables@top.ie', '', 'JUNCTION 3', 'COBH CROSS', 'CARRIGTOWHILL, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1086, 'TOP2', 'TOP OIL KINGS LAUNDRY SITE', 'accountspayable@top.ie', '021 4352928', 'KINGS LAUNDRY SITE', 'LITTLE ISLAND', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1087, 'TOP3', 'TOP OIL MC DONALD\'S OIL KINSALE ROAD', 'accountspayable@top.ie', '021 4316300', 'UNIT 4B, KINSALE ROAD INDUSTRIAL ESTATE', 'KINSALE ROAD', 'BALLYPHEHANE, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1088, 'TOP4', 'TOP OIL COBH PIER', 'accountspayable@top.ie', '021 4352929', 'COBH PIER', 'COBH', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1089, 'TOP5', 'TOP OIL OVENS', 'accountspayable@top.ie', '(021) 435 2929', 'GRANGE,', 'OVENS,', 'CO-CORK', '', 'P31 D896', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1090, 'TOP6', 'TOP OIL CROAGH', '', '069-64931', 'COOLBALLYSHANE,', 'CO-LIMERICK', 'V94 437F', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1091, 'TRA', 'TRANS TANK', '', '', 'KNOCKBRACK BUSINESS CENTRE', 'MATHEWS LANE', 'DROGHEDA, CO LOUTH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1092, 'TRA1', 'TRALEE GOLF COURSE', 'info@traleegolfclub.com', '066 7136379', 'WEST BARROW', 'ADFERT', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1093, 'TRA2', 'TRAMORE GARAGES', 'tramoresuzuki@eircom.net', '051 386 353', 'WATERFORD ROAD', 'TRAMORE', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1094, 'TRA3', 'NEIL TRAINOR', '', '', 'DUNDALK', 'CO LOUTH', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1095, 'TRA4', 'TRALEE COMMUNITY COLLEGE', 'Accounts@kerryfe.ie', '066 7121741', 'CLASH', 'TRALEE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1096, 'TRA5', 'TRAVERS TRANSPORT LTD', 'traverstransport@eircom.net', '539377709', 'KILRUSH', 'BUNCLODY', 'CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1097, 'TRE1', 'TREATY RETAILING LTD', '', '', 'BALLYBROWNE', 'CLARINA', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1098, 'TRE2', 'TREATY CAHERCONLISH RETAILING LTD', 'brian1.osullivan@gmail.com', '086 1706908', 'O SULLIVANS CENTRA', 'OLD BARRACKS ROAD', 'CAHERCONLISH, CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1099, 'TRHE', 'TREVOR HEGARTY', 'trevorhegarty@live.ie', '', 'HEGARTY\'S SERVICE STATION', 'MARKET STREET', 'SKIBBEREEN, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1100, 'TRI1', 'TRIA WEST CORK OIL   ILEN STREET', 'ACCOUNTS@TRIA.IE', '028 31396', 'ILEN STREET', 'SKIBBEREEN', 'CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1101, 'TSS C', 'TOP OIL SERVICE STATION - CARRIGALINE', 'payables@top.ie', '021 4377455', 'SIRO RETAIL OPERATIONS LTD', 'KILMONEY ROAD', 'CARRIGALINE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `code`, `name`, `email`, `workphone`, `address1`, `address2`, `address3`, `address4`, `eircode`, `notes`, `status`, `created_at`, `updated_at`, `account_type_id`, `service_contract`, `no_of_tanks`, `pos`, `cc_email_1`, `cc_email_2`, `cc_email_3`, `cc_email_4`, `cc_email_5`) VALUES
(1102, 'TSS K', 'TOP OIL SERVICE STATION - KINSALE', 'payables@top.ie', '021 4777846', 'SIRO RETAIL OPERATIONS LTD', 'EASTERN ROAD', 'KINSALE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1103, 'TTP1', 'THE TRADING POST', 'info@wexfordcamping.com', '539127368', 'BALLINAMONA', 'BALLAGHKEEN', 'ENNISCORTHY, CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1104, 'TUB1', 'Tubridy Oil', '', '', 'Mullagh,', 'Co. Clare', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1105, 'TUS', 'TUSKER CONSTRUCTION GROUP', '', '042 9745071', 'BROOMFIELD', 'CASTLEBLANEY', 'CO. MONAGHAN', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1106, 'TUS1', 'TUS GEAL TEORANTA', 'TOMAS.HEALY@TGT.IE', '2644142', 'LISCARRIGANE', 'BALLYMAKEERA', 'MACROOM, CO CORK', '', 'P12 XR53', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1107, 'TWO1', 'MARTIN TWOMEY COACH & MINI BUS HIRE', 'mtwomey66@hotmail.com', '214840546', 'MARINA COMMERCIAL PARK', 'CENTRE PARK ROAD', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1108, 'TYRR01', 'TYRRELLSPASS EARLY TO LATE LTD', 'tyrrellspassearlytilllate@gmail.com', '087 0553334', 'DUBLIN ROAD', 'TYRELLSPASS', 'CO WESTMEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1109, 'V2', 'THE VILLAGE STORE,', '', '', 'COPPEEN,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1110, 'VAL1', 'HOYER IRELAND LTD', 'susan.greenwood@hoyer-group.com', '01 8444666', 'C/O VALERO IRELAND LTD', 'ACCOUNTS PAYABLE', '517 LEEDS ROAD, HUDDERSFIELD, uk', '', 'HD2 1YJ', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1111, 'VAL2', 'VALE OIL THURLES', 'VALEOIL@IOL.IE', '50421811', 'CASTLEMEADOWS', 'THURLES', 'CO TIPPERARY', '', '', 'INVOICE TO JIMMY DUNNE DUN2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1112, 'VOS', 'C T TRANSPORT LTD', '', '027 70030', 'FOILDARRIG HOUSE', 'NORTH ROAD', 'CASTLETOWNBERE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1113, 'W.END', 'WESTEND SERVICE STATION', 'westendss@gmail.com', '069 62318', 'KILLARNEY ROAD', 'NEWCASTLEWEST', 'CO LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1114, 'W1', 'WATERFORD REGIONAL AIRPORT', '', '051 875589', 'KILOWEN,', 'CO. WATERFORD.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1115, 'W2', 'ROADSTONE LTD', 'payablesrwg@isac.crh.com', 'a/c pay 01 4682590', 'C/O  I S A C CRH LTD', 'FORTUNESTOWN', 'TALLAGHT, DUBLIN 24', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1116, 'W3', 'WEST FELLIA SEPARATORS,', '', '021 4850222', 'BALLINCOLLIG,', 'CO. CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1117, 'W4', 'WALSH\'S FOODSTORE,', '', '6841104', 'CRAUGHDARRID,', 'ASDEE,', 'LISTOWEL, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1118, 'W5', 'TRIA WEST CORK OIL', 'ACCOUNTS@TRIA.IE', '028 31396', 'KILLEENLEIGH', 'CAHERAGH', 'DRIMOLEAGUE, CO CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1119, 'W6', 'IPAT ltd', 'wille@ipat.ie', '025 34636', 'Macoda,sheepwalk west,', 'Fermoy', 'co.cork', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1120, 'WAL1', 'Wallcon Developments Ltd', '', '062 61161', 'Friary St', 'Cashell', 'Co Tipperary', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1121, 'WAL2', 'WALSH\'S SERVICE STATION', 'epower6@hotmail.com', '056 8835118', 'WOODSGIFT', 'URLINGFORD', 'CO KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1122, 'WAL3', 'DONAL WALLIS', '', '062 63059', 'CAMPUS PETROL STATION', 'FRIAR STREET', 'CASHEL, CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1123, 'WAL4', 'TEXACO SERVICE STATION', 'mpower.nissan@gmail.com', '51376210', 'LEMYBRIEN', 'WATERFORD', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1124, 'WAL5', 'DERMOT WALSH', 'msingh@fcos.ie', '066 9472380', 'VALENTIA ROAD', 'GARRANEBANE', 'CAHERSIVEEN, CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1125, 'WAL6', 'ANN WALSH', 'bpsann21@eircom.net', '', 'SESKIN ROAD', 'LEIGHLINN BRIDGE', 'CO CARLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1126, 'WAL7', 'WALLACE FILLING STATION', 'Nicola@wallaces.ie', '051 561868', 'JOSEPH WALLACE LTD', 'WELLINGTON BRIDGE', 'CO WEXFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1127, 'WAL8', 'TEXACO SERVICE STATION', 'fbyrne@walshscarsales.ie', '', 'CORK ROAD', 'WATERFORD', 'CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1128, 'WAT', 'WATERVILLE HARDWARE', '', '', 'WATERVILLE', 'CO. KERRY', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1129, 'WAT1', 'WATERFORD COUNTY COUNCIL,', '', '', 'MATERIAL RECOVERY FACILITY,', 'SHANDON,', 'DUNGARVAN, CO WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1130, 'WAT2', 'WATER TECHNOLOGY LTD.,', 'accounts@wtlireland.com', '021 4965600/0214966021', 'TOGHER IND EST,', 'CORK.', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1131, 'WAT3', 'WATCH HOUSE CROSS', 'CPSFORECOURTS@GMAIL.COM', '857800911', 'AMBER SERVICE STATION', 'MOYROSS', 'LIMERICK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1132, 'WAT4', 'WATSON SERVICE STATION', 'stevewatson193@yahoo.ie', '', 'DUAGH', 'LISTOWEL', 'CO. KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1133, 'WES1', 'WESTERN GEM LTD', 'aidangeerah2@gmail.com', '044 9371160', 'BALLINALACK', 'MULLINGAR', 'CO. WESTMEATH', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1134, 'WHE1', 'F&M WHELAN STEEL ENGINEERING LTD', 'accounts@fmwhelan.com', '051 563220', 'RATHANGAN', 'DUNCORMICK', 'CO WEXFORD', '', 'Y35 D28P', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1135, 'WHIT', 'WHITTEN ROAD HAULAGE LTD', '', '', 'THE GLEBE HOUSE', 'CLAREEN', 'BIRR, CO OFFALY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1136, 'WHY1', 'WHYTES SERVICE STATION', 'robertwhytekenmare@gmail.com', '(064)6641316', 'KILLARNEY ROAD', 'KENMARE', 'CO KERRY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1137, 'WIL1', 'WILLOWCREST   t/a   DONOGHUE PACKAGING', 'miriam@donpack.ie', '023 8842111', 'T/A DONOGHUE PACKAGING', 'DONPACK BUSINESS PARK', 'BANDON, CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1138, 'WJ', 'W J LEAHY', '', '029 58059', 'KILCORNEY', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1139, 'WOO1', 'WOODVIEW SERVICE STATION LTD', 'alan@woodviewss.com', '052 7441529', 'MITCHELSTOWN ROAD', 'CAHIR', 'CO TIPPERARY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1140, 'WOO2', 'WOODSGIFT SERVICE STATION LTD', 'epower6@hotmail.com', '056 8835118', 'WOODSGIFT', 'URLINGFORD', 'CO KILKENNY', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1141, 'WOR1', 'WORKSHOP UTILITIES', '', '', 'CROOKSTOWN', 'CO.CORK', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1142, 'ZEN1', 'ZENITH ENERGY BANTRY BAY TERMINAL', 'bantryinvoices@zenithem.com', '027 20346', 'REENROUR', 'BANTRY', 'CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1143, 'ZER1', 'Z STATION', 'dionzerafa@gmail.com', '', 'ZERAFA CENTRA,', 'BALLON,', 'CO-CARLOW', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1144, 'C', 'Arslan Arshad', 'arslan.arshad370@gmail.com', '090 6481213', 'DUBLIN ROAD', 'BAWNOGES', 'MOATE', NULL, 'N37 W2H3', NULL, 'USE EAS36 Site taken over by East Cork Oil', '2020-11-20 17:04:29', '2020-11-20 17:04:29', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1145, 'ka', 'Kashif Ali', 'alikashi54321@gmail.com', '349584345', 'test address 1', 'test address 2', 'test address 3', NULL, 'kanda', 'test notes', 'COD', '2020-12-09 12:56:48', '2020-12-09 12:56:48', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1146, '6870909', 'Deviotech', 'ayeshaalloudin@gmail.com', '3000000000', ',nfd300', 'hvnn', 'ghvjhn', NULL, '5678', 'hvkugbjk', 'nul', '2021-01-14 11:38:06', '2021-01-14 11:38:06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1147, 'sdhb', 'dfbdfb', 'dfbdf@gmail.com', '4645757', 'fgnfgn', 'fgnfgn', 'fgnfgn', NULL, 'sdvjhb', 'fgnfgn', 'nfn', '2021-02-09 04:50:33', '2021-02-09 04:50:33', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1148, 'dfb', 'dbdf', 'eberb@gmail.com', '34536', 'fng', 'fgn', 'fgn', NULL, 'dfb', 'fgn', 'fgn', '2021-02-09 05:13:34', '2021-02-09 05:18:23', 1, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1149, 'dd', 'dd', 'dd@gmail.com', '235345', 'sdvds', 'svdv', 'svd', NULL, 'dd', 'dd', 'Hold ref Nora', '2021-02-09 05:39:12', '2021-02-09 05:39:12', 1, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1150, 'dv', 'dv', 'dvb@gmail.com', 'df', 'dsv', 'sdv', 'sdv', NULL, 'dv', NULL, 'OK', '2021-02-09 05:44:07', '2021-02-09 05:44:07', 1, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1153, '111111', 'John test add new customer', 'john@aol.com', '2312321321', 'add r 1', 'addr 2', 'addr 3', NULL, '213123', 'test notes', NULL, '2021-02-17 23:49:58', '2021-02-17 23:49:58', 1, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1154, '12323434', 'JOHN TEST', 'JOHN@AOL.COM', '231312', 'DAEDEWR', 'XZCSDFDS', 'ASDASFS', NULL, 'SDFSDFS', 'TEST HOLD COMMENT', 'Hold ref Nora', '2021-02-18 12:38:26', '2021-02-18 12:38:26', 1, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1155, 'a1234', 'Grand Elliot', 'grandeliot@gmail.com', '904330948', 'Address 1', 'Address 2', 'Address 3', NULL, 'a1234', 'This is notes of customer', 'OK', '2021-02-23 09:16:14', '2021-02-23 09:17:47', 1, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1156, 'hello123', 'Test', 'test@customer.com', '934759', 'SDFL', 'SKDJF', 'QKSSD', NULL, 'abc1243', NULL, 'OK', '2021-03-09 05:44:51', '2021-03-09 05:55:23', 1, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1157, 'lkjlsdkflsd', 'lkskdlkf', 'lksdlkfds@gmail.com', '983547598', 'lksdjl', 'lkskdjlk', 'lkdksdlkf', NULL, '234', 'lkdskfdslksfd', 'Hold ref Nora', '2021-03-16 04:57:50', '2021-03-16 05:19:27', 1, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1158, 'klsdf', 'Test Customer CC', 'testcustomer@gmail.com', '394875', 'KLSDFLKQ', 'SLKSJD', 'KLSD', NULL, '84743', 'LKSDF', 'Hold ref Nora', '2021-03-16 07:43:06', '2021-03-16 07:45:48', 1, 'yes', NULL, NULL, 'contactemail1@gmail.com', 'contactemail2@gmail.com', 'contactemail3@gmail.com', 'contactemail4@gmail.com', 'contactemail5@gmail.com'),
(1159, '4003', 'Test', 'test@gmail.com', '34873345', 'lklsdjf', 'lksdj', 'dlksdsjl', NULL, '0349', 'lkjfklsdjflkds', 'Hold ref Nora', '2021-03-16 23:56:59', '2021-03-17 00:13:04', 1, 'yes', NULL, NULL, 'test1email@gmail.com', 'test2email@gmail.com', 'test3email@gmail.com', 'test4email@gmail.com', 'test5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dropbox_tokens`
--

CREATE TABLE `dropbox_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dropbox_tokens`
--

INSERT INTO `dropbox_tokens` (`id`, `user_id`, `email`, `access_token`, `token_type`, `uid`, `account_id`, `created_at`, `updated_at`) VALUES
(3, 1, 'mali70162@gmail.com', 'w9haWgqtayMAAAAAAAAAAYM9F53cKzFElk4XPU5AukFzvAZLG0RjZmPLqABLt9DU', 'bearer', '3097110480', 'dbid:AADklrIPz3TQQRWHUUkbusb524FYeWsWgwc', '2020-10-27 00:19:07', '2020-10-27 00:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `engineer_equipments`
--

CREATE TABLE `engineer_equipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `make` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `w_m_seals` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engineer_equipments`
--

INSERT INTO `engineer_equipments` (`id`, `equipment`, `make`, `serial_no`, `w_m_seals`, `form_id`, `created_at`, `updated_at`) VALUES
(1, 'equipment 1', 'steel', '9', '0', 5, '2021-02-12 06:00:22', '2021-02-12 06:00:22'),
(2, 'equipment 1', 'steel', '9', '0', 6, '2021-02-12 06:01:41', '2021-02-12 06:01:41'),
(3, 'equipment 1', 'steel', '93434', '0', 7, '2021-02-12 06:03:34', '2021-02-12 06:03:34'),
(4, 'sdf', 'sdfsd', 'sdfsdf', '0', 8, '2021-02-12 06:54:45', '2021-02-12 06:54:45'),
(5, 'lksdjfl', 'flksdjfs', 'dfgsf', '0', 9, '2021-02-12 06:56:18', '2021-02-12 06:56:18'),
(6, 'lksdjfl', 'flksdjfs', 'dfgsf', '0', 10, '2021-02-12 07:09:25', '2021-02-12 07:09:25'),
(7, ';ksdkf', 'LKSDF', '930409', '0', 11, '2021-02-12 07:13:59', '2021-02-12 07:13:59'),
(8, ';ksdkf', 'LKSDF', '930409', '0', 12, '2021-02-12 07:14:26', '2021-02-12 07:14:26'),
(9, ';ksdkf', 'LKSDF', '930409', '0', 13, '2021-02-12 07:14:43', '2021-02-12 07:14:43'),
(10, 'equipment 1', 'equipment make 3', '09844334', '0', 19, '2021-02-23 23:25:34', '2021-02-23 23:25:34'),
(11, 'equipment 1', 'equipment make 3', '3322111', '0', 20, '2021-02-24 04:01:46', '2021-02-24 04:01:46'),
(12, 'equipment 1', 'make 1', '45678', '0', 22, '2021-02-24 04:15:59', '2021-02-24 04:15:59'),
(13, 'equipment 1', 'make 1', '45678', '0', 23, '2021-02-24 04:16:23', '2021-02-24 04:16:23'),
(14, 'equipment 1', 'make 1', '45678', '0', 24, '2021-02-24 04:16:37', '2021-02-24 04:16:37'),
(15, 'equipment 1', 'make 1', '45678', '0', 25, '2021-02-24 04:16:56', '2021-02-24 04:16:56'),
(16, 'equipment 1', 'make 1', '45678', '0', 26, '2021-02-24 04:17:27', '2021-02-24 04:17:27'),
(17, 'equipment 2', 'make 2', '', '0', 26, '2021-02-24 04:17:27', '2021-02-24 04:17:27'),
(18, 'equipment 1', 'make 1', '12345', '0', 27, '2021-02-24 04:29:31', '2021-02-24 04:29:31'),
(19, 'equipment 2', 'make 2', '123456', '0', 27, '2021-02-24 04:29:31', '2021-02-24 04:29:31'),
(20, 'equipment 1', 'make 1', '12345', '0', 28, '2021-02-24 04:29:34', '2021-02-24 04:29:34'),
(21, 'equipment 2', 'make 2', '123456', '0', 28, '2021-02-24 04:29:34', '2021-02-24 04:29:34'),
(22, 'equipment 1', 'make 1', '12345', '0', 29, '2021-02-24 04:29:46', '2021-02-24 04:29:46'),
(23, 'equipment 2', 'make 2', '123456', '0', 29, '2021-02-24 04:29:46', '2021-02-24 04:29:46'),
(24, 'equipment 1', 'make 1', '12345', '0', 30, '2021-02-24 04:32:11', '2021-02-24 04:32:11'),
(25, 'equipment 2', 'make 2', '123456', '0', 30, '2021-02-24 04:32:11', '2021-02-24 04:32:11'),
(26, 'equipment 1', 'make 1', '12345', '0', 31, '2021-02-24 04:32:40', '2021-02-24 04:32:40'),
(27, 'equipment 2', 'make 2', '123456', '0', 31, '2021-02-24 04:32:40', '2021-02-24 04:32:40'),
(30, 'equipment 1', 'make 1', '12345', '0', 32, '2021-02-24 07:30:12', '2021-02-24 07:30:12'),
(31, 'equipment 1', 'make 1', '74893', '0', 34, '2021-03-04 02:08:41', '2021-03-04 02:08:41'),
(32, 'equipment 2', 'make 2', '30948', '0', 34, '2021-03-04 02:08:41', '2021-03-04 02:08:41'),
(33, 'equipment 1', 'equipment make 3', '234234', '0', 35, '2021-03-04 02:24:44', '2021-03-04 02:24:44'),
(34, 'equipment 1', 'equipment make 3', '989495894', '0', 36, '2021-03-04 02:27:00', '2021-03-04 02:27:00'),
(35, 'equipment 1', 'equipment make 3', '989495894', '0', 38, '2021-03-04 02:37:24', '2021-03-04 02:37:24'),
(36, 'equipment 1', 'equipment make 3', '989495894', '0', 39, '2021-03-04 02:49:29', '2021-03-04 02:49:29'),
(37, 'equipment 1', 'equipment make 3', '989495894', '0', 40, '2021-03-04 02:57:31', '2021-03-04 02:57:31'),
(38, 'equipment 1', 'equipment make 3', '989495894', '0', 41, '2021-03-04 02:59:47', '2021-03-04 02:59:47'),
(39, 'kl;;kdsls', 'sdkfljjff', '4', '0', 48, '2021-03-10 06:13:02', '2021-03-10 06:13:02'),
(40, 'kljdfj', 'lifsdi', '9', '0', 48, '2021-03-10 06:13:02', '2021-03-10 06:13:02'),
(41, 'erj', 'lkjrj', '89347', '0', 49, '2021-03-10 06:15:25', '2021-03-10 06:15:25'),
(42, 'erj', 'lkjrj', '89347', '0', 50, '2021-03-10 06:15:38', '2021-03-10 06:15:38'),
(43, 'erj', 'lkjrj', '3495', '0', 51, '2021-03-10 06:16:28', '2021-03-10 06:16:28'),
(44, 'lkdsfjkf', '8374', '4398', '0', 51, '2021-03-10 06:16:28', '2021-03-10 06:16:28'),
(47, 'SLJDK', 'KLSDJ', '98437', '0', 58, '2021-03-10 23:30:56', '2021-03-10 23:30:56'),
(48, 'KLJKFS', 'klsd', '443534', '0', 58, '2021-03-10 23:30:56', '2021-03-10 23:30:56'),
(49, 'kksjdlk', 'lkdssdj', '8943', '0', 64, '2021-03-10 23:41:15', '2021-03-10 23:41:15'),
(50, 'kksjdlk', 'lkdssdj', '8943', '0', 65, '2021-03-10 23:41:49', '2021-03-10 23:41:49'),
(51, 'LKJSDJ', 'SDLKJ', '9874', '0', 66, '2021-03-11 23:13:08', '2021-03-11 23:13:08'),
(52, 'KLSJD', 'FDKLJL', '34839', '0', 66, '2021-03-11 23:13:08', '2021-03-11 23:13:08'),
(53, 'lkfsdjlk', 'lkdsfl', '9843', '0', 67, '2021-03-11 23:20:25', '2021-03-11 23:20:25'),
(54, 'klsjklfd', '4589', '878', '0', 67, '2021-03-11 23:20:25', '2021-03-11 23:20:25'),
(55, 'skljdfkl', 'lkdsksd', '39487', '0', 68, '2021-03-16 04:09:52', '2021-03-16 04:09:52'),
(56, 'sfl;kjkdf', 'lkjksdjl', '438397', '0', 68, '2021-03-16 04:09:52', '2021-03-16 04:09:52'),
(57, 'LKJKKLS', 'SDLKJS', '98375349', '0', 69, '2021-03-16 04:22:50', '2021-03-16 04:22:50'),
(58, 'LKSDJKL', 'LSKDFLK', '0900', '0', 69, '2021-03-16 04:22:50', '2021-03-16 04:22:50'),
(79, '323', 'skdjl', '234', '1', 71, '2021-04-01 00:49:41', '2021-04-01 00:49:41'),
(80, '84397', 'sldkjf', '38497', '1', 70, '2021-04-01 01:58:03', '2021-04-01 01:58:03'),
(81, '09348', 'ksldjf', '09823', '1', 72, '2021-04-14 04:39:11', '2021-04-14 04:39:11'),
(82, '09348', 'ksldjf', '09823', '1', 73, '2021-04-14 04:39:31', '2021-04-14 04:39:31'),
(83, '09348', 'ksldjf', '09823', '1', 74, '2021-04-14 04:40:52', '2021-04-14 04:40:52'),
(84, '09348', 'ksldjf', '09823', '1', 75, '2021-04-14 04:41:36', '2021-04-14 04:41:36'),
(85, '09348', 'ksldjf', '09823', '1', 76, '2021-04-14 05:17:59', '2021-04-14 05:17:59'),
(86, '3289', 'lskdklk', '9823', '1', 77, '2021-04-14 05:20:53', '2021-04-14 05:20:53'),
(87, '3289', 'lskdklk', '9823', '1', 78, '2021-04-14 05:21:10', '2021-04-14 05:21:10'),
(88, '989823', 'lkdsj', '8934', '1', 79, '2021-04-14 05:23:06', '2021-04-14 05:23:06'),
(89, '989823', 'lkdsj', '8934', '1', 80, '2021-04-14 05:23:28', '2021-04-14 05:23:28'),
(90, '0934', 'sdlklksd', '34908', '1', 81, '2021-04-14 05:28:04', '2021-04-14 05:28:04'),
(91, '09438', 'lskdjflk', '30495', '1', 82, '2021-04-14 05:30:32', '2021-04-14 05:30:32'),
(92, '0943', 'lksdjf', '09348', '1', 83, '2021-04-14 05:47:18', '2021-04-14 05:47:18'),
(93, '0943', 'lksdjf', '09348', '1', 84, '2021-04-14 05:47:33', '2021-04-14 05:47:33'),
(94, '0943', 'lksdjf', '09348', '1', 85, '2021-04-14 05:47:57', '2021-04-14 05:47:57'),
(95, '032948', 'slkdfljk', '03948', '1', 86, '2021-04-14 05:50:26', '2021-04-14 05:50:26'),
(96, '2837900', 'lskjd', '93287', '1', 87, '2021-04-14 06:02:38', '2021-04-14 06:02:38'),
(97, '2837900', 'lskjd', '93287', '1', 88, '2021-04-14 06:03:03', '2021-04-14 06:03:03'),
(98, '39084', 'lkjsdj', '908', '1', 89, '2021-04-14 06:17:18', '2021-04-14 06:17:18'),
(99, '9043', 'slkdk', '0943', '1', 90, '2021-04-14 06:19:01', '2021-04-14 06:19:01'),
(100, '03948', 'klsdsfd', '0943', '1', 91, '2021-04-14 06:34:48', '2021-04-14 06:34:48'),
(101, '987', 'slkdfjkl', '897', '1', 92, '2021-04-15 02:12:47', '2021-04-15 02:12:47'),
(102, '987', 'slkdfjkl', '897', '1', 93, '2021-04-15 02:13:30', '2021-04-15 02:13:30'),
(103, '987', 'slkdfjkl', '897', '1', 94, '2021-04-15 02:13:47', '2021-04-15 02:13:47'),
(104, '987', 'slkdfjkl', '897', '1', 95, '2021-04-15 02:13:55', '2021-04-15 02:13:55'),
(105, '89789', 'lkjlsjd', '89897', '1', 96, '2021-04-15 02:15:45', '2021-04-15 02:15:45'),
(106, '89789', 'lkjlsjd', '89897', '1', 97, '2021-04-15 02:15:57', '2021-04-15 02:15:57'),
(107, 'lksdjf90', 'sldjfkl', 'slkdkj9023', '1', 98, '2021-04-21 01:13:53', '2021-04-21 01:13:53'),
(108, '0239klsdj', 'lslkdjf', '90klsdjf', '1', 98, '2021-04-21 01:13:53', '2021-04-21 01:13:53'),
(109, 'ldjsd', 'lskdj', 'lsdksdj', '1', 99, '2021-04-21 01:16:47', '2021-04-21 01:16:47'),
(110, 'lksdj', 'lksd', 'ldsdj', '1', 100, '2021-04-21 01:17:56', '2021-04-21 01:17:56'),
(111, 'sdf', 'sdfd', 'dsff', '1', 101, '2021-06-17 06:17:24', '2021-06-17 06:17:24'),
(112, 'sdf', 'sdfds', 'dsf', '0', 101, '2021-06-17 06:17:24', '2021-06-17 06:17:24'),
(113, 'sdf', 'sdfd', 'dsff', '1', 102, '2021-06-17 06:18:10', '2021-06-17 06:18:10'),
(114, 'sdf', 'sdfds', 'dsf', '0', 102, '2021-06-17 06:18:10', '2021-06-17 06:18:10'),
(115, 'sdf', 'sdfd', 'dsff', '1', 103, '2021-06-17 06:19:22', '2021-06-17 06:19:22'),
(116, 'sdf', 'sdfds', 'dsf', '0', 103, '2021-06-17 06:19:22', '2021-06-17 06:19:22'),
(117, 'sd', 'sdf', 'sd', 'na', 104, '2021-06-17 07:19:07', '2021-06-17 07:19:07'),
(118, 'sdf', 'sdf', 'ds', '1', 220, '2021-07-16 02:01:10', '2021-07-16 02:01:10'),
(119, 'dsf', 'sdf', 'dfsfd', '0', 220, '2021-07-16 02:01:10', '2021-07-16 02:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `engineer_forms`
--

CREATE TABLE `engineer_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_site` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_carried_out` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) DEFAULT 0,
  `job_completed_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `not_completed_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eng_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `van_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1. Pending 2. Submitted',
  `date_of_submission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_of_days` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `w_m_seals` tinyint(1) NOT NULL DEFAULT 0,
  `email_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engineer_forms`
--

INSERT INTO `engineer_forms` (`id`, `assign_from`, `assign_to`, `contact_id`, `date`, `user_id`, `job_id`, `order_no`, `contact_site`, `work_carried_out`, `comment`, `completed`, `job_completed_comment`, `not_completed_comment`, `eng_name`, `van_no`, `signature`, `status`, `date_of_submission`, `num_of_days`, `created_at`, `updated_at`, `w_m_seals`, `email_date`) VALUES
(14, NULL, NULL, NULL, '09-02-2021', 3, 63, '12345678', '4346466456', 'test the abcdefg', 'test comments', 1, 'job completed comment', '', 'oshanahan john', '582', 'uploads/signatures/Aheqd59Lbk.png', '2', NULL, NULL, '2021-02-17 22:51:20', '2021-02-17 22:51:20', 0, NULL),
(15, NULL, NULL, NULL, '09-02-2021', 3, 63, '12345678', '4346466456', 'test the abcdefg', 'test comments', 1, 'job completed comment', '', 'oshanahan john', '582', 'uploads/signatures/zS2HB6oSok.png', '2', NULL, NULL, '2021-02-17 22:51:33', '2021-02-17 22:51:33', 0, NULL),
(16, NULL, NULL, NULL, '09-02-2021', 3, 63, '12345678', '4346466456', 'test the abcdefg', 'test comments', 1, 'job completed comment', '', 'oshanahan john', '582', 'uploads/signatures/pvHigBWTTO.png', '2', NULL, NULL, '2021-02-17 22:51:54', '2021-02-17 22:51:54', 0, NULL),
(17, NULL, NULL, NULL, '09-02-2021', 3, 63, '12345678', '4346466456', 'test the abcdefg', 'test comments', 1, 'job completed comment', '', 'oshanahan john', '582', 'uploads/signatures/uefJe5yIOZ.png', '2', NULL, NULL, '2021-02-17 22:52:01', '2021-02-17 22:52:01', 0, NULL),
(18, NULL, NULL, NULL, '09-02-2021', 3, 63, '12345678', '4346466456', 'test the abcdefg', 'test comments', 1, 'job completed comment', '', 'oshanahan john', '582', 'uploads/signatures/IEDlkcp146.png', '2', NULL, NULL, '2021-02-17 22:53:43', '2021-02-17 22:53:43', 0, NULL),
(19, NULL, NULL, NULL, '09-02-2021', 10, 59, '8734895', '34534545', 'work carried out completed', 'comments about engineer', 1, 'job completed successfully with enthusiasm.', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/xZswjp1eF9.png', '2', NULL, NULL, '2021-02-23 23:25:34', '2021-02-24 00:05:41', 1, '2021-02-24 05:05:41'),
(20, NULL, NULL, NULL, '09-02-2021', 10, 59, '983475', '34534545', 'work carried out text', 'engineer comment', 1, 'job completed comment', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/JbQFkJOHwC.png', '2', NULL, NULL, '2021-02-24 04:01:46', '2021-02-24 04:01:46', 1, NULL),
(21, NULL, NULL, NULL, '09-02-2021', 10, 59, '7889', '34534545', 'work carried out by engineer text', 'engineer comment is good fine excellent', 1, 'Successfully Completed job', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/oqLTyfiWtk.png', '2', NULL, NULL, '2021-02-24 04:11:05', '2021-02-24 04:11:05', 1, NULL),
(22, NULL, NULL, NULL, '09-02-2021', 10, 59, '7878787', '34534545', 'work carried out by engineer text', 'engineer comment good excellent fine fair', 1, 'job completed comment', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/BvnJwlQhS4.png', '2', NULL, NULL, '2021-02-24 04:15:59', '2021-02-24 04:15:59', 1, NULL),
(23, NULL, NULL, NULL, '09-02-2021', 10, 59, '7878787', '34534545', 'work carried out by engineer text', 'engineer comment good excellent fine fair', 1, 'job completed comment', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/PWUjWZDOiz.png', '2', NULL, NULL, '2021-02-24 04:16:23', '2021-02-24 04:16:23', 1, NULL),
(24, NULL, NULL, NULL, '09-02-2021', 10, 59, '7878787', '34534545', 'work carried out by engineer text', 'engineer comment good excellent fine fair', 1, 'job completed comment', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/cB01xUERNt.png', '2', NULL, NULL, '2021-02-24 04:16:36', '2021-02-24 04:16:36', 1, NULL),
(25, NULL, NULL, NULL, '09-02-2021', 10, 59, '7878787', '34534545', 'work carried out by engineer text', 'engineer comment good excellent fine fair', 1, 'job completed comment', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/21I8g1U4RI.png', '2', NULL, NULL, '2021-02-24 04:16:56', '2021-02-24 04:16:56', 1, NULL),
(26, NULL, NULL, NULL, '09-02-2021', 10, 59, '7878787', '34534545', 'work carried out by engineer text', 'engineer comment good excellent fine fair', 1, 'job completed comment', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/vfQxcFW1bu.png', '2', NULL, NULL, '2021-02-24 04:17:27', '2021-02-24 04:17:27', 1, NULL),
(27, NULL, NULL, NULL, '09-02-2021', 10, 61, '8934598435', '0321461545', 'work carried out by text', 'engineer job comment text find correct', 0, '', 'job not completed due to holidays etc...', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/EUSRsiWXV0.png', '2', NULL, NULL, '2021-02-24 04:29:31', '2021-02-24 04:29:31', 1, NULL),
(28, NULL, NULL, NULL, '09-02-2021', 10, 61, '8934598435', '0321461545', 'work carried out by text', 'engineer job comment text find correct', 0, '', 'job not completed due to holidays etc...', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/d0CGrq5NGb.png', '2', NULL, NULL, '2021-02-24 04:29:34', '2021-02-24 04:29:34', 1, NULL),
(29, NULL, NULL, NULL, '09-02-2021', 10, 61, '8934598435', '0321461545', 'work carried out by text', 'engineer job comment text find correct', 0, '', 'job not completed due to holidays etc...', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/1zIs0Mfxrj.png', '2', NULL, NULL, '2021-02-24 04:29:46', '2021-02-24 04:29:46', 1, NULL),
(30, NULL, NULL, NULL, '09-02-2021', 10, 61, '8934598435', '0321461545', 'work carried out by text', 'engineer job comment text find correct', 0, '', 'job not completed due to holidays etc...', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/lgpGCaKd51.png', '2', NULL, NULL, '2021-02-24 04:32:11', '2021-02-24 04:32:11', 1, NULL),
(31, NULL, NULL, NULL, '09-02-2021', 10, 61, '8934598435', '0321461545', 'work carried out by text', 'engineer job comment text find correct', 0, '', 'job not completed due to holidays etc...', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/Z2PPl8gJDS.png', '2', NULL, NULL, '2021-02-24 04:32:40', '2021-02-24 04:32:40', 1, NULL),
(32, NULL, NULL, NULL, '24-02-2021', 10, 61, '1234511', '0321461545', 'work carried out description by engineer', 'engineer comment good excellent and fair.', 1, 'Job completed successfully by engineer', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/6olRvoIoec.png', '2', NULL, NULL, '2021-02-24 06:16:33', '2021-02-24 07:30:12', 1, NULL),
(33, NULL, NULL, NULL, '09-02-2021', 10, 59, '089034', '34534545', 'test', 'Good Work', 1, 'Yes completed successfully.', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/A5G7XDnQpX.png', '2', NULL, NULL, '2021-03-04 02:08:23', '2021-03-04 02:08:23', 1, NULL),
(34, NULL, NULL, NULL, '09-02-2021', 10, 59, '089034', '34534545', 'test', 'Good Work', 1, 'Yes completed successfully.', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/TcsmHlnCAm.png', '2', NULL, NULL, '2021-03-04 02:08:41', '2021-03-04 02:08:41', 1, NULL),
(35, NULL, NULL, NULL, '09-02-2021', 10, 59, '83495', '34534545', 'test', 'test comment', 0, '', 'job not completed comment', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/n93fyBIS4F.png', '2', NULL, NULL, '2021-03-04 02:24:44', '2021-03-04 02:24:44', 0, NULL),
(36, NULL, NULL, NULL, '09-02-2021', 10, 59, '8934598435', '34534545', 'test', 'test', 0, '', 'test not completed comment', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/NeY51JB1Ru.png', '2', NULL, NULL, '2021-03-04 02:27:00', '2021-03-04 02:27:00', 0, NULL),
(37, NULL, NULL, NULL, '09-02-2021', 10, 59, '8934598435', '34534545', 'test', 'sdf', 0, '', 'sdf', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/zxXULkWYGR.png', '2', NULL, NULL, '2021-03-04 02:30:19', '2021-03-04 02:30:19', 1, NULL),
(38, NULL, NULL, NULL, '09-02-2021', 10, 59, '930485', '34534545', 'test', 'kljflsd', 1, 'Yes', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/byEBe8cQyo.png', '2', NULL, NULL, '2021-03-04 02:37:24', '2021-03-04 02:37:24', 1, NULL),
(39, NULL, NULL, NULL, '09-02-2021', 10, 59, '234324', '34534545', 'test', 'test', 1, 'Yes sure', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/rIcZtrpWvY.png', '2', NULL, NULL, '2021-03-04 02:49:29', '2021-03-04 02:49:29', 0, NULL),
(40, NULL, NULL, NULL, '09-02-2021', 10, 59, '98743985', '34534545', 'test', 'test', 1, 'job completed successfully...', '', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/SMiioUZv1Q.png', '2', NULL, NULL, '2021-03-04 02:57:31', '2021-03-04 02:57:31', 1, NULL),
(41, NULL, NULL, NULL, '09-02-2021', 10, 59, '873945', '34534545', 'test', 'lksjfdsf', 0, '', 'lksjdf', 'Nidaad Sahb Engineer', '460', 'uploads/signatures/YDdcEP2ax0.png', '2', NULL, NULL, '2021-03-04 02:59:47', '2021-03-04 02:59:47', 1, NULL),
(42, NULL, NULL, NULL, '04-03-2021', 10, NULL, '9034', NULL, 'work carried out.', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/m2xPyyVo1a.png', '1', NULL, NULL, '2021-03-10 05:56:20', '2021-03-10 05:56:20', 0, NULL),
(43, NULL, NULL, NULL, '04-03-2021', 10, NULL, '9034', NULL, 'work carried out.', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/wbVLuPIk49.png', '1', NULL, NULL, '2021-03-10 05:56:24', '2021-03-10 05:56:24', 0, NULL),
(44, NULL, NULL, NULL, '04-03-2021', 10, NULL, '9034', NULL, 'work carried out.', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/6ZD7SUpgJY.png', '1', NULL, NULL, '2021-03-10 05:56:33', '2021-03-10 05:56:33', 0, NULL),
(45, NULL, NULL, NULL, '04-03-2021', 10, NULL, '389475', NULL, 'jkskdfkjds', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/FkdMDs2hD5.png', '1', NULL, NULL, '2021-03-10 06:08:42', '2021-03-10 06:08:42', 0, NULL),
(46, NULL, NULL, NULL, '04-03-2021', 10, NULL, '389475', NULL, 'jkskdfkjds', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/5XAyvXIuLh.png', '1', NULL, NULL, '2021-03-10 06:08:50', '2021-03-10 06:08:50', 0, NULL),
(47, NULL, NULL, NULL, '04-03-2021', 10, NULL, '892347', NULL, 'jkfhfkds', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/ytfyom9Fzu.png', '1', NULL, NULL, '2021-03-10 06:10:54', '2021-03-10 06:10:54', 0, NULL),
(48, NULL, NULL, NULL, '04-03-2021', 10, 68, '89374lksjdjfjklds', NULL, 'lkdjfl', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/dwzng02owv.png', '1', NULL, NULL, '2021-03-10 06:13:02', '2021-03-10 06:13:02', 0, NULL),
(49, NULL, NULL, NULL, '04-03-2021', 10, 68, 'o9348', NULL, 'sdlkfj', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/zD3UmCqw4I.png', '1', NULL, NULL, '2021-03-10 06:15:25', '2021-03-10 06:15:25', 0, NULL),
(50, NULL, NULL, NULL, '04-03-2021', 10, 68, 'o9348', NULL, 'sdlkfj', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/ho2wPdWdQc.png', '1', NULL, NULL, '2021-03-10 06:15:38', '2021-03-10 06:15:38', 0, NULL),
(51, NULL, NULL, NULL, '04-03-2021', 10, 68, 'o9348', NULL, 'sdlkfj', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/1i33FCbaEb.png', '1', NULL, NULL, '2021-03-10 06:16:28', '2021-03-10 06:16:28', 0, NULL),
(53, NULL, NULL, NULL, '10-03-2021', 34, 70, '89347', NULL, 'slkjkjdjfd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/1MSuzkBErA.png', '1', NULL, NULL, '2021-03-10 23:23:29', '2021-03-10 23:23:29', 0, NULL),
(54, NULL, NULL, NULL, '10-03-2021', 34, 70, '89347', NULL, 'slkjkjdjfd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/bFmkY8DR14.png', '1', NULL, NULL, '2021-03-10 23:24:48', '2021-03-10 23:24:48', 0, NULL),
(55, NULL, NULL, NULL, '10-03-2021', 34, 70, '89347', NULL, 'slkjkjdjfd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/SFl9FHj0xK.png', '1', NULL, NULL, '2021-03-10 23:25:31', '2021-03-10 23:25:31', 0, NULL),
(56, NULL, NULL, NULL, '10-03-2021', 34, 70, '049835', NULL, 'sdkljsd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/2FoXC9m5xo.png', '1', NULL, NULL, '2021-03-10 23:29:54', '2021-03-10 23:29:54', 0, NULL),
(57, NULL, NULL, NULL, '10-03-2021', 34, 70, '049835', NULL, 'sdkljsd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/TAhMeUSuJ9.png', '1', NULL, NULL, '2021-03-10 23:30:29', '2021-03-10 23:30:29', 0, NULL),
(58, NULL, NULL, NULL, '10-03-2021', 34, 70, '049835', NULL, 'sdkljsd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/Ockc2JTMDW.png', '1', NULL, NULL, '2021-03-10 23:30:56', '2021-03-10 23:30:56', 0, NULL),
(59, NULL, NULL, NULL, '10-03-2021', 34, 70, '049835', NULL, 'sdkljsd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/e74Qex9CUL.png', '1', NULL, NULL, '2021-03-10 23:31:53', '2021-03-10 23:31:53', 0, NULL),
(60, NULL, NULL, NULL, '10-03-2021', 34, 70, '049835', NULL, 'sdkljsd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/Yu38C47ZW8.png', '1', NULL, NULL, '2021-03-10 23:32:36', '2021-03-10 23:32:36', 0, NULL),
(61, NULL, NULL, NULL, '10-03-2021', 34, 70, '879283', NULL, 'KLJSLFKDS', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/q7TGdGPm2B.png', '1', NULL, NULL, '2021-03-10 23:35:16', '2021-03-10 23:35:16', 0, NULL),
(62, NULL, NULL, NULL, '10-03-2021', 34, 70, '879283', NULL, 'KLJSLFKDS', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/DmZ1Vx5r2k.png', '1', NULL, NULL, '2021-03-10 23:38:11', '2021-03-10 23:38:11', 0, NULL),
(63, NULL, NULL, NULL, '10-03-2021', 34, 70, '0349', NULL, 'klsdlfkd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/dbGasv6na9.png', '1', NULL, NULL, '2021-03-10 23:39:37', '2021-03-10 23:39:37', 0, NULL),
(64, NULL, NULL, NULL, '10-03-2021', 34, 70, '340980534', NULL, 'lkjksfjd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/h8UXWpOtz4.png', '1', NULL, NULL, '2021-03-10 23:41:15', '2021-03-10 23:41:15', 0, NULL),
(65, NULL, NULL, NULL, '10-03-2021', 34, 70, '340980534', NULL, 'lkjksfjd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/k5EzhWhgrO.png', '1', NULL, NULL, '2021-03-10 23:41:49', '2021-03-10 23:41:49', 0, NULL),
(66, NULL, NULL, NULL, '04-03-2021', 35, 67, '98347', NULL, 'skldjflksd', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/6EUbHqwlhE.png', '1', NULL, NULL, '2021-03-11 23:13:08', '2021-03-11 23:13:08', 0, NULL),
(67, NULL, NULL, NULL, '10-03-2021', 35, 69, '98347', NULL, 'isdufsldjk', NULL, NULL, '', '', NULL, NULL, 'uploads/signatures/VEECsUrgxN.png', '1', NULL, NULL, '2021-03-11 23:20:25', '2021-03-11 23:20:25', 0, NULL),
(68, NULL, NULL, NULL, '04-03-2021', 41, 65, '9837489', NULL, 'lkjslkfjd', NULL, 1, '', '', NULL, NULL, 'uploads/signatures/XxmMgPrpOP.png', '1', NULL, NULL, '2021-03-16 04:09:52', '2021-03-16 04:09:52', 0, NULL),
(69, NULL, NULL, NULL, '16-03-2021', 41, 73, '98373894', NULL, 'lkjljsdlkfjlskd', NULL, 0, '', '', NULL, NULL, 'uploads/signatures/fylr0xSkaG.png', '1', NULL, NULL, '2021-03-16 04:22:50', '2021-03-16 05:24:56', 0, '2021-03-16 10:24:56'),
(71, NULL, NULL, NULL, '16-03-2021', 46, 76, '309485', '9834759834', 'jlksdjflkds', 'lskdfl', 0, NULL, 'not completed due to some thing reason you know that.......', NULL, '8996', 'uploads/signatures/uYTwVLEwqb.png', '2', NULL, NULL, '2021-03-26 05:22:59', '2021-04-01 00:49:13', 0, NULL),
(72, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdjf', NULL, 1, 'LKSKDJFLKSD', NULL, NULL, '3141', 'publicuploads/signatures/pns1KpOs7m.png', '2', NULL, NULL, '2021-04-14 04:39:11', '2021-04-14 04:39:11', 0, NULL),
(73, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdjf', NULL, 1, 'LKSKDJFLKSD', NULL, NULL, '3141', 'publicuploads/signatures/XfR3IwOnmI.png', '2', NULL, NULL, '2021-04-14 04:39:31', '2021-04-14 04:39:31', 0, NULL),
(74, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdjf', NULL, 1, 'LKSKDJFLKSD', NULL, NULL, '3141', 'publicuploads/signatures/rRsIZigMfB.png', '2', NULL, NULL, '2021-04-14 04:40:52', '2021-04-14 04:40:52', 0, NULL),
(75, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdjf', NULL, 1, 'LKSKDJFLKSD', NULL, NULL, '3141', 'publicuploads/signatures/O68hdNiOaw.png', '2', NULL, NULL, '2021-04-14 04:41:36', '2021-04-14 04:41:36', 0, NULL),
(76, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdjf', NULL, 1, 'LKSKDJFLKSD', NULL, NULL, '3141', 'publicuploads/signatures/6DkSh58F0V.png', '2', NULL, NULL, '2021-04-14 05:17:59', '2021-04-14 05:17:59', 0, NULL),
(77, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'lskjflkds', NULL, 1, 'lklksdjlkfsd', NULL, NULL, '3141', 'publicuploads/signatures/KzALekFqYx.png', '2', NULL, NULL, '2021-04-14 05:20:53', '2021-04-14 05:20:53', 0, NULL),
(78, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'lskjflkds', NULL, 1, 'lklksdjlkfsd', NULL, NULL, '3141', 'publicuploads/signatures/kpjb7GxK0x.png', '2', NULL, NULL, '2021-04-14 05:21:10', '2021-04-14 05:21:10', 0, NULL),
(79, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdjflksd', NULL, 1, 'lkjsdlkfjslkdjf', NULL, NULL, '3141', 'publicuploads/signatures/LUXCwyNV2m.png', '2', NULL, NULL, '2021-04-14 05:23:06', '2021-04-14 05:23:06', 0, NULL),
(80, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdjflksd', NULL, 1, 'lkjsdlkfjslkdjf', NULL, NULL, '3141', 'publicuploads/signatures/Nl7IFNvhFo.png', '2', NULL, NULL, '2021-04-14 05:23:28', '2021-04-14 05:23:28', 0, NULL),
(81, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'lkskdjflk', NULL, 1, 'lksjdflksdjlf', NULL, NULL, '3141', 'publicuploads/signatures/jKSszA9ia3.png', '2', NULL, NULL, '2021-04-14 05:28:04', '2021-04-14 05:28:04', 0, NULL),
(82, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdfljds', NULL, 1, 'lkjdslkfjlkdsjf', NULL, NULL, '3141', 'publicuploads/signatures/OC0GCZpO4i.png', '2', NULL, NULL, '2021-04-14 05:30:32', '2021-04-14 05:30:32', 0, NULL),
(83, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'klskdllskdfkl', NULL, 1, 'LKkljslkfkls dlks jflskjf lksfj lskf jslkdfj slkdjf', NULL, NULL, '3141', 'publicuploads/signatures/ThiNE0gLHP.png', '2', NULL, NULL, '2021-04-14 05:47:18', '2021-04-14 05:47:18', 0, NULL),
(84, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'klskdllskdfkl', NULL, 1, 'LKkljslkfkls dlks jflskjf lksfj lskf jslkdfj slkdjf', NULL, NULL, '3141', 'publicuploads/signatures/zHFvGj6VOK.png', '2', NULL, NULL, '2021-04-14 05:47:33', '2021-04-14 05:47:33', 0, NULL),
(85, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'klskdllskdfkl', NULL, 1, 'LKkljslkfkls dlks jflskjf lksfj lskf jslkdfj slkdjf', NULL, NULL, '3141', 'publicuploads/signatures/0ICwKZ1CSM.png', '2', NULL, NULL, '2021-04-14 05:47:57', '2021-04-14 05:47:57', 0, NULL),
(86, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'sdlkfjdsl', NULL, 1, 'slkdkflksd', NULL, NULL, '3141', 'publicuploads/signatures/3ZzKbY7L2X.png', '2', NULL, NULL, '2021-04-14 05:50:26', '2021-04-14 05:50:26', 0, NULL),
(87, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'lksdfkjlsdfs', NULL, 1, 'lksdfklsdf', NULL, NULL, '3141', 'publicuploads/signatures/shj8BhtlGp.png', '2', NULL, NULL, '2021-04-14 06:02:38', '2021-04-14 06:02:38', 0, NULL),
(88, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'lksdfkjlsdfs', NULL, 1, 'lksdfklsdf', NULL, NULL, '3141', 'publicuploads/signatures/GqzOEFvfrk.png', '2', NULL, NULL, '2021-04-14 06:03:03', '2021-04-14 06:03:03', 0, NULL),
(89, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'lksjdlkfjsd', NULL, 1, 'lsktjelklk slkfjdslkfjds', NULL, NULL, '3141', 'publicuploads/signatures/9ZJ8i2p2E4.png', '2', NULL, NULL, '2021-04-14 06:17:18', '2021-04-14 06:17:18', 0, NULL),
(90, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'lksdjfk', NULL, 1, 'lkskdjfklsdjlkf', NULL, NULL, '3141', 'publicuploads/signatures/gd2XosV6My.png', '2', NULL, NULL, '2021-04-14 06:19:01', '2021-04-14 06:19:01', 0, NULL),
(91, NULL, NULL, NULL, '16-03-2021', 48, 74, '', '89435793845', 'slkdfjkl', NULL, 1, 'jklsdfljslfk jslkf slf jslkfjsldf', NULL, NULL, '3141', 'publicuploads/signatures/ShGGGY0BJ7.png', '2', NULL, NULL, '2021-04-14 06:34:48', '2021-04-14 06:34:48', 0, NULL),
(98, NULL, NULL, NULL, '16-03-2021', 51, 76, '', '9834759834', 'skjdlflksdj', NULL, 1, 'test completed job comment', NULL, NULL, '4688', 'uploads/signatures/4Ul0X24bHF.png', '2', NULL, NULL, '2021-04-21 01:13:52', '2021-04-21 01:13:52', 0, NULL),
(99, NULL, NULL, NULL, '16-03-2021', 51, 76, '', '9834759834', 'lskdfkjl', NULL, 1, 'lksdkflksd', NULL, NULL, '4688', 'uploads/signatures/gm9T654hgg.png', '2', NULL, NULL, '2021-04-21 01:16:47', '2021-04-21 01:16:47', 0, NULL),
(100, NULL, NULL, NULL, '16-03-2021', 51, 76, '', '9834759834', 'lsdjflk', NULL, 1, 'lksdfldsj', NULL, NULL, '4688', 'uploads/signatures/fpoAM8u6Iz.png', '2', NULL, NULL, '2021-04-21 01:17:56', '2021-04-21 01:17:56', 0, NULL),
(101, NULL, NULL, NULL, '16-03-2021', 52, 76, '', '9834759834', 'slkdfsdf', NULL, 1, 'sdfsdfsdf', NULL, NULL, '5069', 'uploads/signatures/DGEu7WzLxH.png', '2', NULL, NULL, '2021-06-17 06:17:24', '2021-06-17 06:17:24', 0, NULL),
(102, NULL, NULL, NULL, '16-03-2021', 52, 76, '', '9834759834', 'slkdfsdf', NULL, 1, 'sdfsdfsdf', NULL, NULL, '5069', 'uploads/signatures/hGyYlQruh7.png', '2', NULL, NULL, '2021-06-17 06:18:10', '2021-06-17 06:18:10', 0, NULL),
(103, NULL, NULL, NULL, '16-03-2021', 52, 76, '', '9834759834', 'slkdfsdf', NULL, 1, 'sdfsdfsdf', NULL, NULL, '5069', 'uploads/signatures/FQbfnfVLdL.png', '2', NULL, NULL, '2021-06-17 06:19:22', '2021-06-17 06:19:22', 0, NULL),
(104, NULL, NULL, NULL, '16-03-2021', 52, 76, '', '9834759834', 'Test', NULL, 1, 'Test', NULL, NULL, '5069', 'uploads/signatures/safxl9vBWW.png', '2', NULL, NULL, '2021-06-17 07:19:07', '2021-06-17 07:19:07', 0, NULL),
(215, '02/07/2021', '05/07/2021', 84, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1', '2021-07-02', 3, '2021-07-02 07:09:46', '2021-07-02 07:09:46', 0, NULL),
(216, '02/07/2021', '05/07/2021', 84, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1', '2021-07-03', 3, '2021-07-02 07:09:46', '2021-07-02 07:09:46', 0, NULL),
(217, '02/07/2021', '05/07/2021', 84, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1', '2021-07-04', 3, '2021-07-02 07:09:46', '2021-07-02 07:09:46', 0, NULL),
(218, '02/07/2021', '04/07/2021', 85, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1', '2021-07-02', 2, '2021-07-02 07:10:19', '2021-07-02 07:10:19', 0, NULL),
(219, '02/07/2021', '04/07/2021', 85, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '1', '2021-07-03', 2, '2021-07-02 07:10:19', '2021-07-02 07:10:19', 0, NULL),
(220, NULL, NULL, NULL, '16-03-2021', 53, 77, '', '893479587', 'sdfsd', NULL, 1, 'Test completed comment', NULL, NULL, '200', 'uploads/signatures/uH5aA7ZIx2.png', '2', NULL, NULL, '2021-07-16 02:01:10', '2021-07-16 02:01:10', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `engineer_images`
--

CREATE TABLE `engineer_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engineer_images`
--

INSERT INTO `engineer_images` (`id`, `path`, `form_id`, `created_at`, `updated_at`) VALUES
(1, 'engineer/form-97/1618470957_162616725_1107699773043321_6826929661727617083_n.jpg', 97, '2021-04-15 02:15:57', '2021-04-15 02:15:57'),
(2, 'engineer/form-97/1618470957_1617596245-ZpU3-document.jpg', 97, '2021-04-15 02:15:57', '2021-04-15 02:15:57'),
(3, 'engineer/form-97/1618470957_uefJe5yIOZ.png', 97, '2021-04-15 02:15:57', '2021-04-15 02:15:57'),
(4, 'engineer/form-97/1618470957_3.png', 97, '2021-04-15 02:15:57', '2021-04-15 02:15:57'),
(5, 'engineer/form-97/1618470957_left-arrow-removebg-preview.png', 97, '2021-04-15 02:15:57', '2021-04-15 02:15:57'),
(6, 'engineer/form-98/1618985633_1618843261_electrician-van-image-(2).jpg', 98, '2021-04-21 01:13:53', '2021-04-21 01:13:53'),
(7, 'engineer/form-98/1618985633_1618843261_electrician-van-image-(1).jpg', 98, '2021-04-21 01:13:53', '2021-04-21 01:13:53'),
(8, 'engineer/form-98/1618985633_1618843261_electrician-van-image.jpg', 98, '2021-04-21 01:13:53', '2021-04-21 01:13:53'),
(9, 'engineer/form-98/1618985633_thetemphub_final-09.png', 98, '2021-04-21 01:13:53', '2021-04-21 01:13:53'),
(10, 'engineer/form-99/1618985807_1618843261_electrician-van-image-(2).jpg', 99, '2021-04-21 01:16:47', '2021-04-21 01:16:47'),
(11, 'engineer/form-99/1618985807_1618843261_electrician-van-image-(1).jpg', 99, '2021-04-21 01:16:47', '2021-04-21 01:16:47'),
(12, 'engineer/form-100/1618985876_1618843261_electrician-van-image-(1).jpg', 100, '2021-04-21 01:17:56', '2021-04-21 01:17:56'),
(13, 'engineer/form-100/1618985876_1618843261_electrician-van-image.jpg', 100, '2021-04-21 01:17:56', '2021-04-21 01:17:56'),
(14, 'engineer/form-104/1623932347_pexels-christina-morillo-1181529.jpg', 104, '2021-06-17 07:19:07', '2021-06-17 07:19:07'),
(15, 'engineer/form-104/1623932347_pexels-fauxels-3184658.jpg', 104, '2021-06-17 07:19:07', '2021-06-17 07:19:07'),
(16, 'engineer/form-104/1623932347_pexels-lucian-potlog-4038828.jpg', 104, '2021-06-17 07:19:07', '2021-06-17 07:19:07'),
(17, 'engineer/form-220/1626418870_camera_big.png', 220, '2021-07-16 02:01:10', '2021-07-16 02:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `engineer_jobs`
--

CREATE TABLE `engineer_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `engineer_form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('open','closed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engineer_jobs`
--

INSERT INTO `engineer_jobs` (`id`, `engineer_form_id`, `job_id`, `contact_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(7, NULL, 77, 84, '2021-07-16', 'closed', '2021-07-16 01:57:15', '2021-07-16 02:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `pump_make_and_model_id` bigint(20) UNSIGNED NOT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1: Dual, 2: Mono, 3: Quad, 4: Six Hose',
  `equipment_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `no_of_months` int(11) DEFAULT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `customer_id`, `pump_make_and_model_id`, `serial`, `type`, `equipment_no`, `quantity`, `no_of_months`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 13, 5, '893794', '2', '498078', 4, 90, '03/11/2021 6:08 PM', '03/11/2021 6:08 PM', '2021-03-11 07:31:23', '2021-03-11 08:08:33'),
(3, 13, 4, '390485', '2', '890', 984, 8, '2021-03-19', '2021-03-29', '2021-03-11 07:41:09', '2021-03-11 07:41:09'),
(6, 13, 5, '89743', '4', '843', NULL, 9, '03/11/2021 6:09 PM', '03/11/2021 6:09 PM', '2021-03-11 08:09:33', '2021-03-11 08:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issued_tools`
--

CREATE TABLE `issued_tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tool_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_allocated` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allocated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_returned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_returned` tinyint(1) DEFAULT NULL,
  `issued_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_tools`
--

CREATE TABLE `issue_tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tool_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issued_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_allocated` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_returned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_stored` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Issued','Returned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Issued',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobtype_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warranty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration` tinyint(1) DEFAULT NULL,
  `expectcomplete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoiced` tinyint(1) DEFAULT NULL,
  `filed` tinyint(1) DEFAULT NULL,
  `enteredby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `datecomplete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('open','closed','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `select_option` enum('null','filing','invoice') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `filing_option` enum('null','filed','to_be_filed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `invoice_option` enum('null','invoiced','pending_invoice') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_folder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_status_reviewed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `service_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `date`, `jobtype_id`, `customer_id`, `category_id`, `contact_id`, `warranty`, `calibration`, `expectcomplete`, `name`, `contact`, `order_no`, `detail`, `action`, `invoiced`, `filed`, `enteredby`, `completed`, `datecomplete`, `created_at`, `updated_at`, `user_id`, `status`, `select_option`, `filing_option`, `invoice_option`, `invoice_no`, `job_folder`, `credit_status_reviewed`, `service_contract`, `contract_status`) VALUES
(46, '18/01/2021 10:2 am', 3, 332, 2, 37, '0', NULL, NULL, 'EAST CORK OIL 1 MIDLETON SITE', 'BREDA', NULL, 'MIDLETON - NEW FILTER NEEDED FOR PUMP 8 DIESEL AS IT HAS A HOLE  IN IT. CJ ADVISED IT IS BLOCKING THE NOZZLE FILTER MUCH FASTER SO WILL NEED REPLACING.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-18 15:03:15', '2021-01-18 15:40:11', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/46', 'No', NULL, NULL),
(47, '18/01/2021 10:10 am', 3, 684, NULL, 37, '0', NULL, NULL, 'DONAL MC CARTHY', 'DONAL', NULL, 'MACS F/S, KENMARE, DONAL 0879299874 - DONAL REVERSED INTO THE AGRI DIESEL PUMP YESTERDAY WITH A FORKTRUCK & HAS KNOCKED THE PUMP OFF THE ISLAND. FLEXI PIPE SEEM OK BUT BRING 2 JUST IN CASE. HOSE & NOZZLE, ALL OK. SCREEN ON DISPLAY HAS CRACKED. PUMP NOT CONNECTING TO POS NOW, NEEDS TO BE CHECKED OVER ELECTRICALLY.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-18 15:10:56', '2021-01-18 15:16:34', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/47', 'No', NULL, NULL),
(48, '18/01/2021 13:49 pm', 3, 336, 2, 8, '0', NULL, NULL, 'EAST CORK OIL 13 UNECOLWATERFORD', 'OFFICE', NULL, 'UNECOL WATERFORD - FULL SERVICE TO BE DONE ON ALL PUMPS. ALL FILTERS TO BE CLEANED ALSO.', NULL, NULL, NULL, 'Admin', 0, '18/01/2021 15:50 pm', '2021-01-18 18:50:09', '2021-01-18 20:51:03', 1, 'completed', 'filing', 'null', 'null', NULL, '/Petro/Jobs/48', 'No', NULL, NULL),
(49, '18/01/2021 15:42 pm', 3, 353, 2, NULL, '0', NULL, NULL, 'EAST CORK OIL FOYNES', 'DJ', NULL, 'FOYNES, DJ 06965417 - CHANGED PRICE ON THE TILL FOR THE KERO BUT IT HAS NOT CHANGED ON THE PUMP, NEEDS TO TALK TO SOMEONE OVER THE PHONE. ALSO ISSUE WITH FOBS.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-18 20:43:00', '2021-01-18 20:43:01', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/49', 'No', NULL, NULL),
(50, '18/01/2021 15:49 pm', 2, 670, NULL, NULL, '0', NULL, NULL, 'MC GRATH OILS,', 'JOHN', NULL, 'EMLY, TIPPERARY JOHN 087 9660344 - UNABLE TO CHANGE THE PRICE ON THE UNLEADED PUMP, KEYPAD IS NOT WORKING.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-18 20:50:08', '2021-01-18 20:50:10', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/50', 'No', NULL, NULL),
(51, '19/01/2021 8:14 am', 3, 341, 2, NULL, '0', NULL, NULL, 'EAST CORK OIL 18 TRALEE SITE', 'KEN', NULL, 'TRALEE 0667121155 KEN - DIESEL PUMP 3 HAS A LOOSE BELT, IT IS MAKE NOISE & VIBRATING WHEN DISPENSING.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-19 13:15:12', '2021-01-19 13:15:13', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/51', 'No', NULL, NULL),
(52, '19/01/2021 11:6 am', 3, 332, 2, 3, '0', NULL, NULL, 'EAST CORK OIL 1 MIDLETON SITE', 'BREDA', NULL, 'MIDLETON, LOGGED BY BREDA - DIESEL NOZZLE ON PUMP 4 IS LEAKING.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-19 16:07:06', '2021-01-19 16:07:18', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/52', 'No', NULL, NULL),
(53, '19/01/2021 11:7 am', 2, 353, 2, NULL, '0', NULL, NULL, NULL, 'DJ', NULL, 'FOYNES - THE KERO PUMP IS NOT WORKING CORRECTLY AND NOZZLE PANEL HAS FALLEN OFF THE PUMP.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-19 16:08:27', '2021-01-19 16:08:31', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/53', 'No', NULL, NULL),
(54, '19/01/2021 11:9 am', 2, 987, NULL, NULL, '0', NULL, NULL, 'SCEILG OLA', 'EOIN', NULL, 'WATERVILLE, EOIN - THE SCREEN IS INTERMITTENTLY NOT RESPONDING FOR CUSTOMERS AND WHEN A DCI CARD IS SWIPED THE SCREEN WON\'T RESPOND EITHER.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-19 16:09:42', '2021-01-19 16:09:43', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/54', 'No', NULL, NULL),
(55, '20/01/2021 12:5 pm', 3, 351, 2, 40, '0', NULL, NULL, 'EAST CORK OIL  27 BURGESS KILLEAGH SITE', 'AGNES', NULL, 'BURGESS - SITE THINK WATER HAS GOT INTO THE SCREEN ON THE OPT FOR THE BACK PUMPS. WHEN LORRY DRIVER PRESSED THE SCREEN NOTHING HAPPENED. SCREEN WAS DRIED OUT BUT THERE ARE WATER MARKS ALL OVER IT.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-20 17:05:50', '2021-02-09 02:15:38', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/55', 'No', NULL, NULL),
(56, '20/01/2021 12:24 pm', 2, 33, NULL, 8, '0', NULL, NULL, 'AMBER 17 LIMERICK', 'NICK FREEMAN', NULL, 'KILMALLOCK RD, LIMERICK - MECHANICAL CHECKS TO BE CARRIED OUT FOR CERT.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-20 17:25:11', '2021-01-20 17:25:52', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/56', 'No', NULL, NULL),
(57, '20/01/2021 12:26 pm', 3, 828, NULL, 40, '0', NULL, NULL, 'O BRIEN SERVICE STATION', 'MICHAEL 0857159887', NULL, 'BISHOPSTOWN, MICHAEL 0857159887. PUMP 8 DIESEL NOT CUTTING OUT AFTER FILL.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-20 17:26:32', '2021-02-09 02:12:20', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/57', 'No', NULL, NULL),
(58, '21/01/2021 9:25 am', 3, 339, 2, 3, '0', NULL, NULL, 'EAST CORK OIL 16  D.OIL SITE', 'NIALL', NULL, 'DUNMANWAY, LOGGED BY NIALL - DIESEL PUMPS RUNNING VERY SLOW. PUMP 5&6 AND 7&8.', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-01-21 14:25:54', '2021-01-21 14:26:07', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/58', 'No', NULL, NULL),
(59, '09/02/2021 11:33 am', 2, 4, 2, 41, '0', NULL, NULL, 'AUTOTRANS TRANSPORT SERVICES,', '34534545', NULL, 'sbdsfb', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-02-09 06:33:52', '2021-02-23 23:07:59', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, NULL),
(60, '09/02/2021 11:33 am', 2, 4, 2, 33, '0', NULL, NULL, 'AUTOTRANS TRANSPORT SERVICES,', '34534545', NULL, 'sbdsfb', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-02-09 06:34:39', '2021-02-24 04:23:41', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, NULL),
(61, '09/02/2021 11:50 am', 1, 4, 2, 41, '0', NULL, NULL, 'AUTOTRANS TRANSPORT SERVICES,', '0321461545', NULL, 'fgc', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-02-09 06:50:48', '2021-02-24 04:20:58', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, NULL),
(62, '09/02/2021 12:28 pm', 1, 4, 2, 17, '0', NULL, NULL, 'AUTOTRANS TRANSPORT SERVICES,', '0321461545', NULL, 'sdvb', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-02-09 07:30:39', '2021-02-23 07:56:46', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, NULL),
(63, '10/02/2021 5:19 am', 3, 5, 2, 37, '0', NULL, NULL, 'AB OILS', '4346466456', NULL, 'dfbdfb', NULL, NULL, NULL, 'Admin', 1, NULL, '2021-02-10 00:19:49', '2021-02-17 22:36:34', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, NULL),
(64, '10/02/2021 5:26 am', 2, 5, 2, 57, '0', NULL, NULL, 'AB OILS', '2325235333', NULL, 'sdvsd', NULL, NULL, NULL, 'Admin', 1, NULL, '2021-02-10 00:26:41', '2021-03-03 07:45:11', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, NULL),
(65, '04/03/2021 4:39 am', 5, 12, 2, 72, '0', NULL, NULL, 'AIB FINANCE & LEASING', 'Kashif ali', NULL, 'Job details test', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-03 23:43:11', '2021-03-16 04:04:54', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/65', 'No', NULL, 'yes'),
(66, '04/03/2021 9:2 am', 5, 4, 2, 65, '0', NULL, NULL, 'AUTOTRANS TRANSPORT SERVICES,', '09384534', NULL, 'test', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-04 04:03:14', '2021-03-12 00:16:28', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/66', 'No', NULL, NULL),
(67, '04/03/2021 9:6 am', 5, 5, 2, 65, '0', NULL, NULL, 'AB OILS', '435435', NULL, 'test job detail', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-04 04:08:25', '2021-03-11 23:11:29', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/67', 'No', NULL, 'yes'),
(68, '04/03/2021 9:16 am', 5, 5, 2, 41, '0', NULL, NULL, 'AB OILS', '03845435', NULL, 'test job detail', NULL, NULL, NULL, 'Admin', 1, NULL, '2021-03-04 04:16:46', '2021-03-08 01:08:21', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/68', 'No', NULL, 'yes'),
(69, '10/03/2021 11:24 am', 5, 13, 2, 65, '0', NULL, NULL, 'AIB FINANCE & LEASING', '8943934', NULL, 'test job detail', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-10 06:25:28', '2021-03-11 02:32:51', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, 'yes'),
(70, '10/03/2021 11:24 am', 5, 13, 2, 64, '0', NULL, NULL, 'AIB FINANCE & LEASING', '8943934', NULL, 'test job detail', NULL, NULL, NULL, 'Admin', 1, NULL, '2021-03-10 06:25:42', '2021-03-10 23:08:04', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, 'yes'),
(73, '16/03/2021 9:20 am', 3, 8, 2, 72, '0', NULL, NULL, 'AERODINE LTD T/A THE HUNGRY NUT', '98234234', NULL, 'lkkjslkdfjlskdjf lksdjf', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-16 04:20:55', '2021-03-16 04:21:26', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/73', 'No', NULL, 'No'),
(74, '16/03/2021 10:13 am', 3, 1157, NULL, 79, '0', NULL, NULL, 'lkskdlkf', '89435793845', NULL, 'ljslfksdjflksd', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-16 05:14:35', '2021-04-14 04:36:43', 1, 'open', 'null', 'null', 'null', NULL, NULL, 'No', NULL, 'No'),
(75, '16/03/2021 10:19 am', 3, 1157, NULL, 42, '0', NULL, NULL, 'lkskdlkf', '8934598347', NULL, 'jkshdfkjsdhfkj', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-16 05:20:34', '2021-04-14 04:36:22', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/75', 'No', NULL, 'No'),
(76, '16/03/2021 10:29 am', 5, 1157, 2, 83, '0', NULL, NULL, 'lkskdlkf', '9834759834', NULL, 'lskjdflsjflksjfklsjdfl', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-16 05:29:56', '2021-06-17 06:13:27', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/76', 'No', NULL, 'yes'),
(77, '02/07/2021 10:55 am', 5, 1158, 2, 0, '0', NULL, NULL, 'Test Customer CC', '893479587', NULL, 'kljjsdfljsdlfjsd', NULL, NULL, NULL, 'Admin', 0, NULL, '2021-03-16 07:52:41', '2021-07-09 05:31:20', 1, 'open', 'null', 'null', 'null', NULL, '/Petro/Jobs/77', 'No', NULL, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `job_communications`
--

CREATE TABLE `job_communications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `com_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_communications`
--

INSERT INTO `job_communications` (`id`, `job_id`, `date`, `details`, `created_at`, `updated_at`, `com_type`, `user_id`) VALUES
(1, 1, '09/11/2020 10:30 am', 'test comm', '2020-11-09 15:55:50', '2020-11-09 15:55:50', 'Text', 1),
(2, 8, '20/11/2020 7:46 am', 'john updated', '2020-11-20 12:47:05', '2020-11-20 12:47:05', 'Office update', 1),
(3, 11, '20/11/2020 12:38 pm', 'informed', '2020-11-20 17:38:52', '2020-11-20 17:38:52', 'Office update', 1),
(4, 20, '24/11/2020 13:35 pm', 'WILL ATTEND 25/11/20', '2020-11-24 18:36:22', '2020-11-24 18:36:22', 'Office update', 1),
(5, 34, '04/12/2020 11:6 am', 'TEST PLEASE ATTEND FIRST THING IN THE MORNING', '2020-12-04 16:07:14', '2020-12-04 16:07:14', 'Email from outlook', 1),
(6, 34, '07/12/2020 15:59 pm', 'test', '2020-12-07 20:59:54', '2020-12-07 20:59:54', 'Whatapp', 1),
(7, 55, '20/01/2021 12:5 pm', 'AGNES CALLED AGAIN AT 11AM AND STATED THAT THE SCREEN WAS STILL THE SAME. EMAILED MARK FOR AN UPDATE', '2021-01-20 17:06:28', '2021-01-20 17:06:28', 'Office update', 1),
(8, 65, '04/03/2021 4:43 am', 'Communication/Action Tacken', '2021-03-03 23:49:56', '2021-03-03 23:49:56', 'Office update', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_documents`
--

CREATE TABLE `job_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_emails`
--

CREATE TABLE `job_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `receiver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receiver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_emails`
--

INSERT INTO `job_emails` (`id`, `job_id`, `receiver`, `cc`, `subject`, `content`, `created_at`, `updated_at`, `receiver_name`, `mail_type`, `other_email_address`) VALUES
(1, 20, 'SERVICE@PETROSYSTEMS.IE', '', 'JOB: 20-AUTOTRANS TRANSPORT SERVICES,-', 'TEST - CLEAN FILTERS', '2020-11-24 18:41:07', '2020-11-24 18:41:07', 'AUTOTRANS TRANSPORT SERVICES,', 'staff', NULL),
(2, 28, 'rayryan1@gmail.com', 'technicalsupport@petrosystems.ie,bbuckley@petrosystems.ie', 'JOB: 28-AIR-SERV IRELAND,-BD635WH', 'Kashif Test', '2020-11-27 16:57:24', '2020-11-27 16:57:24', 'AIR-SERV IRELAND,', 'staff', NULL),
(3, 28, 'dessie.aughey@air-serv.co.uk', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com', 'PetroSystems Engineer Dispatched', 'Dear Customer,\r\n                An Engineer has been dispatched and is on the way.\r\n                Kind Regards,\r\n                Petro Systems Management Ltd.', '2020-11-27 17:31:09', '2020-11-27 17:31:09', 'AIR-SERV IRELAND,', 'customer', NULL),
(4, 28, 'dessie.aughey@air-serv.co.uk', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com', 'PetroSystems Engineer Dispatched', 'Dear Customer,\r\n                An Engineer has been dispatched and is on the way.\r\n                Kind Regards,\r\n                Petro Systems Management Ltd.', '2020-11-27 17:31:38', '2020-11-27 17:31:38', 'AIR-SERV IRELAND,', 'customer', NULL),
(5, 34, 'SERVICE@PETROSYSTEMS.IE', '', 'JOB: 34-AERODINE LTD T/A THE HUNGRY NUT-', 'TEST - LIGHTS ON DISPLAY HAVE BLOWN. FILTERS TO BE CLEANED. TANKS TO BE DIPPED FOR WATER. HOSES TO BE CHECKED FOR PINHOLE LEAKS', '2020-12-04 16:22:09', '2020-12-04 16:22:09', 'AERODINE LTD T/A THE HUNGRY NUT', 'staff', NULL),
(6, 47, 'SERVICE@PETROSYSTEMS.ie', '', 'JOB: 47-DONAL MC CARTHY-', 'MACS F/S, KENMARE, DONAL 0879299874 - DONAL REVERSED INTO THE AGRI DIESEL PUMP YESTERDAY WITH A FORKTRUCK & HAS KNOCKED THE PUMP OFF THE ISLAND. FLEXI PIPE SEEM OK BUT BRING 2 JUST IN CASE. HOSE & NOZZLE, ALL OK. SCREEN ON DISPLAY HAS CRACKED. PUMP NOT CONNECTING TO POS NOW, NEEDS TO BE CHECKED OVER ELECTRICALLY.', '2021-01-18 18:45:24', '2021-01-18 18:45:24', 'DONAL MC CARTHY', 'staff', NULL),
(7, 46, 'SERVICE@PETROSYSTEMS.ie', '', 'JOB: 46-EAST CORK OIL 1 MIDLETON SITE-', 'MIDLETON - NEW FILTER NEEDED FOR PUMP 8 DIESEL AS IT HAS A HOLE  IN IT. CJ ADVISED IT IS BLOCKING THE NOZZLE FILTER MUCH FASTER SO WILL NEED REPLACING.', '2021-01-18 18:46:33', '2021-01-18 18:46:33', 'EAST CORK OIL 1 MIDLETON SITE', 'staff', NULL),
(8, 48, 'rfitzgerald@petrosystems.ie', '', 'JOB: 48-EAST CORK OIL 13 UNECOLWATERFORD-', 'TEST EMAIL\r\n\r\nUNECOL WATERFORD - FULL SERVICE TO BE DONE ON ALL PUMPS. ALL FILTERS TO BE CLEANED ALSO.', '2021-01-18 18:50:54', '2021-01-18 18:50:54', 'EAST CORK OIL 13 UNECOLWATERFORD', 'staff', NULL),
(9, 48, 'SERVICE@PETROSYSTEMS.ie', '', 'JOB: 48-EAST CORK OIL 13 UNECOLWATERFORD-', 'UNECOL WATERFORD - FULL SERVICE TO BE DONE ON ALL PUMPS. ALL FILTERS TO BE CLEANED ALSO.', '2021-01-18 18:56:46', '2021-01-18 18:56:46', 'EAST CORK OIL 13 UNECOLWATERFORD', 'staff', NULL),
(10, 56, 'rfitzgerald@petrosystems.ie', '', 'JOB: 56-AMBER 17 LIMERICK-', 'TEST EMAIL\r\n\r\nKILMALLOCK RD, LIMERICK - MECHANICAL CHECKS TO BE CARRIED OUT FOR CERT.', '2021-01-20 17:25:46', '2021-01-20 17:25:46', 'AMBER 17 LIMERICK', 'staff', NULL),
(11, 57, 'service@petrosystems.ie', '', 'PetroSystems Engineer Dispatched', 'Dear Customer,\r\n                An Engineer has been dispatched and is on the way.\r\n                Kind Regards,\r\n                Petro Systems Management Ltd.', '2021-01-20 17:45:55', '2021-01-20 17:45:55', 'O BRIEN SERVICE STATION', 'customer', NULL),
(12, 58, 'johnoshanahan@leanbpi.ie', '', 'JOB: 58-EAST CORK OIL 16  D.OIL SITE-', 'DUNMANWAY, LOGGED BY NIALL - DIESEL PUMPS RUNNING VERY SLOW. PUMP 5&6 AND 7&8. test email', '2021-01-22 12:00:12', '2021-01-22 12:00:12', 'EAST CORK OIL 16  D.OIL SITE', 'staff', NULL),
(13, 68, 'philip.allroundsystems@gmail.com', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com,rayryan1@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 02:08:12', '2021-03-09 02:08:12', 'AB OILS', 'staff', 'kashiftestcacnel@gmail.com'),
(14, 68, 'philip.allroundsystems@gmail.com', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com,rayryan1@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 02:09:27', '2021-03-09 02:09:27', 'AB OILS', 'staff', 'kashiftestcacnel@gmail.com'),
(15, 68, 'philip.allroundsystems@gmail.com', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com,rayryan1@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 02:09:52', '2021-03-09 02:09:52', 'AB OILS', 'staff', 'kashiftestcacnel@gmail.com'),
(16, 68, 'philip.allroundsystems@gmail.com', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com,rayryan1@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 02:10:13', '2021-03-09 02:10:13', 'AB OILS', 'staff', 'kashiftestcacnel@gmail.com'),
(17, 68, 'philip.allroundsystems@gmail.com', 'customersuportars@gmail.com,dermotryan1976@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 02:31:07', '2021-03-09 02:31:07', 'AB OILS', 'staff', 'testseller3@gmail.com'),
(18, 68, 'allroundsystems@gmail.com', 'dermotryan1976@gmail.com', 'Good', 'Good', '2021-03-09 02:35:16', '2021-03-09 02:35:16', 'AB OILS', 'staff', NULL),
(19, 68, 'dermotryan1976@gmail.com', 'dermotryan1976@gmail.com', 'test', 'welcome', '2021-03-09 02:36:06', '2021-03-09 02:36:06', 'AB OILS', 'staff', NULL),
(20, 68, 'dermotryan1976@gmail.com', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com', 'Test design email', 'test design email', '2021-03-09 02:51:04', '2021-03-09 02:51:04', 'AB OILS', 'staff', NULL),
(21, 68, 'customersuportars@gmail.com', 'customersuportars@gmail.com', 'test', 'test', '2021-03-09 02:53:44', '2021-03-09 02:53:44', 'AB OILS', 'staff', NULL),
(22, 68, 'allroundsystems@gmail.com', 'dermotryan1976@gmail.com', 'test email', 'test email content', '2021-03-09 02:55:21', '2021-03-09 02:55:21', 'AB OILS', 'staff', NULL),
(23, 68, 'dermotryan1976@gmail.com', 'customersuportars@gmail.com,dermotryan1976@gmail.com', 'test subject', 'test content', '2021-03-09 03:49:51', '2021-03-09 03:49:51', 'AB OILS', 'staff', NULL),
(24, 68, 'allroundsystems@gmail.com', 'customersuportars@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 03:50:12', '2021-03-09 03:50:12', 'AB OILS', 'staff', NULL),
(25, 68, 'allroundsystems@gmail.com', 'customersuportars@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 03:50:21', '2021-03-09 03:50:21', 'AB OILS', 'staff', NULL),
(26, 68, 'allroundsystems@gmail.com', 'customersuportars@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 03:51:09', '2021-03-09 03:51:09', 'AB OILS', 'staff', NULL),
(27, 68, 'allroundsystems@gmail.com', 'customersuportars@gmail.com', 'JOB: 68-AB OILS-', 'test job detail', '2021-03-09 03:51:39', '2021-03-09 03:51:39', 'AB OILS', 'staff', NULL),
(28, 68, 'dermotryan1976@gmail.com', 'philip.allroundsystems@gmail.com', 'test', 'test', '2021-03-09 03:53:25', '2021-03-09 03:53:25', 'AB OILS', 'staff', NULL),
(29, 68, 'dermotryan1976@gmail.com', 'dermotryan1976@gmail.com', 'test email', 'test content', '2021-03-09 04:02:03', '2021-03-09 04:02:03', 'AB OILS', 'staff', NULL),
(30, 68, 'dermotryan1976@gmail.com', 'dermotryan1976@gmail.com', 'test email', 'test content', '2021-03-09 04:02:22', '2021-03-09 04:02:22', 'AB OILS', 'staff', NULL),
(31, 70, 'pat.moore@practicalfinance.ie', 'dermotryan1976@gmail.com,allroundsystems@gmail.com,philip.allroundsystems@gmail.com', 'PetroSystems Engineer Dispatched', 'Dear Customer,\r\n                An Engineer has been dispatched and is on the way.\r\n                Kind Regards,\r\n                Petro Systems Management Ltd.', '2021-03-11 06:27:30', '2021-03-11 06:27:30', 'AIB FINANCE & LEASING', 'customer', 'test@gmail.com'),
(32, 70, 'pat.moore@practicalfinance.ie', 'dermotryan1976@gmail.com,allroundsystems@gmail.com,philip.allroundsystems@gmail.com', 'PetroSystems Engineer Dispatched', 'Dear Customer,\r\n                An Engineer has been dispatched and is on the way.\r\n                Kind Regards,\r\n                Petro Systems Management Ltd.', '2021-03-11 06:27:39', '2021-03-11 06:27:39', 'AIB FINANCE & LEASING', 'customer', 'test@gmail.com'),
(33, 70, 'pat.moore@practicalfinance.ie', 'dermotryan1976@gmail.com,allroundsystems@gmail.com,philip.allroundsystems@gmail.com', 'PetroSystems Engineer Dispatched', 'Dear Customer,\r\n                An Engineer has been dispatched and is on the way.\r\n                Kind Regards,\r\n                Petro Systems Management Ltd.', '2021-03-11 06:28:09', '2021-03-11 06:28:09', 'AIB FINANCE & LEASING', 'customer', 'test@gmail.com'),
(34, 77, 'allroundsystems@gmail.com', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com,technicalsupport@petrosystems.ie', 'JOB: 77-Test Customer CC-84743', 'kljjsdfljsdlfjsd', '2021-03-16 08:38:47', '2021-03-16 08:38:47', 'Test Customer CC', 'staff', 'lskjflksjd@gmail.com'),
(35, 77, 'testcustomer@gmail.com', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com,rayryan1@gmail.com,technicalsupport@petrosystems.ie', 'PetroSystems Engineer Dispatched', 'Dear Customer,\r\n                An Engineer has been dispatched and is on the way.\r\n                Kind Regards,\r\n                Petro Systems Management Ltd.', '2021-03-16 08:41:28', '2021-03-16 08:41:28', 'Test Customer CC', 'customer', NULL),
(36, 77, 'testcustomer@gmail.com', 'allroundsystems@gmail.com,philip.allroundsystems@gmail.com,rayryan1@gmail.com,technicalsupport@petrosystems.ie', 'PetroSystems Engineer Dispatched', 'Dear Customer,\r\n                An Engineer has been dispatched and is on the way.\r\n                Kind Regards,\r\n                Petro Systems Management Ltd.', '2021-03-16 08:41:34', '2021-03-16 08:41:34', 'Test Customer CC', 'customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_labours`
--

CREATE TABLE `job_labours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_sheet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` float NOT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `cost_per_hour_site` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_hour_travel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_cost_site` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_cost_travel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `travel_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_labours`
--

INSERT INTO `job_labours` (`id`, `date`, `job_id`, `contact_id`, `job_sheet`, `start`, `end`, `hours`, `amount`, `created_at`, `updated_at`, `completed_detail`, `travel_time`, `user_id`, `cost_per_hour_site`, `cost_per_hour_travel`, `total_cost_site`, `total_cost_travel`, `form_id`, `travel_from`, `travel_to`) VALUES
(2, '12/11/2020 10:16 am', 3, 1, '12345', '12:15', '13:00', 1, 0.75, '2020-11-12 15:19:30', '2020-11-12 15:19:30', 'test', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '18/11/2020 17:50 pm', 6, 6, '6-181120201605721819', '14:00', '15:00', 1, 50.00, '2020-11-18 23:30:00', '2020-11-18 23:30:00', 'test details', '01:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '11/20/2020 3:54 PM', 8, 34, '8-201120201605861782', '14:00', '15:00', 1, NULL, '2020-11-20 13:46:16', '2020-11-20 15:54:16', 'Details', '01:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '20/11/2020 11:33 am', 9, 17, '9-201120201605871998', '01:30', '03:30', 2, NULL, '2020-11-20 16:42:26', '2020-11-20 16:42:26', 'test', '02:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '11/20/2020 12:47 PM', 11, 32, '11-201120201605875902', '02:00', '03:00', 1, 100.00, '2020-11-20 17:44:55', '2020-11-20 17:47:06', 'adjusted pump', '01:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '20/11/2020 15:10 pm', 11, 17, '11-201120201605885005', '01:00', '02:00', 1, NULL, '2020-11-20 20:10:33', '2020-11-20 20:10:33', 'tesr', '01:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '23/11/2020 6:41 am', 19, 8, '19-231120201606113708', '12:00', '13:00', 1, 65.00, '2020-11-23 11:44:05', '2020-11-23 13:19:43', 'Work complete', '00:15', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '23/11/2020 8:18 am', 19, 34, '19-231120201606119502', '12:00', '13:00', 1, 65.00, '2020-11-23 13:20:25', '2020-11-23 13:20:25', NULL, '12:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '24/11/2020 13:35 pm', 20, 17, '20-241120201606224949', '14:00', '15:30', 2, 97.50, '2020-11-24 18:38:05', '2020-11-24 18:38:05', 'TEST - CLEAN FILTERS', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '11/12/2020 13:52 pm', 28, 36, '224234343', '03:15', '14:15', 11, 7000.00, '2020-12-01 18:53:55', '2020-12-01 18:53:55', 'work completed test work completed test work completed test work completed test work completed test', '05:15', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '19/12/2020 13:52 pm', 28, 36, '2242', '02:15', '16:30', 14, 5000.00, '2020-12-01 18:58:09', '2020-12-01 18:58:09', 'sdfdsf', '03:45', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '03/12/2020 7:7 am', 28, 34, '1234', '12:00', '13:00', 1, NULL, '2020-12-03 12:13:10', '2020-12-03 12:13:10', 'test', '01:15', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '03/12/2020 16:35 pm', 32, 28, '1234', '03:00', '04:00', 1, NULL, '2020-12-03 21:36:07', '2020-12-03 21:36:07', 'test', '01:15', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '04/12/2020 11:6 am', 34, 8, '00000', '08:00', '09:30', 2, NULL, '2020-12-04 16:08:30', '2020-12-04 16:08:30', 'TEST - REPLACED BULBS IN PUMP DISPLAY. CLEANED FILTERS ON ALL DIESEL PUMPS. REPAIRED HOSE ON PUMP 2. DIPPED TANKS FOR WATER, NO WATER PRESENT.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '04/12/2020 18:46 pm', 34, 18, 'sadad', '01:30', '06:30', 5, NULL, '2020-12-04 23:46:35', '2020-12-04 23:46:35', 'sdsfsf', '01:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '15/02/2021 10:42 am', 64, 34, '234324234', '13:45', '04:30', 15, 500.00, '2021-02-15 05:43:16', '2021-02-15 05:48:29', 'Works completed yes', '12:14', 1, '40', '50', '20', '80', NULL, NULL, NULL),
(25, '17/02/2021 17:53 pm', 63, 17, '2312312313', '02:15', '02:30', 0, NULL, '2021-02-17 23:14:38', '2021-02-17 23:14:38', 'test updated works', '01:30', 1, '12', '20', '3', '30', NULL, NULL, NULL),
(26, '17/02/2021 17:53 pm', 63, 34, '2312312313', '06:30', '07:30', 1, 52.00, '2021-02-17 23:20:07', '2021-02-17 23:20:07', 'test comment', '01:30', 1, '12', '20', '12', '30', NULL, NULL, NULL),
(27, '24/02/2021 5:0 am', 59, 36, '234234', '12:15', '02:00', 14, 1000.00, '2021-02-24 00:26:45', '2021-02-24 00:26:45', 'works completed text', '12:15', 1, '400', '500', '200', '800', NULL, NULL, NULL),
(28, '24/02/2021 5:0 am', 59, 34, '89734985', '12:15', '05:30', 17.25, 800.00, '2021-02-24 00:33:34', '2021-02-24 00:33:34', 'works completed yes ok fine', '12:16', 1, '400', '500', '200', '800', NULL, NULL, NULL),
(29, '24/02/2021 6:28 am', 59, 36, '234234', '12:15', '06:41', 18.43, 8009.50, '2021-02-24 01:29:35', '2021-02-24 01:29:35', 'works completed successfully fine no issue', '12:45', 1, '400', '50', '7372', '637.5', NULL, NULL, NULL),
(30, '25/02/2021 5:46 am', 61, 40, '89734985', '10:00', '12:00', 2, 729.00, '2021-02-25 00:57:08', '2021-02-25 00:57:08', 'test', '12:59', 1, '40', '50', '80', '649', NULL, NULL, NULL),
(31, '04/03/2021 07:03 am', 59, NULL, '59-001', '07:00:00', '09:00:00', 3.5, NULL, '2021-03-04 02:08:41', '2021-03-04 02:08:41', NULL, '0:45:00', 10, NULL, NULL, NULL, NULL, 34, NULL, NULL),
(32, '04/03/2021 07:03 am', 59, NULL, '59-001', '0845', '0945', 3.5, NULL, '2021-03-04 02:24:44', '2021-03-04 02:24:44', NULL, '230', 10, NULL, NULL, NULL, NULL, 35, NULL, NULL),
(33, '04/03/2021 07:03 am', 59, NULL, '59-001', '06:45', '07:30', 3.5, NULL, '2021-03-04 02:27:00', '2021-03-04 02:27:00', NULL, '0:30', 10, NULL, NULL, NULL, NULL, 36, NULL, NULL),
(34, '04/03/2021 07:03 am', 59, NULL, '59-001', '06:30', '07:15', 0, NULL, '2021-03-04 02:37:24', '2021-03-04 02:37:24', NULL, '0.0.5', 10, NULL, NULL, NULL, NULL, 37, NULL, NULL),
(35, '04/03/2021 07:03 am', 59, NULL, '59-001', '07:45', '12:15', 4.5, NULL, '2021-03-04 02:49:29', '2021-03-04 02:49:29', NULL, '1.75', 10, NULL, NULL, NULL, NULL, 38, NULL, NULL),
(36, '04/03/2021 07:03 am', 59, NULL, '59-001', '06:45', '08:00', 1.25, NULL, '2021-03-04 02:57:31', '2021-03-04 02:57:31', NULL, '0.75', 10, NULL, NULL, NULL, NULL, 39, '06:00', '06:45'),
(37, '04/03/2021 07:03 am', 59, NULL, '59-001', '07:00', '08:15', 1.25, NULL, '2021-03-04 02:59:47', '2021-03-04 02:59:47', NULL, '0.75', 10, NULL, NULL, NULL, NULL, 41, '06:15', '07:00'),
(38, '10/03/2021 11:03 am', 68, NULL, '68-001', '07:15', '08:45', 1.5, NULL, '2021-03-10 06:13:02', '2021-03-10 06:13:02', NULL, '1.25', 10, NULL, NULL, NULL, NULL, 48, '06:00', '07:15'),
(39, '10/03/2021 11:03 am', 68, NULL, '68-001', '07:15', '08:15', 1, NULL, '2021-03-10 06:15:25', '2021-03-10 06:15:25', NULL, '1', 10, NULL, NULL, NULL, NULL, 49, '06:15', '07:15'),
(40, '10/03/2021 11:03 am', 68, NULL, '68-001', '07:15', '08:15', 1, NULL, '2021-03-10 06:15:38', '2021-03-10 06:15:38', NULL, '1', 10, NULL, NULL, NULL, NULL, 50, '06:15', '07:15'),
(41, '10/03/2021 11:03 am', 68, NULL, '68-001', '07:15', '08:15', 1, NULL, '2021-03-10 06:16:28', '2021-03-10 06:16:28', NULL, '1', 10, NULL, NULL, NULL, NULL, 51, '06:15', '07:15'),
(43, '11/03/2021 04:03 am', 70, NULL, '70-001', '07:30', '11:45', 4.25, NULL, '2021-03-10 23:30:56', '2021-03-10 23:30:56', NULL, '1.25', 34, NULL, NULL, NULL, NULL, 58, '06:15', '07:30'),
(44, '11/03/2021 04:03 am', 70, NULL, '70-001', '12:45', '22:15', 9.5, NULL, '2021-03-10 23:41:15', '2021-03-10 23:41:15', NULL, '6.75', 34, NULL, NULL, NULL, NULL, 64, '06:00', '12:45'),
(45, '11/03/2021 04:03 am', 70, NULL, '70-001', '12:45', '22:15', 9.5, NULL, '2021-03-10 23:41:49', '2021-03-10 23:41:49', NULL, '6.75', 34, NULL, NULL, NULL, NULL, 65, '06:00', '12:45'),
(46, '11/03/2021 13:56 pm', 70, 17, '3748', '12:15', '04:45', 16.5, 625660.00, '2021-03-11 09:00:48', '2021-03-11 09:00:48', 'kljfksdl', '12:30', 1, '40', '50', '660', '625', NULL, NULL, NULL),
(47, '12/03/2021 04:03 am', 67, NULL, '67-001', '07:15', '17:45', 10.5, NULL, '2021-03-11 23:13:08', '2021-03-11 23:13:08', NULL, '1.25', 35, NULL, NULL, NULL, NULL, 66, '06:00', '07:15'),
(48, '12/03/2021 04:03 am', 69, 34, '69-001', '08:30', '11:45', 3.25, 77.50, '2021-03-11 23:20:25', '2021-03-11 23:37:55', 'works completed', '2:15', 35, '10', '20', '32.5', '45', 67, '06:15', '08:30'),
(49, '16/03/2021 09:03 am', 65, 72, '65-001', '06:45', '10:30', 3.75, NULL, '2021-03-16 04:09:52', '2021-03-16 04:09:52', NULL, '0:45', 41, NULL, NULL, NULL, NULL, 68, '06:00', '06:45'),
(50, '16/03/2021 09:03 am', 73, 72, '73-001', '06:45', '08:30', 1.75, 22.50, '2021-03-16 04:22:50', '2021-03-16 04:36:13', 'LSJLFKJSDLFJSDL', '0:30', 41, '10', '10', '17.5', '5', 69, '06:15', '06:45'),
(52, '26/03/2021 10:03 am', 76, 77, '76-001', '07:30', '19:00', 11.5, NULL, '2021-03-26 05:22:59', '2021-04-01 00:49:41', NULL, '1:30', 46, NULL, NULL, NULL, NULL, 71, '06:00', '07:30'),
(53, '14/04/2021 09:04 am', 74, 79, '74-001', '07:00', '07:15', 0.25, NULL, '2021-04-14 04:39:11', '2021-04-14 04:39:11', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 72, '06:15', '07:00'),
(54, '14/04/2021 09:04 am', 74, 79, '74-001', '07:00', '07:15', 0.25, NULL, '2021-04-14 04:39:31', '2021-04-14 04:39:31', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 73, '06:15', '07:00'),
(55, '14/04/2021 09:04 am', 74, 79, '74-001', '07:00', '07:15', 0.25, NULL, '2021-04-14 04:40:52', '2021-04-14 04:40:52', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 74, '06:15', '07:00'),
(56, '14/04/2021 09:04 am', 74, 79, '74-001', '07:00', '07:15', 0.25, NULL, '2021-04-14 04:41:36', '2021-04-14 04:41:36', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 75, '06:15', '07:00'),
(57, '14/04/2021 10:04 am', 74, 79, '74-001', '07:00', '07:15', 0.25, NULL, '2021-04-14 05:17:59', '2021-04-14 05:17:59', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 76, '06:15', '07:00'),
(58, '14/04/2021 10:04 am', 74, 79, '74-001', '06:30', '07:15', 0.75, NULL, '2021-04-14 05:20:53', '2021-04-14 05:20:53', NULL, '0:30', 48, NULL, NULL, NULL, NULL, 77, '06:00', '06:30'),
(59, '14/04/2021 10:04 am', 74, 79, '74-001', '06:30', '07:15', 0.75, NULL, '2021-04-14 05:21:10', '2021-04-14 05:21:10', NULL, '0:30', 48, NULL, NULL, NULL, NULL, 78, '06:00', '06:30'),
(60, '14/04/2021 10:04 am', 74, 79, '74-001', '06:45', '07:00', 0.25, NULL, '2021-04-14 05:23:06', '2021-04-14 05:23:06', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 79, '06:00', '06:45'),
(61, '14/04/2021 10:04 am', 74, 79, '74-001', '06:45', '07:00', 0.25, NULL, '2021-04-14 05:23:28', '2021-04-14 05:23:28', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 80, '06:00', '06:45'),
(62, '14/04/2021 10:04 am', 74, 79, '74-001', '07:00', '07:45', 0.75, NULL, '2021-04-14 05:28:04', '2021-04-14 05:28:04', NULL, '1:00', 48, NULL, NULL, NULL, NULL, 81, '06:00', '07:00'),
(63, '14/04/2021 10:04 am', 74, 79, '74-001', '10:15', '15:00', 4.75, NULL, '2021-04-14 05:30:32', '2021-04-14 05:30:32', NULL, '4:15', 48, NULL, NULL, NULL, NULL, 82, '06:00', '10:15'),
(64, '14/04/2021 10:04 am', 74, 79, '74-001', '08:15', '14:00', 5.75, NULL, '2021-04-14 05:47:18', '2021-04-14 05:47:18', NULL, '2:15', 48, NULL, NULL, NULL, NULL, 83, '06:00', '08:15'),
(65, '14/04/2021 10:04 am', 74, 79, '74-001', '08:15', '14:00', 5.75, NULL, '2021-04-14 05:47:33', '2021-04-14 05:47:33', NULL, '2:15', 48, NULL, NULL, NULL, NULL, 84, '06:00', '08:15'),
(66, '14/04/2021 10:04 am', 74, 79, '74-001', '08:15', '14:00', 5.75, NULL, '2021-04-14 05:47:57', '2021-04-14 05:47:57', NULL, '2:15', 48, NULL, NULL, NULL, NULL, 85, '06:00', '08:15'),
(67, '14/04/2021 10:04 am', 74, 79, '74-001', '07:15', '08:45', 1.5, NULL, '2021-04-14 05:50:26', '2021-04-14 05:50:26', NULL, '1:15', 48, NULL, NULL, NULL, NULL, 86, '06:00', '07:15'),
(68, '14/04/2021 11:04 am', 74, 79, '74-001', '06:45', '07:00', 0.25, NULL, '2021-04-14 06:02:38', '2021-04-14 06:02:38', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 87, '06:00', '06:45'),
(69, '14/04/2021 11:04 am', 74, 79, '74-001', '06:45', '07:00', 0.25, NULL, '2021-04-14 06:03:03', '2021-04-14 06:03:03', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 88, '06:00', '06:45'),
(70, '14/04/2021 11:04 am', 74, 79, '74-001', '06:45', '07:00', 0.25, NULL, '2021-04-14 06:17:18', '2021-04-14 06:17:18', NULL, '0:45', 48, NULL, NULL, NULL, NULL, 89, '06:00', '06:45'),
(71, '14/04/2021 11:04 am', 74, 79, '74-001', '08:15', '10:15', 2, NULL, '2021-04-14 06:19:01', '2021-04-14 06:19:01', NULL, '2:15', 48, NULL, NULL, NULL, NULL, 90, '06:00', '08:15'),
(72, '14/04/2021 11:04 am', 74, 79, '74-001', '07:00', '07:30', 0.5, NULL, '2021-04-14 06:34:48', '2021-04-14 06:34:48', NULL, '1:00', 48, NULL, NULL, NULL, NULL, 91, '06:00', '07:00'),
(73, '15/04/2021 07:04 am', 77, 79, '77-001', '08:00', '09:15', 1.25, NULL, '2021-04-15 02:12:47', '2021-04-15 02:12:47', NULL, '2:00', 48, NULL, NULL, NULL, NULL, 92, '06:00', '08:00'),
(74, '15/04/2021 07:04 am', 77, 79, '77-001', '08:00', '09:15', 1.25, NULL, '2021-04-15 02:13:30', '2021-04-15 02:13:30', NULL, '2:00', 48, NULL, NULL, NULL, NULL, 93, '06:00', '08:00'),
(75, '15/04/2021 07:04 am', 77, 79, '77-001', '08:00', '09:15', 1.25, NULL, '2021-04-15 02:13:47', '2021-04-15 02:13:47', NULL, '2:00', 48, NULL, NULL, NULL, NULL, 94, '06:00', '08:00'),
(76, '15/04/2021 07:04 am', 77, 79, '77-001', '08:00', '09:15', 1.25, NULL, '2021-04-15 02:13:55', '2021-04-15 02:13:55', NULL, '2:00', 48, NULL, NULL, NULL, NULL, 95, '06:00', '08:00'),
(77, '15/04/2021 07:04 am', 77, 79, '77-001', '06:30', '07:00', 0.5, NULL, '2021-04-15 02:15:45', '2021-04-15 02:15:45', NULL, '0:30', 48, NULL, NULL, NULL, NULL, 96, '06:00', '06:30'),
(78, '15/04/2021 07:04 am', 77, 79, '77-001', '06:30', '07:00', 0.5, NULL, '2021-04-15 02:15:57', '2021-04-15 02:15:57', NULL, '0:30', 48, NULL, NULL, NULL, NULL, 97, '06:00', '06:30'),
(79, '21/04/2021 06:04 am', 76, 82, '76-001', '06:45', '07:00', 0.25, NULL, '2021-04-21 01:13:52', '2021-04-21 01:13:52', NULL, '0:45', 51, NULL, NULL, NULL, NULL, 98, '06:00', '06:45'),
(80, '21/04/2021 06:04 am', 76, 82, '76-001', '07:00', '08:15', 1.25, NULL, '2021-04-21 01:16:47', '2021-04-21 01:16:47', NULL, '1:00', 51, NULL, NULL, NULL, NULL, 99, '06:00', '07:00'),
(81, '21/04/2021 06:04 am', 76, 82, '76-001', '07:00', '08:00', 1, NULL, '2021-04-21 01:17:56', '2021-04-21 01:17:56', NULL, '1:00', 51, NULL, NULL, NULL, NULL, 100, '06:00', '07:00'),
(82, '17/06/2021 11:06 am', 76, 83, '76-001', '08:15', '10:30', 2.25, NULL, '2021-06-17 06:17:24', '2021-06-17 06:17:24', NULL, '1:45', 52, NULL, NULL, NULL, NULL, 101, '06:30', '08:15'),
(83, '17/06/2021 11:06 am', 76, 83, '76-001', '08:15', '10:30', 2.25, NULL, '2021-06-17 06:18:10', '2021-06-17 06:18:10', NULL, '1:45', 52, NULL, NULL, NULL, NULL, 102, '06:30', '08:15'),
(84, '17/06/2021 11:06 am', 76, 83, '76-001', '08:15', '10:30', 2.25, NULL, '2021-06-17 06:19:22', '2021-06-17 06:19:22', NULL, '1:45', 52, NULL, NULL, NULL, NULL, 103, '06:30', '08:15'),
(85, '17/06/2021 12:06 pm', 76, 83, '76-001', '06:30', '08:45', 2.25, NULL, '2021-06-17 07:19:07', '2021-06-17 07:19:07', NULL, '0:30', 52, NULL, NULL, NULL, NULL, 104, '06:00', '06:30'),
(86, '16/07/2021 07:07 am', 77, 84, '77-001', '07:00', '08:00', 1, NULL, '2021-07-16 02:01:10', '2021-07-16 02:01:10', NULL, '1:00', 53, NULL, NULL, NULL, NULL, 220, '06:00', '07:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_purchases`
--

CREATE TABLE `job_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `items_required` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(8,2) DEFAULT NULL,
  `extra_to_job` tinyint(1) NOT NULL DEFAULT 0,
  `purchased_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_purchases`
--

INSERT INTO `job_purchases` (`id`, `date`, `job_id`, `supplier_id`, `items_required`, `specification`, `value`, `extra_to_job`, `purchased_by`, `created_at`, `updated_at`) VALUES
(1, '12/11/2020 10:16 AM', 3, 1, '0', 'test', 25.00, 0, 'CATHY', '2020-11-12 15:20:48', '2020-11-12 15:27:38'),
(2, '12/11/2020 10:30 am', 4, 367, '0', 'TEST', NULL, 1, 'CATHY', '2020-11-12 15:31:03', '2020-11-12 15:31:03'),
(3, '13/11/2020 17:8 pm', 5, 4, '0', 'test specs', 10000.00, 0, 'JOhn', '2020-11-13 22:19:22', '2020-11-13 22:19:22'),
(4, '13/11/2020 17:26 pm', 4, 3, '0', 'test spec', 500.00, 0, 'Liz', '2020-11-13 22:27:30', '2020-11-13 22:27:30'),
(5, '17/11/2020 7:18 am', 1, 5, '0', 'Specfication', 20.00, 0, 'admin', '2020-11-17 12:22:56', '2020-11-17 12:22:56'),
(8, '11/20/2020 12:49 PM', 11, 2, '0', 's[pcs', 1223.00, 0, 'liz', '2020-11-20 17:48:19', '2020-11-20 17:49:51'),
(9, '20/11/2020 15:23 pm', 13, 2, '0', 'zxmcnzxm,nc', 200.00, 0, 'm,zxnc,mzxnc,m', '2020-11-20 20:24:02', '2020-11-20 20:24:02'),
(10, '23/11/2020 8:21 am', 19, 2, '0', 'Specification', 20.00, 0, 'admin', '2020-11-23 13:23:21', '2020-11-23 13:23:21'),
(11, '24/11/2020 13:35 pm', 20, 10, '0', 'TEST', NULL, 1, 'CATHY', '2020-11-24 18:38:24', '2020-11-24 18:39:02'),
(12, '24/11/2020 14:35 pm', 21, 2, '0', NULL, 200.00, 0, 'liz', '2020-11-24 19:43:37', '2020-11-24 19:43:46'),
(13, '24/11/2020 15:10 pm', 22, 1, '0', 'test specs', 200.00, 0, 'liz', '2020-11-24 20:15:28', '2020-11-24 20:15:28'),
(14, '24/11/2020 15:16 pm', 22, 2, '0', 'test', 100.00, 0, 'john', '2020-11-24 20:18:12', '2020-11-24 20:18:12'),
(15, '27/11/2020 10:2 am', 28, 5, '435345', '34', 234.00, 1, 'Asad Ali', '2020-11-27 15:02:58', '2020-11-27 15:02:58'),
(16, '27/11/2020 10:54 am', 28, 867, '60', 'specification', 4000.00, 1, 'Arsalan Sahab', '2020-11-27 15:55:35', '2020-11-27 15:55:35'),
(17, '29/11/2020 8:41 am', 28, 450, '0', 'see specs', 2000.00, 0, 'john', '2020-11-29 13:41:51', '2020-11-29 13:41:51'),
(18, '01/12/2020 13:52 pm', 28, 7, '24234', 'sdfdsfdsf', 6000.00, 1, 'kashif ali', '2020-12-01 18:55:03', '2020-12-01 18:55:03'),
(19, '01/12/2020 14:0 pm', 28, 4, '234', 'dfsf', 60000.00, 1, 'sdfds', '2020-12-01 19:00:57', '2020-12-01 19:00:57'),
(20, '03/12/2020 7:7 am', 28, 2, '0', 'test', NULL, 0, 'john', '2020-12-03 12:20:12', '2020-12-03 12:20:12'),
(21, '03/12/2020 16:37 pm', 32, 450, '0', 'test', 200.00, 0, 'John', '2020-12-03 21:38:37', '2020-12-03 21:39:09'),
(22, '04/12/2020 11:6 am', 34, 428, '2', 'TEST - 9W BULBS', NULL, 1, 'RF / CN', '2020-12-04 16:09:29', '2020-12-04 16:41:11'),
(27, '09/12/2020 7:35 am', 34, 450, '0', 'test spec', 11.00, 0, 'john', '2020-12-09 12:36:33', '2020-12-09 12:36:33'),
(28, '09/12/2020 8:12 am', 36, 450, '0', 'test spec', 50.00, 0, 'John', '2020-12-09 13:14:05', '2020-12-09 13:14:05'),
(30, '10/12/2020 15:41 pm', 37, 867, '2423', 'sdfsfds', 234.00, 1, 'sdf', '2020-12-10 20:42:25', '2020-12-10 20:42:25'),
(32, '11/12/2020 7:57 am', 36, 450, '0', 'spec test', 100.00, 0, 'Liz', '2020-12-11 12:57:48', '2020-12-11 12:57:48'),
(33, '11/12/2020 8:17 am', 38, 450, '0', 'test specs', 1000.00, 0, 'liz', '2020-12-11 13:18:12', '2020-12-11 13:18:12'),
(34, '14/12/2020 11:53 am', 40, 339, '0', NULL, NULL, 0, 'CATHY', '2020-12-14 16:53:40', '2020-12-14 16:53:40'),
(35, '11/03/2021 11:23 am', 70, 6, '9', 'lksdfldsfsdfds', 7000.00, 0, 'testby', '2021-03-11 06:29:33', '2021-03-11 06:45:48'),
(36, '11/03/2021 11:41 am', 70, 5, '9485', 'lkskflsdkj', 8000.00, 0, 'test', '2021-03-11 06:43:46', '2021-03-11 06:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `job_stocks`
--

CREATE TABLE `job_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `stock_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `price` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `engineer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `material_used` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_stocks`
--

INSERT INTO `job_stocks` (`id`, `date`, `job_id`, `stock_item_id`, `serial_no`, `qty`, `price`, `total`, `created_at`, `updated_at`, `engineer_id`, `form_id`, `material_used`) VALUES
(1, '2020-09-11', 1, 1, '1234654', '1', 100.00, 10.00, '2020-11-09 15:36:36', '2020-11-09 15:36:51', NULL, NULL, NULL),
(2, '2020-11-12', 3, 5, NULL, '2', 0.00, 0.00, '2020-11-12 15:22:09', '2020-11-12 15:22:09', NULL, NULL, NULL),
(3, '1970-01-01', 4, 3, '1234654', '2', 10.00, 10.00, '2020-11-13 22:27:54', '2020-11-13 22:27:54', NULL, NULL, NULL),
(4, '1970-01-01', 64, 1, NULL, '2', 2.00, 4.00, '2020-11-18 23:32:31', '2021-02-23 08:54:20', NULL, NULL, NULL),
(5, '20/11/2020 17:11 pm', 64, 3, NULL, '2', 12.00, NULL, '2020-11-20 12:48:11', '2021-03-04 01:21:07', NULL, 13, NULL),
(6, '2020-11-20', 8, 5, NULL, '20', 0.00, NULL, '2020-11-20 13:44:15', '2020-11-20 13:44:15', NULL, NULL, NULL),
(7, '2020-11-20', 9, 3, NULL, '2', NULL, 0.00, '2020-11-20 16:46:14', '2020-11-20 16:46:14', NULL, NULL, NULL),
(8, '1970-01-01', 11, 2, NULL, '12', 12.00, 144.00, '2020-11-20 17:50:10', '2020-11-20 17:52:03', NULL, NULL, NULL),
(14, '23/11/2020 8:32 am', 19, 3, '123456', '12', 10.00, 120.00, '2020-11-23 13:49:26', '2020-11-23 13:57:12', NULL, NULL, NULL),
(15, '24/11/2020 13:35 pm', 20, 113, NULL, '2', NULL, 0.00, '2020-11-24 18:39:30', '2020-11-24 18:39:30', NULL, NULL, NULL),
(16, '24/11/2020 14:35 pm', 21, 2, NULL, '3', 12.00, 36.00, '2020-11-24 19:51:04', '2020-11-24 19:51:11', NULL, NULL, NULL),
(17, '24/11/2020 15:36 pm', 22, 2, NULL, '1', 12.00, 12.00, '2020-11-24 20:37:47', '2020-11-24 20:37:47', NULL, NULL, NULL),
(18, '24/11/2020 15:36 pm', 22, 4, '23213312', '11', 12.00, 132.00, '2020-11-24 20:38:03', '2020-11-24 20:41:31', NULL, NULL, NULL),
(19, '24/11/2020 15:36 pm', 22, 4, '23213312', '1', 12.00, 12.00, '2020-11-24 20:41:21', '2020-11-24 20:41:21', NULL, NULL, NULL),
(20, '27/11/2020 10:2 am', 28, 3, '345345', '5', 200.00, 1000.00, '2020-11-27 15:02:30', '2020-11-27 15:02:30', NULL, NULL, NULL),
(21, '01/12/2020 13:52 pm', 28, 3, '345435', '3', 600.00, 1800.00, '2020-12-01 18:55:28', '2020-12-01 18:55:28', NULL, NULL, NULL),
(22, '03/12/2020 16:37 pm', 32, 2, 'ssaasa', '1', 12.00, 12.00, '2020-12-03 21:38:09', '2020-12-03 21:38:09', NULL, NULL, NULL),
(23, '04/12/2020 11:6 am', 34, 1, NULL, '2', NULL, 0.00, '2020-12-04 16:12:08', '2020-12-04 16:12:08', NULL, NULL, NULL),
(24, '04/12/2020 18:53 pm', 34, 5, 'sdada', '1', 23.00, 23.00, '2020-12-04 23:54:09', '2020-12-04 23:54:23', NULL, NULL, NULL),
(25, '17/02/2021 17:53 pm', 63, 217, '23322', '2', 20.00, 40.00, '2021-02-17 23:20:26', '2021-02-17 23:20:26', NULL, NULL, NULL),
(26, '17/02/2021 17:53 pm', 63, 88, 'sdsdfs', '3', 34.00, 102.00, '2021-02-17 23:27:55', '2021-02-17 23:27:55', NULL, NULL, NULL),
(27, '', 0, 19, NULL, '90', NULL, NULL, '2021-02-23 23:25:34', '2021-02-23 23:25:34', NULL, NULL, NULL),
(28, '', 0, 18, NULL, '99', NULL, NULL, '2021-02-23 23:25:34', '2021-02-23 23:25:34', NULL, NULL, NULL),
(29, '', 0, 14, NULL, '8', NULL, NULL, '2021-02-24 04:01:46', '2021-02-24 04:01:46', NULL, NULL, NULL),
(30, '24/02/2021 09:02 am', 59, 14, NULL, '8', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(31, '24/02/2021 09:02 am', 59, 6, NULL, '10', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(32, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(33, '24/02/2021 09:02 am', 59, 6, NULL, '13', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(34, '24/02/2021 09:02 am', 59, 16, NULL, '20', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(35, '24/02/2021 09:02 am', 59, 4, NULL, '6', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(36, '24/02/2021 09:02 am', 59, 14, NULL, '9', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(37, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(38, '24/02/2021 09:02 am', 59, 6, NULL, '9', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(39, '24/02/2021 09:02 am', 59, 19, NULL, '11', NULL, NULL, '2021-02-24 04:15:59', '2021-03-04 01:21:07', 10, 22, NULL),
(40, '24/02/2021 09:02 am', 59, 14, NULL, '8', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(41, '24/02/2021 09:02 am', 59, 6, NULL, '10', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(42, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(43, '24/02/2021 09:02 am', 59, 6, NULL, '13', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(44, '24/02/2021 09:02 am', 59, 16, NULL, '20', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(45, '24/02/2021 09:02 am', 59, 4, NULL, '6', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(46, '24/02/2021 09:02 am', 59, 14, NULL, '9', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(47, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(48, '24/02/2021 09:02 am', 59, 6, NULL, '9', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(49, '24/02/2021 09:02 am', 59, 19, NULL, '11', NULL, NULL, '2021-02-24 04:16:23', '2021-03-04 01:21:07', 10, 23, NULL),
(50, '24/02/2021 09:02 am', 59, 14, NULL, '8', NULL, NULL, '2021-02-24 04:16:36', '2021-03-04 01:21:07', 10, 24, NULL),
(51, '24/02/2021 09:02 am', 59, 6, NULL, '10', NULL, NULL, '2021-02-24 04:16:36', '2021-03-04 01:21:07', 10, 24, NULL),
(52, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:16:36', '2021-03-04 01:21:07', 10, 24, NULL),
(53, '24/02/2021 09:02 am', 59, 6, NULL, '13', NULL, NULL, '2021-02-24 04:16:37', '2021-03-04 01:21:07', 10, 24, NULL),
(54, '24/02/2021 09:02 am', 59, 16, NULL, '20', NULL, NULL, '2021-02-24 04:16:37', '2021-03-04 01:21:07', 10, 24, NULL),
(55, '24/02/2021 09:02 am', 59, 4, NULL, '6', NULL, NULL, '2021-02-24 04:16:37', '2021-03-04 01:21:07', 10, 24, NULL),
(56, '24/02/2021 09:02 am', 59, 14, NULL, '9', NULL, NULL, '2021-02-24 04:16:37', '2021-03-04 01:21:07', 10, 24, NULL),
(57, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:16:37', '2021-03-04 01:21:07', 10, 24, NULL),
(58, '24/02/2021 09:02 am', 59, 6, NULL, '9', NULL, NULL, '2021-02-24 04:16:37', '2021-03-04 01:21:07', 10, 24, NULL),
(59, '24/02/2021 09:02 am', 59, 19, NULL, '11', NULL, NULL, '2021-02-24 04:16:37', '2021-03-04 01:21:07', 10, 24, NULL),
(60, '24/02/2021 09:02 am', 59, 14, NULL, '8', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(61, '24/02/2021 09:02 am', 59, 6, NULL, '10', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(62, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(63, '24/02/2021 09:02 am', 59, 6, NULL, '13', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(64, '24/02/2021 09:02 am', 59, 16, NULL, '20', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(65, '24/02/2021 09:02 am', 59, 4, NULL, '6', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(66, '24/02/2021 09:02 am', 59, 14, NULL, '9', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(67, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(68, '24/02/2021 09:02 am', 59, 6, NULL, '9', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(69, '24/02/2021 09:02 am', 59, 19, NULL, '11', NULL, NULL, '2021-02-24 04:16:56', '2021-03-04 01:21:07', 10, 25, NULL),
(70, '24/02/2021 09:02 am', 59, 14, NULL, '8', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(71, '24/02/2021 09:02 am', 59, 6, NULL, '10', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(72, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(73, '24/02/2021 09:02 am', 59, 6, NULL, '13', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(74, '24/02/2021 09:02 am', 59, 16, NULL, '20', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(75, '24/02/2021 09:02 am', 59, 4, NULL, '6', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(76, '24/02/2021 09:02 am', 59, 14, NULL, '9', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(77, '24/02/2021 09:02 am', 59, 8, NULL, '5', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(78, '24/02/2021 09:02 am', 59, 6, NULL, '9', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(79, '24/02/2021 09:02 am', 59, 19, NULL, '11', NULL, NULL, '2021-02-24 04:17:27', '2021-03-04 01:21:07', 10, 26, NULL),
(80, '24/02/2021 09:02 am', 61, 14, NULL, '8', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(81, '24/02/2021 09:02 am', 61, 7, NULL, '9', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(82, '24/02/2021 09:02 am', 61, 18, NULL, '8', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(83, '24/02/2021 09:02 am', 61, 3, NULL, '3', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(84, '24/02/2021 09:02 am', 61, 9, NULL, '9', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(85, '24/02/2021 09:02 am', 61, 12, NULL, '10', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(86, '24/02/2021 09:02 am', 61, 12, NULL, '12', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(87, '24/02/2021 09:02 am', 61, 19, NULL, '31', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(88, '24/02/2021 09:02 am', 61, 14, NULL, '4', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(89, '24/02/2021 09:02 am', 61, 14, NULL, '9', NULL, NULL, '2021-02-24 04:29:31', '2021-03-04 01:21:07', 10, 27, NULL),
(90, '24/02/2021 09:02 am', 61, 14, NULL, '8', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(91, '24/02/2021 09:02 am', 61, 7, NULL, '9', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(92, '24/02/2021 09:02 am', 61, 18, NULL, '8', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(93, '24/02/2021 09:02 am', 61, 3, NULL, '3', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(94, '24/02/2021 09:02 am', 61, 9, NULL, '9', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(95, '24/02/2021 09:02 am', 61, 12, NULL, '10', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(96, '24/02/2021 09:02 am', 61, 12, NULL, '12', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(97, '24/02/2021 09:02 am', 61, 19, NULL, '31', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(98, '24/02/2021 09:02 am', 61, 14, NULL, '4', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(99, '24/02/2021 09:02 am', 61, 14, NULL, '9', NULL, NULL, '2021-02-24 04:29:34', '2021-03-04 01:21:07', 10, 28, NULL),
(100, '24/02/2021 09:02 am', 61, 14, NULL, '8', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:07', 10, 29, NULL),
(101, '24/02/2021 09:02 am', 61, 7, NULL, '9', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:07', 10, 29, NULL),
(102, '24/02/2021 09:02 am', 61, 18, NULL, '8', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:07', 10, 29, NULL),
(103, '24/02/2021 09:02 am', 61, 3, NULL, '3', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:08', 10, 29, NULL),
(104, '24/02/2021 09:02 am', 61, 9, NULL, '9', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:08', 10, 29, NULL),
(105, '24/02/2021 09:02 am', 61, 12, NULL, '10', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:08', 10, 29, NULL),
(106, '24/02/2021 09:02 am', 61, 12, NULL, '12', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:08', 10, 29, NULL),
(107, '24/02/2021 09:02 am', 61, 19, NULL, '31', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:08', 10, 29, NULL),
(108, '24/02/2021 09:02 am', 61, 14, NULL, '4', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:08', 10, 29, NULL),
(109, '24/02/2021 09:02 am', 61, 14, NULL, '9', NULL, NULL, '2021-02-24 04:29:46', '2021-03-04 01:21:08', 10, 29, NULL),
(110, '24/02/2021 09:02 am', 61, 14, NULL, '8', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(111, '24/02/2021 09:02 am', 61, 7, NULL, '9', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(112, '24/02/2021 09:02 am', 61, 18, NULL, '8', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(113, '24/02/2021 09:02 am', 61, 3, NULL, '3', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(114, '24/02/2021 09:02 am', 61, 9, NULL, '9', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(115, '24/02/2021 09:02 am', 61, 12, NULL, '10', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(116, '24/02/2021 09:02 am', 61, 12, NULL, '12', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(117, '24/02/2021 09:02 am', 61, 19, NULL, '31', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(118, '24/02/2021 09:02 am', 61, 14, NULL, '4', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(119, '24/02/2021 09:02 am', 61, 14, NULL, '9', NULL, NULL, '2021-02-24 04:32:11', '2021-03-04 01:21:08', 10, 30, NULL),
(120, '24/02/2021 09:02 am', 61, 14, NULL, '8', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(121, '24/02/2021 09:02 am', 61, 7, NULL, '9', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(122, '24/02/2021 09:02 am', 61, 18, NULL, '8', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(123, '24/02/2021 09:02 am', 61, 3, NULL, '3', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(124, '24/02/2021 09:02 am', 61, 9, NULL, '9', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(125, '24/02/2021 09:02 am', 61, 12, NULL, '10', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(126, '24/02/2021 09:02 am', 61, 12, NULL, '12', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(127, '24/02/2021 09:02 am', 61, 19, NULL, '31', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(128, '24/02/2021 09:02 am', 61, 14, NULL, '4', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(129, '24/02/2021 09:02 am', 61, 14, NULL, '9', NULL, NULL, '2021-02-24 04:32:40', '2021-03-04 01:21:08', 10, 31, NULL),
(140, '24/02/2021 12:02 pm', 61, 2, NULL, '5', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(141, '24/02/2021 12:02 pm', 61, 19, NULL, '3', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(142, '24/02/2021 12:02 pm', 61, 64, NULL, '7', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(143, '24/02/2021 12:02 pm', 61, 21, NULL, '9', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(144, '24/02/2021 12:02 pm', 61, 3, NULL, '10', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(145, '24/02/2021 12:02 pm', 61, 18, NULL, '81', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(146, '24/02/2021 12:02 pm', 61, 32, NULL, '32', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(147, '24/02/2021 12:02 pm', 61, 11, NULL, '22', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(148, '24/02/2021 12:02 pm', 61, 169, NULL, '13', NULL, NULL, '2021-02-24 07:30:12', '2021-03-04 01:21:08', NULL, 32, NULL),
(149, '04/03/2021 5:34 am', 59, 217, '9034850', '4', 400.00, 1600.00, '2021-03-04 00:35:52', '2021-03-04 00:35:52', NULL, NULL, NULL),
(150, '04/03/2021 07:03 am', 59, 13, NULL, '3', NULL, NULL, '2021-03-04 02:08:41', '2021-03-04 02:08:41', 10, 34, NULL),
(151, '04/03/2021 07:03 am', 59, 16, NULL, '5', NULL, NULL, '2021-03-04 02:08:41', '2021-03-04 02:08:41', 10, 34, NULL),
(152, '04/03/2021 07:03 am', 59, 14, NULL, '7', NULL, NULL, '2021-03-04 02:08:41', '2021-03-04 02:08:41', 10, 34, NULL),
(153, '04/03/2021 07:03 am', 59, 16, NULL, '5', NULL, NULL, '2021-03-04 02:24:44', '2021-03-04 02:24:44', 10, 35, NULL),
(154, '04/03/2021 07:03 am', 59, 11, NULL, '70', NULL, NULL, '2021-03-04 02:27:00', '2021-03-04 02:27:00', 10, 36, NULL),
(155, '04/03/2021 07:03 am', 59, 14, NULL, '5', NULL, NULL, '2021-03-04 02:37:24', '2021-03-04 02:37:24', 10, 38, NULL),
(156, '04/03/2021 07:03 am', 59, 16, NULL, '70', NULL, NULL, '2021-03-04 02:49:29', '2021-03-04 02:49:29', 10, 39, NULL),
(157, '04/03/2021 07:03 am', 59, 12, NULL, '10', NULL, NULL, '2021-03-04 02:57:31', '2021-03-04 02:57:31', 10, 40, NULL),
(158, '04/03/2021 07:03 am', 59, 1, NULL, '78', NULL, NULL, '2021-03-04 02:59:47', '2021-03-04 02:59:47', 10, 41, NULL),
(159, '10/03/2021 11:03 am', 68, NULL, NULL, '487', NULL, NULL, '2021-03-10 06:13:02', '2021-03-10 06:13:02', 10, 48, 'sldkjfkl'),
(160, '10/03/2021 11:03 am', 68, NULL, NULL, '87', NULL, NULL, '2021-03-10 06:13:02', '2021-03-10 06:13:02', 10, 48, 'kljjlksdf'),
(161, '10/03/2021 11:03 am', 68, NULL, NULL, '397', NULL, NULL, '2021-03-10 06:15:25', '2021-03-10 06:15:25', 10, 49, 'sdlkjj'),
(162, '10/03/2021 11:03 am', 68, NULL, NULL, '32980874', NULL, NULL, '2021-03-10 06:15:25', '2021-03-10 06:15:25', 10, 49, 'skljkdjf'),
(163, '10/03/2021 11:03 am', 68, NULL, NULL, '409808', NULL, NULL, '2021-03-10 06:15:25', '2021-03-10 06:15:25', 10, 49, 'kildfjdfe'),
(164, '10/03/2021 11:03 am', 68, NULL, NULL, '397', NULL, NULL, '2021-03-10 06:15:38', '2021-03-10 06:15:38', 10, 50, 'sdlkjj'),
(165, '10/03/2021 11:03 am', 68, NULL, NULL, '32980874', NULL, NULL, '2021-03-10 06:15:38', '2021-03-10 06:15:38', 10, 50, 'skljkdjf'),
(166, '10/03/2021 11:03 am', 68, NULL, NULL, '409808', NULL, NULL, '2021-03-10 06:15:38', '2021-03-10 06:15:38', 10, 50, 'kildfjdfe'),
(167, '10/03/2021 11:03 am', 68, NULL, NULL, '397', NULL, NULL, '2021-03-10 06:16:28', '2021-03-10 06:16:28', 10, 51, 'sdlkjj'),
(168, '10/03/2021 11:03 am', 68, NULL, NULL, '32980874', NULL, NULL, '2021-03-10 06:16:28', '2021-03-10 06:16:28', 10, 51, 'skljkdjf'),
(169, '10/03/2021 11:03 am', 68, NULL, NULL, '409808', NULL, NULL, '2021-03-10 06:16:28', '2021-03-10 06:16:28', 10, 51, 'kildfjdfe'),
(173, '11/03/2021 04:03 am', 70, NULL, NULL, '843', NULL, NULL, '2021-03-10 23:30:56', '2021-03-10 23:30:56', 34, 58, 'klskd'),
(174, '11/03/2021 04:03 am', 70, NULL, NULL, '48', NULL, NULL, '2021-03-10 23:30:56', '2021-03-10 23:30:56', 34, 58, 'KLJSJDL'),
(175, '11/03/2021 04:03 am', 70, NULL, NULL, '4309', NULL, NULL, '2021-03-10 23:41:15', '2021-03-10 23:41:15', 34, 64, 'lksdjl'),
(176, '11/03/2021 04:03 am', 70, NULL, NULL, '98034', NULL, NULL, '2021-03-10 23:41:15', '2021-03-10 23:41:15', 34, 64, 'kljkfkjsd'),
(177, '11/03/2021 04:03 am', 70, NULL, NULL, '4309', NULL, NULL, '2021-03-10 23:41:49', '2021-03-10 23:41:49', 34, 65, 'lksdjl'),
(178, '11/03/2021 04:03 am', 70, NULL, NULL, '98034', NULL, NULL, '2021-03-10 23:41:49', '2021-03-10 23:41:49', 34, 65, 'kljkfkjsd'),
(179, '12/03/2021 04:03 am', 67, NULL, NULL, '987', NULL, NULL, '2021-03-11 23:13:08', '2021-03-11 23:13:08', 35, 66, 'lksdflk'),
(180, '12/03/2021 04:03 am', 67, NULL, NULL, '98', NULL, NULL, '2021-03-11 23:13:08', '2021-03-11 23:13:08', 35, 66, 'lksdfj'),
(181, '12/03/2021 04:03 am', 67, NULL, NULL, '9', NULL, NULL, '2021-03-11 23:13:08', '2021-03-11 23:13:08', 35, 66, 'LSDJF'),
(182, '12/03/2021 04:03 am', 69, NULL, NULL, '9', NULL, NULL, '2021-03-11 23:20:25', '2021-03-11 23:20:25', 35, 67, 'jklsdjlkfs'),
(183, '12/03/2021 04:03 am', 69, NULL, '98347', '4', 10.00, 40.00, '2021-03-11 23:20:25', '2021-03-12 00:32:56', 35, 67, 'sdlkjds'),
(184, '12/03/2021 04:03 am', 69, NULL, NULL, '5', NULL, NULL, '2021-03-11 23:20:25', '2021-03-11 23:20:25', 35, 67, 'lkjsdj'),
(185, '16/03/2021 09:03 am', 65, NULL, NULL, '4', NULL, NULL, '2021-03-16 04:09:52', '2021-03-16 04:09:52', 41, 68, 'lksjdflkj'),
(186, '16/03/2021 09:03 am', 65, NULL, NULL, '4', NULL, NULL, '2021-03-16 04:09:52', '2021-03-16 04:09:52', 41, 68, 'lsdfkldlsfkl'),
(187, '16/03/2021 09:03 am', 65, NULL, NULL, '7', NULL, NULL, '2021-03-16 04:09:52', '2021-03-16 04:09:52', 41, 68, 'slkdfjlk'),
(188, '16/03/2021 09:03 am', 73, NULL, '390458', '8', 10.00, 80.00, '2021-03-16 04:22:50', '2021-03-16 04:54:13', 41, 69, 'lksdjflk'),
(189, '16/03/2021 09:03 am', 73, NULL, '398047', '89', 1.00, 89.00, '2021-03-16 04:22:50', '2021-03-16 04:54:23', 41, 69, 'lksjlfkjlksdj'),
(190, '16/03/2021 09:03 am', 73, NULL, '9879324', '7', 10.00, 70.00, '2021-03-16 04:22:50', '2021-03-16 04:54:32', 41, 69, 'KLSJKLF'),
(191, '16/03/2021 09:03 am', 73, NULL, '839475', '90', 5.00, 450.00, '2021-03-16 04:22:50', '2021-03-16 04:54:40', 41, 69, 'SKLDJFL'),
(256, '01/04/2021 05:04 am', 76, NULL, NULL, '2', NULL, NULL, '2021-04-01 00:49:41', '2021-04-01 00:49:41', 46, 71, 'Test Material 1'),
(257, '01/04/2021 05:04 am', 76, NULL, NULL, '7', NULL, NULL, '2021-04-01 00:49:41', '2021-04-01 00:49:41', 46, 71, 'ALKSJD'),
(258, '01/04/2021 05:04 am', 76, NULL, NULL, '398', NULL, NULL, '2021-04-01 00:49:41', '2021-04-01 00:49:41', 46, 71, 'LASJDF'),
(259, '01/04/2021 05:04 am', 76, NULL, NULL, '89', NULL, NULL, '2021-04-01 00:49:41', '2021-04-01 00:49:41', 46, 71, 'ALKSJDF'),
(260, '01/04/2021 06:04 am', 77, NULL, NULL, '8', NULL, NULL, '2021-04-01 01:58:03', '2021-04-01 01:58:03', 41, 70, 'lklskdjf'),
(261, '01/04/2021 06:04 am', 77, NULL, NULL, '9', NULL, NULL, '2021-04-01 01:58:03', '2021-04-01 01:58:03', 41, 70, 'lkskjjd'),
(262, '01/04/2021 06:04 am', 77, NULL, NULL, '1', NULL, NULL, '2021-04-01 01:58:03', '2021-04-01 01:58:03', 41, 70, 'slkjd'),
(263, '01/04/2021 06:04 am', 77, NULL, NULL, '20', NULL, NULL, '2021-04-01 01:58:03', '2021-04-01 01:58:03', 41, 70, 'lksdjfs'),
(264, '01/04/2021 06:04 am', 77, NULL, NULL, '8', NULL, NULL, '2021-04-01 01:58:03', '2021-04-01 01:58:03', 41, 70, 'flksjfdk'),
(265, '01/04/2021 06:04 am', 77, NULL, NULL, '54', NULL, NULL, '2021-04-01 01:58:03', '2021-04-01 01:58:03', 41, 70, 'sdflkj'),
(266, '01/04/2021 06:04 am', 77, NULL, NULL, '5', NULL, NULL, '2021-04-01 01:58:03', '2021-04-01 01:58:03', 41, 70, 'laskldf'),
(267, '14/04/2021 09:04 am', 74, NULL, NULL, '90', NULL, NULL, '2021-04-14 04:39:11', '2021-04-14 04:39:11', 48, 72, 'lkxsd'),
(268, '14/04/2021 09:04 am', 74, NULL, NULL, '90', NULL, NULL, '2021-04-14 04:39:31', '2021-04-14 04:39:31', 48, 73, 'lkxsd'),
(269, '14/04/2021 09:04 am', 74, NULL, NULL, '90', NULL, NULL, '2021-04-14 04:40:52', '2021-04-14 04:40:52', 48, 74, 'lkxsd'),
(270, '14/04/2021 09:04 am', 74, NULL, NULL, '90', NULL, NULL, '2021-04-14 04:41:36', '2021-04-14 04:41:36', 48, 75, 'lkxsd'),
(271, '14/04/2021 10:04 am', 74, NULL, NULL, '90', NULL, NULL, '2021-04-14 05:17:59', '2021-04-14 05:17:59', 48, 76, 'lkxsd'),
(272, '14/04/2021 10:04 am', 74, NULL, NULL, '9090', NULL, NULL, '2021-04-14 05:20:53', '2021-04-14 05:20:53', 48, 77, 'lksdj'),
(273, '14/04/2021 10:04 am', 74, NULL, NULL, '9090', NULL, NULL, '2021-04-14 05:21:10', '2021-04-14 05:21:10', 48, 78, 'lksdj'),
(274, '14/04/2021 10:04 am', 74, NULL, NULL, '9823', NULL, NULL, '2021-04-14 05:23:06', '2021-04-14 05:23:06', 48, 79, 'lksdljk'),
(275, '14/04/2021 10:04 am', 74, NULL, NULL, '9823', NULL, NULL, '2021-04-14 05:23:28', '2021-04-14 05:23:28', 48, 80, 'lksdljk'),
(276, '14/04/2021 10:04 am', 74, NULL, NULL, '0394', NULL, NULL, '2021-04-14 05:28:04', '2021-04-14 05:28:04', 48, 81, 'slsdjl'),
(277, '14/04/2021 10:04 am', 74, NULL, NULL, '09483', NULL, NULL, '2021-04-14 05:30:32', '2021-04-14 05:30:32', 48, 82, 'skldfj'),
(278, '14/04/2021 10:04 am', 74, NULL, NULL, '09348', NULL, NULL, '2021-04-14 05:47:18', '2021-04-14 05:47:18', 48, 83, 'lksdjflk'),
(279, '14/04/2021 10:04 am', 74, NULL, NULL, '09348', NULL, NULL, '2021-04-14 05:47:33', '2021-04-14 05:47:33', 48, 84, 'lksdjflk'),
(280, '14/04/2021 10:04 am', 74, NULL, NULL, '09348', NULL, NULL, '2021-04-14 05:47:57', '2021-04-14 05:47:57', 48, 85, 'lksdjflk'),
(281, '14/04/2021 10:04 am', 74, NULL, NULL, '0934', NULL, NULL, '2021-04-14 05:50:26', '2021-04-14 05:50:26', 48, 86, 'slkdkflk'),
(282, '14/04/2021 11:04 am', 74, NULL, NULL, '09843', NULL, NULL, '2021-04-14 06:02:38', '2021-04-14 06:02:38', 48, 87, 'lkjsd'),
(283, '14/04/2021 11:04 am', 74, NULL, NULL, '09843', NULL, NULL, '2021-04-14 06:03:03', '2021-04-14 06:03:03', 48, 88, 'lkjsd'),
(284, '14/04/2021 11:04 am', 74, NULL, NULL, '980', NULL, NULL, '2021-04-14 06:17:18', '2021-04-14 06:17:18', 48, 89, 'lsdlkjks'),
(285, '14/04/2021 11:04 am', 74, NULL, NULL, '4930', NULL, NULL, '2021-04-14 06:19:01', '2021-04-14 06:19:01', 48, 90, 'lksadfj'),
(286, '14/04/2021 11:04 am', 74, NULL, NULL, '098', NULL, NULL, '2021-04-14 06:34:48', '2021-04-14 06:34:48', 48, 91, 'sldjk'),
(287, '15/04/2021 07:04 am', 77, NULL, NULL, '098', NULL, NULL, '2021-04-15 02:12:47', '2021-04-15 02:12:47', 48, 92, 'lkjdsfj'),
(288, '15/04/2021 07:04 am', 77, NULL, NULL, '098', NULL, NULL, '2021-04-15 02:13:30', '2021-04-15 02:13:30', 48, 93, 'lkjdsfj'),
(289, '15/04/2021 07:04 am', 77, NULL, NULL, '098', NULL, NULL, '2021-04-15 02:13:47', '2021-04-15 02:13:47', 48, 94, 'lkjdsfj'),
(290, '15/04/2021 07:04 am', 77, NULL, NULL, '098', NULL, NULL, '2021-04-15 02:13:55', '2021-04-15 02:13:55', 48, 95, 'lkjdsfj'),
(291, '15/04/2021 07:04 am', 77, NULL, NULL, '87', NULL, NULL, '2021-04-15 02:15:45', '2021-04-15 02:15:45', 48, 96, 'klsdfdsf'),
(292, '15/04/2021 07:04 am', 77, NULL, NULL, '87', NULL, NULL, '2021-04-15 02:15:57', '2021-04-15 02:15:57', 48, 97, 'klsdfdsf'),
(293, '21/04/2021 06:04 am', 76, NULL, NULL, '98', NULL, NULL, '2021-04-21 01:13:53', '2021-04-21 01:13:53', 51, 98, 'sldj'),
(294, '21/04/2021 06:04 am', 76, NULL, NULL, '9', NULL, NULL, '2021-04-21 01:16:47', '2021-04-21 01:16:47', 51, 99, 'lksjd'),
(295, '21/04/2021 06:04 am', 76, NULL, NULL, '9', NULL, NULL, '2021-04-21 01:17:56', '2021-04-21 01:17:56', 51, 100, 'lksdfj'),
(296, '17/06/2021 11:06 am', 76, NULL, NULL, '23', NULL, NULL, '2021-06-17 06:17:24', '2021-06-17 06:17:24', 52, 101, 'sdf'),
(297, '17/06/2021 11:06 am', 76, NULL, NULL, '23', NULL, NULL, '2021-06-17 06:18:10', '2021-06-17 06:18:10', 52, 102, 'sdf'),
(298, '17/06/2021 11:06 am', 76, NULL, NULL, '23', NULL, NULL, '2021-06-17 06:19:22', '2021-06-17 06:19:22', 52, 103, 'sdf'),
(299, '17/06/2021 12:06 pm', 76, NULL, NULL, '3', NULL, NULL, '2021-06-17 07:19:07', '2021-06-17 07:19:07', 52, 104, 'sdf'),
(300, '17/06/2021 12:06 pm', 76, NULL, NULL, '2', NULL, NULL, '2021-06-17 07:19:07', '2021-06-17 07:19:07', 52, 104, 'sdf'),
(301, '16/07/2021 07:07 am', 77, NULL, NULL, '21', NULL, NULL, '2021-07-16 02:01:10', '2021-07-16 02:01:10', 53, 220, 'sdf'),
(302, '16/07/2021 07:07 am', 77, NULL, NULL, '23', NULL, NULL, '2021-07-16 02:01:10', '2021-07-16 02:01:10', 53, 220, 'sfds');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Daily Installs', '2020-09-14 08:08:17', '2020-09-21 16:47:59'),
(2, 'Non Contract', '2020-09-21 16:20:31', '2020-09-21 19:20:58'),
(3, 'Contract', '2020-09-21 16:48:14', '2020-09-21 16:48:14'),
(4, 'Installations', '2020-09-21 16:48:26', '2020-09-21 16:48:26'),
(5, 'Calibration', '2020-09-21 16:48:38', '2020-09-21 16:48:38'),
(6, 'Donal', '2020-09-21 16:48:43', '2020-09-21 16:48:43'),
(7, 'Warranty', '2020-09-21 19:21:46', '2020-09-21 19:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `signatory_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `customer_id`, `signatory_id`, `date`, `title`, `address`, `salutation`, `internal_notes`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '11/03/2021 11:59 am', 'sjdflk', 'FAO: ALBERT O FLYNN BALLYSIMON CO. LIMERICK Eircode xyz', 'lkskdfjlkds', 'slkdjflsfjlksd', 'lksdjflsdjlf', '2021-03-11 06:59:35', '2021-03-11 06:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `material` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `material`, `quantity`, `form_id`, `created_at`, `updated_at`) VALUES
(1, 'material 1', '5', 3, '2021-02-12 05:59:07', '2021-02-12 05:59:07'),
(2, 'material 1', '5', 4, '2021-02-12 05:59:36', '2021-02-12 05:59:36'),
(3, 'material 1', '5', 5, '2021-02-12 06:00:22', '2021-02-12 06:00:22'),
(4, 'material 1', '5', 6, '2021-02-12 06:01:41', '2021-02-12 06:01:41'),
(5, 'material 1', '5', 7, '2021-02-12 06:03:34', '2021-02-12 06:03:34'),
(6, 'materail 2', '8', 7, '2021-02-12 06:03:34', '2021-02-12 06:03:34'),
(7, 'sdfdsf', 'sdfds', 8, '2021-02-12 06:54:45', '2021-02-12 06:54:45'),
(8, 'sdkfjlj', 'ksdjflds', 9, '2021-02-12 06:56:18', '2021-02-12 06:56:18'),
(9, 'sdkfjlj', 'ksdjflds', 10, '2021-02-12 07:09:25', '2021-02-12 07:09:25'),
(10, 'lskdkfj', '2340', 11, '2021-02-12 07:13:59', '2021-02-12 07:13:59'),
(11, 'lskdkfj', '2340', 12, '2021-02-12 07:14:26', '2021-02-12 07:14:26'),
(12, 'lskdkfj', '2340', 13, '2021-02-12 07:14:43', '2021-02-12 07:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_02_09_100814_alter_customers_for_add_service_contract', 27),
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2020_08_08_064702_create_suppliers_table', 1),
(33, '2020_08_08_065535_create_stock_items_table', 1),
(34, '2020_08_08_070600_create_stock_receipts_table', 1),
(35, '2020_08_11_051153_add_suupplier_and_stock_item_ids_col_to_stockreceipttable', 1),
(36, '2020_08_11_075819_create_pump_make_and_models_table', 1),
(37, '2020_08_11_092813_create_signatories_table', 1),
(38, '2020_08_11_095703_create_staff_table', 1),
(39, '2020_08_11_100317_change_data_type_of_status_to_boolean', 1),
(40, '2020_08_11_103755_create_contacts_table', 1),
(41, '2020_08_13_111052_create_categories_table', 1),
(42, '2020_08_19_051758_create_customers_table', 1),
(43, '2020_08_19_100122_create_job_types_table', 1),
(44, '2020_08_19_100136_create_jobs_table', 1),
(45, '2020_08_24_043711_create_tools_table', 1),
(46, '2020_08_24_055653_create_store_purchase_orders_table', 1),
(47, '2020_08_26_080731_create_job_communications_table', 1),
(48, '2020_08_26_080750_create_job_labours_table', 1),
(49, '2020_08_26_080931_create_job_emails_table', 1),
(50, '2020_08_26_080950_create_job_purchases_table', 1),
(51, '2020_08_26_081041_create_job_stocks_table', 1),
(52, '2020_08_26_095254_create_quotations_table', 1),
(53, '2020_08_27_061524_create_quotation_items_table', 1),
(54, '2020_08_27_061811_create_quotation_payments_table', 1),
(55, '2020_08_27_062459_create_verif_quotations_table', 1),
(56, '2020_08_27_080303_create_verif_quotation_items_table', 1),
(57, '2020_08_29_102239_add_user_id_to_jobs', 1),
(58, '2020_08_30_123822_add_user_id_to_quotations', 1),
(59, '2020_09_02_113821_create_issued_tools_table', 1),
(60, '2020_09_03_104447_create_templates_table', 1),
(61, '2020_09_04_061055_create_system_settings_table', 1),
(62, '2020_09_05_051011_alter_verif_quotations_table_for_user_id', 1),
(63, '2020_09_06_065152_alter_verif_quotations_table_for_droping_columns', 1),
(64, '2020_09_06_100510_create_quotation_types_table', 1),
(65, '2020_09_06_104746_drop_quotation_type_from_verif_quotations_table', 1),
(66, '2020_09_06_104928_add_quotation_type_id_in_verif_quotations_table', 1),
(67, '2020_09_06_182345_create_account_types_table', 1),
(68, '2020_09_06_192625_add_account_type_id_in_customers_table', 1),
(69, '2020_09_07_050855_create_equipment_table', 1),
(70, '2020_09_07_063503_create_contracts_table', 1),
(71, '2020_09_07_071836_create_letters_table', 1),
(72, '2020_09_07_080329_create_service_contracts_table', 1),
(73, '2020_09_08_042241_create_issue_tools_table', 1),
(74, '2020_09_14_104931_create_job_documents_table', 2),
(75, '2020_09_14_104957_create_quotation_documents_table', 2),
(76, '2020_09_21_093849_add_status_col_to_jobs_table', 3),
(77, '2020_09_22_081323_create_certificates_table', 3),
(78, '2020_09_23_053505_create_pump_certifieds_table', 4),
(79, '2020_09_23_094814_alter_certificates_table_with_two_new_columns', 5),
(80, '2020_09_23_122900_create_vats_table', 6),
(81, '2020_09_25_100755_create_availbilities_table', 7),
(82, '2020_09_25_100815_create_warranties_table', 7),
(88, '2020_09_25_130059_change_quotations_table_with_drop_warranty', 11),
(91, '2020_09_24_115304_alter_job_emails_for_add_details', 12),
(98, '2020_09_25_075416_alter_job_emails_for_add_data', 13),
(99, '2020_09_25_100828_create_payment_terms_table', 13),
(100, '2020_09_25_125402_change_quotations_table_with_drop_vat', 13),
(101, '2020_09_25_125540_change_quotations_table_add_vat_again', 13),
(102, '2020_09_25_130443_change_quotations_table_with_drop_warranty', 13),
(103, '2020_09_25_130539_change_quotations_table_add_warranty_again', 13),
(104, '2020_09_26_041405_change_quotations_table_drop_columns', 14),
(105, '2020_09_26_041723_change_quotations_table_make_columns', 15),
(106, '2020_09_26_042128_change_vats_table_drop_columns', 16),
(107, '2020_09_26_042243_change_vats_table_make_columns', 16),
(108, '2020_09_26_042353_change_warranties_table_drop_columns', 16),
(109, '2020_09_26_042603_change_warranties_table_make_columns', 16),
(110, '2020_09_26_043251_change_warranties_table_make_columns2', 17),
(111, '2020_09_25_122617_create_blocks_table', 18),
(112, '2020_09_28_042457_alter_job_communications_table_with_com_type', 19),
(113, '2020_09_29_102017_change_job_emails_table_with_mail_type_field', 20),
(114, '2020_10_05_125929_change_suppliers_table_to_add_email_column', 21),
(115, '2020_10_05_133242_change_jobs_table_with_status_field', 22),
(116, '2020_10_05_133341_change_jobs_table_with_status_field2', 23),
(117, '2020_10_05_062845_add_other_email_address_col_to_job_emails_table', 24),
(118, '2020_10_06_051214_change_jobs_table_with_new_fields', 24),
(119, '2020_10_06_045024_change_col_names_in_quotation_table', 25),
(120, '2020_10_06_053357_change_column_names_in_quotation_table', 25),
(121, '2020_10_06_060522_change_column_names_in_verfi_quotation_table', 25),
(122, '2020_10_06_061021_change_vat_data_type_verfi_quotation_table', 25),
(123, '2020_10_06_075419_create_dropbox_tokens_table', 26),
(124, '2020_10_06_120139_alter_jobs_table_for_job_folder', 26),
(125, '2020_10_06_180218_alter_quotations_table_for_quotation_folder', 26),
(126, '2020_10_06_181110_alter_verifications_quotations_table_for_verification_quotation_folder', 26),
(127, '2020_10_07_041301_create_verif_quotation_documents_table', 26),
(128, '2021_02_10_070536_create_engineer_forms_table', 28),
(129, '2021_02_10_070630_create_materials_table', 29),
(130, '2021_02_10_070656_create_engineer_equipment_table', 29),
(131, '2021_02_10_070718_create_pump_numbers_table', 29),
(135, '2021_02_15_103256_alter_job_labours_table_for_update_labour_form', 30),
(138, '2021_02_15_105324_alter_stocks_table_for_user_id', 31),
(142, '2021_02_24_042000_alter_engineer_forms_table_for_w_m_seals_column', 32),
(147, '2021_03_04_063523_alter_job_labours_table_for_engineer_form', 33),
(148, '2021_03_04_065714_alter_engineer_forms_table_for_removing_columns', 34),
(149, '2021_03_04_092042_alter_customers_table_for_comment_field', 35),
(150, '2021_03_08_050650_alter_customers_table_for_drop_comment_field', 36),
(152, '2021_03_10_103833_alter_job_stocks_table_for_material_name_field', 37),
(153, '2021_03_10_113825_alter_pump_certifieds_table_for_nullable_certificate_id', 38),
(154, '2021_03_11_125726_alter_customers_table_for_pos_and_no_of_tanks', 39),
(159, '2021_04_14_092651_create_engineer_images_table', 40),
(161, '2021_06_18_052829_alter_jobs_table_for_order_no', 41),
(162, '2021_06_29_121824_alter_engineer_froms_table_from_assign_engineer_add_more', 42),
(166, '2021_06_30_053518_alter_engineer_forms_table_for_status', 43),
(167, '2021_07_09_053459_create_engineer_jobs_table', 44),
(168, '2021_07_16_132446_alter_engineer_jobs_table_for_engineer_form_id', 45);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Full Payment on Completion', '2020-11-27 09:45:15', '2020-11-27 09:45:15'),
(2, '20% Deposit required, Remaining payment on completion', '2020-11-27 09:45:30', '2020-11-27 09:45:30'),
(3, '40% Deposit required, Remaining payment on completion', '2020-11-27 09:45:48', '2020-11-27 09:45:48'),
(4, '50% Deposit required, Remaining payment on completion', '2020-11-27 09:45:58', '2020-11-27 09:45:58'),
(5, 'Payment required prior to work commencing', '2020-11-27 09:46:10', '2020-11-27 09:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `pump_certifieds`
--

CREATE TABLE `pump_certifieds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `certificate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `pump_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nozzles` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `make` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pump_certifieds`
--

INSERT INTO `pump_certifieds` (`id`, `certificate_id`, `job_id`, `pump_no`, `nozzles`, `make`, `serial_no`, `created_at`, `updated_at`) VALUES
(21, 1, 70, '29387', 'sdjkl', 'sdkljflk', '89', '2021-03-12 05:07:05', '2021-03-12 05:07:05'),
(22, NULL, 76, '39485893', 'lksjdlfk', 'lksd', '43534', '2021-03-16 05:30:22', '2021-03-16 05:30:22'),
(23, NULL, 77, '30498', 'ksld', 'skdl', '4334534', '2021-03-16 23:47:55', '2021-03-16 23:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `pump_make_and_models`
--

CREATE TABLE `pump_make_and_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `make_model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pump_make_and_models`
--

INSERT INTO `pump_make_and_models` (`id`, `make_model`, `created_at`, `updated_at`) VALUES
(1, 'GILBARCO EUROLINE', '2020-11-06 10:10:43', '2020-11-06 10:10:43'),
(2, 'WAYNE', '2020-11-06 10:11:02', '2020-11-06 10:11:02'),
(3, 'TOKHEIM QUANTUIM 510/510', '2020-11-06 10:11:11', '2020-11-06 10:11:11'),
(4, 'TOKHEIM 363', '2020-11-06 10:11:21', '2020-11-06 10:11:21'),
(5, 'TATSUNO BMP 4044.OER/H', '2020-11-06 10:11:29', '2020-11-06 10:11:29'),
(6, 'TATSUNO SHARK', '2020-11-06 10:11:37', '2020-11-06 10:11:37'),
(7, 'GILBARCO SK700', '2020-11-06 10:11:46', '2020-11-06 10:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `pump_numbers`
--

CREATE TABLE `pump_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pump_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `w_m_seals` tinyint(1) NOT NULL DEFAULT 0,
  `form_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pump_numbers`
--

INSERT INTO `pump_numbers` (`id`, `pump_no`, `serial_no`, `w_m_seals`, `form_id`, `created_at`, `updated_at`) VALUES
(1, '9343', '93434', 1, 7, '2021-02-12 06:03:34', '2021-02-12 06:03:34'),
(2, 'dssdf', 'sdfsdf', 0, 8, '2021-02-12 06:54:45', '2021-02-12 06:54:45'),
(3, 'qqfwksdk', 'dfgsf', 1, 9, '2021-02-12 06:56:18', '2021-02-12 06:56:18'),
(4, 'qqfwksdk', 'dfgsf', 1, 10, '2021-02-12 07:09:25', '2021-02-12 07:09:25'),
(5, '2032', '930409', 1, 11, '2021-02-12 07:14:00', '2021-02-12 07:14:00'),
(6, '2032', '930409', 1, 12, '2021-02-12 07:14:26', '2021-02-12 07:14:26'),
(7, '2032', '930409', 1, 13, '2021-02-12 07:14:43', '2021-02-12 07:14:43'),
(8, '90834', '09844334', 1, 19, '2021-02-23 23:25:34', '2021-02-23 23:25:34'),
(9, '400', '3322111', 1, 20, '2021-02-24 04:01:46', '2021-02-24 04:01:46'),
(10, '12345', '45678', 1, 26, '2021-02-24 04:17:27', '2021-02-24 04:17:27'),
(11, '1', '12345', 1, 27, '2021-02-24 04:29:31', '2021-02-24 04:29:31'),
(12, '1', '12345', 1, 28, '2021-02-24 04:29:34', '2021-02-24 04:29:34'),
(13, '1', '12345', 1, 29, '2021-02-24 04:29:46', '2021-02-24 04:29:46'),
(14, '1', '12345', 1, 30, '2021-02-24 04:32:11', '2021-02-24 04:32:11'),
(15, '1', '12345', 0, 31, '2021-02-24 04:32:40', '2021-02-24 04:32:40'),
(16, '2', '123456', 0, 31, '2021-02-24 04:32:40', '2021-02-24 04:32:40'),
(17, '3', '1234567', 0, 31, '2021-02-24 04:32:40', '2021-02-24 04:32:40'),
(18, '4', '12345678', 0, 31, '2021-02-24 04:32:40', '2021-02-24 04:32:40'),
(23, '10', '12345', 0, 32, '2021-02-24 07:30:12', '2021-02-24 07:30:12'),
(24, '11', '12346', 0, 32, '2021-02-24 07:30:12', '2021-02-24 07:30:12'),
(25, '12', '12347', 0, 32, '2021-02-24 07:30:13', '2021-02-24 07:30:13'),
(26, '400', '74893', 0, 34, '2021-03-04 02:08:41', '2021-03-04 02:08:41'),
(27, '64', '30948', 0, 34, '2021-03-04 02:08:41', '2021-03-04 02:08:41'),
(28, '23423', '234234', 0, 35, '2021-03-04 02:24:44', '2021-03-04 02:24:44'),
(29, '400', '989495894', 0, 36, '2021-03-04 02:27:00', '2021-03-04 02:27:00'),
(30, '400', '989495894', 0, 38, '2021-03-04 02:37:24', '2021-03-04 02:37:24'),
(31, '400', '989495894', 0, 39, '2021-03-04 02:49:29', '2021-03-04 02:49:29'),
(32, '400', '989495894', 0, 40, '2021-03-04 02:57:31', '2021-03-04 02:57:31'),
(33, '400', '989495894', 0, 41, '2021-03-04 02:59:47', '2021-03-04 02:59:47'),
(34, '344', '89347', 1, 51, '2021-03-10 06:16:28', '2021-03-10 06:16:28'),
(36, '38497', '84934', 1, 58, '2021-03-10 23:30:56', '2021-03-10 23:30:56'),
(37, '843', '8394', 1, 64, '2021-03-10 23:41:15', '2021-03-10 23:41:15'),
(38, '843', '8394', 1, 65, '2021-03-10 23:41:49', '2021-03-10 23:41:49'),
(39, '8943', '489', 1, 66, '2021-03-11 23:13:08', '2021-03-11 23:13:08'),
(40, '89437', '304', 0, 66, '2021-03-11 23:13:08', '2021-03-11 23:13:08'),
(41, '9347', '389475', 1, 67, '2021-03-11 23:20:25', '2021-03-11 23:20:25'),
(42, '98347', '89347', 1, 67, '2021-03-11 23:20:25', '2021-03-11 23:20:25'),
(43, '39487', '433', 1, 68, '2021-03-16 04:09:52', '2021-03-16 04:09:52'),
(44, '3498', '9853', 1, 68, '2021-03-16 04:09:52', '2021-03-16 04:09:52'),
(45, '9837495', '9834879', 1, 69, '2021-03-16 04:22:50', '2021-03-16 04:22:50'),
(46, '983478593', '39487', 1, 69, '2021-03-16 04:22:50', '2021-03-16 04:22:50'),
(47, '400', '989495894', 1, 70, '2021-03-16 07:55:13', '2021-03-16 07:55:13'),
(48, '4987', '45987', 1, 70, '2021-03-16 07:55:13', '2021-03-16 07:55:13'),
(49, '8975347', '83974', 0, 70, '2021-03-16 07:55:13', '2021-03-16 07:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `signatory_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel` double(8,2) DEFAULT NULL,
  `availablity_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_term_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty_id` int(11) NOT NULL DEFAULT 0,
  `vat_id` double NOT NULL DEFAULT 0,
  `total_value` double(8,2) DEFAULT NULL,
  `internal_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `sign_off` enum('1','2','3') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1: Preliminaries, 2: PSDP & PSCS, 3: Retailer',
  `status` enum('Pending','Won','Lost','lost_archieve') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_folder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `customer_id`, `job_id`, `signatory_id`, `date`, `title`, `travel`, `availablity_id`, `payment_term_id`, `warranty_id`, `vat_id`, `total_value`, `internal_notes`, `block1`, `block2`, `no_of_days`, `sign_off`, `status`, `created_at`, `updated_at`, `user_id`, `quotation_folder`) VALUES
(1, 332, 2, 1, '09/11/2020 10:26 am', 'Office Manager', NULL, 'Subject to confirmation of order', NULL, 3, 23, 1.00, 'TEST PUMP LEAKING', NULL, NULL, NULL, '1', 'Lost', '2020-11-09 15:27:09', '2020-11-10 20:51:56', 1, '/Petro/Quotations/1'),
(2, 1, 23, 1, '10/11/2020 15:57 pm', 'Office Manager', 100.00, NULL, NULL, 4, 0, 200.00, 'mdnf,sdng,mdsngd,f', 'test', 'test', NULL, '1', 'Won', '2020-11-10 20:57:25', '2020-11-24 21:26:01', 1, '/Petro/Quotations/2'),
(3, 332, 25, 4, '16/11/2020 12:22 pm', 'Unmanned Site', 0.00, 'Subject to confirmation of order', NULL, 4, 23, 452527.00, 'Check ESB Connection Onsite.', 'I have prepared the following quotation for your consideration', 'EXCLOUSIONS:  Extra Contaminated Waste ESB Re-connection. Broadband  Firs Officer charges Environmental Services Air & Water Unit.', 40, '2', 'Won', '2020-11-16 17:35:21', '2020-11-24 21:40:07', 1, '/Petro/Quotations/3'),
(4, 332, 29, 4, '16/11/2020 12:22 pm', 'Unmanned Site', 2000.00, 'Subject to confirmation of order', NULL, 4, 23, 200.00, 'Check ESB Connection Onsite.', NULL, NULL, 40, '2', 'Won', '2020-11-16 17:36:09', '2020-12-03 12:38:43', 1, '/Petro/Quotations/4'),
(12, 5, 6, 1, '18/11/2020 17:30 pm', 'test', 100.00, 'Subject to confirmation of order', NULL, 3, 23, 50.00, 'int notes 1', 'Block 1 Details', 'Block 2 Details', NULL, '1', 'Won', '2020-11-18 22:32:24', '2020-11-18 22:32:57', 1, '/Petro/Quotations/12'),
(16, 332, 22, 4, '24/11/2020 14:44 pm', 'Oil Depot Upgrade', 0.00, 'Subject to confirmation of order', NULL, 4, 13.5, 31450.00, 'Mini Digger Required - 1 Week', 'I have prepared the following quotation for your consideration.', 'Exclusions: Cabling in place by others. Site office in installed by others. If silt trap requires specialist cleaning not included.', 25, '2', 'Won', '2020-11-24 19:56:49', '2020-11-24 20:02:31', 1, '/Petro/Quotations/16'),
(17, 332, 22, 4, '24/11/2020 15:12 pm', 'Extra - Concrete Slab', 0.00, 'Subject to confirmation of order', NULL, 3, 13.5, 600.00, NULL, 'I have prepared the following quotation for your consideration.', 'Exclusions: Cabling in place by others. Site office in installed by others. If silt trap requires specialist cleaning not included.', NULL, '1', 'Won', '2020-11-24 20:16:28', '2020-11-24 21:25:18', 1, '/Petro/Quotations/17'),
(18, 4, 27, 1, '24/11/2020 16:22 pm', 'test ttile', 120.00, NULL, NULL, 4, 23, 200.00, 'int notes 1', 'Block 1 Details', 'Block 2 Details', 12, '1', 'Won', '2020-11-24 21:23:20', '2020-11-25 21:17:14', 1, '/Petro/Quotations/18'),
(19, 9, 24, 1, '24/11/2020 16:26 pm', 'test title', 123.00, NULL, NULL, 3, 23, 200.00, 'test notes 1', 'Block 1 Details', 'Block 2 Details', 12, '1', 'Won', '2020-11-24 21:27:17', '2020-11-24 21:27:45', 1, '/Petro/Quotations/19'),
(20, 7, 26, 1, '25/11/2020 16:8 pm', 'test title', 123.00, 'Subject to confirmation of order', NULL, 4, 23, 300.00, 'test notes', 'Block 1 Details', 'Block 2 Details', 12, '1', 'Won', '2020-11-25 21:09:27', '2020-11-25 21:14:18', 1, '/Petro/Quotations/20'),
(21, 16, 28, 1, '25/11/2020 16:28 pm', 'john test warranty shows on job home page', 123.00, 'Subject to confirmation of order', NULL, 4, 23, 200.00, 'test notes 1', 'Block 1 Details', 'Block 2 Details', 12, '1', 'Won', '2020-11-25 21:29:14', '2020-11-25 21:30:13', 1, '/Petro/Quotations/21'),
(32, 6, 32, 1, '03/12/2020 16:32 pm', 'test title', 3333.00, 'Subject to confirmation of order', 'Full Payment on Completion', 4, 0, 3000.00, 'int notes 1', 'Block 1 Details', 'Block 2 Details', NULL, '1', 'Won', '2020-12-03 21:34:40', '2020-12-03 21:35:10', 1, '/Petro/Quotations/32'),
(37, 1145, 37, 4, '09/12/2020 7:57 am', 'test kashif quotation', 55.00, 'Subject to confirmation of order', '50% Deposit required, Remaining payment on completion', 3, 0, 706.00, 'test internal notes test internal notes test internal notes test internal notes', 'Block 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 DetailsBlock 1 Details', 'Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details Block 2 Details', 66, '2', 'Won', '2020-12-09 12:59:51', '2020-12-09 15:05:43', 1, '/Petro/Quotations/37'),
(39, 1, 38, 1, '11/12/2020 10:25 am', 'hjdgce', 222.00, NULL, 'Full Payment on Completion', 1, 13, 34.00, 'jhgjk', 'nbjh', 'mb', 44, '1', 'Pending', '2020-12-11 15:27:00', '2020-12-11 15:27:01', 1, '/Petro/Quotations/39'),
(40, 1, 38, 1, '11/12/2020 10:25 am', 'hjdgce', 222.00, NULL, 'Full Payment on Completion', 1, 13, 34.00, 'jhgjk', 'nbjh', 'mb', 44, '1', 'Won', '2020-12-11 15:27:03', '2020-12-11 15:34:23', 1, '/Petro/Quotations/40'),
(41, 5, 39, 1, '11/12/2020 10:35 am', 'ewrerwe', 1234.00, 'Subject to confirmation of order', '50% Deposit required, Remaining payment on completion', 4, 13, 3456.00, 'int', 'Block 1 Details', 'Block 2 Details', 12, '1', 'Won', '2020-12-11 15:36:24', '2020-12-11 15:37:11', 1, '/Petro/Quotations/41'),
(58, 332, NULL, 4, '01/02/2021 8:49 am', 'Oil Depot Upgrade', NULL, 'Subject to confirmation of order', '50% Deposit required, Remaining payment on completion', 4, 21, 48777.00, '10 days', 'I have prepared the following quotation for your consideration.', 'Exclusions: Electrical work done by others.', 10, '2', 'lost_archieve', '2021-02-01 13:54:06', '2021-03-11 05:04:06', 1, '/Petro/Quotations/58'),
(59, 7, NULL, 1, '11/03/2021 10:10 am', 'ljsklfgsdf', 897.00, 'Subject to confirmation of order', '40% Deposit required, Remaining payment on completion', 3, 13, 1407.00, 'kljsd', 'lskdkjjflsdk', 'skljdfsdfsd', 989, '1', 'lost_archieve', '2021-03-11 05:11:24', '2021-03-11 05:12:43', 1, '/Petro/Quotations/59'),
(60, 7, NULL, 1, '11/03/2021 10:11 am', 'lkjljsdfkjsd', 76.00, 'Subject to confirmation of order', '40% Deposit required, Remaining payment on completion', 3, 21, 89866.00, 'lkskfjlkfjslfjsd', 'klskdjlkfsdlj', 'kljsdflsd', 98, '1', 'Pending', '2021-03-11 05:12:21', '2021-03-11 05:12:24', 1, '/Petro/Quotations/60');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_documents`
--

CREATE TABLE `quotation_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `item` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sale_price` double(8,2) NOT NULL,
  `cost_price` double(8,2) DEFAULT NULL,
  `margin` int(11) DEFAULT NULL COMMENT 'In percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `extra_to_job` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_items`
--

INSERT INTO `quotation_items` (`id`, `quotation_id`, `item`, `qty`, `sale_price`, `cost_price`, `margin`, `created_at`, `updated_at`, `extra_to_job`) VALUES
(1, 1, 'TEST LINE', 1, 1.00, 1.00, 0, '2020-11-09 15:27:09', '2020-11-09 15:27:09', 0),
(31, 10, 'test line item 1 2nd time around', 2, 40.00, 20.00, 100, '2020-11-16 17:54:22', '2020-11-16 17:54:22', 0),
(32, 11, 'Test item 1', 1, 150.00, 100.00, 50, '2020-11-16 17:57:22', '2020-11-16 17:57:22', 0),
(48, 12, 'test 1', 2, 300.00, 20.00, 1400, '2020-11-18 22:32:48', '2020-11-18 22:32:48', 0),
(49, 12, 'irtem 2', 1, 10.00, 10.00, 0, '2020-11-18 22:32:48', '2020-11-18 22:32:48', 0),
(51, 13, 'test item 1', 22, 200.00, 200.00, 0, '2020-11-18 22:39:16', '2020-11-18 22:39:16', 0),
(52, 13, 'test items 2', 2, 1000.00, 20.00, 4900, '2020-11-18 22:39:16', '2020-11-18 22:39:16', 0),
(107, 14, 'Line item 1 test', 1, 40.00, 20.00, 100, '2020-11-20 12:30:58', '2020-11-20 12:30:58', 0),
(108, 14, 'test line items 2', 2, 100.00, 10.00, 900, '2020-11-20 12:30:58', '2020-11-20 12:30:58', 0),
(138, 15, 'item 1', 2, 40.00, 20.00, 100, '2020-11-20 17:06:20', '2020-11-20 17:06:20', 0),
(139, 15, 'item 2', 2, 30.00, 10.00, 200, '2020-11-20 17:06:20', '2020-11-20 17:06:20', 0),
(140, 9, 'Test line  1', 1, 24.00, 12.00, 100, '2020-11-20 17:38:27', '2020-11-20 17:38:27', 0),
(156, 16, 'Supply No.1 BMP 511. SD Tatsuno fuel dispenser with the following options.\r\n•	Single Phase motors\r\n•	4.8 Metre hose\r\n•	Spring mast\r\n•	Temperature compensated\r\n•	Prepay valves\r\n•	MID Cert (weights and measures approved)\r\n•	ZVA nozzles\r\n•	Safe break swivels', 1, 4211.00, 4000.00, 5, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(157, 16, 'Supply of No.3 high speed bulk flow meters with the following pulsar output.', 3, 3353.00, 3000.00, 12, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(158, 16, 'Supply of Gantry System for accurate bulk metering of fuel into tanks.', 1, 5500.00, 5000.00, 10, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(159, 16, 'Supply 3 x 3\" ball Solenoid valves with electrical ex-rated actuators.', 3, 4050.00, 4000.00, 1, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(160, 16, 'Office & Truck Wash:\r\n•	Dismantle and remove existing gates currently blocking new location for office. (Store these gates in Frananes Oil depot) \r\n•	Dismantle the wooden shed, clean area, and dispose any rubbish into skip.\r\n•	Disconnect the power wash and move to a new location (advised by site)\r\n•	The new office will be situated 1mtr out from the wall and 1mtr out from the kerb on the side boundary, it will be 2 meters away from the SFGO tank.\r\n•	Connect a new water supply to the office, connect to the water tap approx. 2 meters away from the location of the office.\r\n•	Fit a new 4” sewage line from the office to the existing sewage outlet onsite (behind the existing building and toilets onsite)  \r\n•	This duct will be brought around the site boundary (behind the vertical tank) to the new office. NOTE: A laser will be required to ensure the levels are correct.\r\n•	Demolish and remove the existing truck wash area, a new concrete pad (30N) will be put in its place. (Mini Digger required 2 x days) \r\n•	This area is 11mtr x 4mtr 6” concrete depth.\r\n•	Dispose of rubble into skip.\r\n7 Days Labour – 1 Engineer. 2 Days Labour - 2nd Engineer.', 0, 8222.00, 8000.00, 3, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(161, 16, 'Pipework & ACO Channel:\r\n•	The existing ACO channel at the entrance and exit of the site will be removed and replaced. Break out the ground on either side of the channel and remove the existing channel. (Digger Required)\r\n•	Fit the new ACO drain, lay concrete on either side of the new drain and allow to dry. Once dry fit the grates.\r\n•	This work will have to be carried out in two stages to allow vehicles to enter and exit the site. (Traffic Management)\r\n•	Install lever valve and anti-siphon valve at SFGO tank and pipe overground around the site boundary until the boundary meets the ACO channel, the pipe will be fitted underground from here to the pump.\r\n•	Lay a 4” duct from the pumps to the new office for the new coms cable for the pumps. \r\n•	Remove the existing elbow from the kero pipe, bring to a safe zone onsite to weld the new pipe fitting, this elbow will be fitted back to the pipework at location behind offloading pumps. Install lever valve and anti-siphon valve at kero pipe tank and pipe overground along the site boundary to the pump.\r\n9 Days Labour – 1 Engineer. 3 Days Labour - 2nd Engineer.', 0, 12336.00, 12000.00, 3, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(162, 16, 'Pump Island & Fuel Pumps:\r\n•	Disconnect and removed the existing fuel dispenser and demolish the existing pump island.\r\n•	Construct a new pump island with 4 steel bollards.\r\n•	Fabricate 2 pumps frames, one for each pump to keep each fuel pump structurally secure on the island.\r\n•	Install single phase motors to existing East Cork Oil 4 hose pump (Mallow) Transport and install one 4 hose Tatsuno fuel pump to supply diesel and SFGO.\r\n•	Supply and install one single hose Tatsuno fuel pump to supply kero. \r\n•	Commission both fuel dispensers.                                •	Supply and fit Interface card / Pump Card and re-configure fuel system for new pumps.\r\nLabour 4 days 1 Engineer. 3 Days 2nd Engineer.', 0, 5216.00, 5000.00, 4, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(163, 16, 'Meters & Gantry System:\r\n•	Fabricate pipework at gantry and install 3 x 3” fuel meters. \r\nInstall 3” automatic pre-set valves on the pipework after the meters.\r\nSupport all pipework. \r\nFabricate stand for gantry system. Install gantry system in correct zone suitable for use. Connect gantry system.\r\nInstall cable tray between meter, valves, and gantry system. Install all cables between equipment.\r\nConnect gantry meters and pre-set valves to gantry system. \r\nCommission gantry system.\r\nLabour 5 days Mechanical - 2 Engineers.\r\nLabour 2 days Electrical - 1 Engineer.', 0, 5780.00, 5000.00, 16, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(164, 16, 'Fabricate and supply 29 in total – 25 3\" bollards 1 meter above finished ground level will be located, across gantry pumps, across off loading pumps and down in front of the new kero line at site boundary. 4 3\" bollards around new pump island. All bollards to have reflective strip. (€125 per bollard)', 0, 3625.00, 3000.00, 21, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(165, 16, 'Supply Interface Card / Pump Card.', 1, 450.00, 400.00, 13, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(166, 16, 'Concrete right hand boundary to entrance:\r\nRemove and clear overgrown area from the right-hand entrance of the site to the existing kerb. (Mini digger required). \r\nDispose of rubble. Preparing area for concrete.\r\nInstall layer of pea gravel over exposed pipework running along the boundary of the site.\r\nLay concrete over pea gravel and down along the site boundary to the entrance of the site.\r\n\r\nExtend concrete slab for tank storage:\r\nRemove the existing kerbing and grass to the location of the interceptor.\r\nPrepare ground for concrete. \r\nLay concrete over prepared ground to the interceptor.\r\nExtend the ACO channel from the existing kerb position, to the new kerb location. This will drain to a new gully location near the interceptor.\r\nFit new kerbing to match the existing onsite.\r\nLabour 3 Days – 1 Engineer.', 0, 4660.50, 4000.00, 17, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(167, 16, 'Paint single hose fuel dispenser', 1, 460.00, 400.00, 15, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(168, 16, 'Petro Systems Preliminaries', 0, 2897.00, 2000.00, 45, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(169, 16, 'Pump Stickers', 5, 150.00, 100.00, 50, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(170, 16, 'Pump Frame', NULL, 150.00, 100.00, 50, '2020-11-24 20:01:32', '2020-11-24 20:01:32', 0),
(173, 17, 'Lay new concrete pad for tanks.', 1, 600.00, 500.00, 20, '2020-11-24 21:25:18', '2020-11-24 21:25:18', 0),
(175, 2, 'test', NULL, 200.00, 10.00, 1900, '2020-11-24 21:25:57', '2020-11-24 21:25:57', 0),
(178, 19, 'test items 1', NULL, 200.00, 1.00, 19900, '2020-11-24 21:30:09', '2020-11-24 21:30:09', 0),
(179, 3, 'Supply\r\n1 no 25,000ltr Double skin tank\r\nComp 1.  10,000 litres S.F.G.O\r\nComp 2   10,000 litres  Kero\r\nComp 3   5,000 litres  AD Blue\r\nDimensions:   2.50 M Diam x 6.2 M Long\r\nPrice = €9700 + vat                                                         Tank manufactured in accordance to BS EN12285-1\r\nMaterial: Mild steel plate conforms to EN10025 S275JR\r\nThickness:  Inner Tank Shell 6mm & Dished Ends 6mm\r\nOuter Skin: Shell 4mm & Dishes Ends 6mm\r\n\r\nTank c/w\r\nLifting lugs for on-site installation\r\n600mm Diameter man-lids 3 suction with double tapered sockets\r\n1200mm x 1200mm access chamber to suit your fibrelite system\r\nNylon Ratchet locating straps\r\nExternal Finish: Tank Blast Cleaned and finished with 800microns of Epoxy Coating (30yr warranty)\r\nPrice includes delivery site but not off-loading', 1, 9700.00, 9000.00, 8, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(180, 3, 'Supply 1 no 40,000ltr Double skin tank (Diesel)                  Price = €12,000 + VAT                                                                   Dimensions: 2.5 M Dia x 9.10M Long', 1, 12.00, 11000.00, -100, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(181, 3, 'Supply                                                                          1 no 30,000ltr Double skin tank (Unleaded)                            Price = €10,500 + VAT                                          Dimensions: 2.5 M Dia x 6.9 M Long                                    \r\n\r\nweights\r\n40 single comp @ approx 8,000 T\r\n30 single comp @ approx 7,000 T                                    25 triple comp @ approx 7,000 T', 1, 10500.00, 10000.00, 5, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(182, 3, 'Supply 1 No. BMP 4036 to dispense diesel with fast flow option, Petrol and kerosene.\r\n•	Temperature compensated\r\n•	40 lpm flow rate on forecourt pumps\r\n•	Stainless steel roof\r\n•	zva nozzles \r\n•	Stainless steel hose Colum\r\n•	Prepay valves\r\n•	Fast flow option\r\n•	MID Cert (weights and measures approved)\r\n•	Safe break swivels\r\n•	Decorative fins\r\n•	Stage 2 vapour recovery (petrol)', 1, 11766.00, 11000.00, 7, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(183, 3, 'Supply 1 No. BMP 4024 to dispense diesel with fast flow option S.F.G.O  \r\n•	Temperature compensated\r\n•	40 lpm flow rate on forecourt pumps\r\n•	Stainless steel roof\r\n•	zva nozzles \r\n•	Stainless steel hose Colum\r\n•	Fast flow\r\n•	Prepay valves\r\n•	MID Cert (weights and measures approved)\r\n•	Safe break swivels\r\n•	Decorative fins', 1, 7750.00, 7000.00, 11, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(184, 3, 'Supply 1 No. BMP 4022 Single sided \r\n•	Temperature compensated\r\n•	40 lpm flow rate on forecourt pumps\r\n•	Stainless steel roof\r\n•	zva nozzles \r\n•	Stainless steel hose Colum\r\n•	Fast flow\r\n•	Prepay valves\r\n•	MID Cert (weights and measures approved)\r\n•	Safe break swivels\r\n•	Decorative fins', 1, 6027.00, 6000.00, 0, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(185, 3, 'Supply Ad-Blue 1 No. BMP 522 Double sided two hose stand-alone Ad-Blue dispenser ( one nozzle for cars and one nozzle for trucks)\r\n•	Temperature compensated\r\n•	40 lpm flow rate on forecourt pumps\r\n•	Stainless steel roof\r\n•	zva nozzles \r\n•	Stainless steel hose Colum\r\n•	Fast flow\r\n•	Prepay valves\r\n•	MID Cert (weights and measures approved)\r\n•	Safe break swivels\r\n•	Decorative fins', 1, 6547.00, 6000.00, 9, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(186, 3, 'Outside Payment Terminals:\r\nSupply 5 NO. Intrgrated pay@pump out door payment terminal with the following included,\r\nTouch Screen Panel PC\r\nEMV Credit / Debit Card Reader \r\nFuel Card Mag Stripe Reader \r\nTerminal Printer\r\nDoms connection\r\nUPS \r\nInstallation', 5, 4600.00, 4000.00, 15, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(187, 3, 'Remove all lids from tanks to facilitate tank cleaning and degassing.\r\nCertify tank gas free.\r\nDecommission site - Dismantle gantry stairs from tank tops. Dismantle all associated pipework.', NULL, 8794.00, 8000.00, 10, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(188, 3, 'Supply one Franklin tank gauge console with the following included\r\n•	Franklin Console with Display and TCP/IP Option\r\n•	Alarm Functions for Probe and Sensors (Includes Internal Buzzer, Flashing Display Warning and Two Outputs for External Alarm Activation)\r\n•	3rd Party POS Interface\r\n•	Alarm E-Mail, Text and Fax Notification Function\r\n•	5x mag one probes (stainless probe for adblue\r\n•	Risers kits and caps\r\n•12 sump and pump sensors                                              •Class 1 leak detection', 1, 11968.00, 11000.00, 9, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(189, 3, 'Pipework and mechanical installation:\r\n•	Supply and install 5 No. Fibrelite S14- 390 1.4m Diameter round  height adjustable tank access chamber systems comprising of round bolted base chamber with fixed corbel, adjustable skirt and internal lids and 900mm flat sealed black covers and composite frames.\r\n•	Fit out the 5 No. tanks with internal pipes for suctions, offset fills, vents and tank gauge points, tank numbers, supply and install grade and capacity identification tags.\r\n•	Supply and fit to each chamber system Fibrelite 63/75mm Dual Bore pipe entry kits for suction lines, vents and VR 2, Fibrelite 110mm/125 dual Bore pipe entry kits for remote fills and Fibrelite PCE/2 cable entry kits, assist in the installation of the cable ducting at the tank area only.\r\n•	Supply and install 1 No. Fibrelite EL/TAT–BMP4036 and 1 No EL/TAT–BMP4024 and 1 No. Fibrelite EL/TAT - BMP4022 Dispenser sumps with dispenser rails, brackets, u-bolts and fixing components and fit to the above sumps Fibrelite 63/75mm Dual Bore pipe entry kits for suction lines, Fibrelite 63/75mm dual Bore pipe entry kits for vapour recovery and Fibrelite PCE/2 cable entry kits, assist in the installation of the cable ducting at the sumps only.\r\n\r\nInstall 7 No. 63/75mm Double Walled KPS conductive suction lines and 1 No Adblue pressure line to the positions shown on the drawing. These will be laid in 6 metre lengths and welded in place from the tank to the under pump sump locations. Supply and fit line tags and number the corresponding lines at the pump and tank ends. \r\nInstall  1No. spare 63/75mm Double Walled KPS conductive suction lines from the diesel storage tank to pump island.\r\n\r\n•	Install 5 No. 110/125mm KPS conductive double walled remote fill lines to the agreed positions and terminate over ground with OPW fittings to Oil company specification, caps and grade identification tags \r\n\r\n•	Install 5 No. 63/75mm KPS double walled vent lines to the agreed position, supply and erect galvanised steel riser pipes 4.25 meters above finished ground level and terminate the diesel, kerosene and S.F.G.O vents with standard flame arresting vent caps. \r\n\r\n•	Install a 63mm KPS single walled Stage Two Vapour Recovery line from the 2 No. forecourt pump locations to the unleaded tanks.\r\n\r\n•	Supply and fit 1 Nr Steel risers with standard cap to the interceptor vents, underground section to be laid by main civil contractor.\r\n\r\n•	Supply and fit to the vents the necessary No Smoking Sign, identification tags and numbered the correspond lines at the riser and tank ends.\r\n\r\n•	Retest all storage tanks and associated pipe work upon final completion in the presence of the petroleum officer.\r\n\r\n•	Install a Stage One Vapour Recovery manifold to the vent risers on all petrol tanks on sites at 4.25M height above ground level, extend a 75mm Single walled line to fill point level and terminate above ground in steel adjacent the fill points. Terminate with flame arrester and dry break coupling to Oil company specification.\r\n\r\n•	Install 1 No. 6 hose and 1 No. 4 hose and 1 No. 2 hose  pumps and connect to the pipe work and test and commission when power is connected and product is delivered.\r\nInstall 1 No. double nozzle adblue dispenser on the truck dispensing pump island.\r\n•	Install 5 No. Integrated payment terminals on each of the pumps.\r\n•	Install a 5 probe tank gauge system and connect it to the east cork oil network. \r\n•	Certify stage 2 vapour recovery\r\n\r\n•	Carry out a physical dip against the contents gauge on completion of delivery. \r\n\r\n•	Supply and deliver to the manager on handover a Fibrelite FL7A lifting handle for removing and replacing flat seal covers.\r\n\r\n•	Carry out supervision of all of the above as necessary and attend site meetings as requested.\r\n\r\nInstall leak detection system (with text notifications) on tanks and connect it to the tank gauge console.\r\nInstall interceptor alarm with text no', 1, 49015.00, 40000.00, 23, '2020-11-24 21:40:02', '2020-11-24 21:40:02', 0),
(190, 3, 'Supply of environmental absorbant boom to protect the River Glenaboy', 1, 135.00, 100.00, 35, '2020-11-24 21:40:03', '2020-11-24 21:40:03', 0),
(191, 3, 'Site Civils - Glenstones Construction', 1, 257527.00, 257527.00, 0, '2020-11-24 21:40:03', '2020-11-24 21:40:03', 0),
(194, 20, 'test item  1', NULL, 300.00, 200.00, 50, '2020-11-25 21:14:09', '2020-11-25 21:14:09', 0),
(195, 18, 'item 1', NULL, 200.00, 100.00, 100, '2020-11-25 21:17:07', '2020-11-25 21:17:07', 0),
(203, 24, 'item 1', 1, 200.00, 100.00, 100, '2020-11-25 21:51:21', '2020-11-25 21:51:21', 0),
(207, 25, 'test line items 1', 12, 2000.00, 1000.00, 100, '2020-11-25 21:59:13', '2020-11-25 21:59:13', 0),
(208, 25, 'iyem 2', NULL, 300.00, 100.00, 200, '2020-11-25 21:59:13', '2020-11-25 21:59:13', 0),
(209, 25, 'item 3', 123, 50.00, 100.00, -50, '2020-11-25 21:59:13', '2020-11-25 21:59:13', 0),
(213, 26, 'test 1', NULL, 23.00, 12.00, 92, '2020-11-28 18:30:30', '2020-11-28 18:30:30', 0),
(214, 26, 'test 2', NULL, 200.00, 20.00, 900, '2020-11-28 18:30:30', '2020-11-28 18:30:30', 0),
(215, 27, 'line 1', 12, 200.00, 12.00, 1567, '2020-11-29 13:59:36', '2020-11-29 13:59:36', 0),
(216, 27, 'item 2', 12, 100.00, 10.00, 900, '2020-11-29 13:59:36', '2020-11-29 13:59:36', 0),
(217, 21, 'test item 1', 12, 200.00, 100.00, 100, '2020-12-01 14:19:59', '2020-12-01 14:19:59', 0),
(218, 28, 'item 1', 5, 15.00, 5.00, 200, '2020-12-01 19:07:34', '2020-12-01 19:07:34', 1),
(219, 28, 'item 2', 5, 200.00, 20.00, 900, '2020-12-01 19:07:34', '2020-12-01 19:07:34', 0),
(223, 29, 'test line item 1', 1, 24.00, 12.00, 100, '2020-12-03 12:37:52', '2020-12-03 12:37:52', 0),
(224, 29, 'item 2', 0, 1000.00, 12.00, 8233, '2020-12-03 12:37:52', '2020-12-03 12:37:52', 0),
(225, 4, 'item 1', NULL, 200.00, 100.00, 100, '2020-12-03 12:38:39', '2020-12-03 12:38:39', 0),
(226, 4, 'item 2', NULL, 300.00, 200.00, 50, '2020-12-03 12:38:39', '2020-12-03 12:38:39', 0),
(227, 4, 'item 3', 2, 200.00, 100.00, 100, '2020-12-03 12:38:39', '2020-12-03 12:38:39', 0),
(231, 30, 'items name', 10, 12.00, 10.00, 20, '2020-12-03 14:50:26', '2020-12-03 14:50:26', 0),
(232, 30, 'ifghjkl', 10, 12.00, NULL, 0, '2020-12-03 14:50:26', '2020-12-03 14:50:26', 0),
(233, 30, 'dfghjkl;', 56, 12.00, NULL, 0, '2020-12-03 14:50:26', '2020-12-03 14:50:26', 0),
(249, 31, 'item 1', 1, 1000.00, 100.00, 900, '2020-12-03 21:26:04', '2020-12-03 21:26:04', 1),
(250, 31, 'item 2', 10, 100.00, 10.00, 900, '2020-12-03 21:26:04', '2020-12-03 21:26:04', 0),
(251, 31, 'item 3', 1, 1000.00, 500.00, 100, '2020-12-03 21:26:04', '2020-12-03 21:26:04', 0),
(253, 33, 'item 1', 5, 600.00, 300.00, 100, '2020-12-03 21:34:43', '2020-12-03 21:34:43', 0),
(254, 32, 'item 1', 5, 600.00, 300.00, 100, '2020-12-03 21:35:06', '2020-12-03 21:35:06', 0),
(255, 34, 'lin 1', 1, 20.00, 10.00, 100, '2020-12-04 16:51:07', '2020-12-04 16:51:07', 0),
(256, 34, 'line 2', 10, 40.00, 20.00, 100, '2020-12-04 16:51:07', '2020-12-04 16:51:07', 0),
(267, 36, 'test item 1 extra', 600, 900.00, 800.00, 13, '2020-12-07 20:58:47', '2020-12-07 20:58:47', 1),
(268, 36, 'test item 2 not extra', 500, 1500.00, 1000.00, 50, '2020-12-07 20:58:47', '2020-12-07 20:58:47', 0),
(269, 37, 'test item 1', 6, 6.00, 6.00, 0, '2020-12-09 12:59:51', '2020-12-09 12:59:51', 1),
(270, 37, 'test item 2', 7, 700.00, 600.00, 17, '2020-12-09 12:59:51', '2020-12-09 12:59:51', 0),
(271, 38, 'test 1', 12, 100.00, 10.00, 900, '2020-12-11 12:56:31', '2020-12-11 12:56:31', 1),
(272, 38, 'item 2', 100, 1000.00, 25.00, 3900, '2020-12-11 12:56:31', '2020-12-11 12:56:31', 0),
(273, 39, 'frggrtgrt', 2, 34.00, 2.00, 1600, '2020-12-11 15:27:00', '2020-12-11 15:27:00', 0),
(275, 40, 'frggrtgrt', 2, 34.00, 2.00, 1600, '2020-12-11 15:34:23', '2020-12-11 15:34:23', 0),
(277, 41, 'test', 2, 3456.00, 34.00, 10065, '2020-12-11 15:36:39', '2020-12-11 15:36:39', 0),
(288, 46, 'test', 2, 45.00, 23.00, 96, '2020-12-14 21:05:23', '2020-12-14 21:05:23', 0),
(289, 47, 'werwerew', 45, 200.00, 45.00, 344, '2020-12-15 16:59:00', '2020-12-15 16:59:00', 1),
(290, 47, 'wer wreew rwer ewr', 222, 100.00, 22.00, 355, '2020-12-15 16:59:00', '2020-12-15 16:59:00', 1),
(291, 47, 'werew', 2, 50.00, 234.00, -79, '2020-12-15 16:59:00', '2020-12-15 16:59:00', 0),
(292, 48, 'test 1', 2, 50.00, 20.00, 150, '2020-12-15 21:49:15', '2020-12-15 21:49:15', 0),
(293, 35, 'item 1', 10, 1000.00, 100.00, 900, '2020-12-15 22:34:32', '2020-12-15 22:34:32', 1),
(294, 35, 'item 2', 0, 1000.00, 600.00, 67, '2020-12-15 22:34:32', '2020-12-15 22:34:32', 0),
(295, 49, 'dsfdsf', 2, 33.00, 33.00, 0, '2020-12-16 10:54:51', '2020-12-16 10:54:51', 1),
(296, 49, 'wfdsfds', 3, 33.00, 33.00, 0, '2020-12-16 10:54:51', '2020-12-16 10:54:51', 0),
(297, 49, 'werewrw', 234, 234.00, 234.00, 0, '2020-12-16 10:54:51', '2020-12-16 10:54:51', 1),
(298, 50, 'Materials:\r\n1200lb Winch\r\n1800lb Winch\r\n3.5 meters of wire rope, spring bolts, treaded bar, materials used to complete work.', 1, 4500.00, 4000.00, 13, '2020-12-16 20:20:17', '2020-12-16 20:20:17', 0),
(299, 50, 'Demarcate the work area.\r\nReplace the winch on the platform, replace 3,5 meters of wire rope on the platform, replace spring bolts and treaded bar on the platform and weld in place. All welding work will first require a Hot Works Permit completed and confirmed by Petro Systems and East Cork Oil prior to work starting.\r\nReplace winch on the gantry handrail.\r\nTest both the platform and handrail. 	\r\nLabour – \r\n•	Day 1 – Call out to inspect the gantry – 2 hours.\r\n•	Day 2 – Repair of gantry - Two engineers 1 day.', NULL, 6500.00, 6000.00, 8, '2020-12-16 20:20:17', '2020-12-16 20:20:17', 0),
(300, 50, 'Handrail', 3, 300.00, 250.00, 20, '2020-12-16 20:20:17', '2020-12-16 20:20:17', 1),
(301, 56, 'sdfdsfsdfsdf', 23, 529.00, 23.00, NULL, '2020-12-23 14:53:58', '2020-12-23 14:53:58', 0),
(302, 56, 'sdf', 32, 64.00, 2.00, NULL, '2020-12-23 14:53:58', '2020-12-23 14:53:58', 1),
(303, 56, 'sdfdsf', 3, 9.00, 3.00, NULL, '2020-12-23 14:53:58', '2020-12-23 14:53:58', 0),
(314, 42, 'Supply No.1 single sided twin fuel dispenser with the following options. BMP 4022 OER\r\n\r\n•	High Speed button.\r\n•	Three Phase motors\r\n•	4.8 Metre hose\r\n•	Temperature compensated\r\n•	Prepay valves\r\n•	MID Cert (weights and measures approved)\r\n•	ZVA nozzles\r\n•	Safe break swivels', 1, 6000.00, 6000.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 1),
(315, 42, 'Supply No.1 single sided, single hose fuel dispenser with the following options. BMP 4011 OER\r\n\r\n•	High Speed button.\r\n•	Three Phase motors\r\n•	4.8 Metre hose\r\n•	Temperature compensated\r\n•	Prepay valves\r\n•	MID Cert (weights and measures approved)\r\n•	ZVA nozzles\r\n•	Safe break swivels', 1, 4000.00, 4000.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(316, 42, 'Supply of No.3 high speed bulk flow meters with the following pulsar output. (Diesel, SFGO and Kerosene)', 3, 9000.00, 3000.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(317, 42, 'Supply of Gantry System for accurate bulk metering of fuel into tanks.', 1, 5000.00, 5000.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(318, 42, 'Supply 3 x 3\" ball Solenoid valves with electrical ex-rated actuators.', 3, 3900.00, 1300.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(319, 42, 'Pumps:\r\nDisconnect, decommission, and remove the existing fuel dispenser and system on the pump island.\r\nConstruct 2 new pump stands and install to pump island.\r\nInstall one 2 hose fuel dispenser and one single hose fuel dispenser. Commission both dispensers.\r\nSupply and fit Interface card/ pump card and re-configure fuel system (pump controller) for new pumps.\r\nLabour 4 Days', NULL, 3000.00, 3000.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(320, 42, 'Meters & Gantry System:\r\nFabricate pipework at gantry and install 3 x 3” fuel meters.\r\nInstall 3” automatic pre-set valves on the pipework after the meters.\r\nSupport all pipework. \r\nFabricate stand for gantry system. Install gantry system in correct zone suitable for use. Connect gantry system.\r\nInstall cable tray between meter, valves, and gantry system. Install all cables between equipment.\r\nConnect gantry meters and pre-set valves to gantry system. \r\nCommission gantry system.\r\n5 Days Labour – 2 Engineers (Lone working)', NULL, 4000.00, 4000.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(321, 42, 'Supply Interface Card / Pump Card.', 1, 400.00, 400.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(322, 42, 'Petro Systems preliminaries.', NULL, 600.00, 600.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(323, 42, 'Enva Onsite cleaning tanks - 1 day', 1, 1000.00, 1000.00, NULL, '2020-12-23 15:08:25', '2020-12-23 15:08:25', 0),
(324, 57, 'test item 1', 12, 120.00, 10.00, NULL, '2021-01-05 13:13:33', '2021-01-05 13:13:33', 0),
(325, 57, 'item 2', NULL, 100.00, 100.00, NULL, '2021-01-05 13:13:33', '2021-01-05 13:13:33', 0),
(326, 57, 'item 3', 1, 100.00, 100.00, NULL, '2021-01-05 13:13:33', '2021-01-05 13:13:33', 0),
(327, 57, 'test item 4', 12, 144.00, 12.00, NULL, '2021-01-05 13:13:33', '2021-01-05 13:13:33', 0),
(334, 58, 'Supply 4 No. BMP 4024.OED to dispense diesel/Unleaded.\r\n•	Temperature compensated\r\n•	40 lpm flow rate on forecourt pumps\r\n•	Stainless steel roof\r\n•	ZVA nozzles \r\n•	Stainless steel hose Colum\r\n•	Fast flow\r\n•	Prepay valves\r\n•	MID Cert (weights and measures approved)\r\n•	Safe break swivels\r\n•	Vapour Recovery stage 2 for petrol.', 4, 35600.00, 8900.00, NULL, '2021-03-11 05:02:09', '2021-03-11 05:02:09', 0),
(335, 58, 'Pipework, mechanical and civils installation:\r\nVapour Recovery:\r\nCut concrete (or tar TBC by customer) along the edge of the existing forecourt, break the ground and excavate a trench along the edge of the forecourt and connect to the fuel dispensers for the new vapour recovery pipework.\r\nNote: All trenches to be outside the existing bollards.\r\nLay double skinned pipework and fittings. \r\nConnect the vapour recovery to each fuel dispenser.\r\n\r\nPump Islands & Fuel Dispensers:\r\nDecommission and remove the existing fuel dispensers from site.\r\nDemolish the existing pump islands and remove rubble from site.\r\nConstruct new pump islands to match the size of the new fuel dispensers.\r\nInstall 4 new Tatsuno 4 hose fuel dispensers and connect to the pipework and vapour recovery line.\r\nTest and commission fuel pumps.\r\n\r\nNote: This project will take place in two stages in order to keep the forecourt in operation. \r\nStage 1 – Vapour Recovery and fuel dispenser next to the shop.\r\nStage 2 – Vapour Recovery and fuel dispenser next to the road. \r\nThe majority of the work will be completed in the evening and night to avoid blocking up a busy site.\r\nEach work area will first be demarcated using fencing and safety signs warning the public of unauthorized entry.', NULL, 12495.00, 12495.00, NULL, '2021-03-11 05:02:09', '2021-03-11 05:02:09', 0),
(336, 58, 'Stage 2 Vapour Recovery Test: \r\nKeohane Consulting & Petro Systems – Carry out stage two vapour recovery test and certify.', NULL, 682.00, 682.00, NULL, '2021-03-11 05:02:09', '2021-03-11 05:02:09', 1),
(339, 60, 'lkksjfl lsj flsdjflksjflksd jflksdjflksjflksfj sldkkkjfslkfjsldk', 9, 882.00, 98.00, NULL, '2021-03-11 05:12:21', '2021-03-11 05:12:21', 1),
(340, 60, 'lklsjs jlfs jlfs jdlfsdj flksjflksjflkks jflsfjslkd', 98, 88984.00, 908.00, NULL, '2021-03-11 05:12:21', '2021-03-11 05:12:21', 1),
(341, 59, 'sdldkjfjlskdjflksd kl', 78, 624.00, 8.00, NULL, '2021-03-11 05:12:34', '2021-03-11 05:12:34', 1),
(342, 59, 'kljsllds lksjdlkfs jdflkjdslkdsj', 87, 783.00, 9.00, NULL, '2021-03-11 05:12:34', '2021-03-11 05:12:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_payments`
--

CREATE TABLE `quotation_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_received` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_payments`
--

INSERT INTO `quotation_payments` (`id`, `quotation_id`, `date`, `invoice_no`, `details`, `amount_received`, `created_at`, `updated_at`) VALUES
(1, 60, '11/19/2021 10:13 am', 9344, 'lksdflkjsflksjf lsjflsjflsd j edit', 7000.00, '2021-03-11 05:13:47', '2021-03-11 05:48:19'),
(6, 60, '11/17/2021 10:45 am', 98347, 'kljsdfjl', 600.00, '2021-03-11 05:45:55', '2021-03-11 05:48:11'),
(7, 60, '03/16/2021 3:48 pm', 90890, 'klsdf', 1000.00, '2021-03-11 05:48:33', '2021-03-11 05:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_types`
--

CREATE TABLE `quotation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_1st_nozzle` double(8,2) NOT NULL,
  `cost_other_nozzles` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_types`
--

INSERT INTO `quotation_types` (`id`, `type`, `cost_1st_nozzle`, `cost_other_nozzles`, `created_at`, `updated_at`) VALUES
(1, 'Calibration Quotation', 100.00, 25.00, '2020-11-06 09:54:54', '2020-11-06 09:54:54'),
(2, 'Verification Quotation', 100.00, 25.00, '2020-11-06 09:55:05', '2020-11-06 09:55:05'),
(3, 'Calibration & Verification Quotation', 100.00, 25.00, '2020-11-06 09:55:29', '2020-11-06 09:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `service_contracts`
--

CREATE TABLE `service_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` enum('Direct Debit','Invoice','Standing Order') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_frequency` enum('Bi-annually','Monthly','Quarterly','Yearly') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `signatory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signatories`
--

INSERT INTO `signatories` (`id`, `signatory`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Donal O\'Leary', 'Managing Director', '2020-11-06 10:07:57', '2020-11-06 10:07:57'),
(2, 'Nora O\'Leary', 'Office Manager', '2020-11-06 10:08:24', '2020-11-06 10:08:24'),
(3, 'Elizabeth Harrington', 'Office Administrator', '2020-11-06 10:08:37', '2020-11-06 10:08:37'),
(4, 'Aishling Burke', 'Office Administrator', '2020-11-06 10:08:51', '2020-11-06 10:08:51'),
(5, 'Cathy Noonan', 'Office Administrator', '2020-11-06 10:09:04', '2020-11-06 10:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Donal O\'Leary', 1, '2020-11-06 16:05:18', '2020-12-04 18:04:44'),
(2, 'Niall O\'Regan', 1, '2020-11-06 16:05:33', '0000-00-00 00:00:00'),
(3, 'Nora O\'Leary', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Elizabeth Harrington', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Aisling Burke', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Ber O\'Regan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Rizwan Khan', 1, '2020-11-06 16:05:57', '0000-00-00 00:00:00'),
(8, 'Margaret O\'Connell', 1, '2020-11-06 16:05:49', '0000-00-00 00:00:00'),
(9, 'Cathy Noonan', 1, '2020-11-06 16:05:42', '2021-03-11 02:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `stock_items`
--

CREATE TABLE `stock_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_of_measure` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_cost` double(8,2) DEFAULT NULL,
  `margin` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qty_used` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_items`
--

INSERT INTO `stock_items` (`id`, `stock_code`, `name`, `unit_of_measure`, `unit_cost`, `margin`, `created_at`, `updated_at`, `qty_used`) VALUES
(1, 'SE1', 'SEALS', '1000', 0.44, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'CO1', 'CONTROL MARKS', '1', 1.00, 20.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 'SEN2', '18 MM PROXIMITY SENSOR', '5', 46.00, 30.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 'SEN3', '30 MM PROXIMITY SENSOR', '5', 48.00, 30.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 'WAT1', 'WATER CAPTOR FILTER 30 MICRON', '20', 18.00, 100.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, 'WAT2', 'GRAVITY FLOW FILTER', '5', 4.95, 100.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, 'GAN1', 'GANTRY DRIVE GEAR BOX', '1', 178.00, 30.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'SPO1', 'SPOOLING WIRE ROLL', '1', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 'VER1', 'VERIFICATION STICKERS V01 KEVIN', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'VER2', 'VERIFICATION STICKERS V02 SEAMUS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 'VER3', 'VERIFICATION STICKERS V03 NIALL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, 'VER4', 'VERIFICATION STICKERS V04 OLIVER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(13, 'VER5', 'VERIFICATION STICKERS V05 DANIEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(14, 'MICRELEC', 'MICRELEC ROLLS 89/76 1 PLY (BOX 20)', '1', 25.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(15, 'VF44', 'BONFIGLIOLI VF44A28P63B14B3 WORM TYPE GEAR BOX', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(16, 'VF49', 'BONFIGLIOLI VF49A36P71B14B3 WORM TYPE GEARBOX', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(17, 'BN63', 'BONFIGLIOLI BN63B4230/400-50IP55CLFB14 0.18KW 4 POLE MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(18, 'BN71', 'BONFIGLIOLI BN71B4230/400-50IP55CLFB14 0.37KW 4 POLE MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(19, 'VF44GASKET', 'BONFIGLIOLI VF44 COVER GASKET', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(20, 'VF49GASKET', 'BONFIGIOLI VF49 GEARBOX HOUSING GASKET', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(21, 'TG1', 'MANUAL TANK GAUGE', 'Pcs', 120.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(22, 'CUBE56/33', '00057500C CUBE 56/33', 'Pcs', 295.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(23, 'F0040722A', 'K24 PULSE METER', 'Pcs', 106.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, 'AI/FC20', 'MECAFER 24 LITRE COMPRESSOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, '21-16HTX19-BSPF', '5/8\" HOSE TAIL WITH 3/4\"BSPF', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(26, 'F00603060', 'A60 AUTO NOZZLE C/W SWIVEL', 'Pcs', 45.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, '21-16HTX25-BSPM', '5/8\" HOSE TAIL WITH 1\"BSPM THREAD GTRC HSF 11473 5/8X1M', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, '51-AV-5/8\"-FERR-F/C', '5/8\" ZINC PLATED FERRULES', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(29, '1022218', '93317 18w TLD 84 2FT POLY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(30, '1026108', '9W 2PIN 840 BIAX-S LAMP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, '1026112', '11W 2 PIN 840 BIAX-S LAMP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(32, '1022008', '8W TLD 33 12\r\n8W TLD 33 12\" COOLWHITE GE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(33, '1022006', '6W TLD 33 9\" COOLWHITE GE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(34, 'SELEMIX7536-5K', 'SELEMIX 7536-5KG FOR NON PPD USE BLACK', 'Pcs', 76.22, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(35, 'AI/ALG3H03', 'MK3 PCL TYRE INFLATOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(36, '15MM SPRINGS', '15MM SPRINGS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(37, '100MM BOLTS', '100MM BOLTS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(38, 'SWIVEL', '1\" SWIVEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(39, 'MICROLEC ROLLS', 'MICROLEC PRINTER ROLLS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(40, 'MICROLEC RIBBONS', 'MICROLEC PRINTER RIBBONS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(41, 'SPOUT', 'UNLEADED SPOUT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(42, 'MICROLEC BULB', 'MICROLEC BULB', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(43, '32MM SENSOR', 'GANTRY SENSORS 32MM', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(44, 'NOZZLE SWITCH', 'EUROLINE NOZZLE SWITCH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(45, 'AC1 BOARD', 'AC1 BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(46, 'AC2 BOARD', 'AC2 BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(47, 'QBB675', '6460 FAN BELT', 'Pcs', 6.60, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(48, 'QBB713', 'FANBELT', 'Pcs', 4.97, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(49, 'GANTRY METER SEALKIT', 'GANTRY METER SEAL KIT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(50, 'water nozzle', 'Water nozzle', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(51, 'microlec printer', 'Microlec Printer', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(52, 'microlec driverboard', 'Microlec printer driver board', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(53, 'SENSOR30', 'SI30P-C10PNM NO+NC', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(54, 'SENSOR18', 'SI18P-C5 PNP NO+NC', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(55, 'ZVA16', 'PETROL SLIMLINE AUTO NOZZLE C/W 1\"BSP SWIVEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(56, 'ZVA19', 'SLIMLINE DIESEL AUTO NOZZLE C/W 1\" FEMALE SWIVEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(57, 'METERING GEARS', 'METERING GEARS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(58, 'CODAX', 'BOX OF 20 ROLLS INC 4 RIBBONS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(59, 'LIPSEALS', 'LIPSEALS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(60, '4X1.5FLEX', '4 X1.5 SQ BRAIDED FLEX', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(61, 'CPU', 'WAYNE 9000 CPU', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(62, 'MICROLEC', 'MICROLEC PUMP CONTROLLER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(63, 'HOSE', 'UNLEADED EUROLINE GREEN HOSE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(64, 'RELAY', 'SIEMEN SIRIUS CONTRACTOR/RELAY 1.1KW 400V', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(65, 'CPU', 'MAIN CPU MB47', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(66, 'MICROLEC', 'MICROLEC BUTTON', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(67, 'HOSE', 'WAYNE 9000 UNLEADED HOSE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(68, 'BREAKAWAY', 'BREAKAWAY SWIVVEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(69, 'HOSE', 'HOSE 3/4\"', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(70, 'HOSE', 'HOSE 5/8\"', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(71, 'O RING', 'O RING', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(72, 'STICKERS', 'UNLEADED PUMP STICKERS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(73, 'STICKERS', 'DIESEL PUMP STICKERS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(74, 'STICKERS', 'MGO PUMP STICKERS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(75, 'FUELTEK', 'FUELTEK DATA TAGS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(76, 'OCIO', 'OCIO TANK GAUGE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(77, 'BATTERY', 'BATTERY PACK', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(78, 'METER SEALS', 'WAYNE DRESSER TYPE METER SEALS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(79, 'BOLTS', '3\" BOLTS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(80, 'ACO DRAINS', 'ACO DRAINS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(81, '655-9615', '655-9615 RECAL BULBS T1.3/4 GROOVE LAMP 48V. 25MA', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(82, 'MAGNET', 'MAGNET GILBARCO NOZZLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(83, 'MAGNET HOLDER', 'MAGNET HOLDER GILBARCO NOZZLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(84, 'PUSI', 'PUSI AUTOMATIC NOZZLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(85, 'MOTOR', 'WAYNE 9000 MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(86, 'BOLTS', '10MM ANCHOR BOLTS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(87, 'PANTHER56', 'F00730000 PANTHER 56 230V', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(88, 'PANTHER72', '000732000 PANTHER 72 230V', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(89, 'OKI', 'OKI MICROLINE 80', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(90, 'FRE1', 'REELS STAINLESS STEEL SEALING WIRE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(91, 'DSB431', 'DSB431 DOMMS CARD', 'Pcs', 132.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(92, 'DIE1', 'DIE1-2014', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(93, 'DIE2', 'DIE2-2014', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(94, 'DIE3', 'DIE3-2014', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(95, 'DIE4', 'DIE4-2014', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(96, 'DIE5', 'DIE5-2014', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(97, 'VER6', 'VERIFICATION STICKERS V06 SEAN', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(98, 'VER7', 'VERIFICATION STICKERS V07 JOHN', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(99, 'DIE6', 'DIE6-2014', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(100, 'DIE7', 'DIE7-2014', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(101, 'VER8', 'VERIFICATION STICKERS V08 CJ RELIHAN', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(102, 'DIE8', 'D', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(103, 'DIE8', 'DIE CJ RELIHAN', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(104, 'ABC', 'ALPHABETH', '1', 100.00, 25.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(105, 'VER9', 'VERIFICATION STICKERS VO9 JAMES', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(106, 'RECAL BOX', 'RECAL BOX', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(107, 'DISPLAY', 'EUROLINE  DISPLAY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(108, 'PROTACAL CONVERTOR', 'PROTACAL CONVERTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(109, 'BELT', 'A29 BELT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(110, 'NOZZLE FILTER', 'NOZZLE FILTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(111, 'BELT', 'A 28 BELT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(112, 'EUROLINE PULSER', 'EUROLINE PULSER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(113, 'FILTER', 'FILTER TATSUNO', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(114, 'NOZZLE BOOTH', 'EUROLINE NOZZLE BOOTH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(115, 'BELT', 'A 26 BELT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(116, 'FILTER', 'TOKHEM FILTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(117, 'FILTER', 'EUROLINE FILTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(118, 'BELT', 'A27 BELT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(119, 'TEX SCREW', 'TEX SCREW', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(120, 'BOND', 'BOND 3FT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(121, 'GASKET', 'GASKET', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(122, 'CFD70-30', 'WATER CAPTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(123, 'US HUB BOARD', 'SK700 US HUB BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(124, 'RAEL MOTOR', 'RAEL MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(125, 'master', 'fuel master touch', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(126, 'NOZZLE PULSER BOARD', 'NOZZLE PULSER BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(127, 'RELAY BOARD', '12V RELAY BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(128, 'FOBS', 'RFID FOBS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(129, 'NANO CONSOLE', 'OPW NANO CONSOLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(130, 'BELDEN CABLE', 'BELDEN CABLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(131, 'OUTDOOR CABLE', 'OUTDOOR CAT SE CABLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(132, 'OPW PROBS', 'OPW NANO TANK PROBES', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(133, 'OPW FLOOTKIT', 'OPW TANK PROBE FLOOTKIT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(134, 'EX GLANS', 'EX GLANDS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(135, 'PG GLANDS', 'PG GLANDS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(136, 'CELL PACK', 'CELL PACK', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(137, 'EUROLINE KEYPAD', 'EUROLINE KEYPAD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(138, 'OPT', 'OPT FUEL SYSTEM', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(139, 'OPT KEYS', 'OPT KEYS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(140, 'ALARM', 'EXTERNAL ALARM & BEACON', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(141, 'ALARM POWER', 'ALARM POWER SUPPLY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(142, 'ENCLOSURE', 'ENCLOSURE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(143, 'AIR VALVE', 'AIR VALVE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(144, 'PUMPTRONICS', 'PUMPTRONICS MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(145, 'ENCODER', 'EUROLINE ENCODER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(146, 'F&F', '1 1/2 FXF', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(147, 'SCOKETS', '1 1/2 SOCKETS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(148, 'P&M', '1 1/2 PXM', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(149, 'JUNCTION BOX', 'JUNCTION BOX', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(150, 'INTERCEPTOR OIL ALAR', 'ALARM KIT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(151, 'EUROLINE PUMP UNIT', 'PUMP UNIT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(152, 'PCB BOARD', 'PCB BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(153, 'NOZZLE', 'NOZZLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(154, 'ANTI-BUG', 'ANTI-BUG', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(155, 'Totaliser', 'Totaliser', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(156, 'BUTTON', 'BUTTON', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(157, 'AIR SEPARATOR', 'AIR SEPARATOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(158, 'BULB', 'BULB', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(159, 'SOCKS', 'SOCKS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(160, 'DRIVER BOARD', 'DRIVER BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(161, 'SCUFF GUARD (U)', 'UNLEADED', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(162, 'SCUFF GUARD (D)', 'DIESEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(163, 'REAL MOTOR', 'REAL MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(164, 'EK145', 'SLOGAN BADGE UNLEADED', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(165, 'EK14.DC', 'SLOGAN BADGE DIESEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(166, '', 'SLOGAN BADGE KERO', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(167, '', 'SLOGAN BADGE MGO', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(168, 'SPOUT', 'DIESEL SPOUT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(169, 'KEY PAD', 'HIGHLINE 2 KEY PAD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(170, 'KEY PAD', 'KEY PAD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(171, 'BATTERY', '3.6V BATTERY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(172, 'BATTERY', '9V BATTERY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(173, 'DISPLAY', 'DISPLAY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(174, 'VALVE', 'SOLENOID VALVE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(175, 'VALVE', 'VALVE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(176, 'CARD', 'PULSAR CARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(177, 'CARD', 'B+B SMARTWORX TERMINAL CARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(178, 'NITROGEN', 'NITROGEN BOTTLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(179, 'POS PRINTER', 'POS PRINTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(180, 'USB CONVERTER', 'USB SERIAL CONVERTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(181, 'BOLT', 'RAWL BOLT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(182, '5.LA MOTOR', '5.LA MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(183, 'SOCKET', 'SOCKET', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(184, 'PLUG', 'PLUG', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(185, 'HOSE END', 'HOSE END', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(186, 'BELT', 'BELT 10 X 690', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(187, 'TERMINAL', 'CREDIT CARD TERMINAL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(188, 'HOSE', 'HOSE 1\"', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(189, 'CPU', 'CPU EUROLINE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(190, 'POWER SUPPLY', 'POWER SUPPLY EUROLINE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(191, 'CPU', 'CPU', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(192, 'POWER SUPPLY', 'POWER SUPPLY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(193, 'COMMS BOARD', 'COMMS BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(194, 'GLAND', 'GLAND', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(195, 'BOARD', 'BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(196, 'FILTER SOCK', 'FILTER SOCK', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(197, 'FILTER', 'WATER CAPTOR FILTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(198, 'POWER SUPPLY', 'POWER SUPPLY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(199, 'FLOAT', 'FLOAT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(200, 'KEY PAD', 'KEY PAD EUROLINE', 'Pcs', 79.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(201, 'RIBBON', 'RIBBON', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(202, 'POPPET', 'POPPET', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(203, 'HOSE', 'HOSE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(204, 'GEAR', 'RUNNING GEAR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(205, 'SEAL', 'SEAL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(206, 'SEAL', 'SEAL WAYNE GLOBAL STAR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(207, 'FILTER', 'FILTER WAYNE GLOBAL STAR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(208, 'PIPE', '1\" STEEL MEDIUM GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(209, 'PIPE', '1.5\" STEEL MEDIUM GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(210, 'PIPE', '2\" STEEL MEDIUM GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(211, 'PIPE', '2.5\" STEEL MEDIUM GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(212, 'PIPE', '3\" STEEL MEDIUM GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(213, 'PIPE', '1\" STEEL HEAVY GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(214, 'PIPE', '1.5\" STEEL HEAVY GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(215, 'PIPE', '2\" STEEL HEAVY GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(216, 'PIPE', '2.5\" STEEL HEAVY GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(217, 'PIPE', '\" STEEL HEAVY GAUGE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(218, 'UNION', '1\" GALV UNION IR/IR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(219, 'UNION', '1.5\" GALV UNION IR/IR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(220, 'UNION', '2\" GALV UNION IR/IR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(221, 'UNION', '2.5\" GALV UNION IR/IR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(222, 'UNION', '3\" GALV UNION IR/IR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(223, 'ELBOW', '1\" GALVANISED F&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(224, 'ELBOW', '1.5\" GALVANISED F&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(225, 'ELBOW', '2\" GALVANISED F&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(226, 'ELBOW', '2.5\" GALVANISED F&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(227, 'ELBOW', '3\" GALVANISED F&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(228, 'ELBOW', '1\" GALVANISED M&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(229, 'ELBOW', '1.5\" GALVANISED M&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(230, 'ELBOW', '2\" GALVANISED M&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(231, 'ELBOW', '2.5\" GALVANISED M&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(232, 'ELBOW', '3\" GALVANISED M&F ELBOWS 90?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(233, 'ELBOW', '1.5\" GALV M/F ELBOWS 45?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(234, 'ELBOW', '2\" GALV M/F ELBOWS 45?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(235, 'ELBOW', '3\" GALV M/F ELBOWS 45?', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(236, 'ELBOW', '1.5\" GALVANISED F&F 45? ELBOW', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(237, 'ELBOW', '2\" GALVANISED F&F 45? ELBOW', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(238, 'ELBOW', '2.5\" GALVANISED F&F 45? ELBOW', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(239, 'ELBOW', '3\" GALVANISED F&F 45? ELBOW', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(240, 'NIPPLE', '1\" GALV HEX NIPPLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(241, 'NIPPLE', '1.5\" GALV HEX NIPPLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(242, 'NIPPLE', '2\" GALV HEX NIPPLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(243, 'NIPLE', '2.5\" GALV HEX NIPPLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(244, 'NIPPLE', '3\" GALV HEX NIPPLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(245, 'NIPPLE', '4\" GALV HEX NIPPLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(246, 'BELT', 'A25 BELT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(247, 'BATTERY', 'BATTERY 6V', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(248, 'CABLE', 'CABLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(249, 'PUMP UNIT', 'PUMP UNIT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(250, 'PUMP UNIT', 'PUMP UNIT PUISI', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(251, 'SWIVEL', '1\" STANDARD SWIVEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(252, 'PULSAR', 'PULSAR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(253, 'RETRACTOR', 'RETRACTOR DEVICE COMPLETE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(254, 'TOTE GEAR', 'TOTE GEAR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(255, 'SWITCH', '4 POLE ISOLATION SWITCH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(256, 'SWITCH', 'SWITCH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(257, 'VENT', 'VENT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(258, 'FLEXI VENT', 'FLEXI VENT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(259, 'TEE', 'TEE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(260, 'TANK PROBE', 'TANK PROBE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(261, 'ELNOR MOTOR', 'ELNOR 1.1 KW MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(262, 'MOTOR', 'MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(263, 'FLEX', 'FLEX', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(264, 'METER', 'METER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(265, 'METER', 'EUROLINE METER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(266, 'HUB BOARD', 'HUB BOARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(267, 'OVERLOAD', 'OVERLOAD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(268, 'LIST', 'MATERIAL LIST', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(269, 'PIPE', 'LENGTH OF PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(270, 'SCREW', 'SCREW', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(271, 'MACHINE HIRE', 'MACHINE HIRE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(272, 'GRIP', 'GRIP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(273, 'COMFI GRIP', 'COMFI GRIP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(274, 'SAFE-BRAKE SWIVEL', 'SAFE-BRAKE SWIVEL 1\" FEMALE + BTH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(275, 'SWIVEL 1\" FEMALE', 'EASY SWIVEL 1\"BSP FEMALE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(276, 'SWIVEL 3/4\" FEMALE', 'EASY SWIVEL 3/4\" BSP FEMALE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(277, 'PROBE', 'PROBE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(278, 'RISER', 'RISER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(279, 'MCB', 'MCB 80A', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(280, 'LEVER VALVE', 'LEVER VALVE 2\"', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(281, 'GRADE DISC', 'GRADE DISC', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(282, 'FLANGE', 'FLANGE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(283, 'BUSH', 'BUSH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(284, 'NIPPLE', 'BARRELL NIPPLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(285, 'NIPPLE', 'REDUCING NIPPLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(286, 'SAND', 'SAND', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(287, 'CEMENT', 'CEMENT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(288, 'TRUNKING', 'TRUNKING', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(289, 'MCB 10A', 'MCB 10A', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(290, 'MCB 20A', 'MCB 20A', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(291, 'RCBO', 'RCBO', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(292, 'F&F', 'F&F 1\"', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(293, 'BOLLARDS', 'BOLLARDS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(294, 'PULLEY WHEEL', 'PULLEY WHEEL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(295, 'PULSAR SHAFT', 'PULSAR SHAFT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(296, 'BELT', 'BELT 10 X 673 LI', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(297, 'F&M 90', 'F&M', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(298, 'EX BLANKS', 'EX BLANKS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(299, 'SWA GLANDS', 'SWA GLANDS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(300, 'DOMMS BOX', 'DOMMS BOX', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(301, 'COUPLING', 'SMALL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(302, 'COUPLING', 'LARGE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(303, 'OPT WINDOW', 'OPT WINDOW', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(304, 'CARD TERMINAL', 'CARD TERMINAL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(305, 'SPEAKER', 'SPEAKER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(306, 'LAMP', 'LAMP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(307, 'GILBARCO FUEL PUMP', 'GILBARCO EUROLINE FUEL PUMP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(308, 'VEEDER ROOT', 'VEEDER ROOT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(309, 'FUSE', 'FUSE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(310, 'FUSE', 'FUSE 10A', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(311, 'COMMS CONTROL', 'COMMS CONTROL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(312, 'TEMP COMPENSTION', 'TEMP COMPENSTION CARD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(313, 'HEAD', 'SERVICE HEAD HL2', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(314, 'HEAD', 'HEAD', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(315, 'VANE', 'VANE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(316, 'PRINTER', 'STAR 300 PRINTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(317, 'PRINTER', 'PRINTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(318, 'ADAPTER', 'ADAPTER AD BLUE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(319, 'BLANKS', 'BLANKS 20mm', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(320, 'RFID READER', 'RFID READER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(321, '9PIN/TB', '9PIN/TB 485 CONVERTER  W/SD CTRL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(322, 'USB CONVERTER', 'USB CONVERTER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(323, 'UPS', 'THUNDER SHIELD UPS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(324, 'BRACKET', 'BRACKET', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(325, 'SWITCH', 'SWITCH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(326, 'BELT A32', 'BELT A32', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(327, 'BELT A29', 'BELT A29', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(328, 'CAMLOCK', 'CAMLOCK', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(329, 'CAMLOCK CAP', 'CAMLOCK CAP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(330, 'GLENS IP6S', 'GLENS IP6S', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(331, 'CONSUMABLES', 'CONSUMABLES', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(332, 'LADDER HIRE', 'LADDER HIRE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(333, 'GLAND', '20mm BLACK ATEX', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(334, 'VER10', 'VERIFICATION STICKERS V10 RYAN MULLANE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(335, 'JOINER', 'CABLE JOINER EPROXY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(336, 'JOINER', 'JOINER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(337, 'GPO', 'GPO DOUBLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(338, 'MOUNTING BLOCK', 'MOUNTING BLOCK', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(339, 'ROPE', 'ROPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(340, 'CONNECTOR', 'CONNECTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(341, 'PIPE COPPER', 'PIPE COPPER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(342, 'ELBOW COPPER', 'ELBOW COPPER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(343, 'FITTING COPPER', 'FITTING COPPER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(344, 'CLAMP', 'CLAMP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(345, 'RETRACTOR', 'RETRACTOR HOSE CLAMP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(346, 'FLAME ARRESTOR', 'FLAME ARRESTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(347, 'SHEET METAL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(348, 'PANEL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(349, 'PANEL TOP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(350, 'DIOFRAME', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(351, 'SCREEN', 'SCREEN', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(352, 'SCREEN', 'TOUCH SCREEN', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(353, 'LIGHT FITTING', 'LIGHT FITTING', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(354, 'TAPE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(355, 'BELT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(356, 'BELT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(357, 'NANO GUAGE OPW', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(358, 'GUAGE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(359, 'CONCRETE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(360, 'GRAVEL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(361, 'FITTING', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(362, 'JUBILEE CLIP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(363, 'PIPE', 'FLEXIBLE PIPE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(364, 'BATTERY', 'BATTERY', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(365, 'POSTAGE STAMP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(366, 'SNAKE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(367, 'ANGLE IRON', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(368, 'KEY', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(369, 'SIGN', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(370, 'EXPANDING FOAM', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(371, 'STICKER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(372, 'DIGIT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(373, 'LOCK', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(374, 'TANK TAG', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(375, 'LABLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(376, 'KIT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(377, 'SPLICING KIT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(378, 'CAP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(379, 'DUST CAP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(380, 'COVER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(381, 'IRON', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(382, 'BOX IRON', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(383, 'PLYWOOD', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(384, 'VER11', 'VERIFICATION STICKERS V11 GUS MALONE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(385, 'NOZZLE', 'REFURBISHED UNLEADED NOZZLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(386, 'FLEXCONDUIT', '20MM FLEXIBLE CONDUIT', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(387, 'ET1', 'ETERNET CABLE', 'M', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(388, 'TOK1', 'TOKHEIM QUANTIUM SOLENOID COIL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(389, 'DIG1', 'DIGIT TABLES', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(390, 'MOT1', 'HIGHLINE 2 MOTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(391, 'BOW', 'FILTER BOWLS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(392, 'VAL1', 'UNDERPUMP VALVE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(393, 'TAT1', 'TATSUNO MAGNETIC SWITCH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(394, 'H1', 'BLACK HOSE 4.2 METER', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(395, 'CON', '1\" F/M CONNECTORS', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(396, 'H2', '14\" X 5/8 BLACK HOSE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(397, 'E1', 'D-LINK 8WAY ETERNET SWITCH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(398, 'E2', 'RS 232 TO ETERNET CONVERTOR', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(399, 'E3', 'CAT5 ETERNET CABLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(400, 'TECH 7', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(401, 'LID BOLTS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(402, 'RED PUMP SINGLE PHAS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(403, '1.5\" CHECK VALVE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(404, 'RECEIPT ROLL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(405, 'NOZZLE', 'REFURBISHED DIESEL NOZZLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(406, '4\" DROP TUBE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(407, '4\" DROP TUBE CASE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(408, '4\" PLUG', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(409, '16MM BOLTS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(410, '10 MICRON FILTER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(411, '2.5\" GALV PIPE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(412, '9W PLS LAMP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(413, 'HIGHLINE HOSE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(414, 'VENT VALVE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(415, 'TOKHEIM SIDE PANELS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(416, 'END PANEL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(417, 'SCAN DISH SD CARD 2G', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(418, 'OPW NANO SCREEN', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(419, 'PAINT BRUSH', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(420, 'PAINT 250ML', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(421, '12\" X 17\" SS COVER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(422, 'PUISI HOSE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(423, '3/4 F/M HOSE COUPLIN', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(424, '1.5\" BLANK PLUGS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(425, 'SK700 HORIZON D.B', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(426, 'EUROLINE PSU', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(427, '2.5\" BRASS END CAP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(428, '1.5\" FxF 45', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(429, '1.5\" FxF 90', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(430, 'ETHERNET', 'D-LINK 8PORT ETHERNET SWITCH', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(431, 'TELEPHONE CONNECTORS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(432, 'OPW 3.18M PROBE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(433, '3/4 TO 3/4 NIPPLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(434, '20FT HOSE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(435, 'GILBARCO RETRACTOR', '', 'Pcs', 0.00, 10.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(436, 'PUISI FOB', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(437, 'PUISI SCREWIN FILTER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(438, 'BOLT', 'M16 X 50 HEX BOLT AND NUT', 'Pcs', 0.67, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(439, 'TATSUNO STACK', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(440, 'SPRING - SMALL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(441, 'VAPOUR FITTING', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(442, 'LIFTING HANDLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(443, 'CAT5 OUTDOOR CABLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(444, 'CABLE TIES', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(445, 'ANTISYPHON VALVE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(446, 'MOTOR SWITCH MODULE', '2GB', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(447, 'HOSE RETRACTOR UNIT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(448, 'ETHERNET CONTACTOR', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(449, 'CAT6 CABLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(450, 'SWA 3CAVE CABLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(451, 'ISOLATION SWITCH', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(452, 'SK700 DIESEL FILTER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(453, 'PERSPEX SCREEN', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(454, 'FLANGE GASKET', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(455, '1\" HEAVY WALL PIPE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(456, 'TATSUNO LCD DISPLAYS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(457, 'USB CABLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(458, 'VENT TAGS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(459, 'VAPOUR RECOVERY UNIT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(460, '3\" PIPE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(461, 'PLASTIC PIPE CONNECT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(462, '1\" SS VALVE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(463, '1\" SS PIPE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(464, 'PIUSI PUMP & ENCLOSE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(465, 'STEEL ROPE 20FT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(466, 'M8 BOLT & NUT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(467, 'TANK LID GASKET', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(468, 'UNDER PUMP GASKET', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(469, 'CHECK VALVE COVER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(470, 'STEEL SHEET', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(471, '16MM BOLTS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(472, '12V BATTERY', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(473, 'PUISI FITTING', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(474, 'FLEXI GASKET', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `stock_items` (`id`, `stock_code`, `name`, `unit_of_measure`, `unit_cost`, `margin`, `created_at`, `updated_at`, `qty_used`) VALUES
(475, '15MM ATEX GLANDS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(476, '20MM CHANNEL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(477, 'CORE & EARTH 1.5MM', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(478, '10AMP SOCKET', '3PIN', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(479, '5MM CONNECTOR', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(480, '3MM CONNECTOR', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(481, '10MM EARTH CABLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(482, 'REFLECTOR STRIP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(483, '12X100 BOLTS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(484, 'MULTI PORT USB', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(485, '1\" F/M HOSE COUPLING', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(486, '1\" MALE HOSE COUPLIN', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(487, 'DOOR LOCK', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(488, 'ROTOR & SHAFT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(489, '3\" PLUG', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(490, 'DPM 4\"', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(491, '2.5\" FXM', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(492, 'BELT - 10X670', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(493, 'RS252 CARD', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(494, 'FOB READER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(495, 'FOB TOUCH STICKER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(496, 'SILICON SEALER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(497, 'PINPAD', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(498, 'ZVA HIGHSPEED', 'DIESEL NOZZLE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(499, 'FLEXI PIPE', 'ADBLUE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(500, '3/4\" M HOSE COUPLING', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(501, 'CHECK VALVE LEG', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(502, 'LEVER VALVE 1.5\"', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(503, 'VR COUPLING', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(504, 'VR CAP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(505, 'CARBON BLADES', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(506, '3\" 500MM RISERS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(507, '2\" 400MM RISERS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(508, '1\" BREAKAWAY', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(509, '3/4 TO INCH BUSH', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(510, '3/4\" F END', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(511, '13A PLUG TOP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(512, '16A RCBO', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(513, 'TWIN SOCKET & BOX', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(514, 'OPT DISPLAY SCREEN', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(515, 'SWIVEL SEAL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(516, 'SD CARD 8GB', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(517, 'OPW SOFTWARE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(518, 'SQUARE NUT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(519, '8\" LCD DISPLAY', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(520, 'PUMP PULLEY', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(521, 'NOZZLE - ADBLUE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(522, 'SCREEN PROTECTOR', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(523, 'RS232 CABLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(524, 'UPGRADE BIT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(525, 'GRINDER HIRE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(526, 'PIUSI ADBLUE UNIT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(527, 'DIESEL WATER PASTE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(528, 'PETROL WATER PASTE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(529, 'NON RETURN VALVE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(530, 'FILTER RUBBER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(531, '16X65 BOLTS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(532, '2.5\" BUSH', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(533, '1.5\" BUSH', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(534, '1.5\" GATE VALVE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(535, 'OPW PROBE CABLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(536, 'PUMP UNIT HOUSING', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(537, 'JUMPER HOSE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(538, 'SPOUT', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(539, 'GPRS MODEM', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(540, 'BOLT', 'BOLT MACHINED', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(541, '20MM D-CIRCLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(542, 'WIRE WITH PLUG', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(543, 'PUMP CONTROLLER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(544, 'CASH DRAWER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(545, 'CAPACITOR', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(546, 'ETHERNET PLUG', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(547, 'BOLT - M8', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(548, 'V-LINK SERVER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(549, 'ETHERNET CONNECTORS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(550, 'EARTH STRAP', 'EARTH STRAP', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(551, 'EARTH WIRE', 'EARTH WIRE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(552, '2.5\" FxF', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(553, 'PUMP FILTER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(554, 'FILTER -', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(555, 'PUISI PUMP BLADES', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(556, 'KEYWAY', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(557, 'RIVETS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(558, '3/4\" TO 1\" NIPPLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(559, 'CERT ELECTRICAL', 'CERT ELECTRICAL', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(560, 'HIRE', 'EQUIPMENT HIRE', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(561, 'PC', 'PC', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(562, '1\" GALV PIPE HEAVY', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(563, 'PRINTER PAPER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(564, 'IPLUG UPS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(565, 'HAND PUMP', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(566, 'HAND PUMP FRAME', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(567, 'POWER BOARD', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(568, 'OPT LOCK', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(569, '1\" LEVER VALVE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(570, '2.5\" LEVER VALVE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(571, '2.5\" NIPPLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(572, 'STRAINER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(573, 'VAPOUR ADAPTOR', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(574, 'FLEXI HOSE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(575, 'NOZZLE GUARD', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(576, 'NOZZLE SWITCH', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(577, 'RETAINING CLIPS', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(578, 'UNDER SINK HEATER', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(579, 'SLOGAN BADGE - DSL', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(580, '.5\" NIPPLE', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(581, '.5\" ELBOW', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(582, 'RJ45 PLUG', '', 'Pcs', 0.00, 0.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(583, '1234', 'test add stock', 'each', 12.00, 2.00, '2020-12-03 12:25:03', '2020-12-03 12:25:03', NULL),
(584, '1234', 'john test', 'ea', 12.00, NULL, '2020-12-11 13:14:31', '2020-12-11 13:14:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_receipts`
--

CREATE TABLE `stock_receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_item` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `unitprice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `stock_item_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_receipts`
--

INSERT INTO `stock_receipts` (`id`, `date`, `supplier`, `stock_item`, `serial_number`, `quantity`, `unitprice`, `created_at`, `updated_at`, `supplier_id`, `stock_item_id`) VALUES
(1, '13/03/2021 9:26 am', '5', '3', '9088987', 843, '8', '2021-03-11 04:27:04', '2021-03-11 04:39:10', 0, NULL),
(2, '11/03/2021 9:42 am', '2', '1', '390408', 93, '487', '2021-03-11 04:44:55', '2021-03-11 04:45:23', 0, NULL),
(3, '11/03/2021 9:42 am', '2', '3', '390408', 939, '999', '2021-03-11 04:45:02', '2021-03-11 04:45:12', 0, NULL),
(4, '11/03/2021 9:45 am', '4', '6', '09887088', 98787, '908', '2021-03-11 04:45:41', '2021-03-11 04:45:41', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_purchase_orders`
--

CREATE TABLE `store_purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `po_number` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `Item` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_required` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(8,2) DEFAULT NULL,
  `extra_to_job` tinyint(1) NOT NULL DEFAULT 0,
  `purchased_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_code`, `name`, `email`, `work_phone`, `address_1`, `address_2`, `address_3`, `address_4`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'A-Z', 'A - Z SANDMORE LTD', '', '066 7189950', 'MART COMPLEX', 'CAHERSLEE', 'TRALEE', 'CO. KERRY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'A.J.', 'A.J. O\' BRIEN & COMPANY SOLICITOR', '', '021 4346640', 'CURRAHEEN ROAD', 'BISHOPSTOWN', 'CORK CITY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'A1A1', 'A1 ACCESS & PLANT HIRE LTD', 'a1.acces@gmail.com', '061 405017', 'UNIT10, ROSMADDA BUSINESS PARK', 'BALLYSIMON ROAD', 'LMERICK', 'V94 VW95', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'ABBEY', 'ABBEY SEALS LTD', 'cork@abbeyseals.ie', '021 5003555', '31B EURO BUSINESS PARK', 'LITTLE ISLAND', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'ACA1', 'ACADEMY CRESTS', 'sales@academycrests.ie', '021 4396800', 'UNIT 35 NORTHPOINT BUSINESS PARK', 'NEW MALLOW ROAD', 'CORK', '', 'COLIN NAUGHTON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'ACE1', 'ACE SIGNS LTD', 'info@acesigns.ie', '021 4313030', 'UNIT 1 SOUTHSIDE INDUSTRIAL ESTATE', 'TOGHER', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'ACM1', 'ACME BLINDS LTD', '', '021 4280400', 'MALLOW ROAD', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'ACP1', 'ACP&D LTD', 'SALES@ACPD.CO.UK', '4.41613E+11', '86 ROSE HILL ROAD', 'ASHTON-UNDER-LYNE', 'LANCASHIRE', 'OL6 8YF', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'ADV1', 'ADVANTECH B+B SMARTWORX', 'aschaffer@bb-smartworx.com', '091 792444', 'WESTLINK COMMERCIAL PARK', 'ORANMORE', 'CO. GALWAY', '', 'NL806976809B01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'ADV2', 'ADVANCED GLASS', 'accounts@advancedglass.ie', '021 4348666', 'UNIT 1, COLLEGE COMMERICAL PARK', 'MAGAZINE ROAD', 'DENNEHYS CROSS', 'CORK', 'KEVIN FOLEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'AE & W', 'AUTO EXHAUSTS & WINDSCREENS LTD', '', '021 4826635', 'UNIT 1 WESTPOINT TRADE CENTRE', 'LINK ROAD', 'BALLINCOLLIG', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'AFL', 'AIB FINANCE & LEASING', '', '', 'PO BOX 11143', '1 ADELAIDE ROAD', 'DUBLIN2', ' LEASE 669215/018/51      013', 'TRAILER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'AFR1', 'AFRISO EUROGAUGE', 'sales@afriso-eurogauge.co.uk', '0044 1293 658360', 'UNIT 4 SATELLITE BUSINESS VILLAGE', 'FLEMING WAY', 'CRAWLEY', 'WEST SUSSEX   RH10 9NE', 'TIM CARTER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'AHE1', 'TOM AHERN AUTOS', 'aherntom1@hotmail.com', '087 6883080', 'ATHEA', 'CO. LIMERICK', '', '', 'TOM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'AIB1', 'AIB FINANCE & LEASING', '', '0818 7200 000', '191 VANS HIRE PURCHASE', '', '', '', '66921501901', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'AIB2', 'AIB LEASING LTD', '', '', 'PO BOX 11143, BANKCENTRE, BALLSBRIDGE', 'DUBLIN 4', '142 VANS X 3 (60 PAYMENT FROM 24.09.14)', 'DUBLIN 18  (VAN LEASES 669215/013/01)', '142 VANS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'AIB3', 'AIB BANK CHARGES', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'AIB4', 'AIB FINANCE & LEASING', '', '', 'BLOCK J3', 'BALLSBRIDGE', 'DUBLIN 4', 'VAN 151KY1228 171C13689 & DACIA 192KY658', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'AIB5', 'AIB MERCHANT SERVICES', '', '1850 200 417', 'DEPT AA1668', 'PO BOX 4214', 'D2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'AIB6', 'AIB FINANCE & LEASING', '', '', 'LEASE NO 669215/015/51', 'LEASE NO 669215/021/01', 'PUMPS BFS1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'AIB7', 'AIB LEASING', '', '', 'RE NIGEL SLEMONS SLE1', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'AIB8', 'AIB FINANCE AND LEASING', '', '', '192KY JEEP', '151KY RENAULT TRAFFIC', '171KY RENAULT TRAFFIC', 'LOAN 0669215/020/01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'AIBV', 'AIB, VISA A/C', '', '01 6685500', '', 'NIALL 4142 6180 0145 8256', 'DONAL 4142 6180 0145 8272', 'NORA 4142 6180 0181 9184', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'AIR', 'AIR-SERV', '', '0044 1942722333', 'REDGATE ROAD,SOUTH LANCASHIRE IND ESTATE', 'ASHTON-IN MARKERFIELD,', 'NEAR WIGAN, LANCASHIRE', 'WN4 8DT ENGLAND', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'AIR1', 'AIRWAVE INTERNET', 'accounts@airwave.ie', '021 - 202 4000', '8 BARRYSCOURT BUSINESS PARK', 'CARRIGTWOHILL', 'CO CORK', 'T45 HP63', 'Michael Spreadborough', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'ALD1', 'ALDERA CONSULTING LTD', '', '', 'BANDON CO CORK', '', '', '', 'FLOR O SULLIVAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'ALF1', 'ALFABLOC WALLING SYSTEMS', '', '023 8847205', 'COPPEEN', 'ENNISKEANE', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'ALL1', 'ALL ROUND DISCOUNTS LTD', 'allroundsystems@gmail.com', '050458886/0863169173', 'GORTNAHOE', 'THURLES', 'CO TIPPERARY', '', 'MARK RYAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'ALL2', 'ALL GLASS BALLINCOLLIG', '', '1890 20 12 12', 'UNIT 1 WESTPOINT TRADE CENTRE', 'LINK ROAD BALLINCOLLIG', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'ALL3', 'ALL SAFETY TRAINING', 'firstaidcolette@gmail.com', '087 6792295', 'BALLINCURRIG', 'LEAMLARA', 'CO CORK', '', 'COLLETTE MOYNIHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'ALM', 'ALMA ENGINEERING SUPPLIES LTD', 'info@alma-valves.ie', '404 64353', 'UNIT 13', 'VILLAGE MILL ENTERPRISE PARK', 'RATHNEW', 'CO. WICKLOW', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'ALP1', 'ALPHA SIGNS', 'jeffandmartyr1@hotmail.co.uk', '0044 02867748084', 'UNIT A', '32 THE CROOK ROAD', 'CORATRASNA', 'CO FERMANAGH   BT92 9PR', 'JEFF FOWLER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'ALX T', 'ALX  TECHNOLOGIES', '', '0033 0467020611', 'PARC EUREKA', '301 RUE DE THOR', '34000 MONTPELLIER', 'FRANCE', 'FREDRIC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'AMB1', 'AMBER PETROLEUM', '', '025 46000', 'ACRES', 'FERMOY', 'CO. CORK', 'FUEL CARD ACCOUNT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'AMB9', 'AMBER SERVICE STATION ATHY', '', ' 059 8634517', 'WOODSTOCK ROAD', 'ATHY', 'CO KILDARE', '', 'TRISH FITZGERALD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'AND1', 'ANDERCO LIFTING', 'accounts@andercolifting.com', '021 4509310', '3 ALFRED STREET', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'ANG1', 'DENIS ANGLAND', '', '029 78033', 'DROMAGH', 'MALLOW', 'CO CORK', '', 'DENIS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'APE1', 'APEA', 'ADMIN@APE.ORG.UK', '0044 0845 603 5507', 'PO BOX 106', 'SAFFRON WALDEN', 'CB11 3XT', 'UK', 'JANE MARDELL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'APE2', 'APERIO FINANCE', 'INFO@APERIOFINANCE.IE', '021 2427950', 'UNIT 13, WEST BUILDING', 'CARRIGALINE INDUSTRIAL PARK', 'CROSSHAVEN ROAD', 'CARRIGALINE, CO CORK', 'GABRIELA/BRIAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'AR', 'AUTOROLLER MANUFACTURING LTD', '', '029 20222', 'IDA INDUSTRIAL ESTATE', 'MALLOW ROAD', 'KANTURK', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'ARB1', 'AR BROWNLOW LTD', 'SALES@ARBROWNLOW.IE', '021 4313377', 'PO BOX 112', 'SOUTH CITY LINK ROAD', 'CORK', '', 'DAVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'ARC1', 'ARCO SALES', '', '074 9321784', '25 MILLTOWN BUSINESS PARK', 'BUNCRANA', 'CO DONEGAL', '', 'KYLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'ARC2', 'ARCH ENGINEERING LTD', '', '087 6862276', 'ARDAULIN', 'KILMALLOCK', 'CO LIMERICK', 'V35 DV59', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'ARD1', 'ARDFALLEN MOTORCARE', '', '021 4322999', 'UNIT 5 ANDERSON SQUARE', 'BALLYCURREEN', 'KINSALE ROAD', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'ARD2', 'ARDSPAN ENGINEERING LTD', 'info@ardspan.ie', '056 7729343', 'BURNCHURCH', 'CUFFESGRANGE', 'CO. KILKENNY', 'R95 VY00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'ARDF', 'ARDFERT QUARRY PRODUCTS', '', '066 7134144', 'ARDFERT', 'CO. KERRY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'ART1', 'ARTHURS REST', 'ARTHURSREST@EIRCOM.NET', '051 389192', 'ARTHURSTOWN', 'NEW ROSS', 'CO WEXFORD', '', 'PEGGY MURPHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'ASSO1', 'ASSOCIATED PUMPS LTD', 'info@aplcork.ie', '214822271', 'SARSFIELD COURT INDUSTRIAL ESTATE', 'GLANMIRE', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'ATL', 'ATLANTIC HOMECARE', '', '4288140', 'BLACKPOOL', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'ATMA', 'ATMac LTD', 'gerry@atmac.net', '4551811', '13 PENROSE WHARF', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'AUD1', 'AUDI WATERFORD', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'AUL1', 'AULD TRIANGLE', '', '026 41940', 'BAR & RESTAURANT', 'KILLARNEY ROAD', 'MACROOM', 'CO CORK', 'KITTY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'AVAL', 'AVALON', '', '021 6024238', 'UNIT 4A/B', 'FOTAPOINT ENTERPRISE PARK', 'CARRIGTWOHILL', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'AVIVA', 'AVIVA INSURANCE', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'AVO1', 'AVONMORE ELECTRICAL WHOLESALE', 'wholesale@avonmore-electr', '022 47477', 'ROSKEEN', 'MALLOW', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'B&F', 'B&F SELECT BUILDING SUPPLIERS LTD', '', '667126119', 'LAHERN', 'TRALEE', 'CO. KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'B.MC', 'BILLY MC CARTHY', '', '021 7336361', 'GENERAL BUILDING CONTRACTOR', 'BALLYMICHAEL', 'LISSARDA', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'B1', 'BANDON OFFICE SUPPLIES', 'glen@bandonoffice.com', '023 8854000', 'STATION RD, BANDON.', 'CO CORK', '', '', 'GLEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'B2B1', 'B2B SIGNS', 'paddy.gahan@b2bsigns.ie', '214303180', 'BLACKSTONE BRIDGE', 'LOWER KILLEENS', 'OFF COMMONS ROAD', 'CORK', 'PADDY GAHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'B3', 'BURTONS HOMEVALUE HARDWARE', '', '029 50500/ 50655', 'KANTURK,', 'CO. CORK.', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'BAL', 'BALLYHEA READYMIX', 'ballyheareadymix@gmail.com', '6381494', 'BALLYHEA', 'CHARLEVILLE', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'BAL1', 'BALLINEEN SKIP HIRE', 'info@ballineenskiphire.ie', '023 8847242', 'BALLINEEN', 'CO CORK', '', '', 'DONAL MURPHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'BAL2', 'BALLINAKILL TRANSPORT LTD', '', '069 72262', 'BALLINAKILL', 'CASTLEMAHON', 'CO LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'BAN', 'BANDON HARDWOOD FLOORS & TILES', '', '2343733', 'STATION ROAD', 'BANDON', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'BAN1', 'BANTRY TIMBER MOULDINGS LTD', '', '027 50198', 'LAHADANE', 'BANTRY', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'BAN2', 'BANDON CO OP', 'ADMIN@BANDONCOOP.IE', '023 8841409', 'WATERGATE', 'BANDON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'BAN3', 'BANDON REWINDS LTD', 'bandonrewinds@gmail.com', '023 8842299', 'UNIT 9', 'CLOUGHMACSIMON IND PARK', 'BANDON', 'CO CORK', 'MARTINA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'BAR', 'BARRY POWER BUILDERS LTD', '', '051-640256', 'JONESTOWN', 'CARRICK-ON-SUIR', 'CO. TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'BAR1', 'LIAM A BARRY', '', '021 4353815', 'ENGINEERING SUPPLIES', 'UNIT 15 B + C, EURO BUSINESS PARK', 'LITTLE ISLAND', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'BAR2', 'MICHAEL BARRETT PARTNERSHIP', '', '021 4398850', 'CHARTERED QUANTITY SURVEYORS', 'DUN EALA', 'RATHPEACON', 'MALLOW ROAD, CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'BAR3', 'BARNAVILLE PRINT & GRAPHICS LTD', 'accounts@barnavilleprint.com', '056 8832290', 'BRIDGE STREET', 'FRESHFORD', 'CO KILKENNY', '', 'John', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'BBE', 'BARRY BUCKLEY', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'BDS', 'BURDENS', '', '021 4297894', 'UNIT 1', 'WATERFRONT BUSINESS PARK', 'WALLINGSTONE', 'LITTLE ISLAND, CO. CORK.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'BEL1', 'BELL SCOTT & COMPANY LTD', '', '021 4501724', 'SHIP STREET', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'BFS', 'CENTRA BLARNEY', '', '021 4381789', 'BLARNEY FILLING STATION', 'BLARNEY', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'BIG1', 'BIG RED BOOK', 'info@bigredbook.com', '01 2048300', 'RATHDOWN HALL', 'UPPER GLENAGEARY ROAD', 'GLENAGEARY', 'CO DUBLIN', 'MARC O DWYER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'BIO', 'BIOCEL LTD', '', '021 4354144', 'ROCKGROVE', 'LITTLE ISLAND', 'CO. CORK', '', 'VINCENT KELLY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'BIO1', 'BIO-INDUSTRIES LTD', 'bio@indigo.ie', '01 2941025', 'UNIT 66D HEATHER ROAD', 'SANDYFORD IND ESTATE', 'DUBLIN 18', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'BIS', 'BLENHEIM INSPECTION SYSTEMS', '', '042 9380388', 'CARRICKARNON', 'RAVENSDALE', 'DUNDALK', 'IRELAND', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'BLA1', 'BLACKNIGHT SOLUTIONS', 'billing@blacknight.com', '+353 (0)59 9183072', 'UNIT12A BARROWSIDE BUSINESS PARK', 'SLEATY ROAD, GRAIGUECULLEN', 'CARLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'BLA2', 'BLARNEY OILS', '', '214385444', 'MONARD', 'RATHPEACON', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'BLA3', 'BLACKLION BUILDERS SUPPLIES', '', '01 2107485', 'BLACKLION BUILDING', 'GREYSTONES', 'CO WICKLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'BOC1', 'BOC GASES IRELAND LTD', 'bgi.accounts@boc.com', '14091812', 'PO BOX 201', 'BLUEBELL', 'DUBLIN 12', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'BOI1', 'BANK OF IRELAND', '', '', 'MAIN STREET', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'BON1', 'BONS SECOUR HOSPITAL', 'AMurphy@bonsecours.ie', '021 4542807', 'COLLEGE ROAD', 'CORK', '', '', '021 4542807', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'BOO1', 'BOOM & PLATFORM HIRE LTD', 'fran@bphire.ie', '021 4623600', 'UNIT 6 RAM HILL IND ESTATE', 'BALLINACURRA', 'MIDLETON', 'CO. CORK P25 WY03', 'FRAN MC CALL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'BP&T', 'BALLINCOLLIG PLANT & TOOL HIRE', '', '021 4873922', 'UNIT 3 ENTERPRISE PARK', 'INNISHMORE', 'BALLINCOLLIG', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'BPOS', 'BPOS', '', '0044 7860679912', '3 Manderley Rise', 'Gilford Road', 'Portadown', 'Armagh, BT63 5UW', 'Jim Robinson', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'BRA1', 'DENIS BRADFIELD', '', '021 7336214', 'BOILER & BURNER SERVICES', 'CURRABEHA', 'CROOKSTOWN', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'BRA2', 'DENIS BRADFIELD EMPLOYEE', '', '', 'CURRABEHA', 'CROOKSTOWN', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'BRADY', 'BRADY\'S GARAGE', 'gabybrady1@gmail.com', '', 'ABBEYLEIX ROAD', 'PORTLOAISE', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'BRI1', 'BRILLIANT HOMES', 'brillianthomes@gmail.com', '894607877', '10 OLIVER PLUNKETT PLACE,', 'DONERAILE ROAD,', 'CO.CORK', '', 'Dermot Smith', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'BRI2', 'BRIGHT HR', 'accounts@brighthr.com', '0161 836 9573', 'CLOUD 9', 'THE PENINSULA', 'VICTORIA PLACE', 'MANCHESTER M4 4FB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'BRO1', 'BROADBANDBUYER.COM', '', '', '21 KELVIN DRIVE', 'KNOWLHILL', 'MILTON KEYNES', 'MK5 8NH UK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'BSA1', 'B SAFE AT WORK', 'eileen@BSAFEATWORK.IE', '021 6010060', '15 ASHDENE', 'SOUTH DOUGLAS ROAD', 'CORK', '', 'EILEEN MAHER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'BSS', 'BSS (IRELAND) LTD.,', '', '021 4321588', 'UNIT 20,', 'SOUTH LINK PARK,', 'BALLCURREEN ROAD, GRANGE,', 'CORK.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'BT1', 'BLARNEY TRADING', 'blarneytrading@eircom.net', '4810626', 'UNIT 5 MYLER INDUSTRIAL COMPLEX', 'BALLINCOLLIG', 'CO.CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'BUC1', 'OLAN BUCKLEY', '', '086 3787678', 'SHOE REPAIRS', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'BUL1', 'BULK METERS SERVICES LTD', 'NButt@bms-ltd.com', '+44 (0)1233 740149', '3 FAVERSHAM ROAD', 'CHALLOCK', 'ASHFORD', 'KENT TN25 4BQ', 'NATHALIE BUTT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'BUR1', 'BURGESS GALVIN & CO LTD', '', '01 8342255', 'JAMESTOWN ROAD', 'FINGLAS', 'DUBLIN 11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'BUR2', 'BURTONS MOTORS', '087 4186995', '026 61061', 'CURRAGH', 'LISSARDA', 'CO CORK', '', 'FRANCIS BURTON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'BUR3', 'AISLING BURKE', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'BUS2', 'BUSINESS SOFTWARE SOLUTIONS', 'MICHAEL@BUSINESSSOFTWARE.IE', '021 4979817', 'BALLINHASSIG', 'CO CORK', '', '', 'MICHAEL KESLEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'BUT1', 'BUTLERS B&B', '', '', 'GREYSTONES', 'CO WICKLOW', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'BUT2', 'JIMMY BUTTIMER', 'jimmybuttimer@hotmail.com', '023 8847300', 'BENGOUR', 'ENNISKEANE', 'CO. CORK', '', 'JIMMY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'C&C1', 'C&C PLANT & COUNTRY TOOL HIRE LTD', 'countrytoolhire@gmail.com', '090 6481870', 'UNIT 3 MOATE BUSINESS PARK', 'CLARA ROAD', 'MOATE', 'CO WESTMEATH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'C1', 'CELTIC ELECTRICAL REWINDS', '', '029 70802', 'MILSTREET,', 'CO. CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'C14', 'CARPHONE WAREHOUSE', '', '', 'UNIT 23D WILTON,', 'CORK.', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'C16', 'CORK BEARINGS CO.', '', '4502684', '25, RATHMORE PARK,', 'POPES ROAD,', 'CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'C4', 'CAREYS TOOL HIRE', '', '021 4877400', 'UNIT 3', 'BALLINCOLLIG COMMERCIAL PARK,', 'BALLINCOLLIG,', 'CO CORK.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'C5', 'JAMES CORCORAN', 'jcorcoran@live.ie', '021 7336892', 'PANEL BEATING & SPRAYPAINTING', 'ARDRAGH', 'CROOKSTOWN', 'CO. CORK (COR13825W', 'COR13825W', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'C7', 'CHADWICKS BUILDING MATERIALS', '', '', 'SHORTCASTLE', 'MALLOW', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'C9', 'CARBERY REWINDS', '', '', '62 SOUTH MAIN STREET', 'BANDON', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'CAC1', 'C.A. COMPONENTS', 'robertloxton@yahoo.co.uk', '876431550', 'NEWGROVE', 'WHITECHURCH', 'CO CORK', '', 'ROBERT LOXTON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'CAL', 'CALTECH ELECTRICAL SUPPLIES', 'ccalnan@caltech.ie', '021 4342221', 'UNIT 3, DOUGHCLOYNE COURT IND. ESTATE', 'SARSFIELD ROAD', 'WILTON', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'CAL1', 'CALMAN TECHNOLOGY LTD', 'kend@calman.co.uk', '4.41294E+11', '2 CHALMERS PLACE', 'RIVERSIDE BUSINESS PARK', 'IRVINE', 'AYRSHIRE KA11 5DH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'CAL2', 'CALNAN CONTAINERS (IRELAND) LTD', 'mariana@calnan.ie', '021 4820260/4820261', 'BROOKLODGE', 'GLANMIRE', 'CO. CORK', '', 'MARIJANA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'CAN1', 'CANTWELL ELECTRICAL ENGINEERING LTD', 'sales@cantwell.ie', '056 8834198', 'INDUSTRIAL COMMERCIAL & DOMESTIC', 'WATER PUMP INSTALLATION', 'URLINGFORD, THURLES', 'CO TIPPERARY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'CAR1', 'AEF LTD - CARR ENGINEERING SUPPLIES', 'SALES@AEF.IE', '01 6267516', 'UNIT 7, BLOCK B, KINGSWOOD BUSINESS PARK', 'BALDONNELL ROAD LOWER,', 'DUBLIN 22', '', 'ELAINE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'CAR2', 'CAR STEREO & ALARM SYSTEMS', 'exos@eircom.ent', '021 450 4602', '9 ST PATRICK QUAY', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'CAR3', 'CARGLASS LTD T/A AUTOGLASS', '', '1850 887 933', 'UNIT G9,', 'CALMOUNT BUSINESS PARK', 'BALLYMOUNT', 'D12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'CAR4', 'CARBERY PLASTICS', 'INFO@CARBERYPLASTICS.IE', '023 8833531', 'CLONAKILTY ENTERPRISE PARK', 'CLONAKILTY', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'CAR5', 'DENIS CARROLL TV & AUDIO LTD', 'DCTVAUDIO@EIRCOM.NET', '021 7336118', 'CURRACLOUGH', 'LISSARDA', 'CO CORK', '', 'DENIS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'CAS', 'CASTLEMAHON TOOL HIRE', '', '6972002', 'CASTLEMAHON', 'CO. LIMERICK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'CAS1', 'DERMOT CASEY PLANT HIRE', 'info@dermotcasey.com', '022 21854', 'UPPER QUARTERTOWN', 'MALLOW', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'CAS2', 'CASEYS FURNITURE', '', '', '65 OLIVER PLUNKETT ST', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'CAS3', 'OLIVER CASEY PLANT HIRE LTD', 'olivercasey@gmail.com', '022 21179', 'TOWN VIEW,', 'MALLOW,', 'CO-CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'CAS4', 'CASEY ENTERPRISES', 'info@caseyconcrete.ie', '053 9421261', 'COOLISHALL', 'GOREY', 'CO WEXFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'CASH', 'CASHMAN STEEL CO. LTD', '', '2247120', 'GORTROE', 'LOMBARDSTOWN', 'MALLOW', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'CBF1', 'CB FORMS', 'INFO@CBFORMS.IE', '021 4883755', 'Unit 1B Eastlink Business Park', 'CARRIGTWOHILL', 'CO CORK', '', 'CECILIA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'CBP', 'CORK BUILDERS PROVIDERS', 'info@corkbp.ie', '021) 496 1700', 'WEST LINK', 'TOGHER', 'INDUSTRIAL ESTATE', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'CBT1', 'CB TOOL HIRE LTD', '', '021 4915806', 'UNIT 3 YOUNGLINE INDUSTRIAL ESTATE', 'TRAMORE ROAD', 'CORK    T12 T9FV', '', 'NOEL 087 7005715', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'CEA1', 'CEAI                         (SAFE PASS)', 'info@ceagroup.ie', '021 4637000', 'CORCORAN ENGINEERS & ARCHITECTS', '15 MILL ROAD', 'MIDLETON', 'CO. CORK', 'CIARA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'CEF1', 'CEF  (C0RK) Castle Electrical Factors Lt', 'sales.cork@cefltd.ie', '021 4321820', 't/a CITY ELECTRICAL FACTORS', 'UNITS 8&9 LEHENAGHBEG', 'FORGE HILL CROSS', 'TOGHER, CORK,  T12 AK31', 'FRANK MURPHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'CELS', 'CHIP ELECTRONIC SUPPLIES', '', '021 4289958', 'HOLLYHILL INDUSTRIAL ESTATE', 'HOLLYHILL', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'CENT', 'CENTENARY THURLES STORES LTD', '', '', 'CASHEL', 'CAHIR ROAD', 'CASHEL', 'CO. TIPPERARY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'CES1', 'CES CONSULTANTS', 'ciara.mccrann@ceagroup.ie', '021 4637000', '15 MILL ROAD', 'MIDLETON', 'CO CORK', '', 'CIARA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'CH1', 'CHARLEVILLE PLANT HIRE', 'info@cphltd.ie', '063 81827', 'KILLMALLOCK ROAD', 'CHARLEVILLE', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'CHOC1', 'CHOC LATTE CLEANING SERVICES LTD', 'info@chocservices.ie', '021 4861336', '14 PENROSE WHARF', 'CORK', '', '', 'BEN PRICE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'CIL1', 'CILL BHREAC HOUSE', 'INFO@CILLBHREACHOUSE.COM', '876601294', 'MILLTOWN', 'DINGLE', 'CO KERRY', '', 'ORLA & RONAN MCCARTHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'CLA1', 'CLARE OIL COMPANY LTD', '', '065 6838824', 'TIERMACLANE', 'ENNIS', 'CO CLARE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'CLA2', 'CLASSIC ENVIRONMENTAL SOLUTIONS', 'DAMIAN@CLASSICSOLUTIONS.IE', '086 3116050', 'TRAMORE COMMERCIAL PARK', 'TRAMORE ROAD', 'CORK', '', 'DAMIAN CONNOLLY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'CLE1', 'WAYNE FUEL MANAGEMENT UK LTD', 'cv.accounts@wayne.com', '0044 01422 317371', 'UNIT B8 LOWFIELDS BUSINESS PARK', 'ELLAND', 'HALIFAX     HX5 9DF', '', 'DRIJEN PATEL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'CLF1', 'CLF INTERNATIONAL', 'SCOYLE@CLF-FORWARDING.COM', '01 8358500', 'UNIT 8 & 8A', 'ASHBORNE BUSINESS PARK, ASHBOURNE', 'CO MEATH', '', 'SHEILA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'CLO1', 'CLONMEL PLUMBING SUPPLIES LTD', 'clonmelplumbing@eircom.net', '052 6123422', 'CASHEL ROAD', 'CLONMEL', 'CO TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'CLO2', 'CLONAKILTY ENGINEERING LTD', 'info@clonakiltyengineering.ie', '023 8829511', 'LAURAGH INDUSTRIAL ESTATE', 'BANDON', 'CO. CORK', 'P72 Y729', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'CLO3', 'CLOSE BROTHERS PREMIUM FINANCE IRELAND', '', '', 'ALEXANDRA HOUSE', 'THE SWEEPSTAKES BALLSBRIDGE', 'DUBLIN 4', 'ACCOUNT NO 5011502188 01', 'INSURANCE PREMIUM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'CMS', 'CORK MINI SKIPS', '', '021 4300130', 'CHURCHFIELD INDUSTRIAL ESTATE', 'CHURCHFIELD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'CMX', 'CEMEX', '', '', 'BLOCK A1', 'EAST POINT BUSINESS PARK', 'DUBLIN 3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'COCO', 'CONHOR CONSTRUCTION', '', '087 6834092', 'GROUNDWORK AND STENCIL CONCRETE SPECIA', 'BALLYMICHAEL', 'LISSARDA', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'COF1', 'THOMAS COFFEY & SON', '', '058 41936', 'STEEL FABRICATORS', 'SPRINGMOUNT', 'DUNGARVAN', 'CO WATERFORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'COG1', 'COGANS', 'info@cogans.ie', '021 4852500', 'CORK ROAD', 'CARRIGALINE', 'CO. CORK', 'P43 WK49', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'COH1', 'COH TRANSPORT LTD', 'doreen@cohtransport.com', '021 4884584', 'BALLYNABORTAGH', 'CARRIGNAVAR', 'CO. CORK', '', 'DOREEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'COL1', 'WILLIAM COLEMAN', 'POWERAIRCORK@EIRCOM.NET', '021 4554231', 'T/A DERCO MAINTENANCE', 'GLEN INDUSTRIAL ESTATE', 'RATHMORE ROAD', 'CORK', 'WILLIAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'COL2', 'COLLSOFT LIMITED', 'info@collsoft.ie', '046 9050800', 'JOHNSTOWN VILLAGE', 'NAVAN', 'CO MEATH', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'COL3', 'ALF COLLINS GLASS GLAZING', '', '021 4866350', '3 BARRYMORE COURT', 'SALLYBROOK', 'GLANMIRE', 'CO CORK', 'ALF COLLINS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'COL4', 'MARK COLLINS (WRITER.IE)', 'MARK@WRITER .IE', '', '26 WESTON ROAD', 'CHURCHTOWN', 'DUBLIN 14', '', '086 2464633', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'COL5', 'THOMAS COLLINS HEDGE CUTTING SERVICES', '', '026 48020', 'SHANDANGAN WEST', 'CARRIGADROHID', 'CO CORK', '', 'THOMAS COLLINS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'COL6', 'COLAS CONTRACTING LTD', 'INFO@COLAS.IE', '091 794659', 'DEERPARK IND ESTATE', 'ORANMORE', 'CO GALWAY', '', 'CATHAL LEONARD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'COM1', 'COMERAGH OIL', '', '', 'DUNGARVAN BUSINESS PARK', 'DUNGARVAN', 'CO WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'CON1', 'NIDEC INDUSTRIAL AUTOMATION IRELAND', 'conor.steed@mail.nidec.com', '045 448200', 'FORMERLY KNOWN AS', 'CONTROL TECHNIQUES IRELAND', 'NEWBRIDGE INDUSTRIAL ESTATE', 'NEWBRIDGE, CO KILDARE', 'CONOR STEED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'CON2', 'CONNEXION DEVELOPMENTS LTD', 'sales@solenoid-valves.com', '0044 1454 334990', 'UNIT3 RAINBOW COURT', 'ARMSTRONG WAY', 'YATE', 'BRISTOL  BS37 5NG   UK', 'JAMES DARBY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'CONC', 'CONCRETE MANUFACTURING COMPANY LTD', '', '193 24315', 'BALLYGADDY ROAD', 'TUAM', 'CO. GALWAY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'CONO', 'CONOCOPHILLIPS WHITEGATE REFINERY LTD', '', '021 4622244', 'WHITEGATE', 'MIDLETON', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'COO1', 'COONEY\'S GARAGE COACHFORD LTD', '', '', 'COACHFORD', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'COO2', 'COOGAN AGRI & GENERAL HARDWARE', '', '0402 38111', 'LUGDUFF', 'TINAHELY', 'CO WICKLEY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'COO3', 'LLOYD COONEY', '', '', 'EX EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'COO4', 'COOMBES HRM', 'sandracoombes@coombeshrm.ie', '021 4943940', 'WATERFRONT BUSINESS CENTRE', '5 LAPPS QUAY', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'COP1', 'COPPEEN CONCRETE', 'INFO@COPPEENCONCRETE.COM', '023 8847205', 'COPPEEN', 'ENNISKEANE', 'CO CORK', '', 'JIM/THERESE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'COP2', 'COPY QUIP LTD', 'info@copyquip.ie', '214892720', '5 DOUGHCLOYNE COURT', 'DOUGHCLOYNE IND ESTATE', 'WILTON CORK', '(SC ?221.40 PER QTR)', 'BILLY SWEETMAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'COR1', 'CORPAX LTD', 'jimnoconnor@gmail.com', '021 7336927', 'CRONINS YARD', 'CROOKSTOWN', 'CO CORK', '', 'JIM O CONNOR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'COR2', 'CORERFID LTD', 'RICHARD@CORERFID.COM', '0044 0845 0710985', 'DALLAM COURT', 'DALLAM LANE', 'WARRINGTON WA2 7LT', 'ENGLAND            (Invoiced in EURO)', 'RICHARD HARRISON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'COR3', 'CORK COUNTY COUNCIL', '', '', 'GRANT FROM ENTERPRISE BOARD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'COR4', 'CORK WINDOW BLINDS', 'GAVAN@CORKWINDOWBLINDS.IE', '087 6845556', 'SILVERBIRCH', 'MONASTERY ROAD', 'ROCHESTOWN', 'CORK', 'GAVIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'COR5', 'CORK CHAMBER SKILLNET', 'kate@corkchamber.ie', '021 4530142', 'CORK CHAMBER', 'FITZGERALD HOUSE', 'SUMMERHILL NORTH', 'CORK', 'KATE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'COS1', 'COSGRAVE BROS (OIL PRODUCTS) LTD', 'cosgrove_oil@eircom.net', '061 377777', 'GOUIG', 'CASTLECONNNELL', 'CO LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'COST', 'COSTELLO QUARRY LTD', '', '61399444', 'BRUREE', 'CO. LIMERICK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'COU1', 'COUNTY WIDE DRAIN SERVICES LTD', 'info@countywidedrains.com', '021 7334550', 'CRONODY', 'DRIPSEY', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'COU2', 'COUNTRY CLEAN RECYCLING', 'sales@countryclean.ie', '022 46848', 'BALLYGOWN', 'MALLOW', 'CO CORK', '', 'KATE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'CRE1', 'KEVIN CREEDON TRANSPORT', '', '', 'RATHARD', 'AHERLA', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'CRE2', 'CREATIVE DESIGN NEW MEDIA LTD', 'info@creativedesign.ie', '021 7337144', 'ELMHURST', 'FORNAUGHT', 'DONOUGHMORE', 'CO CORK', 'ANTHONY MCCARTHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'CRO1', 'CRONIN PRECISION ENGINEERING LTD', '', '023 8845498', 'DERINACAHARA', 'DUNMANWAY', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'CRO2', 'CROWLEY CHEMICALS LTD', 'info@crowley-group.com', '021 4962288', 'UNIT 3, SOUTH LINK PARK', 'BALLYCURREEN', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'CRO3', 'MICHAEL CRONIN (READYMIX) LTD', '', '064 6631307', 'COOLCASLAGH', 'KILLARNEY', 'CO KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'CRO4', 'CORNELIUS CRONIN', '', '021 7336338', 'CRONIN\'S YARD', 'CROOKSTOWN', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'CRO5', 'CROSSBARRY PRECISION ENGINEERING LTD', 'crossbarry.precision@oceanfree.net', '021 4885737', 'CURRA', 'CROSSBARRY', 'INNISHANNON', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'CRO6', 'CRONIN COMMERICALS & REPAIR LTD', 'info@cronincommercial.ie', '023-884-5498', 'Derrynacaheragh,', 'DUNMANWAY', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'CRO7', 'CROOKSTOWN GARAGE LTD', 'dukiesheehan@yahoo.ie', '021 7336557', 'CROOKSTOWN VILLAGE', 'CROOKSTOWN', 'CO CORK', 'P14 E403', 'MARTIN SHEEHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'CRO8', 'CROWLEY SOLICITORS', 'twalsh@crowleysolicitors.ie', '021 4289560', 'THE OFFICERS\' MESS', 'OLD FRT ROAD', 'BALLINCOLLIG', 'CORK P31YH66', 'TRACY WALSH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'CRO9', 'TOMMY CRONIN', '', '', 'MAINTENANCE', 'BERRINGS', 'CO CORK', '', '087 6497914', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'CRON1', 'CRONIN FENCING', '', '026 46995', 'KILNAROVANAGH', 'TOAMES', 'MACROOM', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'CTS', 'CENTRE TANK SERVICES LTD', 'administraror@centretank.', '4.41214E+11', 'UNIT 41 MINWORTH INDUSTRIAL PARK', 'FORGE LANE', 'MINWORTH, SUTTON COLDFIELD', 'B76 1AH. U.K', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'CTS1', 'CORK TREE SURGEONS', 'info@corktreesurgeons.com', '214820508', 'BROOKLODGE,', 'GLANMIRE,', 'CO. CORK', '', 'JOHN CARROLL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'CUL1', 'CULLEN EXCAVATIONS LTD', '', '01 2873818', 'BALLYGANNON', 'KILCOOLE', 'CO WICKLOW', '', 'NIALL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'CUN1', 'CUNNEEN LOCK & SAFE LTD', 'info@corklocks.ie', '214274803', '21 OLIVER PLUNKETT STREET', 'CORK', '', '', 'EMER/paul', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'CUR', 'M J CURRAN & SONS LTD', '', '058 41022', 'KILRUSH BUSINESS PARK', 'DUNGARVAN', 'CO. WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'CUR1', 'DENIS CURTIN LTD', 'dc@deniscurtin.eu', '021 4346098', '19 FERNWOOD CLOSE', 'WILTON', 'CORK', '', 'DENIS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'CUS1', 'CUSSEN & CO (CRANE HIRE) LTD', 'INFO@CUSSENCRANEHIRE.IE', '061 228855', 'UNIT 3 DOCK ROAD COMMERCIAL PARK', 'DOCK ROAD', 'LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'CUS2', 'CUSTOM ENGINEERING', 'INFO@CUSTOMENGINEERING.IE', '021 4308988', 'UNIT 5', 'SHANNON BUILDINGS', 'MALLOW ROAD', 'CORK', 'PAUL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'CUT1', 'CUTTING EDGE TREE CARE', 'cuttingedgetreesurgery@gmail.com', '086 1004153', 'CHARLESFIELD', 'LYRE', 'BANTEER', 'CO CORK', 'BRIAN HEGARTY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'CWA1', 'C W ASHE & CO SOLICITORS', 'reception@cwashe.ie', '026 41005', 'SOUTH SQUARE', 'MACROOM', 'CO CORK', 'P12 YA39', 'SIOBHAN LYDON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'D+L', 'D+L HIRE', '', '066 7125722', 'MAIN STREET', 'DINGLE', 'CO. KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'D1', 'D.C GRAPHICS', 'DCGRAPH@INDIGO.IE', '021 4877665', 'CUIL GREINE HOUSE', 'THE COMMERCIAL PARK', 'LINK ROAD, BALLINCOLLIG', 'CO CORK', 'DERRY/TOM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'D11', 'DAIRY & ENGINEERING SERVICES', '', '', 'IDA INDUSTRIAL ESTATE', 'KILMALLOCK', 'CHARLEVILLE', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'D2', 'DWYERS OF CORK', '', '021 4965880', 'SOUTHSIDE INDUSTRIAL ESTATE', 'TOGHER', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'D4', 'DPL', '', '021 4964955', 'KINSALE ROAD,', 'CORK.', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'D5', 'DUGGAN STEEL', '', '029 70039', 'MAIN STREET', 'MILLSTREET', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'D9', 'DAN DONOVAN & CO. LTD.', 'dandonovanltd@gmail.com', '021 7332153', 'GENERAL MERCHANTS,', 'BALLYSHONIN,', 'BERRINGS.', '', 'Joe O Herlihy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'DAI1', 'DARIYWOOD PRODUCTS', '', '021 7338330', 'THE OLD CREAMERY', 'MOSSGROVE', 'BANDON', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'DAT1', 'DATA SYSTEMS', '', '058 42544', 'DATA HOUSE', '32 MARY STREET', 'DUNGARVAN', 'CO WATERFORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'DAT2', 'DATALINK COMMUNICATIONS LTD', 'tony@datalinkcom.net', '091 840838', 'UNIT 1, INDUSTRIAL COMMUNICATIONS HOUSE', 'CLOGHAUN, KILCHREEST', 'LOUGHREA', 'CO. GALWAY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'DAV1', 'DAVIES TURNER IRELAND LTD', '', '01 8043500', 'UNIT 3, ORION BUSINESS CAMPUS', 'NORTHWEST BUSINESS PARK', 'BLANCHARDSTOWN', 'DUBLIN 15', 'DAVID WALSHE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'DCC', 'DERMOT CROWLEY COATING LTD', 'info@crowley-group.com', '021 4962288', 'AUTOMOTIVE AND INDUSTRIAL PAINTS', 'UNIT3,SOUTH LINK PARK', 'BALLYCURREEN', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'DCD1', 'DCD DIRECT', 'accounts@dcddirect.co.uk', '4.41903E+11', 'UNIT 9&10  STRAWBERRY LANE IND EST', 'WILLENHALL', 'WEST MIDLANDS', 'WV13 3RS', 'CHRISTINE/VAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'DCE', 'DO NOT USE   DCE COMPUTERS   --', 'sales@dcecomputers.ie', '217334861', 'DO NOT USE -A/C UPDATE JULY 2017-  DCE1', 'COOLACULLIG', 'COACHFORD', 'CO.CORK', 'Tom Walsh/John', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'DCE1', 'DCE COMPUTERS LTD', 'accounts@dcecomputers.ie', '021 7334681', 'COOLACULLIG', 'COACHFORD', 'CO. CORK', 'STEVE 0876350586', 'TOM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'DCH1', 'D CRANE HIRE LTD', 'dcranehire@gmail.com', '053 9376238', 'GURTEEN', 'BUNCLODY', 'CO WEXFORD', '', 'MARGARET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'DEC', 'DECIE FUELS', '', '5845151', 'THE BURGERY', 'DUNGARVAN', 'CO. WATERFORD.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'DEM', 'DEMESNE ELECTRICAL SALES LTD.', 'chris@demesne.ie sandra.kelly@demesne.ie', '14047700', 'THE SQUARE INDUSTRIAL COMPLEX', 'TALLAGHT', 'DUBLIN 24', 'D24 ED71', 'SANDRA KELLY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'DES1', 'DESSIES TYRES', '', '', 'BLACKPOOL SERVICE STATION', '62 WATERCOURSE ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'DES2', 'DES BRENNAN, t/a PRODRIVER TRAINING', 'brennandes@yahoo.ie', '021 4962945', 'MARVIN', 'LOWER FRIAR\'S WALK', 'CORK', '', 'DES BRENNAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'DG', 'DAIRYGOLD ARGI BUSINESS LTD', '', '021 7336007  Muskerry', 'MALLOW', 'CO CORK', 'MUSKERRY', '', 'MARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'DGP1', 'D G PRESS LTD', 'DGPRESSLTD@GMAIL.COM', '046 9248100', 'KELLS BUSINESS PARK', 'KELLS', 'CO. MEATH', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'DID1', 'DID ELECTRICAL', 'BANDON@DID.IE', '', 'UNIT 2/3 BANDON RETAIL PARK', 'BANDON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'DIN1', 'DINN RI GROUP', 'mailto:info@dinnri.com', '353 599133111', 'TULLOW STREET', 'CARLOW', '', '', 'SHARON/AVRIL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'DLG', 'D.L.GROUP', '', '4876650 /4877149', 'CONSULTING ENGINEERS', '1 HODDERS VILLAS', 'BALLINCOLLIG', 'CO. CORK', 'TIMMY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'DLG1', 'DL GROUP', 'laura.lynch@dlgroup.ie', '021 4876650', 'CONSULTING ENGINEERS', '1 HODDERS VILLAS', 'BALLINCOLLIG', 'CO CORK', 'TIM & CHRIS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'DLS', 'DL SAFETY LTD', '', '214313711', 'T/A JBS LTD', 'KINSALE ROAD INDUSTRIAL ESTATE', 'KINSALE ROAD', 'CORK CITY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'DNM1', 'DNM TURNKEY LTD', 'INFO@DNMTURNKEY.COM', '021 7335678', 'CRONINS YARD', 'CROOKSTOWN', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'DON1', 'DONNELLAN\'S HARDWARE', '', '061 367170', 'KILKISHEN', 'CO. CLARE', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'DOU1', 'DOUGLAS CALIBRATION SERVICES', 'info.dcs@joneseng.com', '021 4510700', 'EURO BUSINESS PARK', 'LITTLE ISLAND', 'CORK', 'T45 K510', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'DOW1', 'DOWNEY CLEANING SERVICES', 'INFO@DOWNEYCLEANING.IE', '021 4516901', 'ST ANTHONYS', 'DROMIN LANE', 'TOWER BLARNEY', 'CO CORK', 'ALAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'DRE1', 'JOSEPH DRENNAN', 'drennanjody@yahoo.ie', '021 4833032', 'WHITE LODGE', 'MYRTLEVILLE', 'CO CORK', '', 'JOSEPHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'DRI', 'DRINAGH SALES LIMITED', '', '028 30800', 'DRINAGH', 'CO. CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'DSM1', 'D SCHOOL OF MOTORING', 'johndaly999@hotmail.com', '087 3292222', 'APT 1 TUDOR GROVE', 'STATION ROAD', 'BALLINCOLLIG', 'CO. CORK', 'JOHN DALY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'DTS', 'DTS ENTERPRISES, INC.', '', '', '820 WHITE CHURCH ROAD', 'BROOKTONDALE', 'NY 14817', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'DUC1', 'DUCON CONCRETE LTD', '', '029 56037', 'KANTURK', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'DUG1', 'DUGGAN TANKER PARTS LTD', 'DUGGANTANKERPARTS@EIRCOM.NET', '091 798306', 'KILTROGUE', 'CLAREGALWAY', 'CO GALWAY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'DUG2', 'DUGGAN STEEL (CORK) LTD', 'SALESCORK@STEEL.IE', '023 41166', 'PARNELL STREET', 'BANDON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'DUN', 'DUNMANWAY TOOL HIRE', '', '2355153', 'MAIN STREET', 'DUNMANWAY', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'DUN1', 'DUNKEEN OIL', '', '0502 62777', 'DUBLIN ROAD', 'PORTLAOISE', 'CO LAOIS', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'DUN2', 'DUNEDIN', 'tonykirk@eircom.net', '059 9159814', 'AN NEAD', 'BALLYKEALY', 'BALLON', 'CO. CARLOW', 'TONY KIRK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'DUN3', 'DUNNES STORES', '', '026  43444', 'MACROOM', 'CO CORK', '', '', 'NOREEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'DWLG', 'DOWLINGS ELECTRICAL REPAIRS', '', '', 'MALLOW ROAD', 'KANTURK CO. CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'E2', 'EUROQUIPE SALES & SERVICES LTD', 'info@euroquipe.ie', '021 4810977', 'IN LIQUIDATION', 'SEE TRIACE - HAVE TAKEN OVER BUSINESS', 'SINECE JULY 2012', '', 'BARRY HOLLAND', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'E3', 'SCOTT ENGINEERING LTD', 'hildadscott@gmail.com', '045 895895', 'CONFREYS ,', 'CRADDOCKSTOWN,', 'NAAS,', 'CO. KILDARE.', 'HILDA SCOTT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'EAS1', 'EASYPEN LTD', '', '01 8702160', '21 SCHOLARS WALK', 'LUSK', 'CO DUBLIN', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'EAS2', 'EASTFIELD PROCESS EQUIPMENT', 'j.brittain@btconnect.com', '0044 1302 751444', 'EASTFIELD FARM', 'TICKHILL', 'DONCASTER SOUTH YORKSHIRE', 'DN11 9JD ENGLAND', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'EAS3', 'EAST CORK JOURNAL', '', '214638000', 'UNIT 9 THE SQUARE', 'COACH HORSE LANE', 'MIDLETON', 'CO CORK', 'CIARA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'EAST', 'EASTERN ELECTRICAL', '', '214353001', 'UNITS 13/14', 'SITECAST INDUSTRIAL ESTATE', 'LITTLE ISLAND', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'EASY', 'EASYSYNC LTD,', 'www.easysync.co.uk', '1414180181', '373 SCOTLAND STREET,', 'GLASGOW,', 'G5 8QB', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'ECC', 'EAST CORK CRANE HIRE LTD', 'info@eastcorkcranehire.ie', '021 4883304', 'CARRIGTWOHILL INDUSTRIAL ESTATE', 'CARRIGTWOHILL', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'ECM1', 'ELECTRICAL CONTROLS MANUFACTURING LTD', 'neil@ecm.ie', '021 2340050', 'SITECAST INDUSTRIAL ESTATE', '18 LEE PARK, POULADUFF ROAD', 'LEHENAGH BEG', 'CORK  T12 FH42', 'NEIL O CALLAGHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'EDD', 'EDDIE HIGGINS', '', '5842244', 'MOTOR REPAIRS', 'THE BURGERY', 'DUNGARVAN', 'CO. WATERFORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'EDM1', 'EDMUNDSON ELECTRICAL IRELAND', '', '', 'GARDNER HOUSE', 'WILTON PLACE', 'DUBLIN 2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'EFL1', 'EFLOW', '', '1890 50 10 50', 'PO BOX 11302', 'DUBLIN 17', '', '', 'A/C#37476906', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'EIR1', 'EIR', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'ELA1', 'ELAFLEX LTD', 'sales@elaflex.co.uk', '0044 1992 452950', 'RIVERSIDE HOUSE', 'PLUMPTON ROAD', 'HODDESDON', 'HERTS EN11 0PA ENGLAND', 'TONY/GEOFF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'ELE1', 'DO NOT USE THIS A/C      ELECTRO SYSTEMS', 'luceyelec@gmail.com', '086 2240852', 'LUCEY ELECTRICAL SERVICES LTD', 'KILMORE', 'BANDON', 'CO. CORK', 'JOHN LUCEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'ELI1', 'ELITE CAR VALETING', '', '087 6976633', '2 CRANFORD PINES', 'BALLINCOLLIG', 'CO. CORK', 'http://elitevaletingcork.com', 'FOSTER RILEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'ENG', 'EN-GARDE FENCING LTD', 'ENGARDEFENCING@EIRCOM.NET', '214652961', 'BALLINVOHER', 'CLOYNE', 'CO.CORK', '', 'DONNIE MC CARTHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'ENG1', 'ENGINEERING & POWER TOOLS LTD', '', '059 9143300', 'POLLERTON IND EST', 'HACKETSTOWN ROAD', 'CARLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'ENR1', 'BRIAN ENRIGHT', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'ENV1', 'ENVA IRELAND LIMITED', 'accountsreceivableireland@enva.com', '01 4018000', 'BLOCK 402 GRANTS DRIVE', 'GREENOGUE BUSINESS PARK', 'RATHCOOLE', 'CO DUBLIN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'ENV2', 'ENVIROGLAN LTD', 'corkplynch@gmail.com', '086 2500480', '14 SILVERHILL', 'HERONS WOOD', 'CARRIGALINE', 'CO. CORK', 'PAUL LYNCH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'EPH1', 'EPH CONTROLS', 'SALES@EPHCONTROLS.IE', '214346238', '4 DOUGHCLOYNE COURT', 'DOUGHCLOYNE IND. EST.', 'WILTON', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'EPS', 'ELECTRICAL AND PUMP SERVICES LTD', 'abrowne@epswater.com', '022 31200', 'MALLOW BUSINESS & TECHNOLOGY PARK', 'MALLOW', 'CO. CORK', '', 'AUDREY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'ERI1', 'ERIKS INDUSTRIAL SERVICES LTD', 'sales@eriks.ie', '01 8568540', 'U40 FINGLAS BUSINESS CENTRE', 'JAMESTOWN RD', 'DUBLIN D11 CF90', '', 'Tony Summersby', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'ERS', 'ERS WATERFORD LTD', 'conor@erswaterford.ie', '051 8789333', 'NEWGATE STREET', 'WATERFORD', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'ESB', 'ESB', '', '1850 372 372', 'ESB PETRO A/C MACROOM 950895501', 'ESB DOL A/C  CROOKSTOWN 901316388', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'ESI', 'ESI TECHNOLOGICS LTD', '', '021 4510900', 'NORTH ESK BUSINESS PARK', 'DUNKETTLE', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'ESY1', 'EASYTRIP SERVICES IRELAND LTD', 'info@easytrip.ie Jennifer.Gaffney@easytr', '01 8613200 / 1890 676768', 'EA HOUSE', 'DAMASTOWN INDUSTRIAL ESTATE', 'MULHUDDART', 'DUBLIN 15', 'Jennifer Gaffney', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'EUR1', 'EUROJET', '', '214639116', 'THE CREAMERY', 'BALLYRICHARD', 'CARRIGTWOHILL', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'EUR2', 'EUROPLAN PERSONNEL SERVICES LTD.', '', '5225646', 'EUROPLAN HOUSE', 'GURTNAFLEUR BUSINESS PARK', 'CLONMEL', 'CO. TIPPERARY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'EUR3', 'EUROPUMPS IRELAND', 'info@europumps.ie', '021 4810977', 'UNIT 11, WESTPOINT TRADE CENTRE', 'LINK ROAD', 'BALLINCOLLIG', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'EUR4', 'EUROPEAN PUMP SERVICES LTD', 'europeanpumps@btinternet.com', '0044 1403 701177', 'NORTHLANDS', 'WISBOROUGH GREEN', 'BILLINGSHURST', 'WEST SUSSEX  RH14 0QJ', 'IAN MAC RAE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'EWL1', 'EWL ELECTRICAL', 'cork.307@ewl.ie   IRCO@EWL.IE', '021 4546566', 'DOUGHCLOYNE IND ESTATE', 'WILTON', 'CORK', '', 'CAROL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'EXAM', 'IRISH EXAMINER', '', '021 4272722', 'CITY QUARTER', 'LAPPS QUAY', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'EXP', 'EXPANSYS UK LTD', '', '4.41619E+11', 'UNIT 1 KIWI PARK', 'WESTINGHOUSE ROAD', 'TRAFFORD PARK', 'MANCHESTER, M17 1HW, UK.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'EXP1', 'EXPRESS INDUSTRIAL ELECTRONIC REPAIR', 'SCSERVICE@EIRCOM.NET', '022 48577', 'SCS ALTAMIRA LISCARROLL', 'MALLOW', 'CO CORK', '', 'KENNITH MCFRUIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'F&M1', 'F&M MOTORS', 'fmmotors@eircom.net', '0504 21188', 'STRADAVOHER', 'THURLES', 'CO TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'F1', 'FARNELL', '', '1800 936 198', 'C/O FARNELL, CANAL ROAD', 'LEEDS, UNITED KINGDOM', 'LS12 2TU', 'ENGLAND', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'F3', 'FARNANES ENGINEERING LTD.', '', '021 7336600', 'CUSTOM METAL FABRICATION', 'FARNANES,', 'CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'F4', 'FORECOURT SUPPLIES LTD.,', 'forecourtsupplie@iol.ie', '01/8224980', 'UNIT 12, BLANCHARDSTOWN,', 'CORPORATE PARK,', 'DUBLIN 15.', '', 'barbara/JOHN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'F5', 'FLOW MANAGEMENT LTD,', 'ned@flow-management.ie', '01 4564789', '6 TURNPIKE BUSINESS PARK,', 'BALLYMOUNT,', 'DUBLIN 22.', '', 'Ned Hogan', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `suppliers` (`id`, `supplier_code`, `name`, `email`, `work_phone`, `address_1`, `address_2`, `address_3`, `address_4`, `notes`, `created_at`, `updated_at`) VALUES
(286, 'F6', 'FUELTEK LTD', 'fueltek@fueltek.co.uk', '4.41254E+11', 'LANG COURT,', 'NUTTALLS WAY,', 'BLACKBURN', 'BB1 2JT', 'MARTIN,MARK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'FAH1', 'FAHEY CONSTRUCTION BUILDING & CIVIL ENG.', 'PHILIP@FAHEYCONSTRUCTION.COM', '214821646', 'KILLYDONOGHUE', 'GLANMIRE', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'FAN1', 'FANE ELECTRICAL & MECHANICAL ENGINEERING', 'feme@eircom.net', '872504875', 'FORECOURT SERVICES', 'INNISKEEN', 'DUNDALK', 'CO LOUTH', 'TREACY/BERNARD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'FAR1', 'THOMAS FARRELL & SONS (GARAGES) LTD', '', '051 386353', 'WATERFORD ROAD', 'TRAMORE', 'CO WATERFORD', '', 'BERNIE/THOMAS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'FAR2', 'TOMMY FARRELLY', 'INFO@TOMMYFARRELLY.IE', '049 8547472', 'PRESSURE WASHERS LTD', 'COPPENAGH', 'VIRGINIA', 'CO CAVAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'FAR3', 'FARRELL RETAIL LTD', '', '085 7085560 BRIAN', 'CULLINAGH', 'BALLINA/KILLALOE', 'CO TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'FAS2', 'FASTWAY CORK', 'cork.labels@fastway.ie', '0818 293998', 'CATNAPS COURIERS LTD', '7 HARBOUR POINT & COURTSTOWN PARK', 'LITTLE ISLAND', 'CORK T45 X299', 'sheilann.hodnett@fastway.ie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'FAV1', 'FAVAGROSSA EDOARDO SRL', 'mboselli@favagrossa.com', '0039 0375 283311', '51 VIA LEPANTO', '26041 RONCADELLO CR', 'ITALY', '', 'MARCO BOSELLI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'FBD1', 'FBD INSURANCE PLC', '', '', 'MOTOR FLEET THROUGH MARSH/JLT IRELAND', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'FEA', 'FEALE VALLEY PLANT HIRE', 'info@fealevalley.ie', '068 31219', 'CLASH ROAD', 'ABBEYFEALE', 'CO LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'FH 1', 'FITZGERALD\'S HOMEVALUE', '', '066 9151177', 'BALLINABOULA', 'DINGLE', 'CO. KERRY+', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'FHB1', 'FHB', '', '061 362410', 'SMITHSTOWN', 'SHANNON', 'CO CLARE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'FIB 1', 'FIBRELITE COMPOSITES LTD', 'OLIVIA@FIBRELITE.COM', '4.41757E+11', 'SNAYGILL INDUSTRIAL ESTATE', 'KEIGHLEY ROAD', 'SKIPTON N. YORKSHIRE', 'BD23 2QR UK', 'OLIVIA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'FIB 2', 'FIBRELITE COMPOSITES LTD   STERLING A/C', 'Barry, Michael <michael@fibrelite.com>', '0044 01756 799773', 'SNAYGILL INDUSTRIAL ESTATE', 'KEIGHLEY ROAD', 'SKIPTON', 'NORTH YORKSHIRE, BD23 2QR,   UK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'FIC1', 'FINANCIAL INDEPENDENT CORPORATION', '', '+353 21 4915999', 'UNIT 1 BUILDING 6500', 'AIRPORT BUSINESS PARK', 'CORK', '', 'TONY SEXTON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 'FIL1', 'FILTERTECHNIK LTD', 'sales@filtertechnik.co.uk', '+44 (0)1159 003 600', '1 CENTRAL PARK LENTON LANE', 'NOTTHINGHAM', 'NG7 2NR', 'ENGLAND', 'SHARON MCMAHON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'FIR1', 'FIRST DATA GLOBAL SERVICES LTD', '', '0818 762 100', 'FIRST DATA GLOBAL LEASING', 'BLOCK 6, BELFIELD OFFICE PARK', 'BEAVER ROW, CLONSKEAGH', 'DUBLIN 4', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'FIT', 'FITZGERALD FORECOURT APPLIANCES LTD', '', '', 'THOMASTOWN', 'GOLDEN', 'CASHEL', 'CO. TIPPERARY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'FIT1', 'RICHARD FITZGERALD', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'FITZ', 'FITZGERALD,S TYRES', '', '6821040', 'CHURCH STREET', 'LISTOWEL', 'CO. KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'FIV1', 'FIVE STAR SERVICES LTD', '', '086 8052485', '19 ARD FIELD ROAD', 'GRANGE', 'DOUGLAS', 'CORK', 'LUKASZ MOSON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 'FLO1', 'FLOGAS LTD', '', '041 9815700', 'KNOCKBRACK HOUSE', 'DONORE ROAD', 'DROGHEDA', 'CO. LOUTH', 'DONAL DERBY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 'FLY1', 'FLYNN CRANE HIRE', 'flynncranehire@eircom.', '045 900709', 'CROSSCHAPEL', 'BLESSINGTON', 'CO WICKLOW', '', 'COLM FLYNN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 'FLYN', 'FLYNNS HARDWARE', '', '', 'IDA INDUSTRIAL ESTATE', 'CAPPOQUINN', 'CO. WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 'FOL1', 'FIONA FOLEY & CO.', 'fiona@fionafoley.ie', '021 4877170', 'SOLICITORS', 'JOYCE HOUSE', 'BARRACKS SQUARE', 'BALLINCOLLIG, CO CORK', 'FIONA FOLEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'FOR1', 'FORREST PRINT & STATIONERY', '', '021 4212689', 'WESTLINK BUSINESS PARK', 'OLD MALLOW ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'FQS1', 'FQS QUALITY SYSTEMS', 'PETER@FQS.BIZ', '021 4372882', '2 RIVERSIDE', 'CHURCH ROAD', 'CARRIGALINE', 'CO CORK', 'PETER FITZGERALD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 'FRA', 'FRANK HOGAN LTD', '', '61416000', 'DUBLIN ROAD', 'LIMERICK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'FRA1', 'FRAHER PLANT & TOOL HIRE LTD', '', '058 45500', 'DUNGARVAN', 'CO WATERFORD', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 'FRE1', 'FREDERICK FOLLOWS LIMITED', 'sales@frederickfollows.co.uk', '4.41214E+11', '129 PHILLIPS STREET', 'ASTON', 'BIRMINGHAM', 'B6 4PT', 'SAMANTHA HART', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'FTW', 'FRANK TWOMEY', '', '026 41147', 'WEST SQUARE', 'MACROOM', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 'G2', 'G.F.PLANT SPARES', '', '043 22022', 'MOYDOW,', 'CO. LONGFORD.', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 'GAL1', 'Galco (cork) Ltd.', '', '021/4318411', 'Tramore Road,', 'Cork.', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 'GAL2', 'GALLEN CRANE & TRUCK HIRE LTD', 'INFO@GALLEN.IE', '045 870943', 'STATION ROAD', 'ALLENWOOD', 'NAAS CO KILDARE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 'GAL3', 'FINBARR GALVIN LTD', 'INFO@FINBARRGALVIN.IE', '023 8820555', 'CLONAKILTY ROAD', 'BANDON', 'CO CORK', '', 'BRIAN DUGGAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 'GAR1', 'GARDEN SHEDS 4 LESS LTD', 'sales@gardensheds4less.ie', '', '35 UPPER PATRICK STREET', 'KILKEENY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 'GEM1', 'GEMA INFOS S.R.O.', '', '00420 266 109 311', 'ODERSKA 333', '196 03 PRAHA 9', 'CZECH REPUBLIC', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'GEN1', 'GENERAL HARDWARE SUPPLIES LTD', '', '069 77978', 'STATION ROAD', 'NEWCASTLE WEST', 'CO LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 'GER1', 'GERMAINES', '', '059 6481005', 'INISFAIL HOUSE', 'MAIN STREET', 'BALTINGLASS', 'CO WICKLOW', 'LOUISE FLEMING', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'GIL2', 'GILBARCO VEEDER-ROOT', '', '0044 2083 921355', 'HYDREX HOUSE', 'GARDEN ROAD', 'RICHMOND, SURREY, TW9 4NR', 'UK', 'SALLY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'GL M', 'GLENVIEW MOTORS LTD', 'info@glenview.ie', '026 41267', 'MACROOM VEHICLE TESTING CENTRE', 'GURTEENROE', 'MACROOM', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'GLA1', 'GLANMIRE PRECISION (VALWIN LIMITED)', 'GLANMIKREPRECISION@EIRCOM.NET', '021 4866290', 'GLANMIRE BUSINESS PARK', 'GLANMIRE', 'CO CORK', '', 'EMER STEPHENSON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 'GLA2', 'GLANBIA', '', '058 47102', 'BALLINAMULT', 'CO WATERFORD', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'GLE', 'GLENARA CONCRETE', '', '087 8265306', 'KILLAHALLA WEST', 'CAPPAQUIN', 'CO. WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'GLE1', 'GLEESON QUARRIES', '', '052 56117', 'LAFFANSBRIDGE', 'THURLES', 'CO TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'GLO1', 'GLOBAL WASH ENTERPRISE LTD', 'Ollie Carroll <olliecarroll@eircom.net>', '', 'LAYTOWN ROAD', 'JULIANSTOWN', 'CO MEATH', '', 'OLLIE CARROLL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'GLY', 'GLYNN\'S', '', '093 51328', 'HOMEVALUE HARDWARE', 'MILLTOWN', 'CO. GALWAY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'GPT1', 'GPT PLANT & TOOL HIRE', 'limerick@gpthire.ie', '061 313637', 'BALLYSIMON ROAD', 'LIMERICK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 'GRE', 'GREER PUBLICATIONS', '', '', '5B EDGEWATER BUSINESS PARK', 'BELFAST HARBOUR ESTATE', 'BELFAST', 'CO. ANTRIM, BT3 9JQ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 'GRE1', 'GRENKE LTD', 'service-ie@grenkreleasing.com', '12923400', 'SUITE 306 Q-HOUSE', 'FURZE ROAD', 'SANDYFORD INDUSTRIAL EST.', 'DUBLIN 18 ****QUARTERLY PAYMENT******', 'SINEAD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'GRI1', 'OLIVE GRIMLEY HR CONSULTANT', 'OLIVE@OLIVEGRIMLEY.COM', '021 4319072', '17 MARIAN PARK', 'VICTORIA ROAD', 'CORK', 'T12 V62A', 'OLIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 'GUE1', 'P. J. GUERIN LTD', '', '021 4306416', 'KILCULLY', 'WHITES CROSS', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'GWS1', 'GWS ENGINEERING & INDUSTRIAL SUPPLIES LT', 'info@gwscork.ie', '021 4875878', 'LINK ROAD', 'POULAVONE', 'BALLINCOLLIG', 'CO CORK P31 YK61', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'H&HE', 'HOSETECH LTD', 'SALES@HOSETECH.IE', ' 021 4520600', 'EURO BUSINESS PARK', 'LITTLE ISLAND', 'CO. CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'H3', 'BROOKS HAUGHTON', '', '021 4275191', 'P.O. BOX 100,', 'SOUTH TERRACE,', 'CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'HAC1', 'HACKETTS', 'cork@hackettdigital.ie', '021 4274014', '4/5 COPLEY STREET', 'CORK', '', '', 'BRIAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'HAN1', 'HANLEY AUTOMATION', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'HAN2', 'M HANLEY KILWORTH LTD', '', '025 27147', 'MONADRISHANE', 'KILWORTH', 'FERMOY', 'CO CORK', 'MAURICE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'HAR', 'HARDWARE HOUSE', '', '4812341', '1-2 HARBOUR ROW', 'COBH', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 'HAR1', 'HARRINGTON CONCRETE', '', '094 67072', 'KILKELLY', 'CO MAYO', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'HAR2', 'HARTECAST LIMITED', 'INFO@HARTECAST.COM', '051 424922', 'CLONROCHE', 'ENNISCORTHY', 'CO WEXFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'HAR3', 'ELIZABETH HARRINGTON', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 'HAV1', 'THE HAVEN LODGE', '', '', 'WELLINGTONBRIDGE', 'CO WEXFORD', 'ASK MARGARET FOR DETAILS', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'HEA1', 'DENNIS HEALY & COMPANY SOLICITORS', 'SUSANDOYLE@HEALYSOLICITORS.IE', '021 7279444', '6 ANGLESEA VILLAS', 'ANGLESEA STREET', 'CORK', '', 'SUSAN DOYLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'HEF1', 'HEFFERNAN ESTATES', '', '', 'MACROOM', 'CO CORK', '', '', 'TOM HEFFERNAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'HEG1', 'HEGARTY FIRE & SAFETY', 'HEGARTYFIRESAFETY@EIRCOM.NET', '021 4353407', 'DUN MHUIRE', 'WELL ROAD', 'LITTLE ISLAND', 'CO CORK', 'BILLY HEGARTY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 'HEI1', 'HEIGHT FOR HIRE', 'yvonne.curley@height forhire.com', '01 6914008', 'ASHBOURNE BUSINESS CENTRE', 'BALLYBIN ROAD', 'ASHBOURNE', 'CO MEATH', 'SIMON CRUMPLIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 'HEIT2', 'HEITON BUCKLEY BUILDERS MERCHANTS', 'creditcontroller33@heitons.ie', '021 4544099', 'ARDAROSTIG', 'BISHOPSTOWN', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 'HER1', 'HERTZ RENT A CAR LTD', '', '', 'BAGGOT ST. BRIDGE', '2 HADDINGTON ROAD', 'DUBLIN 4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 'HER2', 'HERBIE STEPHENSON', 'herbiestephensonsire@gmail.com', '087 6737235', 'GIBSTOWN', 'GLEN OF IMAAL', 'CO WICKLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'HEV1', 'HEVAC LIMITED', '', '021 4191919', 'SOUTH RING WEST BUSINESS PARK', 'TRAMORE ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 'HIC1', 'PADRAIG HICKEY AGRI SALES & SERVICES', '', '217336588', 'CROOKSTOWN', 'CO CORK', '', '', 'PADRAIG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'HIC2', 'HICKEYS AUTO PARTS & ACCESSORIES', '', '029 21971', 'HEGARTY STREET,', 'MILLSTREET', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'HIC3', 'DONAGH HICKEY MOTORS LTD', 'SALES@DONAGHHICKEYMOTORS.COM', '064 7758030', 'RATHMORE', 'CO KERRY', '', '', 'DONAGH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 'HOP1', 'MARGARET HOPKINS', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 'HOR1', 'HORSE & JOCKEY INN', 'horseandjockeyinn@eircom.', '0504 44192', 'THURLES', 'CO TIPPERARY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 'HOU1', 'ANDREW HOURIGAN LTD', '', '2960135', 'NEWMARKET', 'CO.CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 'HP1', 'HEWLETT PACKARD INTERNATIONAL BANK Plc', 'hpfs-uk-irl.cust-serv@hpe.com', '01 4118902', 'LIFFEY PARK TECHNOLOGY CAMPUS', 'BARNHALL ROAD', 'LEIXLIP', 'CO. KILDARE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 'HTEC', 'HTEC LIMITED', '', '0044 23 80689200', 'GEORGE CURL WAY', 'SOUTHHAMPTON INTERNATIONL PARK', 'SOUTHHAMPTON SO18 2RX', 'ENGLAND', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 'HUD1', 'HUDSON CONCRETE LTD', 'hudsonconcreteltd@eircom.net', '0402 37202', 'NEWTOWN UPPER', 'COOLGREANY', 'GOREY', 'CO WEXFORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 'HYN', 'HYNES PLANT AND TOOL HIRE LTD', 'info@hynesplant.com', '093 28418', 'ATHERNRY ROAD', 'TUAM', 'CO. GALWAY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 'HYTK', 'HYTEK FUELLING EQUIPMENT', 'info@hytekgb.com', '0044 1279 815600', 'DELTA HOUSE, GREEN STREET', 'ELSENHAM', 'BISHOPS STORTFORD', 'CM22 6DS, ENGLAND', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 'IBC1', 'IBC BUILDING PERFORMANCE', 'KEITH@IBC.IE', '14575421', 'UNIT 10 OAK ROAD BUSINESS PARK,', 'NANGOR ROAD,', 'DUBLIN 12,', 'D12C920', 'KEITH RICHARD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 'IND', 'INDUSTRIAL & AGRI', '', '058 43644', 'UNIT 2 SHANDON BUSINESS PARK', 'DUNGARVAN', 'CO. WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 'IND1', 'INDEPENDENT LABORATORY LTD', 'info@indlab.ie', '12401374', 'UNIT 37', 'DOCKLANDS INNOVATION PARK', 'EAST WALL ROAD', 'DUBLIN 3', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 'IND2', 'INDUSTRIAL FLOW CONTROL LTD', 'sales@ifcinflow.com', '4.41269E+11', 'UNIT 3 RYDER WAY', 'BASILDON', 'UNITED KINGDOM', '', 'KIRAN SHAW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 'INT1', 'DPD - ****DISQUALIFIED SUPPLIER*****', 'customer.service@interlin', '', 'INTERLINK IRELAND LTD', 'ATHLONE BUSINESS PARK', 'DUBLIN ROAD', 'ATHLONE, CO. WESTMEATH', 'LINDA or STEVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 'INV1', 'INVER ENERGY LIMITED', 'inver@inverenergy.com', '021 4396950', 'RIVER HOUSSE', 'BLACKPOOL PARK', 'BLACKPOOL', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 'IP3', 'NISSAN KUBISTRAR', '', '', 'PERMANENT TSB', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 'IPRA', 'IRISH PETROL RETAILERS ASSOCIATION', 'OFFICE@IPRA.IE', '01 2103894', 'ASHGROVE HOUSE', '26 FOXROCK COURT', 'DUBLIN 18', '', 'MICHAEL GRIFFIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 'IPS', 'IRISH PNEUMATIC SERVICES (CORK) LTD', '', '4311249', 'AIR AUTOMATION HOUSE', 'YOUNGLINE CENTRE', 'POULADUFF ROAD', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 'IRI', 'IRISH PIONEER WORKS LTD', '', '214964299', 'KINSALE ROAD', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 'IRI1', 'IRISH PUMP & TANK', '', '01 6267544', 'CHAPELIZED INDUSTRAIL ESTATE', 'DUBLIN 20', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 'IRI2', 'IRISH INTERNATIONAL TRAD CORP', '', '021 4705800', 'TRAMORE ROAD', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 'IRI3', 'IRISH TRUCK N\' TANK LTD', '', '054 67920', 'BALLYMORGAN', 'FERNS', 'ENNISCORTHY', 'CO WEXFORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 'IRI4', 'IRISH WIRELESS', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 'IROX', 'IRISH OXYGEN', '', '021 4541821', 'WATERFALL ROAD', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 'ISM1', 'ISME LTD', 'ACCOUNTS@ISME.IE', '76622755', '17 KILDARE STREET', 'DUBLIN', 'D02 P766', '', 'JANE/RONAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 'ITO01', 'ITOMIC VOICE & DATA', '', '1850887722', 'UNIT 1 WHITESTOWN BUSINESS PARK', 'WHITESTOWN DRIVE', 'TALLAGHT', 'DUBLIN D24', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 'J & DD', 'J & D DALY MACHINERY SERVICES LTD', '', '021 4551900', 'UNIT 1 MAYFIELD BUSINESS PARK', 'OLD YOUGHAL ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 'J MC M', 'DO NOT USE   (USE M7 ACCOUNT)', '', '021 4501341', 'JAMES MC MAHON LTD', 'WATER STREET', 'CORK', 'PO BOX 758 NORTH CITY DELIVERY OFFICE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 'J&C1', 'J&C BREEN & CO LTD', '', '539366486', 'NATIONWIDE & UK EXPRESS FREIGHT', 'BALLYDONEGAN', 'FERNS', 'CO WEXFORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 'J.C1', 'J.C.DESMOND & CO LTD.', '', '214966499', 'MOTOR FACTORS', 'PEARSE ROAD', 'BALLYPHEHANE', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 'JALL', 'JAMES LYNCH LTD', 'paula@jameslynchltd.com', '021 7334127', 'COACHFORD,', 'CO. CORK.', '', '', 'PAULA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 'JAM', 'JAMES RYAN', '', '', 'TEMPLEMARTIN', 'BANDON', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 'JBW1', 'JB WRITING SERVICES', ' joanne@jbwritingservices.com', '', '30 THE MEWS', 'RUSHBROOKE LINKS', 'COBH', 'CORK', '087 9547420', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 'JDE1', 'JAMES DUNNE ENGINEERING LTD', 'jdunne@jdengineering.com', '045 895232', '7 MORELL LAWNS', 'NASS', 'CO KILDARE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 'JERK', 'JERKO LTD', '', '', 'BALLYCUREEN', 'AIRPORT ROAD', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 'JHS1', 'J. H. SUPPLIES LTD', '', '021 4867644', 'UNIT 1B', 'WEST LINK IND PARK', 'SARSFIELD ROAD', 'WILTON', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 'JLT1', 'MARSH INCORPORATING JLT IRELAND', 'jltcork@jlt.ie', '021 4549500', 'HIBERNIAN HOUSE', 'BUILDING 5200', 'CORK AIRPORT BUSINESS PARK', 'CORK', 'RORY O SULLIVAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 'JMCM', 'DO NOT USE   (USE M7 ACCOUNT)', '', '023 45110', 'JAMES MC MAHON', 'PARK ROAD', 'DUNMANWAY', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 'JO1', 'JOHNSON & PEROTT LTD', '', '214916300', 'DOUGLAS ROAD', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 'JOC1', 'J O CONNELL GROUNDWORKS', '', '', 'CURABEHA', 'CROOKSTOWN', 'CO CORK', '', 'JOHNNY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 'JOE1', 'JOE TYRES LTD', 'leahyjoe1@outlook.com', '087 6237324', 'AGLISH', 'COACHFORD', 'CO. CORK', '', 'JOE LEAHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 'JON1', 'JONES BUSINESS SYSTEMS', 'info@officestuff.ie', '599132595', 'ENTERPRISE PARK', 'O\'BRIEN ROAD', 'CARLOW', 'R93 A9K3', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 'JOS', 'JOSEPH HOGAN LTD', '', '06965550 /65223', 'CONCRETE PRODUCTS', 'BALLYLIN', 'FOYNES', 'CO. LIMERICK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 'JOS1', 'J.O.S. WINDOW REPAIR SERVICES', '', '021 4312377', '8 ELM PARK', 'OLD BLACKROCK ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 'JOT1', 'JOTUN PAINTS (EUROPE) LTD', 'John.Odonoghue@jotun.com', '0044 1724 400000', 'SLATHER ROAD', 'FLIXBOROUGH', 'SCUNTHORPE', 'NORTH LINCS DN15 8RR', 'JOHN O DONOGHUE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 'JRS1', 'J R SPARES', 'redmacltd@eircom.net', '094 7754456', 'IRON MILLS', 'GLENFLESK', 'KILLARNEY', 'CO KERRY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 'K&K', 'K & K HYDRAULICS', '', '066 7122768', 'ROCK STREET', 'TRELEE', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 'K1', 'KEVIN O CONNELL & CO', 'kevin@kevinoconnell.ie', '214875697', '1A TIME SQUARE', 'BALLINCOLLIG', 'CO CORK', '', 'kevin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 'K4', 'KELLEHERS D.I.Y. LTD', '', '2642097', 'MACROOM', 'CO.CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 'K5', 'KELLEHERS AGRICULTURAL SERVICES', '', '023 8841210', 'BANDON', 'CO. CORK.', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 'KAN1', 'KAN\'TO INSTRUMENTS LTD', 'anna@kanto.co.uk /dimitri@kanto.co', '0044 1642 674457', 'UNIT 23 STOCKTON BUSINESS CENTRE', '70-74 BRUNSWICK STREET', 'STOCKTON-ON-TEES', 'TS18 1DW       ENGLAND', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 'KAN2', 'KANON LOADING EQUIPMENT B.V.', '', '+31 036 5219777', 'PO BOX 385-3840 AJ HARDERWIJK', 'EDISONWEG 27-3899 AZ ZEEWOLDE', 'NEDERLAND', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 'KCP', 'KEOHANE CAR PARTS', '', '021 4311814', 'RATHMACULLIG', 'BALLYGARVAN', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 'KEA1', 'MARK KEANE', '', '', 'CLEARAGH', 'LISSARDA', 'CO CORK', '', 'MARK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 'KEA2', 'KEATLEYS CONCRETE LTD', 'keatleyconcrete@gmail.com', '059 6481389', 'GRANEY', 'BALTINGLASS', 'CO WICKLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 'KEH1', 'DERMOT KEHOE SUPPLY & DIY LTD', 'info@dermotkehoe.ie', '051 420088', 'WOODBINE ROAD', 'NEW ROSS', 'CO WAXFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 'KEL1', 'M J KELLEHER LTD', 'info@mjkoils.com', '026 41236', 'CLONDROHID', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 'KEL2', 'NOEL KELLEHER', '', '026 49945', 'AGRICULTURAL & PLANT HIRE', 'KILNAMARTYRA', 'MACROOM', 'CO CORK', 'NOEL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 'KEL3', 'KELLIHER CRANE & HOIST LTD', 'hire@kellihercranehire.com', '066 7122994', 'CLASHATLEA', 'BALLYMACELLIGOTT', 'TRALEE', 'CO KERRY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 'KEL4', 'TED KELLEHER', 'info@tedkelleherfirstaidandhygiene.ie', '026 42512', 'FIRST AID & HYGIENE SUPPLIES LTD', 'MACROOM ENVRONMENTAL PARK', 'MACROOM', 'CO CORK', 'TED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 'KELL1', 'KELLTECH ELECTRO-MECHANICAL', 'KEMS1963@GMAIL.COM', '45863344', 'SERVICES LTD,', '14 HILLCREST,BALLYMOREEUSTACE', 'CO. KILDARE.', '', 'SIOBHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 'KEO1', 'KEOHANE READYMIX LTD', 'INFO@KEOHANEREADYMIX.IE', '023 38710', 'BALLYGURTEEN, ROSSMORE,', 'CLONAKILTY', 'CO CORK', '', 'MARGARET/CATHERINE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 'KEO2', 'KEOHANE CONSULTING ENGINEER', 'danny@keohane.ie', '021 2061403', 'STONEVIEW', 'BLARNEY', 'CO. CORK', '', 'DANNY 087 2546556', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 'KER1', 'KERRY PLANT & TOOL HIRE LD', 'kerrytoolhire@eircom.net', '064 33429', 'WOODLANDS IND PARK', 'KILLARNEY', 'CO KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 'KER2', 'KERRY AGRIBUSINESS', '', '063 82002', 'KILMALLOCK ROAD', 'CHARLEVILLE', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 'KEV', 'KEVIN O LEARY MOTOR GROUP', '', '', 'CAHIR ROAD', 'CLONMEL', 'CO. TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 'KEV1', 'KEVIN COLLINS TYRES', '', '021 4371720', 'UNIT 1 CARRIG BUILDINGS', 'KILNAGLEARY BUSINESS PARK', 'CROSSHAVEN ROAD', 'CARRIGALINE, CO CORK', 'KEVIN COLLINS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 'KGL', 'KELL OIL', '', '667120000', 'KELLIHER ENERGY LTD', 'RATHASS', 'PO BOX 164 TRALEE', 'CO KERRY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 'KHA1', 'RIZWAN KHAN', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 'KHEL', 'KELLIHERS ELECTRICAL', 'Audrey.Hogan2@Gexpro.com', '021 4704100', 'TRAMORE ROAD', 'CORK', '', '', 'SALES ross.field@rexel.ie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 'KIE1', 'KIELYS CENTRA', '', '053 9158862', 'KILLINICK', 'CO WEXFORD', '', '', 'KAREN O BRIEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 'KIL', 'KILCULLY DECKING', '', '868208725', 'KILCULLY DECK CENTRE', 'UNIT 7, SARSFIELD COURT IND ESTATE', 'GLANMIRE', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 'KIL1', 'KILKENNY BLOCK CO LTD', 'GARY@KILKENNYBLOCK.IE', '056 7721438', 'TROYSWOOD', 'FRESFORD ROAD', 'KILKENNY', '', 'GARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 'KIL2', 'KILLESHAL PRECAST CONCRETE LTD', '', '057 9353018', 'DAINGEAN', 'CO. OFFALY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 'KIL3', 'KILKENNY PLANT & TOOL HIRE LTD', 'biancahickey@hickey-hire.ie', '056 7756100', 'T/A HICKEY HIRE', 'UNIT 8', 'LOUGHBOY INDUSTRIAL ESTATE', 'KILKENNY', '056 7756100', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 'KIN', 'KINGDOM SIGN & SCREEN PRINTING', '', '667181633', 'UNIT NO 3', 'MONAVALLEY INDUSTRIAL ESTATE', 'TRALEE', 'CO. KERRY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 'KIN1', 'KINGSPAN GSP', '', '042 9690022', 'DUNDALK ROAD', 'CARRICKMACROSS', 'CO MONAGHAN', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 'KIN2', 'KINSALE TILE STORE', 'info@kinsaletiles.com', '021 4772966', 'GUARDWELL', 'KINSALE', 'CO CORK', '', 'CAROLINE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 'KING', 'KINGDOM FAST HIRE TRALEE LTD', '', '066 7128028', 'UNIT 2 JOHN JOE SHEEHY ROAD', 'TRALEE', 'CO. KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 'KLA1', 'KLARGESTER IRELAND LTD', '', '048 302 66799', 'UNIT 1, OFF DERRYBOY ROAD', 'CARNBANE BUSINESS PARK', 'NEWRY, CO DOWN', 'BT35 6QH', 'GILLIAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 'KPS1', 'KPS UK LTD', 'paul.wilkin@opwglobal.com', '0044 1394548938', 'UNIT 2 MID SUFFOLK BUSINESS PARK', 'PROGRESS WAY EYE SUFFOLK IP237HU', 'UK', '', 'PAUL WILKIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 'L1', 'LEEVIEW TECHNOLOGY LTD.', 'finbarr.lucey@rnltt.com', '026 47226', 'GOUGANE BARRA', 'MACROOM', 'CORK', '', 'FINBARR LUCEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 'L2', 'GEORGE LYNCH DO NOT USE', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 'L4', 'ALAN LUCEY', 'alanlucey1@gmail.com', '217335844', 'PLANT HIRE', 'UPPER BELMOUNT', 'CROOKSTOWN', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 'LAC1', 'LA CREME', '', '021 2300300', 'PREMIER RECRUITMENT INTERNATIONAL', 'T/ MORGAN MCKINLEY', '2ND FLOOR, NO 6 LAPPS QUAY', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 'LAG1', 'LAGAN CONCRETE', 'christina.obrien@laganconcrete.ie', '021 4883123', 'MILEBUSH', 'MIDLETON', 'CO CORK', '', 'CHRISTINA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 'LAK', 'LAKEVIEW SERVICE STATION', '', '', 'MIDLETON', 'CO. CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 'LAM', 'LAMBERT HARDWARE', '', '059 6471401', 'HACKETSTOWN', 'CO. CARLOW', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 'LAN1', 'LANDSCAPING & GARDEN MAINTENANCE SERVICE', 'daveocall@gmail.com', '086 8119338', 'BALLYNONA NORTH', 'DUNGOURNEY', 'CO. CORK', '', 'DAVID O CALLAGHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 'LAOISEH', 'LAOISE HIRE', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 'LCE', 'LEYDEN CONSULTING ENGINEERS', 'karen@lce.ie', '051 364344', 'UNIT 110 SIX CROSS ROADS', 'WATERFORD', 'X91 AP80', '', 'KAREN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 'LEA1', 'LEAN BPI', 'johnoshanahan@leanbpi.ie', '087 744 4887', '6 GLENVIEW DRIVE', 'SHELBOURNE PARK', 'LIMERICK', '', 'JOHN O SHANAHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 'LEE1', 'LEE VALLEY TYRE CENTRE', '', '026 41306', 'MASSEYTOWN', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 'LEE2', 'LEESIDE SHIPPLING LTD', 'cork@leeside-shipping.ie', '021 4501344', 'MERCHANT HOUSE', 'TIVOLI IND ESTATE', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 'LEE3', 'LEESIDE BUILDING SUPPLIES', '', '021 4559488', 'BALLYVOLANE COMMERCIAL PARK', 'BALLYHOOLEY ROAD', 'BALLYVOLANE', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 'LEH1', 'LEHANE ENVIRONMENTAL &INDUSTRIAL SERVICE', 'accounts@LEHANEENVIRONMEN', '217331202', 'FARNANES', 'CO.CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 'LEV1', 'LEVEL-TEC LTD', 'leveltec@btinternet.com', '0044 161 6337981', 'OLD KILN LANE', 'GROTTON', 'LANCASHIRE OL6 9AP  ENGLAND', '', 'BARRIE COOPER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 'LHH1', 'L. HEFFERNAN HAULAGE LIMITED', 'lheffernanhaulage@gmail.com', '087 2580650', 'NEWCASTLE HOUSE', 'LYONS ROAD', 'NEWCASTLE', 'CO. DUBLIN', 'LESLIE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 'LIM1', 'LIMERICK MOBILE TYRE', 'n20commercials@yahoo.com', '087 1677666', 'N20 COMMERCIALS', 'CROOM', 'CO. LIMERICK', '', 'JAMES CRONIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 'LIN1', 'LINEHAN PLANT & CIVIL ENGINEERING LTD', '', '021 4381384', 'BALLYCRAHEEN', 'VICARSTOWN', 'CO CORK', '', 'TIM/TED/JOE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 'LIS', 'LISAVAIRD CO - OP LTD', '', '023 33334', 'LISAVAIRD SALES LTD', 'LISAVAIRD', 'CLONAKILTY', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 'LIS1', 'LISTOWEL TRANSPORT LTD', '', '087 2802068', 'LISTOWEL', 'CO KERRY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 'LIS2', 'LISSARDAGH CLEANING SERVICES', '', '', 'LISSARDA', 'CO CORK', '', '', 'DEREK MURPHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 'LISS', 'LISSARDAGH SCREEN PRINT', '', '021 7336545', 'CRONINS YARD CROOKSTOWN', 'CO. CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 'LON1', 'JOHN LONG', '', '063 70086', 'CONCRETE WORKS', 'NEWTOWN', 'CHARLEVILLE', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 'LON2', 'BILL LONG', '', '(021)4893453', 'GARAGE & INDUSTRIAL EQUIPMENT', 'TOSCA', 'WOODGROVE , CROSS DOUGLAS ROAD', 'CORK', 'BILL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 'LUC1', 'LUCY MOTORS', 'lkirwan@charleville.nissan.ie', '063 89222', 'LIMERICK ROAD', 'CHARLEVILLE', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 'LUC2', 'LUCEY ELECTRICAL SERVICES LTD', 'luceyelec@gmail.com', '086 2240852', 'ELECTRO SYSTEMS', 'KILMORE', 'BANDON', 'CO. CORK', 'JOHN LUCEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 'LYN', 'LYNX TECHNOLOGY LTD', 'info@lynxtech.net', '214502137', '6 KINGS TERRACE', 'LOWER GLANMIRE ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 'LYN1', 'OLIVER LYNCH LTD', 'orlynch@eircom.net', '021 4866201', 'SALLYBROOK IND ESTATE', 'GLANMIRE', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 'M COP', 'MARY COPPINGER LTD', 'info@marycoppinger.com', '021 4315818', 'UNIT 2 FRANKFIELD INDUSTRIAL ESTATE', 'FRANKFIELD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 'M HW', 'MACROOM HARDWARE', '', '', 'RAILWAY VIEW', 'MACROOM', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 'M O', 'M O LEARY & SONS LTD', '', '026 41104', 'NORTH SQUARE', 'MACROOM', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 'M&J.', 'M & J KELLEHER LTD', 'info@mjkoils.com', '026 41236', 'CLONDROHID', 'MACROOM', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 'M.FRK', 'MUNSTER FORKTRUCK LIMITED', 'info@munsterforks.com', '021 4344144', 'DOUGHCLOYNE INDUSTRIAL ESTATE', 'WILTON', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 'M.O1', 'M.O LEARY & SONS LTD,', '', '02641104/5', 'MACROOM', 'CO.CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 'M10', 'MALLOW ELECTRICAL WHOLESALE LTD.,', '', '', 'THE SPA,', 'MALLOW,', 'CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 'M11', 'C F MURPHY LTD', '', '', 'MURPHYS GARAGE', 'GLANMIRE RD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 'M12', 'MC SWINEYS QUIK PICK.', '', '', 'CROOKSTOWN,', 'CORK.', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 'M13', 'MACKLIN AUTO & MARINE ELECTRICAL,', 'macklinautoandmarine@eircom.net', '023 8842104', 'NEW ROAD,', 'BANDON,', 'CO. CORK.', '', 'ROBERT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 'M14', 'MACROOM TOOL HIRE,', 'info@macroomtoolhire.ie', '026 42133 / 43713', 'CODRUM,', 'MACROOM,', 'CO. CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 'M16', 'JOHN MURPHY PLANT HIRE,', '', '021/ 7330098', 'KILMORE,', 'BANDON,', 'CO. CORK.', '', 'JOHN MURPHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 'M17', 'MURPHY TRANSPORT', '', '021 4916500', 'MARYFIELD,', 'BALLINLOUGH ROAD,', 'CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 'M19', 'MASTERKABIN', 'sales@masterkabin.ie', '021 4775555', 'KILLOUNTAIN,', 'INNISHANNON,', 'CO. CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 'M2', 'MICRO HYDRAULICS', '', '021 4510570', 'UNIT 16C', 'EURO BUSINESS PARK,', 'LITTLE ISLAND,', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 'M21', 'DENIS MCSWEENEY & SONS', 'INFO@DMCSWEENEYANDSON.COM', '023 8847130', 'BRIDGE STREET,', 'ENNISKEANE,', 'CO. CORK.', '', 'MARY/SIOBHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 'M3', 'MUNSTER WELL AND PUMP SERVICES LTD', '', '', 'BALLYGIBBON, BLARNEY, CO. CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 'M4', 'AC STEEL TANK LTD', 'conceptab@eircom.net', '042 9663834', 'BEAGHMAGHEROSS', 'CARRICKMACROSS', 'CO. MONAGHAN', '', 'CONCEPTA BRADY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 'M6', 'JACK MURRAY', '', '021 7336588', 'KNOCKANEROE', 'CROOKSTOWN', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 'M7', 'MC MAHONS', 'ar@jmcmahon.com', '023 45110', 'TIMBER IMPORTERS & BUILDERS PROVIDERS', 'PARK ROAD', 'DUNMANWAY', 'CO. CORK.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 'M8', 'MILSTREET ELECTRICAL REWINDS', '', '029 71247', 'BALLYDALY,', 'MILSTREET,', 'CO. CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 'MAC', 'MACLOCHLAINN (ROADMARKINGS) LTD', '', '018309107/8309833', '21 PROSOECT ROAD', 'DUBLIN 9', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 'MAC1', 'MACROOM AUTO FACTORS', '', '026 42813', '40 NEW STREET', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 'MAC2', 'MACROOM CORK COUNTY COUNCIL', '', '026 43721', 'MACROOM CA CENTRE', 'CODRUM', 'MACROOM', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 'MAC3', 'MACROOM OPTICIANS', '', '026 43123', '1 FAIR GREEN PLAZA', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 'MAD1', 'MADELINE MENTON', '', '40238590', 'MADELINE\'S GUESTHOUSE', 'TINAHELY', 'CO WICKLOW', '', 'MADELINE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 'MAD2', 'MADE4DESIGN', 'paul@made4design.com', '086 8218381', '66 MERVILLE ROAD', 'STILLORGAN', 'CO. DUBLIN', '', 'PAUL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 'MAH', 'MAHER PLANT HIRE LTD', '', '052-21333', 'CASHELL ROAD', 'CLONMEL', 'CO. TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 'MAIN', 'MAINLINE TOLL STATION', '', '', 'RICHMOND HOUSE', 'RICHMOND HILL', 'FERMOY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 'MAL1', 'MALLOW ROAD MOTORS CORK LTD', '', '021 4392066', 'KILNAP', 'MALLOW ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 'MAL2', 'MALONEY CONSTRUCTION & CIVIL ENGINEERING', '872211577', '', 'BALLINAGLOUGH', 'CARRIGNAVAR', 'CO CORK', '', 'ENDA MALONEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 'MAL3', 'GUS MALONE', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 'MAN', 'MANLIFT HIRE LTD.', 'manlift@eircom.net', '021-4311332', 'BALLYCURREEN INDUSTRIAL ESTATE,', 'KINSALE ROAD,', 'CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 'MAN1', 'MANAGEMENT SOFTWARE SOLUTIONS', 'conorodlum@gmail.com', '', 'ASHGROVE', 'EAST FERRY', 'COBH', 'CO CORK', 'CONOR ODLUM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 'MAP', 'MAPLIN ELECTRONICS', '', '', 'CORK', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, '1-Mar', 'MARY\'S TOYMASTER', '', '026 42491', '4 MAIN STREET', 'MACROOM', 'CO CORK', 'STATIONERY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 'MBC1', 'MBC INSURANCE', '', '021 4275347', 'MBC HOUSE', '36 SOUTH MALL', 'CORK', '', 'JOANNE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 'MC1', 'FRANCIS MCCARTHY', '', '', 'CLASHANURE', 'OVENS', 'CO CORK', '', 'FRANCIS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 'MCC1', 'TONY McCARTHY', '', '021 7330295', 'CARRIGEEN', 'CROOKSTOWN', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 'MCC2', 'ROBERT MCCAFFERTY', 'mccaffertypainters@yahoo.ie', '096 70042', 'PAINTING CONTRACTOR', '54 MOY HEIGHTS', 'BALLINA', 'CO MAYO', 'ROBERT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 'MCC3', 'NED MCCARTHY ELECTRICAL SERVICES', 'MCCARTHYNED@HOTMAIL.COM', '029 50218', 'T/A KANTURK PLANT HIRE & ALLIED SERVICES', 'FAIRYHILL', 'KANTURK', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 'MCC4', 'EAMONN MCCARTHY', '', '', 'EX EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 'MCC5', 'JOANNA MCCARTHY', '', '', 'BEGLEYS FORGE', 'OVENS', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 'MCCFS', 'MC CARTHY\'S FILLING STATION', '', '', 'FOSSA', 'KILLARNEY', 'CO. KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 'MCD', 'MC DONNELL BROS', '', '', 'COOLAGOWN', 'FERMOY', 'CO.CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 'MCE', 'MC EGAN COLLEGE', '', '', 'ADULT EDUCATION OFFICE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 'MCG1', 'MCGUCKIAN OIL LTD', '', '021 4881190', 'CARRIGTWOHILL IND EST', 'CARRIGTWOHILL', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 'MCG2', 'JENNINGS MCGREGORS', '', '021 7335777', 'LISSARDA', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 'MCH1', 'MC HIRE', 'ali@mchire.ie', '01 2871263', 'BLACKLIOIN ENTERPRISE CENTRE', 'BLACKLION, GREYSTONES', 'CO WICKLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 'MCH2', 'CIARAN MELEADY CONTRACTING LTD', 'ciaranmeleady@gmail.com', '087 0921587', 'CARRICK ROAD', 'EDENDERRY', 'CO OFFALLY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 'MCI1', 'DAN MCINERNEY & SONS', '', '065 6828029', 'MILL ROAD', 'ENNIS', 'CO CLARE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 'MCK1', 'JOE MCKEOWN & CO LTD', 'Limerick@joemckeownltd.ie', '061 311950', 'GALVONE INDUSTRIAL ESTATE', 'LIMERICK', '', '', 'JOE MCKEOWN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 'MCK2', 'MCK ELECTRICAL LTD', '', '021 4975201', 'UNIT PD1 TOGHER IND ESTATE', 'POULADUFF', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 'MCK3', 'MICHAEL MCKENNA AUCTIONEER', 'info@mckennaproperty.ie', '214279368', '16 SOUTH MALL', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 'MCS1', 'MCSWEENEY BROS QUARRIES LTD', 'info@mcsweeneybros.ie', '023 8855000', 'BALLINACARRIGA', 'DUNMANWAY', 'CO CORK', 'P47 PC78', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 'MCT1', 'MC TOOL & PLANT HIRE LTD', '', '01 2871263', 'BLACKLION ENTERPRISE CENTRE', 'BLACKLION GREYSTONES', 'CO WICKLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 'MET1', 'METAC', 'accounts@metac.ie', '057 8756540', 'UNIT 3&4', 'MOUNTHRATH ENTERPRISE PARK', 'PORTLAOISE ROAD', 'CO. LAOIS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 'MGC', 'MCGRATH QURRIES', '', '061 385211', 'HERBERTSTOWN', 'CO LIMERICK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 'MH', 'MICHAEL HURLEY', '', '', 'CAPAQUINN', 'CO. WATERFORD', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 'MID H', 'MIDLAND HARDWARE LTD', '', '0505 46177', 'MAIN STREET', 'RATHDOWNEY', 'CO. LAOIS', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 'MID1', 'MID-CORK PALLETS & PACKAGING LTD', '', '026 41311', 'CLONDROHID', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 'MID2', 'MIDLETON FAST FIT', '', '021 4633358', 'UNIT 3/4 KNOCKGRIFFIN IND PK', 'MIDLETON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 'MID3', 'MIDLETON SKIP HIRE LTD', 'info@midletonskiphire.ie', '021 4632393', 'KNOCKGRIFFIN', 'MIDLETON', 'CO CORK', '', 'MARIAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 'MIL1', 'MILLSTREET MOTOR FACTORS', '', '029 71060', 'WEST END', 'MILLSTREET', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 'MIL2', 'MILLSTREET REWINDS LTD', '', '', 'HOLLYMOUNT', 'RATHMORE', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 'MIL3', 'MILLTECH DIGITAL LTD', 'accounts@milltechdigital.com', '214308925', 'UNIT 1 KILNAP BUSINESS & TECHNOLOGY PARK', 'OLD MALLOW ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 'MIL4', 'THE MILLS INN', 'MILLINN@EIRCOM.NET', '026 45237', 'BALLYVOURNEY', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 'MJS', 'MJ SCANNELL SAFETY', 'accounts@mjscannell.ie', '214355377', 'PERSONAL PROTECTION EQUIPMENT', 'UNIT 20A /B EURO BUSINESS PARK', 'LITTLE ISLAND', 'CORK   T45 TC96', 'margaret', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 'MOB1', 'MOBIL INFORMATION SYSTEMS LTD', 'misadmin@mobil-i.com', '18079806', 'UNIT A3, SWORDS ENTERPRISE PARK', 'FELTRIM ROAD', 'SWORDS', 'CO DUBLIN   K67 V329', 'DAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 'MOD1', 'MODERN PLANT  LTD', '', '01 4591344', 'HEAD OFFICE', 'OTTER HOUSE, NAAS ROAD', 'CLONDALKIN', 'DUBLIN 22', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 'MOL', 'M. O\' LEARY & SONS', '', '', 'THE SQUARE MACROOM', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 'MOL1', 'MOLAGA TYRES', 'noeldreake@hotmail.com', '238846413', 'TIMOLEAGUE', 'CO CORK', '', '', 'GILES DRAKE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 'MOL2', 'GLENSTONE CONTRACTS LTD', 'glenstoneltd@gmail.com', '872211577', 'ELLIS HOUSE', 'BALLYVOLANE', 'CORK', 'T23 NN80', 'ENDA MOLONEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 'MON P', 'MONPLATE SIGNS', '', '021 4883127', 'CARRIGTWOHILL', 'CO. CORK', '', '', 'P J MONAGHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 'MON1', 'MONAGEER CONTRACTING LTD', 'info@monageercontracting.ie', '876665546', 'MONAGEER', 'ENNISCORTHY', 'CO WEXFORD', 'Y21 AK80', 'KEITH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 'MOO1', 'RONNIE MOORE LTD', 'sales@ronniemoore.ie', '021 4277841', 'UNIT 9B', 'SOUTH CORK IND EST', 'VICARS ROAD, POULADUFF', 'CORK', 'SUZANNE MOORE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 'MOR1', 'MORRIS\'S BUILDERS PROVIDERS LTD', '', '051 874986', 'THE MANOR WATERFORD', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 'MOS1', 'MICHAEL O\'SULLIVAN', 'agosull@eircom.net', '021 4870442', '23 THE MEADOWS', 'CLASSES LAKE', 'OVENS', 'CO. CORK', 'MICHAEL O\'SULLIVAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 'MOT1', 'MOTHERWELL TANK PROTECTION', 'SALES@MTPUK.COM', '0044 1744 815211', 'ST MICHAELS ROAD', 'LEA GREEN IND EST', 'ST HELENS', 'MERSEYSIDE WA9 4WZ ENGLAND', 'HELEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 'MOY1', 'JOHN MOYNIHAN CRANE HIRE', '', '217336212', 'T/A CRAEIN TOGALA', 'PARKINALLANE', 'KILNAMARTYRA', 'MACROOM CO. CORK', 'JOHN MOYNIHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 'MOY2', 'MOYNIHAN & MOYNIHAN', 'cleanstyle@eircom.net', '021 4364738', '17A DOUGLAS WEST', 'DOUGLAS', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 'MPO1', 'M P O SULLIVAN LTD', 'ann@mpos.ie', '021 4546322', 'DOUGHCLOYNE INDUSTRAIL ESTATE', 'SARSFIELD ROAD', 'WILTON', 'CORK', 'ANNE MURPHY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 'MTN1', 'MTN PRODUCTIONS LTD', '', '', 'www.MTNshop.eu', '83 HARCOURT ST', 'SAINT KEVIN\'S D02 C977', 'DUBLIN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 'MUL1', 'RYAN MULLANE', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 'MUN', 'MUNSTER CO2 LTD', 'munco2@eircom.net', '021 4505550', 'UNIT 3A.', 'MAYFIELD BUSINESS PARK', 'MAYFIELD', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 'MUN1', 'MUNSTER BUSINESS EQUIPMENT', '', '022 22833', 'M.B.E. (MALLOW) LTD', 'QUARTERTOWN INDUSTRIAL ESTATE', 'MALLOW', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 'MUN2', 'MUNSTER JOINERY', '', '', 'BALLYDESMOND', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 'MUN3', 'MUNSTER TOWBARS', 'SALES@MUNSTERTOWBARS.COM', '021 7338381', 'BENGOUR EAST', 'NEWCESTOWN', 'BANDON', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 'MUN4', 'MUNSTER VEHICLE SOLUTIONS LTD', '', '068 31138', 'T/A MOLONEY\'S GARAGE', 'KILLARNEY ROAD', 'ABBEYFEALE', 'CO LIMERICK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 'MUN5', 'MUNSTER GARDEN SHEDS', '', '021 4666066', 'COMMERCIAL PARK', 'LINK ROAD', 'BALLINCOLLIG', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 'MUN6', 'MUNSTER BLINDS LTD', 'info@munsterblinds.ie', '021 4876667', 'CLASSIC COMMERCIAL PARK', 'KILLUMNEY', 'OVENS', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 'MUR1', 'JOSIE MURPHY', '', '021 7336153', 'SCRAP DEALER', 'COOLDUVE', 'LISSARDA', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 'MUR10', 'MURPHY TRAILERS', 'WWW.MURPHYTRAILERS.IE', '064 7756069', 'GNEEVEGUILLA', 'CO KERRY', '', '', 'LIAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 'MUR2', 'MURPHY ELECTRICAL REPAIRS', '', '029 71301', 'CLARA', 'MILLSTREET', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 'MUR3', 'MURPHY PLANT & TOOL HIRE', '', '066 7135166', 'LISTELLICK NORTH', 'TRALEE', 'CO KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 'MUR4', 'MURPHY ENGINES OVERHAUL LTD', '', '021 4313434', '9/10 DOUGLAS STREET', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 'MUR5', 'JAMES MURPHY', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 'MUR6', 'PHILIP MURRAY', '', '', 'EX EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 'MUR7', 'MURPHY, LONG & TAAFFE SOLICITORS', 'legal@murphylong.ie', '023 8844420', 'LOWER KILBROGAN HILL', 'BANDON', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 'MUR8', 'MURRAY TOWBARS LTD', 'billytowbar@gmail.com', '021 4542370', 'CURRALEIGH HOUSE', 'MELBOURNE ROAD', 'BISHOPSTOWN', 'CORK', 'BILLY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 'MUR9', 'BRIAN MURPHY CRANE HIRE LTD', 'murphycranehire@gmail.com', '023 8833307', 'CONVENT ROAD', 'CLONAKILTY', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 'MWH1', 'M.WALSH HIRE LTD', 's.burke@mwhire.com', '056 883 1418', 'UNIT 14 URLINGTON BUSINESS PARK', 'URLINGTON', 'CO KILKENNNY', 'E41 K821', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 'N.D.L', 'N.D.L. LTD', 'accounts@ndlawards.ie', '021 4524646', 'THOMOND CRYSTAL LTD & N.D.L.AWARDS', '25A,EURO BUSINESS PARK', 'LITTLE ISLAND', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 'NAM1', 'NAMEPLATE ENGRAVERS', 'nameplates@iolfree.ie', '061 311432', '87 WOLFE TONE STREET', 'LIMERICK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 'NAM2', 'NAMEPLATE SERVICES', 'nps@nameplate.iol.ie', '14532659', 'UNIT 1 JAMESTOWN INDUSTRIAL CENTRE', 'INCHICORE', 'DUBLIN 8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 'NCC', 'NATIONAL CABIN COMPANY LTD', 'sales@nationalcabincco.ie', '214823869', 'UNIT 8 CRESTFIELD MEWS', 'HAZELWOOD', 'GLANMIRE', 'CO. CORK', 'NOEL O SULLIVAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 'NCH1', 'NCH CRANE HIRE', 'info@nchcranehire.ie', '061 228855', 'UNIT3 DOCK ROAD COMMERCIAL PARK', 'DOCK ROAD', 'LIMERICK', 'V94 W2T9', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 'NEW', 'NEWCASTLEWEST TOOL HIRE LTD', '', '16977602', 'STATION ROAD', 'GORTBOY', 'NEWCASTLEWEST', 'CO. LIMERICK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 'NHYM', 'IRSIH PERMANENT FINANCE', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 'NIX1', 'NIXON HAULAGE LTD', '', '023 8849368', 'BALLYMORE', 'BANDON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 'NKT', 'NORTH KERRY TOOL HIRE LTD', '', '069 77602', 'GORTBOY', 'NEWCASTLEWEST', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `suppliers` (`id`, `supplier_code`, `name`, `email`, `work_phone`, `address_1`, `address_2`, `address_3`, `address_4`, `notes`, `created_at`, `updated_at`) VALUES
(580, 'NOEL', 'NOEL DEASY CAR SALES', 'SALES@NOELDEASY.COM', '021 4395024', 'COMMONS ROAD', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 'NOLT', 'NOLAN TRANSPORT', '', '051 421965', 'OAKLANDS', 'NEW ROSS', 'CO. WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 'NOO1', 'CATHY NOONAN', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 'NOR1', 'NORTH CORK CO-OP LTD', '', '029 50003', 'KANTURK', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 'NOR2', 'NORTH CORK TOOL HIRE', '', '2972019', 'DROMALOUR', 'KANTURK', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 'NPOF', 'NORTH POINT OFFICE FURNITURE LTD', '', '021 4399856', 'UNIT 3,', 'NORTH POINT BUSINESS PARK', 'NEW MALLOW ROAD', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 'NPT', 'NEWPORT PLANT & TOOL LTD', '', '061 373737', 'BALLYMACKEOGH', 'NEWPORT', 'CO. TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 'NSA1', 'NSAI', 'fergal.obyrne@nsai.ie', '01 8073962', '1 SWIFT SQUARE', 'NORTHWOOD, SANTRY', 'DUBLIN 9', 'Kevin Keneally 0872757020 AUDITOR', 'FERGAL O BYRNE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 'NSG1', 'NSG GLASS & GLAZING', '', '021 4304244', 'WESTLINK BUSINESS PARK', 'OLD MALLOW ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 'NST', 'NATIONAL SAFETY & TRAINING', '', '029 51200', 'GREENANE', 'KANTURK', 'CO CORK', '', 'DENIS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 'NWD', 'NYHAN WASTE DISPOSAL', 'AccountsNWD@o2.ie', '086 8158075', 'CURRAGH', 'UPTON', 'CO. CORK', '', 'donal ryan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 'O\' LC', 'O LEARY\'S CENTRA', '', '', 'TOWER SHOPPING CENTRE', 'TOWER', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 'O\' MAH', 'O MAHONEY', '', '021 7338164', 'SECURITY & FIRE ALARMS LTD', 'WOODLANDS', 'NEWCESTOWN', 'BANDON, CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 'O\'D', 'O DWYER & SON(CONTRACTS) LTD', '', '6251267', 'TARMACADAM CONTRACTORS', 'FAWNAGOWN', 'TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 'O\'R1', 'O REGAN QUARRY PRODUCTS LTD', '', '021 7434774', 'THE MILLS COMMERCIAL PARK', 'CROOKSTOWN', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 'O1', 'O BRIENS SERVICE STATION', '', '', 'GLENFLESK', 'CO KERRY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 'O13', 'BRID O CALLAGHAN', '', '087 2926854', 'COACH HIRE,', 'TULLIG ,', 'COACHFORD.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 'O15', 'IMOKILLY OIL,', '', '021 4633888', 'KNOCKGRIFFIN,', 'MIDLETON,', 'CO. CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 'O17', 'FINBARR O NEILL LTD.,', 'mariehurley@finbarroneill.ie', '021 4871933', 'POULAVONE BALLINCOLLIG,', '', '', '', 'Marie Hurley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 'O19', 'PAUL O SHEA & SONS LTD', 'office@osheashardware.ie', '063 81273', 'THE MART YARD', 'BAKERS RD', 'CHARLEVILLE', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 'O2', 'CAMPUSS OIL', '', '', 'BALLYHEA,', 'CHARLEVILLE.', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 'O231', 'O23 TILES', '023TILES@EIRCOM.NET', '023 43210', 'BANDON RETAIL PARK', 'BANDON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 'O2M', 'O2 IRELAND', '', '1909', 'PO BOX 1909', 'KILRUSH', 'CO CLARE', '', 'A/C 254346004075', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 'O5', 'DENIS O BRIEN', '', '064 54003', 'GALETOP LIMITED,', 'GLENFLESK P.O', 'GLENFLESK,', 'CO. KERRY.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 'O6', 'ROSS OIL COMPANY LTD.,', 'lmcelroy@ross-oil.com', '021 7335010', 'WHITES GATE,', 'CASHELMORE,', 'ENNISKEANE,', 'CO.CORK.', 'TIM HOLLAND', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 'O7', 'M D O SHEAS & SONS', '', '064 6620200', 'KILLARNEY', 'BALLINCOLLIG', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 'OAK1', 'OAKLAND QUARRIES LTD', '', '051 421634', 'BALLYKELLY', 'NEW ROSS', 'CO WEXFORD', 'Y34 KH33', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 'OBO1', 'GABRIEL O BRIEN', '', '01 4595500', 'CRANE HIRE LTD', 'UNIT 6, RED COW BUSINESS PARK', 'NAAS ROAD', 'DUBLIN 22', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 'OBW1', 'OBW TECHNOLOGIES', 'noreen@obw.ie', '061 201887', 'UNIT 2 CROSSAGALLA ENTERPRISE CENTRE', 'BALLYSIMON ROAD', 'LIMERICK V94 TR62', '', 'J.J. O Brien', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 'OCA1', 'O CARROLL HAULAGE & CRANE HIRE LTD', 'accounts@ocarrollhaulage.ie', '61394310', 'COURT', 'KILDIMO', 'CO LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 'OCO1', 'O CONNOR\'S GARAGE & CRASH REPAIRS', '', '', 'ARDANEANIG', 'KILLARNEY', 'CO. KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 'OCO2', 'O CONNELL CONCRETE LTD', '', '61345354', 'BALLYCAR', 'ARDNACRUSHA', 'CO CLARE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 'OCO3', 'O CONNOR ROOFING LTD', '', '', 'TO BE ENTERED', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, '1-Oct', 'OLD CHAPEL TOOL HIRE LTD', '', '023 8852155', 'OLD CHAPEL VILLAGE #', 'BANDON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 'ODO1', 'PAT O\' DONOGHUE,', '', '026 48046', 'GURRANLEIGH,', 'CROOKSTOWN,', 'CO. CORK.', '', 'PAT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 'ODO2', 'T&M O DONOVAN', '', '021 4822410', 'SARSFIELD COURT IND ESTATE', 'GLANMIRE', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 'ODO4', 'O DONNELL\'S PLANT & TOOL HIRE', '', '025 24361', 'FERMOY ROAD', 'MITCHELSTOWN', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 'ODR1', 'PAT O DRISCOLL PLANT HIRE LTD', 'odplanthire@eircom.net', '023 8836862', 'WOODVIEW', 'CASTLEFREKE', 'CLONAKILTY', 'CO CORK', 'PAT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 'ODT1', 'O DONOVAN TRANSPORT (CORK) LTD', 'odt@odt.ie', '021 4883399', 'MAIN STREET', 'CARRIGTWOHILL', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 'OGO1', 'T. O GORMAN', '', '021 4355883', 'PROTECTIVE CLOTHING', 'UNIT 26A EURO BUSINESS PARK', 'LITTLE ISLAND', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 'OKE1', 'PHILLY O KEEFFE', '', '029 60254', 'COMMONS', 'NEWMARKET', 'CO CORK', '', 'PHILLY O KEEFFE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 'OKT1', 'OK TOOL HIRE', '', '021 4313577', 'UNIT F,', 'SITECAST IND EST', 'TOGHER', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 'OLE1', 'KEVIN O LEARY MOTOR GROOP', '', '214364326', 'DOUGLAS', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 'OLE10', 'O LEARY\'S DRIVING SCHOOL LTD', 'info@olearysdrivingschool.ie', '021 4895087', 'COONEY\'S LANE', 'GRANGE', 'DOUGLAS', 'CORK', 'BRIAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 'OLE2', 'O LEARY PATIO & GENERAL PRECAST LTD', '', '026 41701', 'COOLEHANE', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 'OLE3', 'TEDDY O LEARY', '', '021 4788466', 'MUSKERRY EST 61 MAPLE LAWN', 'BALLINCOLLIG', 'CO CORK', '', 'TEDDY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 'OLE4', 'JOHN O LEARY', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 'OLE5', 'NORA O LEARY', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 'OLE6', 'DONAL O LEARY', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 'OLE7', 'O LEARYS LISSARDA', '', '021 7336146', 'LISSARDA', 'MACROOM,', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 'OLE8', 'O LEARY MOTORS LTD', 'moleary@martinolearycrashrepairs.ie', '023 8843311', 't/a MARTIN O\'LEARY CRASH REPAIRS', 'DANGANMORE', 'BANDON', 'CO. CORK  P72 HE37', 'MARTIN O\'LEARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 'OLE9', 'DENIS O\'LEARY', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 'OLI1', 'OLIVE SAFETY', '', '01 4111011', 'CROSSWOO DEVELOPMENTS LTD', 'T/A OLIVE SAFETY', 'UNIT 4B, RED COW BUSINESS PARK', 'CLONDALKIN, DUBLIN 22', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 'OLY1', 'GERARD O CONNOR', '', '', 'OLYMPIC EXPRESS LTD', 'CHURCHTOWN', 'NEWCASTLEWEST', 'CO LIMERICK', 'GERARD O CONNOR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 'OMA1', 'DENIS O MAHONY MOTOR SERVICES', 'denisomahonymotors@gmail.com', '021 4877895', 'OMAH', 'WINDSOR', 'OVENS', 'CO CORK', 'DENIS O MAHONY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 'OMUL1', 'O MULLANE & ASSOCIATES', 'denisomullane@gmail.com', '021 4888264', 'ASPEN', 'BALLINREESHIG', 'BALLYGARVAN', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 'OPW', 'ENERGY LEVEL SYSTEMS', 'kknape@opwfms.com', '1858433365', 'UNIT K2 WELLAND BUSINESS PARK', 'ROCKINGHA M  ROAD', 'MARKET HARBOROUGH', 'LEICESTERSHIRE, LE16 7PS.', 'PAUL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 'OPW1', 'OPW FUEL MANAGEMENT SYSTEMS', 'Robert.McDonald@doverfs.com', '+44 (0)1422 317371', '', '', 'send to Philip opwnanopetro@gmail.com', '', 'Robert McDonald', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 'ORE1', 'MICHAEL  O REILLY OIL LTD', '', '065 6821487', 'EDENVALE', 'ENNIS', 'CO CLARE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 'ORE2', 'NIALL O REGAN', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 'ORE3', 'O REGAN TARMAC LTD', 'OREGANTARMACADAM@GMAIL.COM', '021 2338385', 'THE COTTAGE', 'CURRAHALLY', 'FARRAN', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 'ORI1', 'O RIORDAN BROS', '', '021 4821802', 'GLENMORE STORES', 'GLENMORE', 'GLANMIRE', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 'ORI2', 'TADHG O RIORDAIN', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 'OSU1', 'ML O SULLIVAN ELECTRICAL PUMP SERVICES L', '', '029 70258', 'MILLSTREET TOWN,', 'CO. CORK', 'ACCOUNT CLOSED 14.10.10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 'OSU2', 'MICHAEL O SULLIVAN WATER PUMPS', 'moselec@eircom.net', '029 70258', 'MILLSTREET TOWN', 'CO CORK', '', '', 'TERESA/MICHAEL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 'OSU3', 'O SULLIVAN CRANE HIRE LTD', '', '2222150', 'CARRIGOON', 'MALLOW', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 'OSU4', 'FLOR O SULLIVAN SAFETY', 'flor.osullivan@knns.ie', '087 9273648', '14 SILVER SPRINGS', 'WATERGATE STREET', 'BANDON', 'CO CORK', 'FLOR O SULLIVAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 'OUT1', 'OUTLOOK PUBLICATIONS LTD', 'des@outlookmags.com', '066 7143505', 'TRALEE ROAD', 'CASTLEISLAND', 'CO KERRY', '', 'DES O CONNOR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 'P W', 'PUMPWATCH LTD', 'info@pumpwatch.ie', '045 892155', 'UNIT 6, THOMPSON ENTERPRISE CENTRE', 'CLANE', 'COUNTY KILDARE', 'W91 Y364', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 'P1', 'PALMER SIGNS', 'liampalmersigns@gmail.com', '021 4885679', 'HALFWAY', 'BALLINHASSIG', 'CO CORK.', '', 'Liam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 'P2', 'PETTY CASH', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 'P7', 'PUMPTRONICS EUROPE LTD', 'sales@pumptronics.co.uk', '4.41693E+11', 'FOLGATE ROAD', 'NORTH WALSHAM', 'NORFOLK NR28 OAJ', 'GREAT BRITAIN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 'PAG1', 'PAGEBOY DUBLIN LTD', 'fililloran@callpageboy.ie', '01 2910900', 'E2 NUTGROVE OFFICE PARK', 'RATHFARNHAM', 'DUBLIN 14', '', 'FIONA KILLORAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 'PAI1', 'THE PAINT STORE', 'INFO@thepaintstore.ie', '021 4214444', 'UNIT 4 WESTPOINT TRADE CENTRE', 'LINK ROAD', 'BALLINCOLLIG', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 'PAT', 'O C CARPENTRY', '', '087 9875288', 'BALLINEADIG', 'FARRAN', 'CO CORK', '', 'PAT O CALLAGHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 'PATM', 'PAT MC DONNELL', '', '214320200', 'PAINT SALES LTD', 'CENTREPOINT', 'CENTRE PARK ROAD', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 'PC', 'PREMIUM CREDIT', '', '1818300090', '905165', '46 ST STEVENS GREEN', 'DUBLIN 2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 'PC W', 'P C WORLD', '', '', 'UNIT 5', 'MAHON POINT RETAIL PARK', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 'PC1', 'PAUL CULLEN', 'PCT1@GOFREE.INDIGO.IE', '', 'PC TECHNOLOGIES', 'THE EGG COMPANY', 'SUMMERHILL RD, DUNBOYNE', 'CO.MEATH', 'PAUL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 'PCL1', 'PNEUMATIC COMPONENTS LTD', '', '', 'ENGLAND*****', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 'PCR', 'PC ROTO MOULDING LTD', '', '429320758', 'FINNABAIR INDUSTRIAL ESTATE', 'DUNDALK', 'CO.LOUTH', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 'PCR1', 'P. CROSS', 'philipcrossmotorsandrecovery@gmail.com', '2641016', 'MILSTREET ROAD', 'MACROOM', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 'PDS1', 'PAT DENNEHY SIGNS', 'sinead@pdsigns.ie', '214311607', 'SITECAST INDUSTRIAL ESTATE', 'PAULADUFF', 'CO CORK', '', 'SINEAD / DAVID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 'PE', 'PE SERVICES', 'peservices@eircom.net', '049 4379144', 'UNIT 1 CRUBANY BUSINESS PARK', 'CRUBANY', 'CAVAN', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 'PEN', 'PENTON PUBLICATIONS LTD', '', '2890457457', 'PENTON HOUSE', '38HERON ROAD', 'SYDENHAM BUSINESS PARK', 'BELFAST BT3 9LE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 'PER1', 'PERMAFROST', 'info@permafrost.ie', '214879092', 'UNIT 5B2 LINK RD BUSINESS PARK', 'BALLINCOLLIG', 'CO CORK', '', 'ROY COLLINS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 'PER2', 'PERMARK PUMPS LTD', 'sales@permarkpumps.com', '042 9663059', 'DUNDALK ROAD', 'CARRICKMACROSS', 'CO. MONAGHAN', 'A81 FNN44', 'PEADAR MARKEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 'PET1', 'PETROCHEM', 'Petrina@petrochem.ie', '021 4351300', 'PIPELINE SUPPLY LTD', 'UNIT 31 EURO BUSINESS PARK', 'LITTLE ISLAND', 'CORK T45X V77', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 'PET2', 'PETER THORNTON', '', '087 8039885', 'CASTLESHANNON', 'CAUSEWAY', 'CO KERRY', '', '667148027', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 'PET3', 'PETROTEC IRELAND', 'john@petrotec.ie', '14294299', '72a Western Parkway Bs Park', 'Ballymount Drive', 'DUBLIN 12', '', 'JOHN KEARNS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 'PET4', 'PETROSTER-SERWIS Sp.J.', 'adam.kozbial@petroster-serwis.pl', '0048 509 101 317', 'CHOLERZYN 279', '32-060 LISZKI', 'POLAND', '', 'ADAM KOZBIAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 'PFS', 'PURFLEET FORECOURT SERVICES', '', '1708252960', 'UNIT 1 PARKER HOUSE ESTATE', 'MANOR HOUSE WEST THURROCK ESSEX', 'RM20 4EH', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 'PFS1', 'PURFLEET FORECOURT SERVICES LTD', '', '1708252960', 'UNIT1 PARKER HOUSE ESTATE', 'MANOR ROAD WEST THURROCK', 'ESSEX RM20 4EH', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 'PFS2', 'PFS FUELTECH LTD', 'nathan.gibbins@pfs', '0044 1376 535260', 'UNIT2-3 WHEATON COURT', 'EASTERN INDUSTRIAL ESTATE', 'WHEATON ROAD', 'WITHAM, ESSEX CM8 3UJ', 'nicola.murray@pfsfueltec.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 'PHE1', 'PHELAN SKIP HIRE & WASTE MANAGEMENT LTD', 'jphelanskiphire@hotmail.com', '051 645445', 'UNIT S1', 'MILL RIVER BUSINESS PARK', 'CARRICK ON SUIR', 'CO TIPPERARY', 'MAIREAD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 'PHM1', 'PHMG', 'shea.scott@phmg.com', '1 800 673 3405', 'CITY TOWER', 'BASINGHALL STREET', 'LONDON', 'EC2V 5DE', 'SHEA SCOTT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 'PICE', 'POLAR ICE LTD', 'info@polarice.ie', '578623860', 'PORTARLINGTON', 'CO. LAOIS', '', '', 'ITA SMITH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 'PIP1', 'PIPE TOOL SERVICE & SUPPLY', 'ptssjstout@eircom.net', '021 4509992', '12 SILVER HEIGHTS ROAD', 'SILVERSPRINGS', 'CORK', '', 'JOHN STOUT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 'PIR', 'PIRTEK CORK', '', '021 4210990', 'UNIT 2 WESTLINK BUSINESS PARK', 'MALLOW ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 'PIT1', 'PITTMAN', 'accounts@pittmantraffic.com', '598630440', 'UNIT 2, BLOCK B,', 'ATHY BUSINESS CAMPUS,', 'ATHY,', 'CO.KILDARE', 'MICHAEL COOKE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 'PJM1', 'P.J. MATTHEWS (ABBEY HEATING & PLUMBING', '', '061 413722', 'TIPPERARY ROAD', 'BALLYSIMON', 'CO LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 'PLTA', 'PLATINUM TANKS LTD', '', '00353 429745780', 'LOUGH EGISH', 'CASTLEBLANEY', 'CO. MONAGHAN', '', 'PAT CASSIDY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 'POR1', 'PORTABLE APPLIANCE SAFETY SERVICES LTD', 'd.atkins@pat-services.co.uk', '0044 845 3653942', '1 ALBERTO STREET', 'STOCKTON ON TEES', 'TEESSIDE, TS18 2BQ', 'ENGLAND', 'DAVID ATKINS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 'POW1', 'PADDY POWER & COMPANY', '', '051 378944', 'SIX CROSS ROADS', 'KILBARRY', 'WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 'POW2', 'POWER POINT ENGINEERING', 'INFO@POWERPOINT.IE', '057 8662162', 'UNIT B6', 'NATIONAL ENTERPRISE PARK', 'PORTLAOISE', 'CO. LAOIS', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 'POW3', 'POWER PLANT HIRE & SALES', 'hire@powerplant.ie', '053 9235003', 'DUBLIN ROAD', 'ENNISCORTHY', 'CO WEXFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 'PR C', 'PREMIER CONCRETE COMPANY', '', '052-32224', 'CLONBROGAN', 'FETHARD', 'CO. TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 'PRE', 'PREMIER AUTO PARTS (BANDON) LTD', 'trish@premierauto.ie', '238842830', 'UNIT 3 BYPASS BUSINESS CENTRE', 'THE BYPASS', 'BANDON', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 'PRE1', 'PRESENTATION BINDING LTD', 'sales@presbind.ie', '021 4303811', 'KILBARRY IDA BUSINESS PARK', 'DUBLIN HILL', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 'PRI1', 'THE PRINT FACTORY', 'theprintfactory@eircom.ne', '214613300', 'ROXBORO MEWS', 'MIDLETON', 'CO.CORK', '', 'MARGO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 'PRO01', 'PROMPTO DESPATCH', 'Charlotte Daly [charlotte@prompto.ie]', '021 4889104', 'UNIT 1 WATERGRASSHILL BUSINESS PARK', 'WATERGRASSHILL', 'CORK', '', 'CHARLOTTE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 'PSD', 'PROGRAMMABLE SYSTEMS DESIGN LTD', 'sales@psdcodax.com', '4.40128E+12', 'UNIT 22 SOUTHFIELD ROAD', 'TRADING ESTATE ,NAILSEA', 'BRISTOL BS481JJ', 'ENGLAND', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 'PTCT', 'PETRO COURT', 'mail@petrocourt.ie', '01 6251570', 'FORECOURT DESIGN & ENGINEERING SERVICES', 'UNIT 9, CANAL WALK,', 'PARKWEST INDUSTRIAL ESTATE', 'DUBLIN 12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 'PUR1', 'PURE POWER SYSTEMS', 'info@ppsystems.ie', '01 4606859', 'UNIT C7 RIVERVIEW BUSINESS PARK', 'NANGOR ROAD', 'DUBLIN 12', '', 'COLM  CLEARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 'QFT1', 'QFT', 'pat@qftireland.com', '087 6772708', 'SAFETY MANAGEMENT', 'NEWCASTLE WEST', 'CO. LIMERICK', 'V42 TH28', 'PAT BOURKE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 'QUA1', 'QUALITY FABRICATIONS LTD', '', '021 4354523', 'WALLINGSTOWN INDUSTRIAL ESTATE', 'LITTLE ISLAND', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 'QUI1', 'ML. F. QUIRKE & SONS', 'MFQ@QUIRKES.COM', '066 9761279', 'RANGUE', 'KILLORGLIN', 'CO KERRY', '', '066 9761558 CHRISTINE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 'QUI2', 'QUINN PRECISION ENG LTD', '', '021 4841980', 'UNIT 1 MONASTERY ROAD', 'ROCHESTOWN', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 'QUI3', 'QUINNS OF BALTINGLASS', 'junestephenson@quinn.ie', '596481266', 'BALTINGLASS', 'CO WICKLOW', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 'QUI4', 'QUINLANS CRAFT MACROOM', '', '', 'MACROOM', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 'R1', 'RELIANCE BEARING AND GEAR CO', 'cork@reliancebearing.ie', '021 4354204', '50 EASTGATE DRIVE', 'EASTGATE BUSINESS PARK', 'LITTLE ISLAND', 'CO CORK  T45 YY97', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 'R10', 'ROURKES CROSS BRUREE', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 'R2', 'RYCAL CHEMICAL DISTRIBUTORS', '', '029 58115', 'LYRE,', 'BANTEER,', 'CO.CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 'R3', 'ROAD RUNNER', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 'R4', 'RATHINA SERVICE STATION,', '', '069 77399', 'RATHINA,', 'NEWCASTLE WEST,', 'CO. LIMERICK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 'R5', 'RETAIL PETROLEUM SOLUTIONS', '', '01 4196500', 'PARKWAY HOUSE,', 'BALLYMOUNT ROAD BALLYMOUNT,', 'DUBLIN 12,', 'IRELAND.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 'R8', 'RM PUMPS (CUMBRIA) LTD.,', 'ferg@rmpumps.net', '0044 1768892444', 'UNIT 68,', 'GILWILLY ESTATE,', 'PENRITH,', 'CUMBRIA CA 11 9BL', 'Richard,Maggie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 'RAD1', 'RADIONICS', 'accounts.ie@rs-components.com', '01 4153123', 'GLENVIEW IND ESTATE', 'HERBERTON ROAD', 'RIALTO', 'DUBLIN 12', 'A/C No. (PET008)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 'RAE1', 'RAEL MOTORI ELETTRICI S.R.L', 'info@raelsrl.com', '0023 0131 71563', 'VIA PER RETORTO 7/1', '15077 PREDOSA AL', 'ITALIA', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 'RAF1', 'RAFFERTY RESTAURANT LTD', '', '', 'BRIDGE GUESTHOUSE', 'COLEMAN ROAD', 'CAVAN', '', 'PHILOMENA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 'RAT1', 'RATHMORE FORKLIFT', '', '064 58225', 'RATHMORE', 'CO KERRY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 'RATH', 'RATHCOOLE HARDWARE', '', '', 'MAIN STREET', 'RATHCOOLE', 'CO. DUBLIN', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 'RCI1', 'RCI BANQUE', '', '01 6055580', 'BLOCK 4 - LEVEL 6', 'DUNDRUM TOWN CENTRE', 'DUBLIN 16', '', 'AGREEMENT1.C000042212', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 'REA1', 'READYMIX (ROI) LTD', '', '01 8658700', '5/23 EAST WALL ROAD', 'DUBLIN 3', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 'REC1', 'RECI', 'accounts@reci.ie', 'Tel: +353(0)1 492 9966', 'Register of Electrical Contractors of Ir', 'Unit 9, KCR Industrial Estate', 'Ravensdale Park', 'Kimmage, Dublin 12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 'REC2', 'RECRUITMENT MAGIC', 'JULIA@RECRUITMENTMAGIC.COM', '021 2428119', 'UNIT 15 AIRPORT BUSINESS PARK', 'BALLYGARVAN', 'CORK', '', 'JULIA FORRESTER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 'RED1', 'AUSTIN & CATHERINE REDMOND', '', '', 'MILLFARM COTTAGES', 'FOULKSMILLS', 'CO WEXFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 'RED2', 'RED SOCK PRODUCTIONS', 'info@redsockproductions.com', ' 021 4872930', 'LE FOYER, SHAMROCK DRIVE', 'MUSKERRY', 'BALLINCOLLIG', 'CO CORK', 'PAT O REGAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 'REL1', 'CJ RELIHAN', '', '', 'EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 'RF', 'RF PAINT SALES LTD', '', '021 4308846', '3 WEST LINK BUSINESS PARK,', 'OLD MALLOW ROAD,', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 'RFIP1', 'RFIP LIMITED', 'darmstrong@rfip.eu', '0044 1865 339600', 'PRAMA HOUSE', '267 BANBURY ROAD', 'SUMMERTOWN', 'OXFORD OX2 7HT          UK', 'DAVID ARMSTRONG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 'RIC', 'RICHARD LOONEY', 'richardlooneymotors@gmail.com', '', 'CURRAHALY', 'FARNANES', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 'RIC1', 'SEAN RICHARDSON', '', '', 'EX  EMPLOYEE', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 'RICH', 'RICHARD BOYLE & SONS', 'office@boyleshardware.ie', '066 9761110', 'LANGFORD STREET', 'KILLORGLIIN', 'CO. KERRY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 'RID1', 'RIDGE DEVELOPMENTS IN LIQUIDATION', '', '', 'C/O KPMG', '90 SOUTH MALL', 'CORK', '', 'kieran wallace + david swinburne', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 'RIL1', 'USE ENVA MARCH 20RILTA ENVIRONMENTAL LTD', 'Conor.Nevin@enva.com', '140180000', 'BLOCK 402', 'GREENOGUE BUSINESS PARK', 'RATHCOOLE', 'CO DUBLIN', 'APRIL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 'RIS B', 'RISBRIDGER LTD', 'info@risbridger.com', '4.48456E+11', '25 TROWERS WAY', 'HOLMETHORPE INDUSTRIAL ESTATE', 'REDHILL', 'SURREY RH1 2LH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 'RIV1', 'RIVERSTICK MOTORS LTD', '', '021 4771362', 'RIVERSTICK', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, 'RMS1', 'ROAD MAINTENANCE SERVICES LTD', 'info@rms.ie', '091 794659', 'DEERPARK INDUSTRIAL ESTATE', 'ORANMORE', 'CO. GALWAY', '', 'CATHAL LEONARD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 'RNC', 'RICHIE NUGENT CONSTRUCTION & PLANT HIRE', '', '214880480', '', '', '', '', 'RICHIE NUGENT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 'ROA1', 'ROAD TANKER MAINTENANCE', '', '021 4631807', 'CORK ROAD', 'MIDLETON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 'ROA2', 'ROADSTONE LTD', 'info@roadstone.ie', '01 4041200', 'FORTUNESTOWN', 'TALLAGH', 'DUBLIN24', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 'ROB1', 'W. ROBINSON & SONS(EC) LTD', 'asalmon@pump.co.uk', '0044 208 5596000', '35-41 FOWLER ROAD', 'HAINAULT IND ESTATE', 'HAINAULT', 'ESSEX, IG6 3WR', 'ADRIAN SALMON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 'ROC1', 'ROCHES SHANAGOLDEN', '', '', 'MACE SHANAGOLDEN', 'SHANAGOLDEN', 'CO LIMERICK', '', 'SINEAD ROCHE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 'RON', 'RONCOL', '', '', 'PLAS CELYN', 'BANGOR ROAD', 'PENMAENMAWR, CONWY,', 'LL34 6LD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 'RON1', 'RONAYNE HIRE & HARDWARE', '', '0504 21033', 'DUBLIN ROAD', 'THURLES', 'CO TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 'ROT1', 'ROTECH', 'ROCHELLE@ROTECH.IE', '05391 35165', 'HILLTOWN', 'KILLINICK', 'CO WEXFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 'ROY1', 'ROYAL LONDON', 'kevincondon@dngkevincondon.ie', '01 4293333', '47-48 ST STEPHENS GREEN DUBLIN 2', '', 'POLICY 24014333', 'START 23.08.20 TO 23.08.2035', 'KEVIN CONDON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 'RRT1', 'R&R TYRE SERVICES LTD', '', '021 4873897', 'MYLER INDUSTRIAL COMPLEX', 'BALLINCOLLIG', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 'RTE1', 'R TECH WELDING EQUIPMENT LTD', 'SALES@R-TECHWELDING.CO.UK', '0044 1452 733933', 'UNIT G1 & G2 INNSWORTH TECHNOLOGY PARK', 'INNSWORTH LANE', ' GLOUCESTER', 'GLOUCESTERSHIRE GL3 1DL ENGLAND', 'DYLAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 'RUS1', 'SEAMUS RUSSELL FURNITURE', '', '', 'RATHDUFF,', 'GRENAGH', 'CO CORK', '', 'SEAMUS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 'RYA1', 'DENIS MARY RYAN', 'INFO@RYANS.IE', '021 4346655', 'ARDROSTIG', 'BISHOPSTOWN', 'CO CORK', '', 'MARGARET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 'RYA2', 'JAMES RYAN BALLYLANDERS LTD', 'jrbl@eircom.net', '062 46647', 'MAIN ST', 'BALLYLANDERS', 'CO LIMERICK', '', 'JIMMY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 'S10', 'SHEEHYS HARDWARE STORE,', '', '6832400', 'KILLARNEY ROAD,', 'CO LIMERICK,', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 'S12', 'MARTIN SHEEHAN', 'dukiesheehan@yahoo.ie', '021 7336557', 'CRONINS YARD,', 'CROOKSTOWN.', '', '', 'MARTIN/HELEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 'S13', 'TIM SULLIVAN', 'timosullivantransport@msn.com', '021 7335868', '14 OAKVILLE', 'CLOUGHDUV', 'CROOKSTOWN', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 'S3', 'JAMES SCANNELL', '', '021 331086', 'AGRICULTURAL CONTRACTOR,', 'KNOCHANE,', 'OVENS,', 'CORK.', 'JAMES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 'S5', 'SCOTTS FOR TOOLS', '', '021 4870955', 'COMMERCIAL PARK', 'BALLINCOLLIG', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 'S6', 'SNOWS NEWSAGENTS', '', '', 'GLENWILLIAM CROSS', 'LIMERICK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 'S8', 'STAMFORD INTERNATIONAL EXPORT LTD.', '', '', 'BARNACK ,', 'STAMFORD,', 'LINCS,', 'PE93DY.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 'SAF1', 'SAFE FENCE LTD', 'accounts@safefence.co.uk', '0121 7252338', 'UNIT 2 OLDBURY IND ESTATE', 'OLDBURY ROAD', 'WEST BROMWICH', 'B70 9DD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 'SAN', 'SANDBLASTING SERVICES', '', '', 'MURPHY\'S YARD', 'BALLINVOULTIG', 'WATERFALL NEAR CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 'SCA1', 'SCANLONS SERVICE STATION', '', '061 351797', 'GRANGE', 'KILMALLOCK', 'CO. LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 'SCO1', 'SCOOTER INNOVATIONS LTD', '', '0044 1772 721714', '8 BAMPTON DRIVE', 'COTTAM, PRESTON', 'PR4 0WL', 'ENGLAND', 'FRANK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 'SCS1', 'SCS EXPRESS INDUSTRIAL ELECTRONIC REPAIR', '', '2248577', 'SCS ALTAMIRA', 'LISCARROLL', 'MALLOW', 'CO CORK', 'KENNETH MCFRUIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 'SER1', 'SERVICE ELECTRICAL (CORK) LTD', 'servelec@eircom.net', '021 4301969 / 4308563', 'BLACKSTONE BRIDGE INDUSTRIAL ESTATE', 'LOWER KILLEENS', 'CORK', '', 'PAT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 'SIG1', 'SIG IRELAND LTD', 'enquiries@sig.ie', '021 432 1868', 'UNIT 1 DOUDHCLOYNE IND ESTATE', 'SARSFIELD ROAD', 'WILTON', 'CORK  T12 W578', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 'SIG2', 'SIGN ZONE LIMITED', 'brendan@signzone.ie', '061 953040', 'UNIT2A DOCK ROAD COMMERCIAL PARK', 'DOCK ROAD', 'LIMERICK V94 E62N', '', 'BRENDAN NAUGHTON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 'SIL1', 'SILVER SHIELD ENGINEERING', '', '023 47747', 'BALLINEEN', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 'SMA1', 'SMART TELECOM', '', '1800 931 300', '3300 LAKE DRIVE', 'CITYWEST BUSINESS CAMPUS', 'DUBLIN 24', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 'SMA2', 'SMARTFLOW COUPLINGS LTD', 'info@smartflowcouplings.com', '+44 (0)1207 750606', 'UNIT 7C LAKE ENTERPRISE PARK,', 'BIRKDALE ROAD,', 'SCUNTHORPE DN17 2AU', '', 'RECEPTION', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 'SOL1', 'SOVA CONTRACTING LTD', 'INFO@PERFECTHOME-WINDOWS.IE', '868841950', 'PERFECT HOME WINDOWS', 'UNIT 14 PENROSE WHARF', 'PENROSE QUAY, CORK', 'T23 W440', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 'SOU', 'SOUNDSTORE', '', '4348563', 'BLACKPOOL S/C', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 'SOU1', 'SOUTHERN FUEL & FARM SUPPLIES LTD', 'info@southernfuels.ie', '021 4632020 MIDLETON', 'KNOCKGRIFFIN', 'MIDLETON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 'SOU2', 'SOUTHERN SIGNS CORK LTD', '', '', '83/85 DOUGLAS ST', 'CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 'SOU3', 'SOUTHERN TOOL & SUPPLIES LTD', '', '064 42424', 'MART ROAD', 'GORTAMULLEN', 'KENMARE', 'CO KERRY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 'SOU4', 'SOUTHERN WINDOWS & DOORS', 'swdinliten@gmail.com', '(022) 53757', 'UNIT 2A', 'BAKERS ROAD', 'CHARLEVILLE', 'CO CORK P56N802', 'ORLA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 'SOUT', 'SOUTH COAST SALES & SERVICES', 'info@southcoastsales.com', '214346143', '5 DOUGHCLOYNE COURT', 'DOUGHCLOYNE IND. EST', 'WILTON', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 'SPIL', 'SPILLANE TRAILER SERVICES', '', '021 4510520', 'ROCKGROVE INDUSTRIAL ESTATE', 'LITTLE ISLAND', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 'SPS1', 'STAINLESS PIPELINE SUPPLIES(IRL) LTD', 'sales@spsirl.com', '046 9247777', 'UNIT R', 'KELLS BUSINESS PARK', 'KELLS', 'CO. MEATH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 'STA1', 'STA TECHNICAL LTD', 'WARREN@STATECHNICAL.COM', '0044 0203 0049323', 'UNIT H2 BASE BUSINESS PARK', 'RENDLESHAM', 'IP12 2TZ', 'ENGLAND', 'WARREN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 'STA2', 'START ITALIANA', 'sergio.pisano@doverfs.com', '0039 0362 1581456', 'VIA POLA 6', '20813 BOVISIO MASCIAGO MB', 'ITALY', '', 'LAURA LEVRATTI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 'STAK', 'STAKELUM\'S HARDWARE LTD', '', '', 'RAILWAY ROAD', 'THURLES', 'CO. TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 'STE1', 'STEELTECH SHEDS', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 'STI1', 'STIMARE LTD UK', 'ipaulin@stimare.net', '0044 208 0998071', 'UNIT 4 BRAMBER COURT', 'BRAMBER ROAD', 'LONDON', 'W14 9PW     ENGLAND', 'IAN PAULIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 'STR1', 'STRUCTURAL SCIENCE COMPONITES', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 'STR2', 'STRIPE PAYMENTS EUROPE LTD', 'support@stripe.com', '', 'THE OLD BUILDING', '1 GRAND CANAL STREET LOWER', 'DUBLIN 2', 'A/C NO: acct_1D1BO5AEyUW3HVRJ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 'STR3', 'STROKER FABRICATIONS', 'info@strokerfabrications.com', '021-7338202', 'KILLOWEN', 'ENNISKEANE', 'CO-CORK', '', 'STEVEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 'SUP1', 'SUPER DRAIN LTD', '', '01 4097070', '112 ELM ROAD', 'WESTERN INDUSTRIAL ESTATE', 'NAAS ROAD', 'DUBLIN 12', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 'SWE1', 'McSWEENEY STEEL', '', '214630198', 'COOLBAWN', 'MIDLETON', 'CO. CORK', '', 'GER NCSWEENEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 'SWW', 'SOUTH WEST WHOLESALE LTD', '', '667123399', 'MATT TALBOT ROAD TRALEE', 'CO. KERRY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 'T B', 'TATSUNO - BENC EUROPE a.s.', 'fischer@tatsuno-europe.com', '4.20516E+11', 'PRAZSKA cp 2325/68', '678 01  BLANSKO', 'CZECH  REPUBLIC', '', 'CHRIS FISHER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 'T EQ', 'TEC INDUSTRIAL LTD', 'DEBTORS@TEC.IE', '01 4573533', 'UNIT 3 C', 'WEATHERWELL BUSINESS PARK', 'DUBLIN 22', 'D22 P803', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 'T&D1', 'THORNE & DERRICK INTERNATIONAL', 'GAmos@thorneandderrick.co.uk', '0117 9359421', 'UNIT 9 AXIS', 'HAWKFIELD WAY', 'HAWKFIELD BUSINESS PARK', 'WHITCHURCH, BRISTOL  BS14 OBY', 'GARY AMOS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 'T.SH', 'T. SHIELD', '', '', 'GORT ROAD', 'ENNIS', 'CO. CLARE', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 'T1', 'T AND A', '', '021  4508677/ 4508539', 'HOME IMPROVEMENT CENTRE,', '66A WATERCOURSE ROAD,', 'CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 'T2', 'OGENEK TEORANTA', '', '', 'BALLINGEARY', 'MACROOM', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 'TAR1', 'E. TARRANT & SONS LTD', '', '029 56014', 'THE SQUARE', 'BANTEER', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 'TAY1', 'TAYLOR SOLICITORS', 'info@taylorsolicitors.ie', '021 4384630', 'UNIT 3A RIVER HOUSE', 'BLACKPOOL RETAIL PARK', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 'TCU', 'TOM CURRAN', '', '5841518', '16/24/25 GRATTAN SQUARE', 'DUNGARVAN', 'CO. WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 'TEA1', 'TEAMVIEWER GMBH', 'sales@teamviewer.com', '01 2469559', 'JAHNSTR 30', '73037 GOPPINGEN', 'GERMANY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 'TEC1', 'TECHSERV ENGINEERING LIMITED', 'padraigtyrrell@gmail.com', '01 8216307', '13 CASTLEFIELD WOODS', 'CLONSILLA', 'DUBLIN 15', '', 'PADRAIG TYRELL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 'TEL1', 'T.E. LABORATORIES LTD', 'info@tellab.ie', '059 9152881', 'LOUGHMARTIN BUSINESS PARK', 'TULLOW', 'CO CARLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 'TELFORDS', 'TELFORDS ELECTRIC', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 'TEM1', 'TEMPLEMARTIN MECHANICAL REPAIR SERVICES', '', '021 7330230', 'GURRANES', 'TEMPLEMARTIN', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 'TER1', 'TERRY DRUMMOND', '', '', '2 OAKDENE', 'SKEHARD ROAD', 'BLACKROCK', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 'TEX', 'TEXT TELL LTD', 'info@texttell.com', '01 9010401', 'HUNTSMAN HOUSE', 'BALLYMOUNT CROSS IND ESTATE', 'BALLYMOUNT', 'DUBLIN 24', 'JOHN BLENNERHASSETT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 'THA1', 'THE THADY INN', '', '021 7336379', 'FARNANES', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 'THR1', 'THREE IRELAND (HUTCHISON) LIMITED', '1913/1800300202 barry.accountmana', '1800800002 MOBILE', 'NATIONAL TECHNOLOGY PARK', 'LIMERICK', '', 'A/C CODE254346004', 'SINEAD KING 016049848', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 'TIM', 'TIM CREMIN LTD', '', '021 4501693', 'T/A NORTHSIDE HEATING & PLUMBING SUPPLIE', '35A WATERCOURSE INDUSTRIAL ESTATE', 'BLACKPOOL', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 'TIME', 'TIMEPLAN LTD', '', '0044 1483769766', '1 CAPITAL PARK, HIGH STREET', 'OLD WOKING', 'SURREY', 'GU22 6LD', 'HOWARD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 'TIP1', 'TIPPERARY CRANE HIRE', '', '0504 42146', 'SEAMUS LANIGAN RYAN', 'DERRYMORE HOUSE', 'BALLYCAHILL', 'CO TIPPERARY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 'TMC', 'TMC TECHNOLOGY LTD.', '', '214289958', 'CHIP ELECTRONIC SERVICRS', 'UNIT 1B, ENTERPRISE PARK', 'INNISHMORE', 'BALLINCOLLIG , CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 'TMG1', 'TMG SAFETY CONSULTANTS', '', '021 4634629', 'CLOONMULLAN', 'BROOMFIELD WEST', 'MIDLETON', 'CO CORK', 'TOM GILLESPIE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 'TNT', 'TNT EXPRESS (IRELAND ) LTD', '', '', 'CORBALLIS PARK', 'DUBLIN AIRPORT', 'CLOGHRAN', 'CO. DUBLIN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 'TOB', 'TOBIN AUTO SERVICES', '', '964184', 'UNIT 4, KENNYS YARD', 'TRAMORE ROAD', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 'TODO', 'TODO UK', '', '0044 1873882030', '3 WADDINGTON HOUSE', 'L.B.CENTRE, LLANOVER', 'ABERGAVENNY, MONMOUTHSHIRE', 'NP7 9HA, GREAT BRITAIN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 'TOK', 'TOKHEIM U.K LTD', '', '', 'UNIT 1 BAKERS ROAD', 'WEST PITKERRO INDUSTRIAL ESTATE', 'DUNDEE DD5 3RT', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 'TOK1', 'TOKHEIM IRELAND LTD', '', '14619800', 'UNIT L1 BALDONNELL BUSINESS PARK', 'BALDONNELL', 'DUBLIN 22', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 'TOM', 'TOM BERESFORD &SONS LTD', 'beresfordtrailers@eircom.', '5841906', 'SPRINGMOUNT', 'DUNGARVAN', 'CO. WATERFORD', '', 'TOM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 'TOM1', 'TOM DEASY AUTO ELECTRICAL', '', '', '27 AMBERLEY HEIGHTS', 'GRANGE', 'DOUGLAS', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 'TOO', 'TOOL HIRE & SALES LTD', '', '4915806/9', 'UNIT 3', 'YOUNGLINE INDUSTRIAL ESTATE', 'TRAMORE ROAD', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 'TOP1', 'TOPLINE THURLES', '', '0504 21522', 'THURLES', 'CO TIPPERARY', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 'TOP2', 'TOP SUNDRIES DEPOT', '', '', 'PROMENADE ROAD', 'DUBLIN 3', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 'TOT', 'TOTTERDELL COMMUNICATIONS', '', '12761553', 'UNIT 45 SOUTHERN CROSS BUSINESS PARK', 'BOGHALL ROAD', 'BRAY', 'CO. WICKLOW', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 'TQE1', 'TQ ELECTRICAL ENGINEERING SERVICES LTD', 'TOM@TQEES.IE', '50434100', 'ATHNID', 'THURLES', 'CO TIPPERARY', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 'TR IN', 'TRANSLAND INTERNATIONAL (UK) LTD', '', '045 837600', 'UNIT 13', 'OBSERSTOWN BUSINESS PARK', 'NAAS', 'CO. KILDARE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 'TRAC', 'TRACKCARE ENGINEERING', '', '6984943', 'DEVON ROAD', 'TEMPLEGLANTINE', 'CO. LIMERICK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 'TRE1', 'TREATY PLANT AND TOOL HIRE', '', '61316296', 'UNIT 1, ROXBORO ENT. CENTRE', 'LIMERICK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 'TRI', 'TRIACE', 'SALES@TRIACE.IE', '025 32577', 'PRESSURE CLEANING SYSTEMS', 'CORK ROAD', 'FERMOY', 'CO. CORK', 'ALSO EUROQUIP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 'TRI1', 'TRINITY HIRE LTD', 'INFO@TRINITYHIRE.COM', '053 9147900', 'TRINITY STREET', 'WEXFORD', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 'TRI2', 'TRIHY\'S SAW MILLS AND GARDEN SHEDS', 'trihysawmills@gmail.com', '024 94318', 'GRANGE', 'YOUGHAL', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 'TRU1', 'TRUNWIT TRANSPORT LTD', '', '023 8841306', 'ALLEN SQUARE', 'BANDON', 'CO CORK', '', 'SEAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 'TUB1', 'TUBECO', 'finola.elwood@hevac.ie', '021 4321066', 'TUBE COMPANY OF IRELAND LTD', 'SOUTH RING WEST BUSINESS PARK', 'TRAMORE ROAD', 'CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 'TUTH', 'TUTHILL TRANSFER SYSTEMS', '', '4.41858E+11', 'NEW MILL, THE BOUNDARY,FARNDON ROAD,', 'MARKET HARBOROUGH, LEICESTERSHIRE,', 'LE16 9NP,', 'ENGLAND.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 'TWO', 'TWOWAY FORWARDING & LOGISTICS IRL LTD', '', '214881122', 'SPRINGHILL BUSINESS PARK', 'CARRIGTWOHILL', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 'TWO1', 'SEAN TWOMEY', '', '', 'WATERLOO', 'BLARNEY', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 'UND1', 'UNDERGROUNDEYE DRAIN SERVICES', '', '2648140', 'LEHANA CARRIGADROHID', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 'VAL1', 'VALE STAR OBSERVER NEWSPAPERS', '', '022 22910', '19 BRIDGE STREET', 'MALLOW', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 'VEL1', 'VELOCITY CYCLES', '', '021 4873804', 'WEST VILLAGE', 'BALLINCOLLIG', 'CO CORK', '', '021 4873804', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 'VER1', 'VERTEL TELECOMMUNICATIONS', 'jan@vertel.ie', '212430100', 'UNIT 4 FOTAPOINT ENTERPRISE PARK', 'CARRIGTWOHILL', 'CO CORK', '', 'JAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 'VIA1', 'VIANET FUEL SOLUTIONS LTD', 'christine.parker@vianetfs.com', '4.41858E+11', 'UNIT H', 'WELLAND INDUSTRIAL ESTATE', 'MARKET HARBOROUGH', 'LE16 7PS', 'ROSANA THOMAS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 'VIC1', 'VICTORIA CROSS CYCLES LTD', '', '021 4342240', 'VICTORIA CROSS', 'CORK', '', '', 'GAVIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 'VIK', 'GRAHAM FEENEY', '', '', 'VIKING MAINTENCE LTD', 'TRACEYSTOWN', 'FOULKMILLS', 'CO. WEXFORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 'VIK1', 'VIKING DIRECT (IRELAND)', '', '1890 818 120', 'PO BOX 4413', 'UNIT 35', 'ROSEMOUNT BUSINESS PARK', 'DUBLIN 11', 'A/C 2720591', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 'VIN1', 'VINCENT DEMPSEY PLANT HIRE', '', '0404 41753', 'KILMURRAY NORTH', 'REDCROSS', 'CO WICKLOW', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 'W1', 'JOHN A WOODS LTD', '', '021 4800118', 'CLASSIS DIY', 'CLASSIS', 'OVENS', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 'W2', 'WHEELERS MEAL CAFE,', '', '022 42004', 'NEWPOTHOUSE,', 'MALLOW,', 'CORK.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 'W5', 'WEST CORK OIL', 'westcorkoils@eircom.net', '028 31396', 'KILLEENLEIGH', 'CAHERAGH', 'DRIMOLEAGUE', 'CO. CORK', 'KATHLEEN KIRBY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, 'WAL1', 'WALSH\'S CARPETS & FURNITURE LTD', 'accounts@walshcarpets.com', '021 4639000', 'TOWNSPARK', 'MIDLETON', 'CO. CORK', 'P25 P640', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, 'WAS1', 'WASHWELL MAINTENANCE SERVICES', '', '', 'LEIGH SANDS', 'COOLMONA', 'DONOUGHMORE', 'CO.CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, 'WCF', 'WEST CORK FIRE SAFETY LTD', '', '', 'KNOCKS', 'LYRE', 'CLONAKILTY', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 'WE D', 'WES ( DUNGARVAN ) LTD', '', '058 41081', '4-5 SHANDON BUSINESS PARK', 'DUNGARVAN', 'CO. WATERFORD', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, 'WEB1', 'WEBTIDE LTD', 'TOM@WEBTIDEIT.COM', '021-4317001', 'NEPTUNE HOUSE', 'VICTORIA RD', 'CORK', '', 'TOM/SINEAD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 'WEB2', 'WEBSPRING DESIGN', '', '', 'UNIT 9 (ABOVE CAFE BEVA)', 'HAZELWOOD CENTRE', 'GLANMIRE', 'CO CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 'WEB3', 'TAKEN OVER BY  WEB5.....WEBHOST.IE LTD', 'acounts@webhost.ie', '01 4948034', '10 BEVERLY PARK', 'BEVERLY COURT', 'TEMPLEOGUE', 'DUBLIN16', 'DAVID FARRELLY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 'WEB4', 'THE WEBB', '', '', 'MACROOM', 'CO CORK', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 'WEB5', 'STERNFORTH LTD T/A WEB WORLD', 'accounts@webhost..ie', '01 4948034', 'B15, SOUTH CITY BUSINESS PARK', 'WHITESTOWN WAY, DUBLIN 24', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 'WEL1', 'WELFARE HIRE LTD', 'welfarepodhire@gmail.com', '866071632', '21 LOWER POULADUFF ROAD', 'CORK', 'T12 ENN9', '', 'GERALDINE DUNLEA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 'WES', 'WEST CORK TOOL COMPANY', '', '2840681', 'REGAL INDUSTEIAL ESTATE', 'CASTLETOWNSHEND ROAD', 'SKIBBEREEN', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 'WES1', 'WEST CORK AUTO FACTORS LTD', '', '023 8842780', 'NEW ROAD', 'BANDON', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 'WES2', 'WESTLINK SERVICE STATION', 'CARALINK@EIRCOM.NET', '021 4315454', 'LOWER POULADUFF ROAD', 'CORK', '', '', 'GARY/JOAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, 'WES3', 'WESTEND CYCLES', '', '021 4873804', 'WEST END', 'BALLINCOLLIG', 'CO CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, 'WES4', 'WEST CORK ELECTRICAL WHOLESALE CO. LTD', 'info@wcew.ie', '023 8834360', 'INDUSTRIAL PARK', 'CLOGHEEN', 'CLONAKILTY', 'CO CORK  P85 PY91', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, 'WH1', 'WATERFORD HIRE', '', '51833333', 'INNER RING ROAD', 'WATERFORD', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 'WHE1', 'MICK WHELAN SAFETY SERVICES', 'WHELAN.MICK@YAHOO.COM', '085 8661125', 'LISGRIFFIN,', 'BUTTEVANT,', 'CO.CORK', '', 'MICK WHELAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(856, 'WHS1', 'WONDERVALLEY HYGIENE SUPPLIES', 'sales@wvhygiene.ie', '061 384521', 'WONDERHILL', 'KILTEELY', 'CO LIMERICK', 'V94 WK80', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 'WIND', 'WINDSCREEN NATIONWIDE', '', '021-4826635', 'UNIT 1 WESTPOINT TRADE CENTRE', 'LINK ROAD', 'BALLINCOLLIG', 'CO. CORK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 'WJF1', 'WJF MURPHY LTD', 'sales@nationalpackagingsupplies.com', '087 1811173', 'T/A NATIONAL PACKAGING SUPPLIES', 'KILMORE', 'BALLINSPITTLE', 'CO CORK', 'WILLIAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 'WLQ', 'WHEELAN\'S LIMESTONE QUARRIES LTD', '', '2227813', 'COPSTOWN QUARRY', 'MALLOW', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 'WOO', 'WOODWISE', '', '021 4308904', 'HOLLYMOUNT INDUSTRIAL ESTATE', 'HOLLYHILL', 'CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 'WOO1', 'WOOD COMMUNICATIONS LTD', 'SALES@WOODCOMM.IE', '14264000', 'UNIT L7', 'BALLYMOUNT IND. EST', 'DUBLIN 12', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 'WOR1', 'WORKFORCE TECHNOLOGY & SERVICES', 'workforcetechnologies@gmail.com', '087 6617115', '47 WOODLAWN DRIVE', 'CLONBULLOGUE', 'TULLAMORE', 'CO. OFFALY', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 'WRB1', 'WILLIAM REED BUSINESS MEDIA', 'brian.watkins@wrbm.com', '0044 1293 610362', 'BROADFIELD PARK', 'CRAWLEY', 'WEST SUSSEX', 'RH11 9RT ENGLAND', 'BRIAN WATKINS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, 'WTFDTOLL', 'WATERFORD TOLL SCHEME', '', '', 'SUIR CROSSING PLACE', 'CO-WATERFORD', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, 'WWFS', 'WASHWELL FORECOURT SERVICES', '', '021 4886698', 'UNIT 9 GRENAGH COMMERCIAL CENTRE', 'GRENAGH', 'CO. CORK', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 'ZUR1', 'ZURICH LIFE ASSURANCE PLC', 'john@jorfinancial.ie', '01 7992711', 'ZURICH HSE, FRASCATI RD, BLACKROCK, DUBL', '(JOHN O RIORDAN FINL LTD, BARRACK VILLAG', 'RUSSELLSTOWN, CLONMEL, CO TIPP', '', 'JOHN O RIORDAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, '28934', 'Kashif Supplier', 'alikashi54321@gmail.com', '23048230942', 'LSJF', 'LSFJSFS', 'MZXNC', 'WRUEIWOR', 'New Supplier Note', '2020-11-27 15:54:23', '2020-11-27 15:54:23'),
(868, 'JJJJJ', 'LeanBPI', 'johnoshanahan@leanbpi.ie', '087 1234567', 'test add 1', 'test add 2', 'test add 3', NULL, 'no notes', '2020-11-29 13:41:07', '2020-11-29 13:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'edit_job_card_password', '12345678', '2021-04-09 05:11:19', '2021-04-09 06:10:36'),
(2, 'is_job_card_password', 'yes', '2021-06-17 08:17:23', '2021-06-17 23:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('document','quality','size') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tool_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_purchased` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_price` double(8,2) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `tool_code`, `description`, `serial_no`, `date_purchased`, `purchase_price`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'CAL 3', '20 LITRE PROVER-', 'N22 29M217', '6/25/2012', 0.00, 'THIS PROVER IS ON LOAN FROM PUMP WATCH WHILE WE AWAIT NEW ONES\r\nNSAI CERTIFICATE NO.DN/09/050-3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'CAL 4', '5 LITRE PROVER-', 'N 22 A5M107', '6/25/2012', 0.00, 'THIS TEST PROVER IS ON LOAN FROM PUMP WATCH LTD WHILE WE ARE WAITING FOR NEW MEASURE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'CAL 5', '200LTR CARBON FIBRE TEST PROVER', 'K38C2T003', '11/20/2009', 9.00, 'THIS TEST PROVER CALIBRATION CERT IS CURRENTLY OUT OF DATE. THIS TEST PROVER HAS BEEN DISPOSED OF 2018.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'CAL 8', 'THERMOMETER 3208 I.S.', '540971375', '11/20/2014', 328.00, 'THIS WAS PURCHASED FROM RADIONICS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'CAL 7', 'RUCANOR STOP WATCH', '27320-01', '2/21/2015', 11.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'CAL 1', '5 LITRE PROVER-', 'N 10 A5 M105', '3/26/2012', 0.00, 'THIS VESSEL IS DUE FOR RE VERIFICATION ON  2/APR 12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'CAL 2', '20 LITRE PROVER-', 'N 10 29 M213', '3/26/2012', 0.00, 'THIS VESSEL IS DUE FOR RE VERIFICATION ON  2/APR 12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'ST2', 'STAMPING PLIERS', 'SEAMUS PLIERS', '8/3/2012', 0.00, 'RETURNED TO NSAI 02.09.2014', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'ST1', 'STAMPING PLIERS', 'KEVINS PLIERS', '8/3/2012', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'ST4', 'STAMPING PLIERS', 'OLIVER PLIERS', '10/4/2012', 0.00, 'RETURNED TO NSAI 02.09.2014', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'ST5', 'STAMPING PLIERS', 'DANIEL PLIERS', '10/4/2012', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CAL 10', 'MEGGER INSTALLATION TESTER (R. FITZGEARLD)', '101072857', '5/14/2014', 0.00, 'ASSIGNED TO R FITZGERALD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'ST6', 'STAMPING PLIERS', 'SEAN PLIERS', '9/25/2014', 0.00, 'RECEIVED FROM NSAI 25.09.2014', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'ST7', 'STAMPING PLIERS', 'JOHN PLIERS', '9/25/2014', 0.00, 'RECEIVED FROM NSAI 25.09.2014', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'ST3', 'STAMPING PLIERS', 'NIALLS PLIERS', '8/3/2012', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'ST8', 'STAMPLING PLIERS', 'CJ RELIHAN', '5/1/2015', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'ST9', 'STAMPING PLIERS', 'JAMES MURPHY', '9/1/2016', 0.00, 'RECEIVED FROM NSAI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'LAN1', 'LAN YARD', '20801886', '1/16/2018', 0.00, 'MJ SCANNELL - PURCHASED FROM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'HAR1', 'HARNESS', '20795009', '1/16/2018', 0.00, 'PURCHASED FROM MJ SCANNELL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'SLI1', '1 METRE SLING', '164137', '1/16/2018', 0.00, 'D SHACKLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'SLI2', '2 METRE SLING', '164285', '1/16/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'LTM', 'LARGE THREADING MACHINE', '', '1/25/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'STM', 'SMALL THREADING MACHINE', '', '1/25/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'TV', 'THREADING VICE', '', '1/25/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'PPW', 'PLASTIC PIPE WELDER', '', '1/25/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'ADG', 'ATEX DIGITAL GAUGE (LEO2)', '', '1/25/2018', 0.00, 'TEST RIG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'WG', 'WELDING GENERATOR', '', '1/25/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'HT', 'HAND THREADERS', '', '1/25/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'T1', 'TRAILER 1', '', '1/29/2018', 0.00, 'TRAILER WITH DROP DOWN SIDES.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'T2', 'TRAILER 2', 'UN9B824BRD2019244', '1/29/2018', 0.00, 'TRAILER WITH NO DROP DOWN SIDES.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'T3', 'TRAILER 3 CLEANING TRAILER', 'SCK60000040412371', '1/29/2018', 0.00, 'TANK CLEANING TRAILER.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'PT', 'PETROL MIXER', '1607111600890', '1/29/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'DRILL (JOL)', 'BOSCH DRILL - AL 1860 CV.(JOHN O LEARY)', '606000282', '2/7/2018', 0.00, 'PERMANENTLY ALLOCATED TO JOHN O LEARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'HP LAPTOP', 'HP LAPTOP', 'CND 4406 PPL', '11/1/2018', 0.00, 'JAMES USED TO HAVE THIS LAPTOP, NOW ON DONAL\'S BOARD TABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'STE1', 'SWAN NECK WRENCH', 'PET OCT 18-7', '10/8/2018', 0.00, 'GIVEN TO RYAN 04.03 FOR VAN STOCK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'ST10', 'STAMPING PLIERS', 'RYAN MULLANE', '2/14/2019', 0.00, 'RYAN NEVER COMPLETED NSAI TRAINING - RETURNED PLIERS TO NSAI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'ST11', 'STAMPING PLIERS', 'GUS MALONE', '5/14/2019', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'TAT1 (RM)', 'REMOTE SERVICE ENGINEER', 'PETRO28061', '6/28/2019', 0.00, 'TATSUNO REMOTE ASSIGNED TO RYAN MULLANE 29.06.2019', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'TAT2', 'REMOTE SERVICE ENGINEER', 'PETRO28062', '6/28/2019', 0.00, 'TATSUNO REMOTE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'LIF1 (JOL)', 'FIBRELITE MANHOLE LID LIFTERS', 'PETRO0706191', '6/7/2019', 0.00, 'PERMANENTLY ALLOCATED TO JOHN O LEARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'LIF2', 'FIBRELITE MANHOLE LID LIFTERS', 'PETRO0709192', '6/28/2019', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'ET1', 'ETERNET CABLE', '', '2/8/2019', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'LIF3 (CJ)', 'FIBRELITE MANHOLE LID LIFTERS', 'PET OCT18-1', '10/8/2018', 0.00, 'ORIGINALLY ALLOCATED TO BRIAN ENRIGHTS, AS OF 04.03.2019 TRANSFERRED TO CJ RELIHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'FNL', 'FUNNEL', 'PET OCT18-2', '10/8/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'GCAN', 'GERRY CAN', 'PET OCT18-3', '10/8/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'STN', 'STENCIL', 'PET OCT18-4', '10/8/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'BW', 'PRO BASIN WRENCH', 'PET OCT18-5', '10/8/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'SWR', 'SWAN NECK WRENCH', 'PET OCT18-7', '10/8/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'EFTL', 'ELAFLEX TOOL', 'PET OCT18-6', '10/8/2018', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'CAL 6', 'GAS MONITOR FOR RIZWAN KHAN', 'KA419-1052365', '8/1/2019', 365.00, 'ASSIGNED TO RIZWAN KHAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'LIF 4', 'FIBRELITE MANHOLE LID LIFTERS', 'PETRO 0108-1', '8/1/2019', 130.00, 'ASSIGNED TO RYAN MULLANE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'FNL 2', 'FUNNEL', 'PETRO 0108-2', '8/1/2019', 45.00, 'ASSIGNED TO GUS MALONE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'HAR2', 'HARNESS', '1018014', '8/8/2019', 183.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'LIF5 (GUS)', 'FIBLELITE MANHOLE LID LIFTERS', 'PETRO091290', '12/9/2019', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'CAL 20', 'FLUKE MEGGER 1663', '4618049', '11/25/2019', 995.00, 'ASSIGNED TO RIZWAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'DRI1', 'MILWAUKEE 18V SDS DRILL PETRO30.01.20', '44742103000033J2019', '1/30/2020', 548.78, 'ASSIGNED PERMANENTLY TO RIZWAN 30.01.20 \r\nMILWAUKEE 18V SDS DRILL HD18CHX-502X\r\nSERIAL NO 4474 21 03 000033 J2019', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'KAN1', 'BOSCH KANGO GSH 11E   PETRO31.01.20', '0 611 316 741 2019', '1/30/2020', 556.11, 'ASSIGNED PERMANENTLY TO CJ\r\nBOSCH KANGO GSH 11 E PROFESSIONAL M18 CHX\r\nSERIAL NO 0 611 316 741 2019\r\nPETRO31.01.20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'PW1', 'PIPE WRENCH 24\" ALUMINIUM  RIDGID', 'PETRO020320', '3/2/2020', 0.00, 'ASSIGNED TO CJ PERMANENTLY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','employee','supplier','subadmin','engineer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `contact_id`) VALUES
(1, 'Admin', 'admin@petro.com', '2020-11-06 14:37:54', '$2y$10$U78.yXJfdCkL7LBZS3xGGeklIP/yu3y0GGvswPhAOtd77vkG8ta/a', 'admin', NULL, '2020-11-06 14:37:54', '2020-11-06 14:37:54', NULL),
(2, 'Developer test', 'info@deviotech.com', NULL, '$2y$10$U78.yXJfdCkL7LBZS3xGGeklIP/yu3y0GGvswPhAOtd77vkG8ta/a', 'engineer', NULL, '2020-11-30 15:32:25', '2020-11-30 15:32:25', NULL),
(3, 'oshanahan john', 'johnoshanahan@leanbpi.ie', NULL, '$2y$10$ivEfxaN5eNO/h.pEnL7xdeoC5X6Bgx1Wn..OwCBgSh/ZRuHbazYLW', 'engineer', NULL, '2020-11-30 21:05:05', '2021-03-16 03:00:26', 37),
(4, 'Ben Stokes Engineer', 'alikashi54321@gmail.com', NULL, '$2y$10$U78.yXJfdCkL7LBZS3xGGeklIP/yu3y0GGvswPhAOtd77vkG8ta/a', 'engineer', NULL, '2020-12-17 05:32:00', '2020-12-17 05:32:00', NULL),
(5, 'Kashif Ali Engineer', 'hussainshanawar1214@gmail.com', NULL, '$2y$10$8oK0bm8/7enwvDneidE.h.y1xbM3ozWMGGnx/MYjDdzC17qoS.D3i', 'engineer', NULL, '2020-12-22 10:51:42', '2020-12-22 11:11:58', NULL),
(6, 'Deviotech Deviotech', 'ayeshaalloudin@gmail.com', NULL, '$2y$10$U78.yXJfdCkL7LBZS3xGGeklIP/yu3y0GGvswPhAOtd77vkG8ta/a', 'engineer', NULL, '2021-01-14 11:42:36', '2021-03-16 03:00:26', 40),
(10, 'Nidaad Sahb Engineer', 'nidad77905@vss6.com', NULL, '$2y$10$U78.yXJfdCkL7LBZS3xGGeklIP/yu3y0GGvswPhAOtd77vkG8ta/a', 'engineer', NULL, '2021-01-14 16:57:16', '2021-03-16 03:00:26', 41),
(13, 'sdfdsfds dsfdsfdsf', 'lemadi2330@vss6.com', NULL, '$2y$10$X.C0FK39Gzt8jCxqluPtKeCAIhRiVQuWEys0Zwmn1Xuc6J3Ph6Q7q', 'engineer', NULL, '2021-01-14 17:07:52', '2021-03-16 03:00:26', 42),
(14, 'sdfdsfds dsfdsfdsf', 'lemadi2330@vssdfs6.com', NULL, '$2y$10$jxxytidtLS/cGtEpGC2fC.Y5jcFQZnFstpya5N1atC8vu8uvVgdYK', 'engineer', NULL, '2021-01-14 17:14:25', '2021-03-16 03:00:26', 43),
(15, 'sdfdsfds dsfdsfdsf', 'vowawi8302@vu38.com', NULL, '$2y$10$X/49ghYe2ZLxvfgsNg/wFuoNxjOXbI5CvG.GXspqGRar2HfkImnB6', 'engineer', NULL, '2021-01-14 17:17:56', '2021-03-16 03:00:26', 44),
(17, 'sdfdsfdsf dsfdsf', 'hahit12118@vy89.com', NULL, '$2y$10$g2oP8VS/gqAgcjXwLswPcOAJJ5SOWAUCIA0j2Fd0PDOTDqfhIcFIO', 'engineer', NULL, '2021-01-14 17:21:02', '2021-03-16 03:00:26', 45),
(18, 'sdfdsfdsf dsfdsf', 'givolop120@vss6.com', NULL, '$2y$10$jPtFN9Rec8OZIH0GLvJyUOSDbN73ArW24vdhYi4jxCywuPSWkbgVS', 'engineer', NULL, '2021-01-14 17:22:27', '2021-03-16 03:00:26', 46),
(19, 'sdfdsfdsf dsfdsf', 'pekafi6601@yutongdt.com', NULL, '$2y$10$wO/mOw/Hk9aAMzvB4FcnQuwmwaESe6NTmqK97UGT82VBJ7x6aYz0i', 'engineer', NULL, '2021-01-14 17:23:27', '2021-03-16 03:00:26', 47),
(20, 'sfdsf sdfdsf', 'veneg14109@vy89.com', NULL, '$2y$10$XufUGhLVzeOfwX4.XHZohe.xfV35IB7LgFZ3iQe.zkYkD70WiHRZm', 'engineer', NULL, '2021-01-14 17:33:31', '2021-03-16 03:00:26', 48),
(21, 'sdfdsf sdfdsf', 'rotegil547@yutongdt.com', NULL, '$2y$10$HX/RFZMNK6WPxIgrrs7xU.RDtkFZGAdssz/dn696gbHc9Zx1WJ52W', 'engineer', NULL, '2021-01-14 21:38:09', '2021-03-16 03:00:26', 49),
(22, 'sdfdsfdsf sdfdsf', 'dokavi3521@yutongdt.com', NULL, '$2y$10$8ntzwXILPC7b39niHM85V.irkc.5YSyhNRMYJgTLfFD6Ww5i0Y0fS', 'engineer', NULL, '2021-01-14 21:45:34', '2021-03-16 03:00:26', 50),
(23, 'sdfdsfdsf sdfdsf', 'pareb31362@yutongdt.com', NULL, '$2y$10$djaoXC5e99itR./K4/8k5e91q2jCb8rE4HJ/p0krW/67ir72.1WA6', 'engineer', NULL, '2021-01-14 21:47:05', '2021-03-16 03:00:26', 51),
(24, 'Matthew', '7halil.derin.338c@createdrive.net', NULL, '$2y$10$lvnCIS6Y.dXJoBi./wvaH.7IyzgmZ380a/499QK3MUbebkU5tEoC.', 'engineer', NULL, '2021-01-14 21:48:35', '2021-03-16 03:00:26', 52),
(25, 'John Engineer', 'ftitaex.box3@coexn.com', NULL, '$2y$10$LNAnYMu3ivIAhf/B6NFFvuXjVlW0DidvxQpDeLYdFF/TuQ7ZcYhKS', 'engineer', NULL, '2021-01-14 22:54:57', '2021-03-16 03:00:26', 53),
(26, 'test test', 'hriko@cafeqrmenu.xyz', NULL, '$2y$10$SFfa6gKi4pbM8uuA3v3eBeX0RVxaSN0L4dQT9Ms0igWXhNAqmIb/K', 'engineer', NULL, '2021-01-15 09:49:57', '2021-03-16 03:00:26', 54),
(27, 'test test', 'ayeshaalloudin123@gmail.com', NULL, '$2y$10$PeEUHwy3rjJzd2i4TRd1cez6yLxJCtMgogIMoPOa2sua/Vkwb4ygm', 'engineer', NULL, '2021-01-15 09:58:10', '2021-03-16 03:00:26', 55),
(28, 'Engineer Karajaa', 'krajaa@statenislandmvp.com', NULL, '$2y$10$TSmH2Dcdma3lSUjXJRVrkuyoVH.07YZtO.R9.2HFnI7zoaLaUvg0u', 'engineer', NULL, '2021-01-18 15:17:43', '2021-03-16 03:00:26', 56),
(29, 'Test test', 'test@test.com', NULL, '$2y$10$24Ex9U4OmTI7viW7pWttJemWpYHu7zztc67LRb8bjdDg8dlAkUkEG', 'engineer', NULL, '2021-03-09 04:25:50', '2021-03-16 03:00:26', 59),
(30, 'Test test', 'test@test2.com', NULL, '$2y$10$oUg0/XeEYUF0CCn8PuAKy.KKm0ouGdfGCLFSpnFqAr9kXZfhzD32K', 'engineer', NULL, '2021-03-09 04:26:37', '2021-03-16 03:00:26', 60),
(31, 'lkdksdfjl lksfksjd', 'testtest@test2.com', NULL, '$2y$10$OXlJ/lZVxk3zVMFoug.uJeoBcsyoXWNEh2hQRxP1Ovdi83pWHTBXO', 'engineer', NULL, '2021-03-09 04:34:07', '2021-03-16 03:00:26', 61),
(32, 'test test', 'test@test3.com', NULL, '$2y$10$hRkrHw2SgkxuJpIWxaP6sOjCZzRvzYvlbVG5mPesWlR3LEADACDIC', 'engineer', NULL, '2021-03-09 04:35:29', '2021-03-16 03:00:26', 62),
(33, 'test test', 'test@test4.com', NULL, '$2y$10$l7PUhsNe2HkUkd6ZgE9JEOmXccNyjv0ngI.k8RcVIhktXIHs4y24q', 'engineer', NULL, '2021-03-09 04:37:10', '2021-03-16 03:00:26', 63),
(34, 'lksad lksd', 'kasd@gmail.com', NULL, '$2y$10$Afc1oV0i8F8FwC09WFQdieqA3oDgzSt.pEHNAlrSBOqRPsx6IasnS', 'engineer', NULL, '2021-03-10 23:06:19', '2021-03-16 03:00:26', 64),
(35, 'Test Best', 'testbest@engineer.com', NULL, '$2y$10$S3ZXeFSFRdHwQcyq2jwHd.BHjg9BSLwNCw2qhgSaQhOcAamkh8Iva', 'engineer', NULL, '2021-03-11 02:30:55', '2021-03-16 03:00:26', 65),
(36, 'skldj LKDSD', 'lsfjldskjflk@gmail.com', NULL, '$2y$10$uYZdJz8S9lXm4M9Mzlew/ep5mQamUw9abBPdZoIhSTVB6FzxdBFya', 'engineer', NULL, '2021-03-11 23:07:16', '2021-03-16 03:00:26', 66),
(37, 'KKKKKK', 'lsfjldssdfkjflk@gmail.com', NULL, '$2y$10$uf94dyuFygIr8Neb6VLDOe.i/3Kj6nYUV9WW17Z84yNsB7yDxbktm', 'engineer', NULL, '2021-03-11 23:08:12', '2021-03-16 03:00:26', 67),
(41, 'LKJSDFKL LKDSDJFLK', 'contact_id@gmail.com', NULL, '$2y$10$gA8LUnoaJ6wDPhJjEHSEO.XEoHoZJofkEDOvCFf8aPKCjkXBZxLC6', 'engineer', NULL, '2021-03-16 04:03:17', '2021-03-16 04:05:55', 72),
(42, 'LKJKJLSDKFJ LKDSJDFLK', 'LKSDJDFL@GMAIL.COM', NULL, '$2y$10$AeOgKPFzNhOBsbTJN1ONSO6OAMHQIILALZY6bLFVqX00fj0TVY2yO', 'engineer', NULL, '2021-03-16 08:37:06', '2021-03-16 08:37:06', 73),
(43, 'lsfkfjkkdjfl dslkskdj', 'dflsjdlkf@kgskskdf.com', NULL, '$2y$10$DMbsuRKVTTpARMyDVEROR.C5K4TIo4xeIiUzbjOiuK7s9Iy5KwL5a', 'engineer', NULL, '2021-03-18 04:21:33', '2021-03-18 04:21:33', 74),
(44, 'lsfkfjkkdjfl dslkskdj', 'dflsjdlkf@kgsksksldkjkfjldf.com', NULL, '$2y$10$5bMXKGbgBwvl6iSnDdq7Z.4KpA6E8gtSDmGgTsnbZKvZtWo0Am3Oa', 'engineer', NULL, '2021-03-18 04:21:54', '2021-03-18 04:21:54', 75),
(45, 'lsfkfjkkdjfl dslkskdj', 'dflsjdlkf@kgsks4897ksldkjkfjldf.com', NULL, '$2y$10$tKkZFyidOOtXBcZmdbcmsuQFcnu0eZsXc1iZUwvAE53lhN6/0OoiG', 'engineer', NULL, '2021-03-18 04:22:26', '2021-03-18 04:22:26', 76),
(46, 'KFC Engineer', 'kfc123@gmail.com', NULL, '$2y$10$G1QAGIg9M08D8ck9Q185veoRP10pS4PiJamIaengbFFeukWZUWFRC', 'engineer', NULL, '2021-03-26 03:09:30', '2021-03-26 03:09:30', 77),
(47, 'lksjdkfl lksjdl', 'lsksjdlslk@gmail.com', NULL, '$2y$10$LnhyK2/rlgawjnTl3k3JHeE0CFzB8yrfvaoM.9YjEkrAnmyjku/eS', 'engineer', NULL, '2021-03-31 07:03:57', '2021-03-31 07:03:57', 78),
(48, 'jsdk dlsksd', 'lkskjlfd@lksdklfsd.com', NULL, '$2y$10$XWZCavtF.NAEonK45ZufwOEh8y1bcI0MOEBiWCIbS1QaOmtvin4gC', 'engineer', NULL, '2021-04-14 04:35:04', '2021-04-14 04:35:04', 79),
(49, 'jsldklk ldkfj', 'testengineerkds@gmail.com', NULL, '$2y$10$E5kXHEAAnLm6480R1L.Jxu8M8k7r6xeOf4e37IxK/Jx0lhLXHujb2', 'engineer', NULL, '2021-04-15 01:15:44', '2021-04-15 01:15:44', 80),
(50, 'KLJSD LSKDJ', 'test@engineerengineer.com', NULL, '$2y$10$pgXRkHSc5CqWrvluApF0DupF0mD0ZdlASzqSB7ohjagS9gOtySjdO', 'engineer', NULL, '2021-04-15 01:16:39', '2021-04-15 01:16:39', 81),
(51, 'Test Learning Engineer', 'test@learning.com', NULL, '$2y$10$Axw1Ky6vvITbcx26cua1jevOb.MMwb1xZKDLeXdVZomsqyItmp2zy', 'engineer', NULL, '2021-04-21 00:55:06', '2021-04-21 01:32:55', 82),
(52, 'Test Newengineer', 'testnewengineer@gmail.com', NULL, '$2y$10$GhN3PuxqGeR7DPR8Bhnhg.deZiNCzr6/Io82uV1ZK2xvEarzWx8dm', 'engineer', NULL, '2021-06-17 05:45:08', '2021-06-17 05:45:08', 83),
(53, 'Deviotech Engineer 1', 'deviotech@engr1.com', NULL, '$2y$10$eokKDiuxZA/53GIO22PGpeLF/jlo0yRpbHXZSORpEF5m26vVpKm8W', 'engineer', NULL, '2021-06-29 23:56:13', '2021-07-09 05:13:45', 84),
(54, 'Deviotech Engineer 2', 'deviotech@engr2.com', NULL, '$2y$10$D66mUSvcXjPw39IrglAvjedUj9MOPXXivOGFaq7KptNNL0zSQj05y', 'engineer', NULL, '2021-06-29 23:58:52', '2021-06-29 23:58:52', 85),
(55, 'Deviotech Engineer 3', 'deviotech@engr3.com', NULL, '$2y$10$u6aM17jgpQp8vjIzpnfJsOImv4Sncw26pkdgTkmL0EUG3jsoihZ7.', 'engineer', NULL, '2021-06-29 23:59:46', '2021-06-29 23:59:46', 86),
(56, 'Deviotech Engineer 4', 'deviotech@engr4.com', NULL, '$2y$10$9WptXZNXrqupozQgNAQ/eOwFPAwMPd5EgXAfbeX.BtlR0eKfSxaSa', 'engineer', NULL, '2021-06-30 00:00:34', '2021-06-30 00:00:34', 87),
(57, 'Deviotech Engineer 5', 'deviotech@engr5.com', NULL, '$2y$10$p5LT/re/DX/cET0IP1X.5.8WxHXmqw1ATFCx7h0JQkR4glhX9SBx6', 'engineer', NULL, '2021-06-30 00:01:29', '2021-06-30 00:01:29', 88),
(58, 'sdfds Test', 'sdfkdlssdf@gmail.com', NULL, '$2y$10$IjgzTaSUux.4s92tjiLihu6PxR/odD66JxbUGVLdN67BmNe0E96Dq', 'engineer', NULL, '2021-07-09 05:44:41', '2021-07-09 05:44:41', 89);

-- --------------------------------------------------------

--
-- Table structure for table `vats`
--

CREATE TABLE `vats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vat` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vats`
--

INSERT INTO `vats` (`id`, `created_at`, `updated_at`, `vat`) VALUES
(3, '2020-11-06 09:52:24', '2020-11-27 09:43:29', 21),
(4, '2020-12-10 13:10:02', '2020-12-10 13:10:02', 13),
(5, '2020-12-10 13:10:08', '2020-12-10 13:10:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `verif_quotations`
--

CREATE TABLE `verif_quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `signatory_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_km` double(8,2) DEFAULT NULL,
  `travel_km_cost` double(8,2) DEFAULT NULL,
  `travel_total_cost` double(8,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT 'In percentage',
  `vat_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'In percentage',
  `rate` double(8,2) DEFAULT NULL,
  `total_value` double(8,2) DEFAULT NULL,
  `internal_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `warranty_id` tinyint(1) NOT NULL DEFAULT 0,
  `sign_off` enum('1','2','3') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1: Preliminaries, 2: PSDP & PSCS, 3: Retailer',
  `status` enum('Open','Won','Loss') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quotation_type_id` bigint(20) UNSIGNED NOT NULL,
  `verif_quotations_folder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verif_quotations`
--

INSERT INTO `verif_quotations` (`id`, `user_id`, `customer_id`, `job_id`, `signatory_id`, `date`, `travel_km`, `travel_km_cost`, `travel_total_cost`, `discount`, `vat_id`, `rate`, `total_value`, `internal_notes`, `block1`, `block2`, `no_of_days`, `warranty_id`, `sign_off`, `status`, `created_at`, `updated_at`, `quotation_type_id`, `verif_quotations_folder`) VALUES
(1, 1, 8, 34, 5, '04/12/2020 11:26 am', NULL, NULL, NULL, NULL, 3, 21.00, 300.00, NULL, NULL, NULL, NULL, 0, '3', 'Open', '2020-12-04 16:27:00', '2020-12-04 16:27:02', 3, '/Petro/Verification Quotations/1'),
(4, 1, 1, NULL, 1, '24/01/2021 12:52 pm', NULL, NULL, NULL, NULL, 3, 0.00, 225.00, NULL, NULL, NULL, NULL, 4, '1', 'Open', '2021-01-24 17:55:58', '2021-01-24 17:55:59', 1, '/Petro/Verification Quotations/4'),
(5, 1, 5, NULL, 3, '21/04/2021 6:45 am', 908.00, 98.00, 88984.00, NULL, 4, 0.00, 125.00, 'slkdjdjf', 'ldskjflksdjf', 'lkdsfkj', 98, 6, '2', 'Open', '2021-04-21 01:45:57', '2021-04-21 01:45:57', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `verif_quotation_documents`
--

CREATE TABLE `verif_quotation_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `verif_quotation_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verif_quotation_items`
--

CREATE TABLE `verif_quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `verif_quotation_id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `nozzles` int(11) NOT NULL,
  `cost_1st_nozzle` double(8,2) NOT NULL,
  `cost_other_nozzles` double(8,2) NOT NULL,
  `cost_all_nozzles` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verif_quotation_items`
--

INSERT INTO `verif_quotation_items` (`id`, `verif_quotation_id`, `number`, `nozzles`, `cost_1st_nozzle`, `cost_other_nozzles`, `cost_all_nozzles`, `created_at`, `updated_at`, `type`) VALUES
(0, 5, 980, 2, 100.00, 25.00, 125.00, '2021-04-21 01:45:57', '2021-04-21 01:45:57', 'Quad'),
(3, 1, 1, 2, 100.00, 25.00, 125.00, '2020-12-04 16:29:29', '2020-12-04 16:29:29', 'Dual'),
(4, 1, 2, 4, 100.00, 25.00, 175.00, '2020-12-04 16:29:29', '2020-12-04 16:29:29', 'Quad'),
(5, 2, 1, 6, 100.00, 25.00, 225.00, '2020-12-04 16:34:25', '2020-12-04 16:34:25', 'Six Hose'),
(6, 2, 2, 6, 100.00, 25.00, 225.00, '2020-12-04 16:34:25', '2020-12-04 16:34:25', 'Six Hose'),
(7, 2, 3, 4, 100.00, 25.00, 175.00, '2020-12-04 16:34:25', '2020-12-04 16:34:25', 'Quad'),
(8, 3, 1, 2, 100.00, 25.00, 125.00, '2020-12-09 12:22:44', '2020-12-09 12:22:44', 'Mono'),
(9, 4, 12, 2, 100.00, 25.00, 125.00, '2021-01-24 17:55:58', '2021-01-24 17:55:58', 'Mono'),
(10, 4, 2, 1, 100.00, 25.00, 100.00, '2021-01-24 17:55:58', '2021-01-24 17:55:58', 'Mono');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`id`, `created_at`, `updated_at`, `title`) VALUES
(1, '2020-11-06 10:04:35', '2020-11-06 10:04:35', 0),
(2, '2020-11-06 10:04:44', '2020-11-06 10:04:44', 3),
(3, '2020-11-06 10:04:49', '2020-11-06 10:04:49', 6),
(4, '2020-11-06 10:04:55', '2020-11-06 10:04:55', 12),
(6, '2021-03-11 05:40:08', '2021-03-11 05:40:08', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `availbilities`
--
ALTER TABLE `availbilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_emails`
--
ALTER TABLE `cc_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_job_id_foreign` (`job_id`),
  ADD KEY `certificates_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `communications`
--
ALTER TABLE `communications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contracts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_code_unique` (`code`),
  ADD KEY `customers_account_type_id_foreign` (`account_type_id`);

--
-- Indexes for table `dropbox_tokens`
--
ALTER TABLE `dropbox_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineer_equipments`
--
ALTER TABLE `engineer_equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engineer_equipments_form_id_foreign` (`form_id`);

--
-- Indexes for table `engineer_forms`
--
ALTER TABLE `engineer_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engineer_forms_user_id_foreign` (`user_id`),
  ADD KEY `engineer_forms_job_id_foreign` (`job_id`),
  ADD KEY `engineer_forms_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `engineer_images`
--
ALTER TABLE `engineer_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engineer_images_form_id_foreign` (`form_id`);

--
-- Indexes for table `engineer_jobs`
--
ALTER TABLE `engineer_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engineer_jobs_job_id_foreign` (`job_id`),
  ADD KEY `engineer_jobs_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_customer_id_foreign` (`customer_id`),
  ADD KEY `equipment_pump_make_and_model_id_foreign` (`pump_make_and_model_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issued_tools`
--
ALTER TABLE `issued_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_tools`
--
ALTER TABLE `issue_tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_tools_job_id_foreign` (`job_id`),
  ADD KEY `issue_tools_tool_id_foreign` (`tool_id`),
  ADD KEY `issue_tools_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_jobtype_id_foreign` (`jobtype_id`),
  ADD KEY `jobs_customer_id_foreign` (`customer_id`),
  ADD KEY `jobs_category_id_foreign` (`category_id`),
  ADD KEY `jobs_contact_id_foreign` (`contact_id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_communications`
--
ALTER TABLE `job_communications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_communications_job_id_foreign` (`job_id`),
  ADD KEY `job_communications_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_documents`
--
ALTER TABLE `job_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_documents_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_emails`
--
ALTER TABLE `job_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_emails_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_labours`
--
ALTER TABLE `job_labours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_labours_job_id_foreign` (`job_id`),
  ADD KEY `job_labours_contact_id_foreign` (`contact_id`) USING BTREE,
  ADD KEY `job_labours_form_id_foreign` (`form_id`);

--
-- Indexes for table `job_purchases`
--
ALTER TABLE `job_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_purchases_job_id_foreign` (`job_id`),
  ADD KEY `job_purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `job_stocks`
--
ALTER TABLE `job_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_stocks_job_id_foreign` (`job_id`),
  ADD KEY `job_stocks_stock_item_id_foreign` (`stock_item_id`),
  ADD KEY `job_stocks_engineer_id_foreign` (`engineer_id`),
  ADD KEY `job_stocks_form_id_foreign` (`form_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letters_customer_id_foreign` (`customer_id`),
  ADD KEY `letters_signatory_id_foreign` (`signatory_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materials_form_id_foreign` (`form_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pump_certifieds`
--
ALTER TABLE `pump_certifieds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pump_certifieds_certificate_id_foreign` (`certificate_id`),
  ADD KEY `pump_certifieds_job_id_foreign` (`job_id`);

--
-- Indexes for table `pump_make_and_models`
--
ALTER TABLE `pump_make_and_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pump_numbers`
--
ALTER TABLE `pump_numbers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pump_numbers_form_id_foreign` (`form_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_job_id_foreign` (`job_id`),
  ADD KEY `quotations_customer_id_foreign` (`customer_id`),
  ADD KEY `quotations_signatory_id_foreign` (`signatory_id`),
  ADD KEY `quotations_user_id_foreign` (`user_id`);

--
-- Indexes for table `quotation_documents`
--
ALTER TABLE `quotation_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_documents_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_items_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `quotation_payments`
--
ALTER TABLE `quotation_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_payments_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `quotation_types`
--
ALTER TABLE `quotation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_contracts`
--
ALTER TABLE `service_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_contracts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_items`
--
ALTER TABLE `stock_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_receipts`
--
ALTER TABLE `stock_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_purchase_orders`
--
ALTER TABLE `store_purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_purchase_orders_customer_id_foreign` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `vats`
--
ALTER TABLE `vats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verif_quotations`
--
ALTER TABLE `verif_quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verif_quotations_job_id_foreign` (`job_id`),
  ADD KEY `verif_quotations_customer_id_foreign` (`customer_id`),
  ADD KEY `verif_quotations_signatory_id_foreign` (`signatory_id`),
  ADD KEY `verif_quotations_user_id_foreign` (`user_id`),
  ADD KEY `verif_quotations_quotation_type_id_foreign` (`quotation_type_id`);

--
-- Indexes for table `verif_quotation_documents`
--
ALTER TABLE `verif_quotation_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verif_quotation_documents_verif_quotation_id_foreign` (`verif_quotation_id`);

--
-- Indexes for table `verif_quotation_items`
--
ALTER TABLE `verif_quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verif_quotation_items_verif_quotation_id_foreign` (`verif_quotation_id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `availbilities`
--
ALTER TABLE `availbilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cc_emails`
--
ALTER TABLE `cc_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `communications`
--
ALTER TABLE `communications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1160;

--
-- AUTO_INCREMENT for table `dropbox_tokens`
--
ALTER TABLE `dropbox_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `engineer_equipments`
--
ALTER TABLE `engineer_equipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `engineer_forms`
--
ALTER TABLE `engineer_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `engineer_images`
--
ALTER TABLE `engineer_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `engineer_jobs`
--
ALTER TABLE `engineer_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issued_tools`
--
ALTER TABLE `issued_tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_tools`
--
ALTER TABLE `issue_tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `job_communications`
--
ALTER TABLE `job_communications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_documents`
--
ALTER TABLE `job_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_emails`
--
ALTER TABLE `job_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `job_labours`
--
ALTER TABLE `job_labours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `job_purchases`
--
ALTER TABLE `job_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `job_stocks`
--
ALTER TABLE `job_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pump_certifieds`
--
ALTER TABLE `pump_certifieds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pump_make_and_models`
--
ALTER TABLE `pump_make_and_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pump_numbers`
--
ALTER TABLE `pump_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `quotation_documents`
--
ALTER TABLE `quotation_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `quotation_payments`
--
ALTER TABLE `quotation_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quotation_types`
--
ALTER TABLE `quotation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_contracts`
--
ALTER TABLE `service_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT for table `stock_receipts`
--
ALTER TABLE `stock_receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_purchase_orders`
--
ALTER TABLE `store_purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `vats`
--
ALTER TABLE `vats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `verif_quotations`
--
ALTER TABLE `verif_quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `engineer_forms`
--
ALTER TABLE `engineer_forms`
  ADD CONSTRAINT `engineer_forms_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `engineer_forms_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `engineer_forms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `engineer_images`
--
ALTER TABLE `engineer_images`
  ADD CONSTRAINT `engineer_images_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `engineer_forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `engineer_jobs`
--
ALTER TABLE `engineer_jobs`
  ADD CONSTRAINT `engineer_jobs_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `engineer_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_labours`
--
ALTER TABLE `job_labours`
  ADD CONSTRAINT `job_labours_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `engineer_forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
