-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2015 年 06 月 06 日 15:40
-- 服务器版本: 5.5.23
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_weimart`
--

-- --------------------------------------------------------

--
-- 表的结构 `weimart_comment_content`
--

CREATE TABLE IF NOT EXISTS `weimart_comment_content` (
  `comment_id` int(11) NOT NULL,
  `comment_floor` int(11) DEFAULT NULL,
  `comment_content` text,
  `comment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_comment_content`
--

INSERT INTO `weimart_comment_content` (`comment_id`, `comment_floor`, `comment_content`, `comment_time`, `user_id`) VALUES
(1, 1, 'this is comment', '2014-10-26 22:05:13', 1);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_log_list`
--

CREATE TABLE IF NOT EXISTS `weimart_log_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `content` text,
  `ip` varchar(20) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=609 ;

--
-- 转存表中的数据 `weimart_log_list`
--

INSERT INTO `weimart_log_list` (`id`, `user`, `content`, `ip`, `time`) VALUES
(28, '驱蚊器', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 13:50:49'),
(29, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-19 15:06:38'),
(30, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-19 15:07:05'),
(31, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-19 15:07:20'),
(32, '请问天天', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:10:10'),
(33, '123555', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:14:48'),
(34, NULL, '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:15:45'),
(35, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-19 15:20:57'),
(36, 'qwe rew', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:23:51'),
(37, 'qwe rew', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:24:04'),
(38, '123444', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:27:01'),
(39, '123444', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:27:18'),
(40, 'qweqw', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:34:32'),
(41, 'qweqw', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:34:43'),
(42, 'qweqweee', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:35:46'),
(43, 'qweqweee', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:35:56'),
(44, 'qweqwqw', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:37:50'),
(45, 'qweqwqw', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:37:58'),
(46, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:20'),
(47, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:33'),
(48, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:39'),
(49, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:39'),
(50, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:39'),
(51, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:40'),
(52, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:40'),
(53, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-19 16:34:19'),
(54, '12312313333', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 20:15:03'),
(55, 'zyx', '删除用户成功 [Delete User Success ID:220]', '127.0.0.1', '2015-04-19 22:38:04'),
(56, 'zyx', '删除用户成功 [Delete User Success ID:221]', '127.0.0.1', '2015-04-19 22:39:22'),
(57, 'zyx', '删除用户成功 [Delete User Success ID:222]', '127.0.0.1', '2015-04-19 22:39:25'),
(58, 'zyx', '删除用户成功 [Delete User Success ID:223]', '127.0.0.1', '2015-04-19 22:39:28'),
(59, 'zyx', '删除用户成功 [Delete User Success ID:224]', '127.0.0.1', '2015-04-19 22:39:31'),
(60, 'zyx', '删除用户成功 [Delete User Success ID:225]', '127.0.0.1', '2015-04-19 22:39:34'),
(61, 'zyx', '删除用户成功 [Delete User Success ID:226]', '127.0.0.1', '2015-04-19 22:39:37'),
(62, 'zyx', '删除用户成功 [Delete User Success ID:227]', '127.0.0.1', '2015-04-19 22:39:39'),
(63, 'zyx', '删除用户成功 [Delete User Success ID:228]', '127.0.0.1', '2015-04-19 22:39:42'),
(64, 'zyx', '删除用户成功 [Delete User Success ID:229]', '127.0.0.1', '2015-04-19 22:39:45'),
(65, 'zyx', '删除用户成功 [Delete User Success ID:230]', '127.0.0.1', '2015-04-19 22:39:47'),
(66, 'zyx', '删除用户成功 [Delete User Success ID:231]', '127.0.0.1', '2015-04-19 22:39:49'),
(67, 'zyx', '删除用户成功 [Delete User Success ID:232]', '127.0.0.1', '2015-04-19 22:39:52'),
(68, 'zyx', '删除用户成功 [Delete User Success ID:233]', '127.0.0.1', '2015-04-19 22:39:55'),
(69, 'zyx', '删除用户成功 [Delete User Success ID:240]', '127.0.0.1', '2015-04-19 22:40:01'),
(70, 'zyx', '删除用户成功 [Delete User Success ID:239]', '127.0.0.1', '2015-04-19 22:40:03'),
(71, 'zyx', '删除用户成功 [Delete User Success ID:238]', '127.0.0.1', '2015-04-19 22:40:06'),
(72, 'zyx', '删除用户成功 [Delete User Success ID:237]', '127.0.0.1', '2015-04-19 22:40:10'),
(73, 'zyx', '删除用户成功 [Delete User Success ID:236]', '127.0.0.1', '2015-04-19 22:40:17'),
(74, 'zyx', '删除用户成功 [Delete User Success ID:1]', '127.0.0.1', '2015-04-19 22:46:02'),
(75, 'zyx', '删除用户成功 [Delete User Success ID:235]', '127.0.0.1', '2015-04-19 22:46:05'),
(76, 'zyx', '删除用户成功 [Delete User Success ID:1]', '127.0.0.1', '2015-04-19 22:46:55'),
(77, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 22:47:17'),
(78, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 22:47:18'),
(79, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 22:47:18'),
(80, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-19 22:47:31'),
(81, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-22 23:18:34'),
(82, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-22 23:32:23'),
(83, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:40:44'),
(84, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:44:58'),
(85, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-23 20:45:01'),
(86, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-23 20:45:02'),
(87, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:46:33'),
(88, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:47:43'),
(89, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:47:57'),
(90, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-23 20:48:19'),
(91, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:48:30'),
(92, 'zyx11', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:48:36'),
(93, '111111', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-23 21:54:22'),
(94, '111111', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 21:54:43'),
(95, '111111', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 21:56:03'),
(96, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-26 22:43:59'),
(97, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-27 10:05:44'),
(98, 'zyx', '删除商品信息成功 [Delete Product Success ID:6]', '127.0.0.1', '2015-04-27 12:30:03'),
(99, 'zyx', '删除商品信息成功 [Delete Product Success ID:5]', '127.0.0.1', '2015-04-27 12:42:10'),
(100, 'zyx', '删除商品信息成功 [Delete Product Success ID:4]', '127.0.0.1', '2015-04-27 12:42:17'),
(101, 'zyx', '删除商品信息成功 [Delete Product Success ID:3]', '127.0.0.1', '2015-04-27 12:42:24'),
(102, 'zyx', '删除商品信息成功 [Delete Product Success ID:2]', '127.0.0.1', '2015-04-27 13:06:56'),
(103, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-04-27 13:07:16'),
(104, 'xxx', '用户注册失败 [User Register Error] Detail:该邮箱已经注册!', '127.0.0.1', '2015-04-27 13:07:43'),
(105, '111', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-27 13:07:51'),
(106, '111', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-27 13:08:06'),
(107, NULL, '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-04-27 13:26:45'),
(108, NULL, '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-04-27 13:27:24'),
(109, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 00:28:00'),
(110, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 11:51:09'),
(111, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:34:26'),
(112, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:45:06'),
(113, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:49:00'),
(114, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:50:31'),
(115, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:51:24'),
(116, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:52:11'),
(117, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:54:53'),
(118, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:55:14'),
(119, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:56:46'),
(120, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 16:22:00'),
(121, 'zyx2', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-30 16:22:29'),
(122, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 20:28:29'),
(123, 'zyx3', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-30 20:33:33'),
(124, 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-04-30 21:02:37'),
(125, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 22:43:25'),
(126, 'zyx2', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 23:49:54'),
(127, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 00:03:04'),
(128, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 13:39:20'),
(129, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 13:41:53'),
(130, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 13:42:10'),
(131, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-01 13:43:55'),
(132, 'zyx2', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 13:43:59'),
(133, 'zyx2', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-01 14:43:59'),
(134, 'zyx2', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-01 14:45:13'),
(135, 'zyx2', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-01 14:46:30'),
(136, 'zyx2', '保存商品信息成功 [Save Product Success ID:Array]', '127.0.0.1', '2015-05-01 14:47:15'),
(137, 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-01 14:49:03'),
(138, 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-01 15:46:42'),
(139, 'zyx2', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-01 15:51:51'),
(140, 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-01 15:52:24'),
(141, 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-01 15:52:40'),
(142, 'zyx2', '删除商品信息成功 [Delete Product Success ID:11]', '127.0.0.1', '2015-05-01 15:53:33'),
(143, 'zyx2', '删除商品信息成功 [Delete Product Success ID:12]', '127.0.0.1', '2015-05-01 15:53:35'),
(144, 'zyx2', '删除商品信息成功 [Delete Product Success ID:13]', '127.0.0.1', '2015-05-01 15:53:37'),
(145, 'zyx2', '删除商品信息成功 [Delete Product Success ID:15]', '127.0.0.1', '2015-05-01 15:54:03'),
(146, 'zyx2', '删除商品信息成功 [Delete Product Success ID:14]', '127.0.0.1', '2015-05-01 15:54:04'),
(147, 'zyx2', '删除商品信息成功 [Delete Product Success ID:10]', '127.0.0.1', '2015-05-01 15:54:06'),
(148, 'zyx2', '删除商品信息成功 [Delete Product Success ID:9]', '127.0.0.1', '2015-05-01 15:54:13'),
(149, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 16:00:32'),
(150, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 16:06:18'),
(151, 'zyx123', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-01 16:17:37'),
(152, 'zyx123', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 16:21:44'),
(153, '21321312', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-02 14:03:24'),
(154, '123456', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-02 14:05:40'),
(155, '12312313', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-02 14:08:38'),
(156, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:35:32'),
(157, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:38:08'),
(158, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:39:57'),
(159, 'xxx', '用户注册失败 [User Register Error] Detail:用户名已经存在!', '127.0.0.1', '2015-05-02 14:40:29'),
(160, 'xxx', '用户注册失败 [User Register Error] Detail:用户名已经存在!', '127.0.0.1', '2015-05-02 14:40:36'),
(161, '123123123111', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-02 14:40:43'),
(162, '123123123111', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 14:40:55'),
(163, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:41:12'),
(164, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:48:27'),
(165, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:48:51'),
(166, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:49:03'),
(167, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:50:17'),
(168, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:51:48'),
(169, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:54:14'),
(170, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:54:35'),
(171, NULL, '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 14:54:44'),
(172, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-02 15:03:27'),
(173, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-02 15:05:34'),
(174, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:30:10'),
(175, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:31:04'),
(176, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:31:49'),
(177, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:32:31'),
(178, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:32:36'),
(179, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:33:01'),
(180, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-02 15:33:21'),
(181, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:33:26'),
(182, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-02 15:34:18'),
(183, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:34:25'),
(184, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:35:32'),
(185, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:37:11'),
(186, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:37:44'),
(187, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:37:49'),
(188, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:38:02'),
(189, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:38:07'),
(190, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:34'),
(191, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:35'),
(192, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:36'),
(193, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:36'),
(194, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:36'),
(195, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:42:42'),
(196, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:42:47'),
(197, 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:42:49'),
(198, 'zyx', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-03 10:52:53'),
(199, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-03 10:53:25'),
(200, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-03 10:53:48'),
(201, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-03 10:54:29'),
(202, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-03 22:17:10'),
(203, 'zhuyunxiang', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-03 23:02:25'),
(204, 'zhuyunxiang', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-03 23:02:53'),
(205, NULL, '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00D]', '127.0.0.1', '2015-05-03 23:38:26'),
(206, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00E]', '127.0.0.1', '2015-05-03 23:39:45'),
(207, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00J]', '127.0.0.1', '2015-05-03 23:51:01'),
(208, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00N]', '127.0.0.1', '2015-05-03 23:51:06'),
(209, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00D]', '127.0.0.1', '2015-05-04 22:41:39'),
(210, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00E]', '127.0.0.1', '2015-05-04 23:29:55'),
(211, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:000000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00E]', '127.0.0.1', '2015-05-04 23:30:04'),
(212, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00E]', '127.0.0.1', '2015-05-04 23:30:21'),
(213, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:2我的店/weimart/Public/Uploads/shop_img/554638a62dde1.jpg/weimart/Public/Uploads/shop_img/thumb_554638a62dde1.jpg我的店铺信息我的店铺标语我的店铺描述02015-05-04 23:10:460000-00-00 00:00:000000000-00-00 00:00:00Array00D]', '127.0.0.1', '2015-05-04 23:30:32'),
(214, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:000000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00E]', '127.0.0.1', '2015-05-04 23:31:35'),
(215, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:2我的店/weimart/Public/Uploads/shop_img/554638a62dde1.jpg/weimart/Public/Uploads/shop_img/thumb_554638a62dde1.jpg我的店铺信息我的店铺标语我的店铺描述02015-05-04 23:10:460000-00-00 00:00:000010000-00-00 00:00:00Array00H]', '127.0.0.1', '2015-05-04 23:31:37'),
(216, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00M]', '127.0.0.1', '2015-05-04 23:31:38'),
(217, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-05 00:04:46'),
(218, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-05 00:04:50'),
(219, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00I]', '127.0.0.1', '2015-05-05 00:15:00'),
(220, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-05 22:50:30'),
(221, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-05 22:52:03'),
(222, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-05 22:53:37'),
(223, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-05 22:58:15'),
(224, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-05 23:02:49'),
(225, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-05 23:03:13'),
(226, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-05 23:06:31'),
(227, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-05 23:07:04'),
(228, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-05 23:07:36'),
(229, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-05 23:07:37'),
(230, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 21:05:03'),
(231, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 21:07:32'),
(232, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 21:51:57'),
(233, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:20:32'),
(234, 'zyxxxx', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-06 22:20:58'),
(235, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:21:33'),
(236, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:30:23'),
(237, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:30:41'),
(238, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:30:59'),
(239, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:35:23'),
(240, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:35:39'),
(241, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:35:50'),
(242, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:36:48'),
(243, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:37:03'),
(244, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:38:59'),
(245, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:39:21'),
(246, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:39:59'),
(247, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:40:37'),
(248, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:41:48'),
(249, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:43:03'),
(250, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:44:13'),
(251, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:44:31'),
(252, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:47:38'),
(253, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:47:53'),
(254, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:48:08'),
(255, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:50:03'),
(256, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:50:24'),
(257, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:52:27'),
(258, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:52:40'),
(259, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:55:27'),
(260, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:55:39'),
(261, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:55:59'),
(262, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:56:12'),
(263, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:58:19'),
(264, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 22:59:22'),
(265, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:04:37'),
(266, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:05:09'),
(267, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:05:19'),
(268, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:05:34'),
(269, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:07:24'),
(270, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:07:49'),
(271, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:09:03'),
(272, 'zyxxxx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:09:15'),
(273, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-06 23:15:28'),
(274, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-06 23:16:42'),
(275, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:16:52'),
(276, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:16:55'),
(277, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:17:00'),
(278, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:17:06'),
(279, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:17:10'),
(280, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:17:17'),
(281, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:17:30'),
(282, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:17:48'),
(283, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:20:08'),
(284, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:20:30'),
(285, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:20:33'),
(286, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:21:06'),
(287, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-06 23:21:23'),
(288, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-06 23:21:27'),
(289, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-06 23:21:38'),
(290, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-07 20:21:21'),
(291, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00shipin]', '127.0.0.1', '2015-05-07 21:09:58'),
(292, 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-07 21:11:40'),
(293, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00shipin123123]', '127.0.0.1', '2015-05-07 21:12:34'),
(294, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00饰品]', '127.0.0.1', '2015-05-07 21:12:54'),
(295, 'zyxxxx', '用户登陆成功 [User Login Success]', '112.87.46.164', '2015-05-07 22:54:42'),
(296, 'zyxxxx', '用户录入详细信息成功 [User Save Detail Success]', '112.87.46.164', '2015-05-07 22:55:01'),
(297, 'zyxxxx', '用户录入详细信息成功 [User Save Detail Success]', '112.87.46.164', '2015-05-07 22:55:15'),
(298, 'zyx222', '用户注册成功 [User Register Success]', '112.87.46.164', '2015-05-07 22:56:18'),
(299, 'zyx222', '用户录入详细信息成功 [User Save Detail Success]', '112.87.46.164', '2015-05-07 22:56:44'),
(300, 'zyx222', '数据保存成功！ [save Shop Info ID:1 Data:我的123123123]', '112.87.46.164', '2015-05-07 22:57:46'),
(301, 'zyx', '用户登陆成功 [User Login Success]', '112.87.46.164', '2015-05-08 07:56:41'),
(302, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00饰品]', '112.87.46.164', '2015-05-08 08:00:50'),
(303, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '112.87.46.164', '2015-05-08 08:01:48'),
(304, 'zyx', '用户登陆成功 [User Login Success]', '112.87.46.164', '2015-05-08 08:02:02'),
(305, 'xxx', '用户登陆失败 [User Login Error]', '222.92.237.198', '2015-05-08 13:34:35'),
(306, 'zyx', '用户登陆成功 [User Login Success]', '112.87.46.164', '2015-05-09 10:05:47'),
(307, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.46.164', '2015-05-09 10:06:56'),
(308, 'zyx', '用户登陆成功 [User Login Success]', '112.87.46.164', '2015-05-09 10:09:03'),
(309, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-09 17:51:31'),
(310, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-09 17:56:03'),
(311, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-09 17:57:44'),
(312, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-09 18:00:12'),
(313, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-09 18:09:03'),
(314, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-09 18:21:58'),
(315, 'zyx', '用户登陆成功 [User Login Success]', '117.136.45.42', '2015-05-09 21:09:08'),
(316, 'zyx', '用户登陆成功 [User Login Success]', '117.136.45.42', '2015-05-09 21:11:22'),
(317, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '117.136.45.42', '2015-05-09 21:11:48'),
(318, 'zyx', '用户登陆成功 [User Login Success]', '117.136.45.42', '2015-05-09 21:12:03'),
(319, 'zyx', '用户登陆成功 [User Login Success]', '223.64.62.219', '2015-05-09 21:12:55'),
(320, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-10 09:55:19'),
(321, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '112.87.255.220', '2015-05-10 21:23:48'),
(322, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '112.87.255.220', '2015-05-10 21:23:59'),
(323, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-10 22:50:40'),
(324, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-10 23:37:24'),
(325, 'gxy', '用户注册成功 [User Register Success]', '112.87.255.220', '2015-05-10 23:39:25'),
(326, 'gxy', '用户录入详细信息成功 [User Save Detail Success]', '112.87.255.220', '2015-05-10 23:40:22'),
(327, '12321', '用户注册成功 [User Register Success]', '112.87.255.220', '2015-05-10 23:42:26'),
(328, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-10 23:48:41'),
(329, 'zyx', '用户登陆成功 [User Login Success]', '112.87.255.220', '2015-05-11 00:02:33'),
(330, 'zyx', '用户登陆成功 [User Login Success]', '183.206.182.209', '2015-05-11 00:18:25'),
(331, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '183.206.182.209', '2015-05-11 00:18:45'),
(332, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '183.206.178.209', '2015-05-11 00:18:49'),
(333, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '183.206.178.209', '2015-05-11 00:18:55'),
(334, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '183.206.178.209', '2015-05-11 00:21:36'),
(335, 'zyx', '数据保存失败！ [save Shop Info ID: Data:1我的小铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00饰品]', '183.206.178.209', '2015-05-11 00:23:00'),
(336, 'zyx', '数据保存失败！ [save Shop Info ID: Data:1我的小铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00饰品]', '183.206.178.209', '2015-05-11 00:23:19'),
(337, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '183.206.178.209', '2015-05-11 00:25:40'),
(338, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '183.206.178.209', '2015-05-11 00:26:43'),
(339, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '183.206.178.209', '2015-05-11 00:26:57'),
(340, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '183.206.178.209', '2015-05-11 00:27:02'),
(341, 'xxx', '用户登陆失败 [User Login Error]', '117.136.45.41', '2015-05-11 06:34:02'),
(342, 'xxx', '用户登陆失败 [User Login Error]', '117.136.45.41', '2015-05-11 06:34:18'),
(343, 'zyx', '用户登陆成功 [User Login Success]', '117.136.45.41', '2015-05-11 06:34:38'),
(344, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:35:44'),
(345, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:35:47'),
(346, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:35:50'),
(347, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:35:52'),
(348, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:35:54'),
(349, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:35:55'),
(350, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:35:55'),
(351, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:36:21'),
(352, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:37:11'),
(353, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:37:15'),
(354, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:37:31'),
(355, 'zyx', '用户登陆成功 [User Login Success]', '117.136.45.41', '2015-05-11 06:38:08'),
(356, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '117.136.45.41', '2015-05-11 06:38:22'),
(357, 'zyx', '用户登陆成功 [User Login Success]', '117.136.46.52', '2015-05-13 21:06:58'),
(358, 'zyx', '用户登陆成功 [User Login Success]', '112.87.254.110', '2015-05-14 23:29:17'),
(359, 'xxx', '用户登陆失败 [User Login Error]', '223.64.61.125', '2015-05-17 12:29:09'),
(360, '绵绵', '用户注册成功 [User Register Success]', '223.64.61.125', '2015-05-17 12:31:34'),
(361, '绵绵', '用户录入详细信息成功 [User Save Detail Success]', '223.64.61.125', '2015-05-17 12:32:36'),
(362, '绵绵', '用户登陆成功 [User Login Success]', '223.64.61.125', '2015-05-17 12:33:38'),
(363, '哈哈哈', '用户注册成功 [User Register Success]', '223.64.61.125', '2015-05-17 12:34:53'),
(364, 'zyx', '用户登陆成功 [User Login Success]', '112.87.254.52', '2015-05-17 13:06:12'),
(365, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.52', '2015-05-17 13:06:40'),
(366, 'zyx', '删除商品信息成功 [Delete Product Success ID:5]', '112.87.254.52', '2015-05-17 13:21:02'),
(367, '绵绵', '用户登陆成功 [User Login Success]', '223.64.61.125', '2015-05-17 13:24:28'),
(368, 'zyx', '用户登陆成功 [User Login Success]', '112.87.254.52', '2015-05-17 22:44:27'),
(369, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.52', '2015-05-17 22:45:19'),
(370, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.52', '2015-05-17 22:45:47'),
(371, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.52', '2015-05-17 22:46:23'),
(372, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.52', '2015-05-17 22:49:27'),
(373, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '112.87.254.52', '2015-05-17 23:45:40'),
(374, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '112.87.254.52', '2015-05-17 23:46:13'),
(375, 'zyx', '用户登陆成功 [User Login Success]', '223.64.60.4', '2015-05-18 13:55:11'),
(376, 'zyx', '用户登陆成功 [User Login Success]', '223.104.4.17', '2015-05-18 15:34:48'),
(377, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 19:06:41'),
(378, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:24:13'),
(379, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '153.34.116.24', '2015-05-24 22:24:51'),
(380, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '153.34.116.24', '2015-05-24 22:25:28'),
(381, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:34:34'),
(382, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:35:50'),
(383, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:37:39'),
(384, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:38:26'),
(385, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:39:48'),
(386, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:42:28'),
(387, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:43:58'),
(388, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:48:48'),
(389, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:51:06'),
(390, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:54:33'),
(391, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 22:58:27'),
(392, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 23:08:53'),
(393, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 23:09:57'),
(394, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 23:20:00'),
(395, 'zyx', '用户登陆成功 [User Login Success]', '118.186.134.123', '2015-05-24 23:23:41'),
(396, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '153.34.116.24', '2015-05-24 23:28:58'),
(397, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '118.186.134.103', '2015-05-24 23:30:40'),
(398, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '118.186.134.103', '2015-05-24 23:30:47'),
(399, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '118.186.134.103', '2015-05-24 23:30:49'),
(400, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 23:50:52'),
(401, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 23:53:42'),
(402, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-24 23:56:38'),
(403, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 00:20:21'),
(404, NULL, '保存商品信息成功 [Save Product Success ID:1]', '153.34.116.24', '2015-05-25 00:23:22'),
(405, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 00:58:57'),
(406, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 21:35:51'),
(407, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 21:35:51'),
(408, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:37:29'),
(409, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:37:47'),
(410, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:37:55'),
(411, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:38:02'),
(412, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:38:08'),
(413, 'zyx', '删除用户成功 [Delete User Success ID:4]', '153.34.116.24', '2015-05-25 21:39:20'),
(414, 'xxx', '用户注册失败 [User Register Error] Detail:该邮箱已经注册!', '153.34.116.24', '2015-05-25 21:39:25'),
(415, 'xxx', '用户注册失败 [User Register Error] Detail:该邮箱已经注册!', '153.34.116.24', '2015-05-25 21:39:30'),
(416, 'zhulanqing', '用户注册成功 [User Register Success]', '153.34.116.24', '2015-05-25 21:40:08'),
(417, 'zhulanqing', '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-25 21:40:40'),
(418, 'zhulanqing', '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-25 21:41:31'),
(419, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:42:16'),
(420, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:42:17'),
(421, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:42:23'),
(422, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:42:45'),
(423, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:42:50'),
(424, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:43:22'),
(425, 'zyx', '删除用户成功 [Delete User Success ID:9]', '153.34.116.24', '2015-05-25 21:43:32'),
(426, 'zlq', '用户注册成功 [User Register Success]', '153.34.116.24', '2015-05-25 21:43:53'),
(427, 'zlq', '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-25 21:44:33'),
(428, 'zlq', '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-25 21:44:50'),
(429, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:44:59'),
(430, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:45:13'),
(431, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:45:19'),
(432, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:45:36'),
(433, 'zhu', '用户注册成功 [User Register Success]', '153.34.116.24', '2015-05-25 21:45:58'),
(434, NULL, '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-25 21:46:35'),
(435, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 21:46:45'),
(436, 'zhuyun', '用户注册成功 [User Register Success]', '153.34.116.24', '2015-05-25 21:54:46'),
(437, 'zhuyunx', '用户注册成功 [User Register Success]', '153.34.116.24', '2015-05-25 21:57:18'),
(438, 'zhuyun', '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-25 22:00:07'),
(439, 'zhuyun', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 22:00:46'),
(440, 'zhuyun', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 22:02:07'),
(441, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 22:40:54'),
(442, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 22:42:22'),
(443, 'xxx', '用户登陆失败 [User Login Error]', '153.34.116.24', '2015-05-25 22:42:39'),
(444, 'zhuyun', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-25 22:42:44'),
(445, 'zyx', '用户登陆成功 [User Login Success]', '61.164.249.43', '2015-05-25 23:25:32'),
(446, 'zyx', '用户登陆成功 [User Login Success]', '61.164.249.43', '2015-05-25 23:34:00'),
(447, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '117.114.150.240', '2015-05-25 23:38:50'),
(448, 'zyx', '删除商品信息成功 [Delete Product Success ID:3]', '61.164.249.43', '2015-05-25 23:40:32'),
(449, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '42.81.35.36', '2015-05-25 23:40:35'),
(450, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '61.164.249.43', '2015-05-25 23:40:38'),
(451, 'zyx', '删除商品信息成功 [Delete Product Success ID:6]', '61.164.249.43', '2015-05-25 23:43:03'),
(452, 'zyx', '删除商品信息成功 [Delete Product Success ID:2]', '61.164.249.43', '2015-05-25 23:43:06'),
(453, 'zyx', '删除商品信息成功 [Delete Product Success ID:4]', '61.164.249.43', '2015-05-25 23:43:08'),
(454, 'zyx', '删除商品信息成功 [Delete Product Success ID:1]', '61.164.249.43', '2015-05-25 23:43:10'),
(455, 'zyx', '删除商品信息成功 [Delete Product Success ID:1]', '61.164.249.43', '2015-05-25 23:43:12'),
(456, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '61.164.249.43', '2015-05-25 23:45:55'),
(457, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '42.81.35.32', '2015-05-25 23:47:57'),
(458, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '42.81.35.36', '2015-05-25 23:49:44'),
(459, 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '42.81.35.32', '2015-05-25 23:51:21'),
(460, 'zhuyun', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-26 00:14:16'),
(461, 'zyxgxy', '用户注册成功 [User Register Success]', '153.34.116.24', '2015-05-26 00:22:26'),
(462, 'zyxgxy', '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-26 00:23:11'),
(463, 'zyxgxy', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-26 00:23:25'),
(464, 'zhuyunxiang123', '用户注册成功 [User Register Success]', '153.34.116.24', '2015-05-26 00:24:30'),
(465, NULL, '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-26 00:25:09'),
(466, 'zyxgxy', '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-26 00:28:07'),
(467, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-26 00:37:24'),
(468, 'yqx', '用户注册成功 [User Register Success]', '153.34.116.24', '2015-05-26 00:38:22'),
(469, 'yqx', '用户录入详细信息成功 [User Save Detail Success]', '153.34.116.24', '2015-05-26 00:39:14'),
(470, 'yqx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-26 00:40:11'),
(471, 'yqx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-26 00:42:25'),
(472, 'yqx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-26 00:42:46'),
(473, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-26 08:07:58'),
(474, 'zyx', '用户登陆成功 [User Login Success]', '153.34.116.24', '2015-05-26 08:13:16');
INSERT INTO `weimart_log_list` (`id`, `user`, `content`, `ip`, `time`) VALUES
(475, 'zhuyun', '用户登陆成功 [User Login Success]', '218.4.198.42', '2015-05-26 11:57:17'),
(476, 'zhuyun', '数据保存成功！ [save Shop Info ID:1 Data:朱云的店铺衣服全部正品假一罚十全部真品]', '117.136.45.36', '2015-05-26 11:59:42'),
(477, 'zhuyun', '用户登陆成功 [User Login Success]', '117.136.45.36', '2015-05-26 12:00:19'),
(478, 'zhuyun', '数据保存成功！ [save Shop Info ID:1 Data:4朱云的店铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/5563efe6032d7.jpghttp://weimart-public.stor.sinaapp.com/Uploads/shop_img/5563efe6032d7.jpg全部正品假一罚十全部真品02015-05-26 11:59:420000-00-00 00:00:000000000-00-00 00:00:00衣服]', '117.136.45.36', '2015-05-26 12:00:42'),
(479, 'xxx', '用户登陆失败 [User Login Error]', '117.136.46.48', '2015-05-26 13:26:19'),
(480, 'xxx', '用户登陆失败 [User Login Error]', '117.136.46.48', '2015-05-26 13:26:36'),
(481, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.14', '2015-05-26 15:06:26'),
(482, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.18', '2015-05-26 15:07:52'),
(483, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:07:57'),
(484, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.29', '2015-05-26 15:07:57'),
(485, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:02'),
(486, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:02'),
(487, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.18', '2015-05-26 15:08:02'),
(488, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.14', '2015-05-26 15:08:02'),
(489, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.59', '2015-05-26 15:08:04'),
(490, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.29', '2015-05-26 15:08:08'),
(491, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.29', '2015-05-26 15:08:10'),
(492, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.59', '2015-05-26 15:08:10'),
(493, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.14', '2015-05-26 15:08:11'),
(494, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:13'),
(495, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:13'),
(496, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.18', '2015-05-26 15:08:13'),
(497, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:14'),
(498, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.18', '2015-05-26 15:08:15'),
(499, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.18', '2015-05-26 15:08:15'),
(500, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:16'),
(501, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:17'),
(502, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.59', '2015-05-26 15:08:17'),
(503, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:18'),
(504, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.24', '2015-05-26 15:08:20'),
(505, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.29', '2015-05-26 15:08:21'),
(506, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.18', '2015-05-26 15:08:21'),
(507, 'xxx', '用户登陆失败 [User Login Error]', '118.186.135.14', '2015-05-26 15:08:25'),
(508, '咩咩', '用户注册成功 [User Register Success]', '118.186.135.14', '2015-05-26 15:08:59'),
(509, 'xxx', '用户注册失败 [User Register Error] Detail:用户名已经存在!', '118.186.135.29', '2015-05-26 15:09:01'),
(510, '咩咩', '用户登陆成功 [User Login Success]', '117.136.46.48', '2015-05-26 15:10:21'),
(511, '咩咩', '用户登陆成功 [User Login Success]', '117.136.46.48', '2015-05-26 15:10:21'),
(512, 'zyx', '用户登陆成功 [User Login Success]', '112.87.254.3', '2015-05-26 20:36:23'),
(513, 'zyx', '用户登陆成功 [User Login Success]', '112.87.254.3', '2015-05-26 20:37:56'),
(514, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:3我的12312312312015-05-07 22:57:460000-00-00 00:00:000000000-00-00 00:00:00Array00F]', '112.87.254.3', '2015-05-26 20:42:37'),
(515, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:4朱云的店铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/5563efe6032d7.jpghttp://weimart-public.stor.sinaapp.com/Uploads/shop_img/5563efe6032d7.jpg全部正品假一罚十全部真品12015-05-26 11:59:420000-00-00 00:00:000000000-00-00 00:00:00衣服Array00E]', '112.87.254.3', '2015-05-26 20:42:38'),
(516, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:2我的店/weimart/Public/Uploads/shop_img/554638a62dde1.jpg/weimart/Public/Uploads/shop_img/thumb_554638a62dde1.jpg我的店铺信息我的店铺标语我的店铺描述12015-05-05 00:16:120000-00-00 00:00:000000000-00-00 00:00:00Array00W]', '112.87.254.3', '2015-05-26 20:42:47'),
(517, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000000000-00-00 00:00:00饰品ArrayArrayArrayArrayArrayArray00X]', '112.87.254.3', '2015-05-26 20:42:48'),
(518, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:4朱云的店铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/5563efe6032d7.jpghttp://weimart-public.stor.sinaapp.com/Uploads/shop_img/5563efe6032d7.jpg全部正品假一罚十全部真品12015-05-26 11:59:420000-00-00 00:00:000010000-00-00 00:00:00衣服Array01A]', '112.87.254.3', '2015-05-26 20:43:00'),
(519, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:3我的12312312312015-05-07 22:57:460000-00-00 00:00:000010000-00-00 00:00:00Array01B]', '112.87.254.3', '2015-05-26 20:43:02'),
(520, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:2我的店/weimart/Public/Uploads/shop_img/554638a62dde1.jpg/weimart/Public/Uploads/shop_img/thumb_554638a62dde1.jpg我的店铺信息我的店铺标语我的店铺描述12015-05-05 00:16:120000-00-00 00:00:000010000-00-00 00:00:00Array01C]', '112.87.254.3', '2015-05-26 20:43:03'),
(521, 'zyx', '数据保存失败！ [save Shop Info ID: Data:2我的店/weimart/Public/Uploads/shop_img/554638a62dde1.jpg/weimart/Public/Uploads/shop_img/thumb_554638a62dde1.jpg我的店铺信息我的店铺标语我的店铺描述12015-05-05 00:16:120000-00-00 00:00:000010000-00-00 00:00:00Array01K]', '112.87.254.3', '2015-05-26 20:43:03'),
(522, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000010000-00-00 00:00:00饰品ArrayArrayArrayArrayArrayArray021]', '112.87.254.3', '2015-05-26 20:43:07'),
(523, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:3我的12312312312015-05-07 22:57:460000-00-00 00:00:000000000-00-00 00:00:00Array027]', '112.87.254.3', '2015-05-26 20:43:22'),
(524, 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:2我的店/weimart/Public/Uploads/shop_img/554638a62dde1.jpg/weimart/Public/Uploads/shop_img/thumb_554638a62dde1.jpg我的店铺信息我的店铺标语我的店铺描述12015-05-05 00:16:120000-00-00 00:00:000000000-00-00 00:00:00Array02G]', '112.87.254.3', '2015-05-26 20:43:25'),
(525, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.3', '2015-05-26 20:43:43'),
(526, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.3', '2015-05-26 20:43:44'),
(527, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.3', '2015-05-26 20:43:54'),
(528, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.3', '2015-05-26 20:43:55'),
(529, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.3', '2015-05-26 20:43:56'),
(530, 'zyx', '保存商品信息成功 [Save Product Success ID:]', '112.87.254.3', '2015-05-26 20:44:09'),
(531, 'tangjia', '用户注册成功 [User Register Success]', '112.87.254.3', '2015-05-26 20:47:38'),
(532, 'tangjia', '用户录入详细信息成功 [User Save Detail Success]', '112.87.254.3', '2015-05-26 20:48:21'),
(533, 'tangjia', '用户登陆成功 [User Login Success]', '112.87.254.3', '2015-05-26 20:48:43'),
(534, 'tangjia', '数据保存成功！ [save Shop Info ID:1 Data:唐家女装女装唐家女装性感是一种生存优势唐家店铺]', '112.87.254.3', '2015-05-26 20:49:48'),
(535, 'tangjia', '数据保存成功！ [save Shop Info ID:1 Data:唐家店铺女装兔兔借口哦咯]', '112.87.254.3', '2015-05-26 20:50:34'),
(536, 'tangjia', '用户登陆成功 [User Login Success]', '112.87.254.3', '2015-05-26 20:51:03'),
(537, 'tangjia', '数据保存成功！ [save Shop Info ID:1 Data:5唐家女装http://weimart-public.stor.sinaapp.com/Uploads/shop_img/55646c4f4e81b.http://weimart-public.stor.sinaapp.com/Uploads/shop_img/55646c4f4e81b.唐家女装性感是一种生存优势唐家店铺02015-05-26 20:49:480000-00-00 00:00:000000000-00-00 00:00:00女装]', '112.87.254.3', '2015-05-26 20:51:29'),
(538, 'tangjia', '用户登陆成功 [User Login Success]', '112.87.254.3', '2015-05-26 20:58:22'),
(539, 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '112.87.254.3', '2015-05-26 22:17:59'),
(540, 'zyx', '用户登陆成功 [User Login Success]', '183.206.180.110', '2015-05-26 22:50:47'),
(541, 'xxx', '用户登陆失败 [User Login Error]', '117.136.45.35', '2015-05-27 06:48:43'),
(542, 'xxx', '用户登陆失败 [User Login Error]', '117.136.45.35', '2015-05-27 06:48:50'),
(543, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.125', '2015-05-27 17:07:21'),
(544, '咩咩', '用户录入详细信息成功 [User Save Detail Success]', '223.64.61.125', '2015-05-27 17:08:55'),
(545, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:08:56'),
(546, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:12'),
(547, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:26'),
(548, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:26'),
(549, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:26'),
(550, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:27'),
(551, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:28'),
(552, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:28'),
(553, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:28'),
(554, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:28'),
(555, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:28'),
(556, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:29'),
(557, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:29'),
(558, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:30'),
(559, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:30'),
(560, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:30'),
(561, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:34'),
(562, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:34'),
(563, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:34'),
(564, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:34'),
(565, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:35'),
(566, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:35'),
(567, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:35'),
(568, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:35'),
(569, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:35'),
(570, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:37'),
(571, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:37'),
(572, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:38'),
(573, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:40'),
(574, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:09:47'),
(575, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:12:09'),
(576, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:12:10'),
(577, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:12:10'),
(578, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:12:11'),
(579, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:12:11'),
(580, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:13:13'),
(581, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:13:14'),
(582, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:13:14'),
(583, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:13:14'),
(584, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:27:03'),
(585, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:27:04'),
(586, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:27:04'),
(587, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.125', '2015-05-27 17:27:04'),
(588, 'zyx', '用户登陆成功 [User Login Success]', '112.87.254.3', '2015-05-27 22:34:52'),
(589, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:09'),
(590, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:09'),
(591, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:09'),
(592, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:09'),
(593, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:09'),
(594, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:10'),
(595, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:10'),
(596, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:10'),
(597, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:11'),
(598, '咩咩', '用户登陆成功 [User Login Success]', '223.64.61.20', '2015-05-27 22:35:11'),
(599, 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '223.64.61.20', '2015-05-27 22:35:17'),
(600, 'zyx', '用户登陆成功 [User Login Success]', '153.34.200.12', '2015-05-30 13:49:14'),
(601, 'zyx', '用户登陆成功 [User Login Success]', '153.34.200.12', '2015-05-30 13:51:48'),
(602, 'xxx', '用户登陆失败 [User Login Error]', '183.206.181.34', '2015-05-31 13:22:30'),
(603, 'zyx', '用户登陆成功 [User Login Success]', '183.206.181.34', '2015-05-31 13:22:41'),
(604, NULL, '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:000510000-00-00 00:00:00饰品Array0]', '183.206.177.34', '2015-05-31 13:54:26'),
(605, 'zyx', '用户登陆成功 [User Login Success]', '153.34.119.215', '2015-06-02 22:51:08'),
(606, NULL, '保存商品信息成功 [Save Product Success ID:1]', '223.64.63.74', '2015-06-04 01:24:05'),
(607, NULL, '保存商品信息成功 [Save Product Success ID:1]', '223.64.63.74', '2015-06-04 01:25:33'),
(608, 'zyx', '用户登陆成功 [User Login Success]', '223.64.60.36', '2015-06-04 09:04:57');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_permission`
--

CREATE TABLE IF NOT EXISTS `weimart_permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(45) DEFAULT NULL,
  `permission_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `weimart_permission`
--

INSERT INTO `weimart_permission` (`permission_id`, `permission_name`, `permission_key`) VALUES
(1, '登陆', 'login'),
(2, '用户管理', 'user_admin');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_product`
--

CREATE TABLE IF NOT EXISTS `weimart_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(64) DEFAULT NULL,
  `product_brif` text NOT NULL,
  `product_img` varchar(128) DEFAULT NULL,
  `product_key` varchar(45) DEFAULT NULL,
  `product_desc` text,
  `product_price` decimal(10,0) DEFAULT NULL,
  `product_num` int(11) DEFAULT NULL,
  `product_left` int(11) DEFAULT NULL,
  `product_register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_is_deleted` int(11) NOT NULL DEFAULT '0',
  `is_recommend` int(11) NOT NULL DEFAULT '0',
  `product_state` varchar(10) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `weimart_product`
--

INSERT INTO `weimart_product` (`product_id`, `product_name`, `product_brif`, `product_img`, `product_key`, `product_desc`, `product_price`, `product_num`, `product_left`, `product_register_time`, `product_is_deleted`, `is_recommend`, `product_state`) VALUES
(1, '我的商品', '我上传的是商品的详情', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/5558a97aab6b3.jpg', '', '<p>上传的是手机数码产品</p><p>123</p><p><img width="339" height="235" title="1431137174804409.jpg" style="width: 339px; height: 235px;" alt="05_1366x768.jpg" src="http://weimart-public.stor.sinaapp.com/ueditor/php/upload/image/20150509/1431137174804409.jpg"/></p>', 123, 1, 1, '2015-05-25 23:43:10', 1, 1, 'A'),
(2, '我的第二个商品', '', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/5561df2f15ca7.jpg', '', '<p>很多吃的</p>', 10, 2, 1, '2015-05-25 23:43:06', 1, 1, 'A'),
(3, '我的第三个商品', 'decur', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/5561ee8c04ac6.jpg', '', '<p>很多吃的什么的</p>', 20, 3, 2, '2015-05-25 23:40:32', 1, 1, 'S'),
(4, 'mc', '', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/5561ee37253d7.jpg', '', '<p>111111</p>', 10, 30, 20, '2015-05-25 23:43:08', 1, 0, 'A'),
(5, '2222', '', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/554f865bac5bf.jpg', NULL, '222222', NULL, NULL, NULL, '2015-05-17 13:21:02', 1, 0, 'A'),
(6, '漂亮的腰带', '好看的腰带哦', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/5561f997097d0.jpg', '', '好看的腰带', 20, 10, 10, '2015-05-25 23:43:03', 1, 0, 'A'),
(7, '小清新连衣裙', '小清新连衣裙 穿出少女心', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/556341a987378.jpg', '', '小清新连衣裙 穿出少女心\n小清新连衣裙 穿出少女心', 123, 45, 12, '2015-05-25 23:38:50', 0, 1, 'A'),
(8, '男士短袖t恤', '新款海澜之家纯棉', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/556343307b45f.jpg', '', '新款青年小圆领加大码短袖T恤', 48, 20000, 16983, '2015-05-25 23:45:55', 0, 1, 'A'),
(9, '旅行箱包行李箱', '科维森拉杆箱万向轮男女20寸24寸28潮', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/556343bf80657.jpg', '', '箱体abs+pc材质 ，材质特征是轻、有韧性、恢复性好，箱子整体轻便，耐用！', 115, 150, 134, '2015-05-25 23:47:57', 0, 0, 'A'),
(10, '高跟尖头公主女鞋', '兰儿家鞋柜2015新款春季韩版', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/5563444ff0986.jpg', '', '鞋面是超软的PU,内里是放猪皮真皮风格，鞋子穿上舒适，坡跟设计，小尖头，黑白 大红 粉红 纯色设计，更好的让你进行随意搭配。', 690, 1000, 836, '2015-05-25 23:49:44', 0, 1, 'A'),
(11, '红蜻蜓男鞋', '正品春夏新款商务休闲', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/556344a80cc41.jpg', '', '1、正品保障 2、采用整张头层牛皮打造。 3、产品经过3次完美升级，更软，更轻便！ 更贴脚 舒适.又透气 4、 全国包邮送到家，及时送达 5、大品牌送礼最佳选择.6.我们支持7天无理由退换货，让亲购物0风险 8.免费赠送运费险，让您购物无后顾之忧。 9，我们才是正品的。', 199, 5000, 3643, '2015-05-25 23:51:21', 0, 1, 'A'),
(12, '雪纺衫上衣', '女装洋气宽松立领无袖雪纺衫背心上衣', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/556f37a902376.png', NULL, '立领合身版型，知性大方的立领设计，优雅显气质， 后背隐形拉链方便穿脱，彰显简约小性感！ 无袖更显清爽，洋溢着优雅的女人味， 前身厚薄雪纺的拼接，在视觉上有不一样的效果， 简约的纯色设计，凸显女人气质 推荐', 116, 500, 260, '2015-06-04 01:24:05', 0, 0, 'A'),
(13, '字母印花中长款圆领裙', '七格格 字母印花中长款圆领连衣裙', 'http://weimart-public.stor.sinaapp.com/Uploads/product_img/556f3847843b0.jpg', NULL, '【现货包邮首发 24小时发货 限量100件】【6.4新品】一款十分简洁的T恤~宽宽松松的boyfriend风格，印有NYC字母，简单的街头时尚~~', 334, 200, 100, '2015-06-04 01:25:33', 0, 0, 'A');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_product_type`
--

CREATE TABLE IF NOT EXISTS `weimart_product_type` (
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_product_type`
--

INSERT INTO `weimart_product_type` (`product_id`, `type_id`) VALUES
(1, 86),
(2, 15),
(3, 15),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 2),
(10, 2),
(11, 2),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_ptype`
--

CREATE TABLE IF NOT EXISTS `weimart_ptype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
  `type_key` varchar(45) DEFAULT NULL,
  `super_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type_class` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- 转存表中的数据 `weimart_ptype`
--

INSERT INTO `weimart_ptype` (`type_id`, `type_name`, `type_key`, `super_type_id`, `user_id`, `type_class`) VALUES
(1, '女装·男装', NULL, 0, 0, NULL),
(2, '鞋靴·箱包', NULL, 0, 0, NULL),
(3, '运动户外', NULL, 0, 0, NULL),
(4, '护肤彩妆', NULL, 0, 0, NULL),
(58, '连衣裙', NULL, 1, 0, 'hot'),
(7, 'T恤', NULL, 5, 0, 'hot'),
(8, '裤子', NULL, 5, 0, NULL),
(57, '潮流女装', NULL, 1, 0, NULL),
(10, 'T恤', NULL, 9, 0, NULL),
(11, '裤子', NULL, 9, 0, NULL),
(12, '夏新品', NULL, 5, 0, 'hot'),
(13, '长裙', NULL, 6, 0, NULL),
(14, '半身裙', NULL, 6, 0, NULL),
(15, '雪纺裙', NULL, 6, 0, NULL),
(16, '印花T', NULL, 7, 0, 'hot'),
(17, '长袖', NULL, 7, 0, NULL),
(18, '打底', NULL, 7, 0, NULL),
(19, '短裤', NULL, 8, 0, 'hot'),
(20, '九分', NULL, 8, 0, NULL),
(21, '大码MM', NULL, 8, 0, 'hot'),
(22, '女鞋', NULL, 2, 0, NULL),
(23, '男鞋', NULL, 2, 0, NULL),
(24, '女包', NULL, 2, 0, 'hot'),
(25, '男包', NULL, 2, 0, NULL),
(26, '手机数码', NULL, 0, 0, NULL),
(27, '家用办公', NULL, 0, 0, NULL),
(28, '手机', NULL, 26, 0, NULL),
(29, '平板', NULL, 26, 0, 'hot'),
(30, '电脑', NULL, 26, 0, NULL),
(31, 'iphone', NULL, 28, 0, NULL),
(32, '小米', NULL, 28, 0, 'hot'),
(33, '大家电', NULL, 27, 0, NULL),
(34, '厨房电器', NULL, 27, 0, 'hot'),
(35, '格兰仕微波炉', NULL, 34, 1, NULL),
(36, '珠宝配饰', NULL, 0, 0, NULL),
(37, '汇吃美食', NULL, 0, 0, NULL),
(38, '时尚饰品', NULL, 36, 0, NULL),
(39, '珠宝首饰', NULL, 36, 0, 'hot'),
(40, '项链', NULL, 38, 0, 'hot'),
(41, '手链', NULL, 38, 0, 'hot'),
(42, '戒指', NULL, 38, 0, NULL),
(43, '发饰', NULL, 38, 0, NULL),
(44, '品质手表', NULL, 36, 0, NULL),
(45, '眼镜配饰', NULL, 36, 0, NULL),
(46, '最热单品', NULL, 36, 0, NULL),
(47, '流行饰品', NULL, 36, 0, NULL),
(220, '银项链', NULL, 47, 0, NULL),
(49, '鲜果肉禽', NULL, 37, 0, NULL),
(50, '零食酒水', NULL, 37, 0, NULL),
(51, '榴莲', NULL, 49, 0, NULL),
(52, '荔枝', NULL, 49, 0, 'hot'),
(53, '运动鞋', NULL, 3, 0, 'hot'),
(54, '运动服', NULL, 3, 0, NULL),
(55, '美容护肤', NULL, 4, 0, NULL),
(56, '强效保养', NULL, 4, 0, NULL),
(59, 'T恤', NULL, 1, 0, NULL),
(60, '裤子', NULL, 1, 0, NULL),
(61, '时尚男装', NULL, 1, 0, 'hot'),
(62, 'T恤', NULL, 1, 0, NULL),
(63, '裤子', NULL, 1, 0, NULL),
(64, '女装精品', NULL, 1, 0, NULL),
(65, '单鞋', NULL, 2, 0, NULL),
(66, '沙滩鞋', NULL, 2, 0, NULL),
(67, '服饰配件', NULL, 2, 0, NULL),
(68, '热销女包', NULL, 2, 0, NULL),
(69, '户外运动', NULL, 3, 0, NULL),
(71, '健身用品', NULL, 3, 0, NULL),
(72, '骑行装备', NULL, 3, 0, NULL),
(73, '运动休闲', NULL, 3, 0, NULL),
(74, '超值彩妆', NULL, 4, 0, NULL),
(75, '大牌特价', NULL, 4, 0, NULL),
(76, '香港直发', NULL, 4, 0, 'hot'),
(78, '护肤美容', NULL, 4, 0, NULL),
(79, '相机', NULL, 26, 0, NULL),
(80, '3C配件', NULL, 26, 0, NULL),
(81, '数码配件', NULL, 26, 0, NULL),
(82, '生活电器', NULL, 27, 0, NULL),
(83, '个护电器', NULL, 27, 0, NULL),
(84, '办公耗材', NULL, 27, 0, NULL),
(85, '家用电器', NULL, 27, 0, NULL),
(86, '长裙', NULL, 58, 0, 'hot'),
(87, '真丝裙', NULL, 58, 0, 'hot'),
(88, '半身裙', NULL, 58, 0, NULL),
(89, '夏新品', NULL, 57, 0, NULL),
(90, '韩版', NULL, 57, 0, NULL),
(91, '开衫', NULL, 57, 0, NULL),
(92, '印花T', NULL, 59, 0, NULL),
(93, 'T恤节', NULL, 59, 0, NULL),
(94, '防晒', NULL, 59, 0, NULL),
(95, '短裤', NULL, 60, 0, NULL),
(96, '九分', NULL, 60, 0, NULL),
(97, '大码MM', NULL, 60, 0, NULL),
(98, '夏款', NULL, 61, 0, NULL),
(99, '潮款', NULL, 61, 0, NULL),
(100, '休闲', NULL, 61, 0, NULL),
(101, '商务', NULL, 61, 0, NULL),
(102, '防晒', NULL, 62, 0, 'hot'),
(103, '衬衫', NULL, 62, 0, NULL),
(104, '短袖T', NULL, 62, 0, NULL),
(105, '牛仔裤', NULL, 63, 0, 'hot'),
(106, '休闲裤', NULL, 63, 0, NULL),
(107, '九分', NULL, 63, 0, NULL),
(108, '长裙', NULL, 64, 0, NULL),
(109, 't恤', NULL, 64, 0, NULL),
(110, '短裤', NULL, 64, 0, NULL),
(111, '衬衣', NULL, 64, 0, NULL),
(112, '夏上新', NULL, 22, 0, 'hot'),
(113, '豆豆鞋', NULL, 22, 0, NULL),
(114, '镂空鞋', NULL, 22, 0, NULL),
(115, '休闲', NULL, 23, 0, NULL),
(116, '商务', NULL, 23, 0, NULL),
(117, '潮流', NULL, 23, 0, NULL),
(118, '皮鞋', NULL, 23, 0, NULL),
(119, '夏上新', NULL, 24, 0, NULL),
(120, '斜挎包', NULL, 24, 0, NULL),
(121, '单肩包', NULL, 24, 0, NULL),
(122, '商务包', NULL, 25, 0, NULL),
(123, '休闲包', NULL, 25, 0, NULL),
(124, '潮包', NULL, 25, 0, 'hot'),
(125, '中跟', NULL, 65, 0, NULL),
(126, '平底', NULL, 65, 0, NULL),
(127, '坡跟', NULL, 65, 0, NULL),
(128, '鱼嘴', NULL, 65, 0, NULL),
(129, '品牌折扣', NULL, 66, 0, 'hot'),
(130, '中老年', NULL, 66, 0, NULL),
(131, '增高', NULL, 66, 0, NULL),
(132, '帽子', NULL, 67, 0, 'hot'),
(133, '皮带', NULL, 67, 0, NULL),
(134, '薄丝巾', NULL, 67, 0, NULL),
(135, '新品女靴', NULL, 68, 0, NULL),
(136, '运动鞋', NULL, 68, 0, NULL),
(137, '凉鞋', NULL, 68, 0, NULL),
(138, '跑步鞋', NULL, 53, 0, NULL),
(139, '板鞋', NULL, 53, 0, NULL),
(140, '篮球鞋', NULL, 53, 0, NULL),
(141, '套装', NULL, 54, 0, NULL),
(142, '七分裤', NULL, 54, 0, NULL),
(143, '防晒衣', NULL, 54, 0, NULL),
(144, '皮肤衣', NULL, 69, 0, NULL),
(145, '冲锋衣', NULL, 69, 0, NULL),
(146, '徒步鞋', NULL, 69, 0, NULL),
(147, '广场舞', NULL, 71, 0, NULL),
(148, '跑步机', NULL, 71, 0, NULL),
(149, '甩脂', NULL, 71, 0, NULL),
(150, '山地车', NULL, 72, 0, NULL),
(151, '死飞', NULL, 72, 0, NULL),
(152, '电动车', NULL, 72, 0, NULL),
(153, '跑鞋', NULL, 73, 0, 'hot'),
(154, '板鞋', NULL, 73, 0, NULL),
(155, 't恤', NULL, 73, 0, NULL),
(156, '男鞋', NULL, 73, 0, NULL),
(157, '套装', NULL, 73, 0, NULL),
(158, '卸妆', NULL, 55, 0, NULL),
(159, '洁面', NULL, 55, 0, NULL),
(160, '爽肤水', NULL, 55, 0, NULL),
(161, '精华', NULL, 56, 0, NULL),
(162, '面膜', NULL, 56, 0, NULL),
(163, '套装', NULL, 56, 0, NULL),
(164, '眼线', NULL, 74, 0, NULL),
(165, '彩妆盘', NULL, 74, 0, NULL),
(166, 'BB霜', NULL, 74, 0, 'hot'),
(167, '瘦身', NULL, 75, 0, NULL),
(168, '脱毛', NULL, 75, 0, NULL),
(169, '丰胸', NULL, 75, 0, 'hot'),
(170, 'V脸', NULL, 76, 0, NULL),
(171, '美白', NULL, 76, 0, 'hot'),
(172, '去黑眼圈', NULL, 76, 0, NULL),
(173, '蚕丝面膜', NULL, 78, 0, 'hot'),
(174, '化妆品', NULL, 78, 0, NULL),
(175, '马油', NULL, 78, 0, 'hot'),
(176, '华为', NULL, 28, 0, NULL),
(177, 'ipad', NULL, 29, 0, 'hot'),
(178, '小米', NULL, 29, 0, NULL),
(179, '三星', NULL, 29, 0, NULL),
(180, '10寸', NULL, 29, 0, NULL),
(181, '笔记本', NULL, 30, 0, NULL),
(182, 'DIY电脑', NULL, 30, 0, 'hot'),
(183, '单反', NULL, 79, 0, NULL),
(184, '自拍神器', NULL, 79, 0, 'hot'),
(185, '拍立得', NULL, 79, 0, NULL),
(186, '充电宝', NULL, 80, 0, NULL),
(187, '智能穿戴', NULL, 80, 0, 'hot'),
(188, '手机壳', NULL, 81, 0, 'hot'),
(189, '手机热销', NULL, 81, 0, NULL),
(190, '平板电视', NULL, 33, 0, NULL),
(191, '冰箱', NULL, 33, 0, NULL),
(192, '空调', NULL, 33, 0, NULL),
(193, '榨汁机', NULL, 34, 0, NULL),
(194, '家用净水', NULL, 34, 0, 'hot'),
(195, '除湿器', NULL, 82, 0, NULL),
(196, '空气净化', NULL, 82, 0, 'hot'),
(197, '按摩椅', NULL, 83, 0, 'hot'),
(198, '剃须刀', NULL, 83, 0, NULL),
(199, '蒸脸器', NULL, 83, 0, NULL),
(200, '投影仪', NULL, 84, 0, 'hot'),
(201, '打印机', NULL, 84, 0, NULL),
(204, '电风扇', NULL, 85, 0, NULL),
(203, 'A4', NULL, 84, 0, NULL),
(205, '蓝牙耳机', NULL, 85, 0, NULL),
(206, '翡翠', NULL, 39, 0, NULL),
(207, '彩宝', NULL, 39, 0, NULL),
(208, '蜜蜡', NULL, 39, 0, NULL),
(209, '裸钻', NULL, 39, 0, NULL),
(210, '瑞士表', NULL, 44, 0, NULL),
(211, '机械表', NULL, 44, 0, NULL),
(212, '时装表', NULL, 44, 0, NULL),
(213, '太阳镜', NULL, 45, 0, NULL),
(214, '偏光镜', NULL, 45, 0, NULL),
(215, '近视镜', NULL, 45, 0, NULL),
(216, '和田玉', NULL, 46, 0, 'hot'),
(217, '翡翠', NULL, 46, 0, NULL),
(218, '头饰', NULL, 47, 0, 'hot'),
(219, '手表', NULL, 47, 0, NULL),
(221, '菩提', NULL, 47, 0, NULL),
(222, '龙虾', NULL, 49, 0, NULL),
(223, '净颜眉', NULL, 50, 0, 'hot'),
(224, '进口零食', NULL, 50, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_role`
--

CREATE TABLE IF NOT EXISTS `weimart_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  `role_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `weimart_role`
--

INSERT INTO `weimart_role` (`role_id`, `role_name`, `role_key`) VALUES
(1, '系统管理员', 'admin'),
(2, '游客', 'tourist'),
(3, '会员', 'golden'),
(4, '店主', 'keeper'),
(9, 'test', '123'),
(12, 'test111', '123'),
(13, 'test1112', '123'),
(14, 'test1111', '123');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_role_permission`
--

CREATE TABLE IF NOT EXISTS `weimart_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_role_permission`
--

INSERT INTO `weimart_role_permission` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_shop`
--

CREATE TABLE IF NOT EXISTS `weimart_shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(45) DEFAULT NULL,
  `shop_img` varchar(255) DEFAULT NULL,
  `shop_img_temp` varchar(255) DEFAULT NULL,
  `shop_desc` text,
  `shop_ad` text,
  `shop_brif` varchar(200) DEFAULT NULL,
  `shop_key` varchar(128) DEFAULT NULL,
  `shop_stage` int(11) DEFAULT NULL,
  `shop_register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shop_last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shop_is_deleted` int(11) NOT NULL DEFAULT '0',
  `super_shop_id` int(11) NOT NULL,
  `is_recommend` int(11) NOT NULL DEFAULT '0',
  `shop_delegate_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shop_main_sell` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `weimart_shop`
--

INSERT INTO `weimart_shop` (`shop_id`, `shop_name`, `shop_img`, `shop_img_temp`, `shop_desc`, `shop_ad`, `shop_brif`, `shop_key`, `shop_stage`, `shop_register_time`, `shop_last_updated`, `shop_is_deleted`, `super_shop_id`, `is_recommend`, `shop_delegate_time`, `shop_main_sell`) VALUES
(1, '我的小铺', 'http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.', 'http://weimart-public.stor.sinaapp.com/Uploads/shop_img/554bfcaf64744.', '朱云祥的小铺', '专卖正品', '正品的内容描述', '', 1, '2015-05-03 23:04:05', '0000-00-00 00:00:00', 0, 5, 1, '0000-00-00 00:00:00', '饰品'),
(2, '我的店', '/weimart/Public/Uploads/shop_img/554638a62dde1.jpg', '/weimart/Public/Uploads/shop_img/thumb_554638a62dde1.jpg', '我的店铺信息', '我的店铺标语', '我的店铺描述', '', 1, '2015-05-05 00:16:12', '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', ''),
(3, '我的', '', '', '123', '123', '123', '', 1, '2015-05-07 22:57:46', '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, '朱云的店铺', 'http://weimart-public.stor.sinaapp.com/Uploads/shop_img/5563efe6032d7.jpg', 'http://weimart-public.stor.sinaapp.com/Uploads/shop_img/5563efe6032d7.jpg', '全部正品', '假一罚十', '全部真品', '', 1, '2015-05-26 11:59:42', '0000-00-00 00:00:00', 0, 0, 1, '0000-00-00 00:00:00', '衣服'),
(5, '唐家女装', 'http://weimart-public.stor.sinaapp.com/Uploads/shop_img/55646c4f4e81b.', 'http://weimart-public.stor.sinaapp.com/Uploads/shop_img/55646c4f4e81b.', '唐家女装', '性感是一种生存优势', '唐家店铺', '', 0, '2015-05-26 20:49:48', '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', '女装'),
(6, '唐家店铺', NULL, NULL, '兔兔', '借口', '哦咯', NULL, 0, '2015-05-26 20:50:33', '0000-00-00 00:00:00', 0, 0, 0, '0000-00-00 00:00:00', '女装');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_shop_product`
--

CREATE TABLE IF NOT EXISTS `weimart_shop_product` (
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_shop_product`
--

INSERT INTO `weimart_shop_product` (`shop_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_shop_type`
--

CREATE TABLE IF NOT EXISTS `weimart_shop_type` (
  `shop_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`,`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_shop_type`
--


-- --------------------------------------------------------

--
-- 表的结构 `weimart_stype`
--

CREATE TABLE IF NOT EXISTS `weimart_stype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
  `type_key` varchar(45) DEFAULT NULL,
  `super_type_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `weimart_stype`
--

INSERT INTO `weimart_stype` (`type_id`, `type_name`, `type_key`, `super_type_id`) VALUES
(1, '鞋类', 'shoe', 0),
(2, '慢跑鞋', 'sport_shoe', 1);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_user`
--

CREATE TABLE IF NOT EXISTS `weimart_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_nick_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_header_img` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_header_temp_img` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pwd` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_wechat_key` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_gender` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_full_name` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_telephone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_stage` int(11) DEFAULT NULL,
  `user_regist_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_last_updated` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `user_last_logined` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `user_is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `weimart_user`
--

INSERT INTO `weimart_user` (`user_id`, `user_name`, `user_nick_name`, `user_header_img`, `user_header_temp_img`, `user_pwd`, `user_email`, `user_wechat_key`, `user_gender`, `user_full_name`, `user_telephone`, `user_address`, `user_stage`, `user_regist_time`, `user_last_updated`, `user_last_logined`, `user_is_deleted`) VALUES
(1, 'zyx', 'zhuyunxiang', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55648092bbb98.jpg', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/thumb_55648092bbb98.jpg', '96e79218965eb72c92a549dd5a330112', '493405455@qq.com', '', '男', '朱云祥', '18862152242', '苏州市工业园区', 0, '2015-05-03 10:53:25', NULL, NULL, 0),
(2, 'zhuyunxiang', 'zhuyunxiang', '/weimart/Public/Uploads/head_img/55463885ba7e2.jpg', '/weimart/Public/Uploads/head_img/thumb_55463885ba7e2.jpg', 'fac97e579639be3f10db671a4462ed91', 'zhuyunxiang820@live.cn', NULL, '男', '朱云祥', '18862152242', '苏州市工业园区', 0, '2015-05-03 23:02:53', NULL, NULL, 0),
(3, 'zyxxxx', '请输入你的昵称', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/554b7cbf4613c.', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/554b7cbf4613c.', '96e79218965eb72c92a549dd5a330112', '1231231@qqeq', '', '男', '', '', '', 0, '2015-05-06 22:20:58', NULL, NULL, 0),
(4, 'zyx222', '握额', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/554b7d20c6739.', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/554b7d20c6739.', '111111', '826305530@qq.com', NULL, '男', '哈哈', '188', '123', 0, '2015-05-25 21:39:20', NULL, NULL, 1),
(5, 'gxy', 'gxy', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/554f7bdcef318.', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/554f7bdcef318.', '111111', '274945683@qq.com', NULL, '女', '郭雪莹', '15205160443', '我的联系地址', 0, '2015-05-10 23:40:22', NULL, NULL, 0),
(6, '12321', NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', '132131@q123', NULL, NULL, NULL, NULL, NULL, 0, '2015-05-10 23:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, '绵绵', '绵绵', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/555819e301f11.png', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/thumb_555819e301f11.png', 'e807f1fcf82d132f9bb018ca6738a19f', '1142080446@qq.com', NULL, '女', '王扬', '18862144741', '苏州科技学院', 0, '2015-05-17 12:32:36', NULL, NULL, 0),
(8, '哈哈哈', NULL, NULL, NULL, 'e807f1fcf82d132f9bb018ca6738a19f', '114208446@qq.com', NULL, NULL, NULL, NULL, NULL, 0, '2015-05-17 12:34:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, 'zhulanqing', '朱老师', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/556326834e367.', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/556326834e367.', '111111', 'zyx@snail.com', NULL, '男', '朱老师', '18862152242', '苏州市工业园区', 0, '2015-05-25 21:43:32', NULL, NULL, 1),
(10, 'zlq', '朱老师', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/556327492551d.', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/556327492551d.', '111111', 'zlq@qq.com', NULL, '男', '朱老师', '18862152242', '苏州市工业园区', 0, '2015-05-25 21:44:50', NULL, NULL, 0),
(11, 'zhu', 'hello', NULL, NULL, '111111', 'zhuyunxiang@qq.com', NULL, '男', 'zhuyunxiang', '18862152242', '苏州市', 0, '2015-05-25 21:46:35', NULL, NULL, 0),
(12, 'zhuyun', 'zhuyunxiang', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55632acb0a871.jpg', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/thumb_55632acb0a871.jpg', '96e79218965eb72c92a549dd5a330112', 'zhuyunxiang1@qq.com', NULL, '男', 'zhuyunxiang', '18862152242', '苏州市工业园区', 0, '2015-05-25 22:00:07', NULL, NULL, 0),
(13, 'zhuyunx', NULL, NULL, NULL, '96e79218965eb72c92a549dd5a330112', 'zyx@qq.com', NULL, NULL, NULL, NULL, NULL, 0, '2015-05-25 21:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(14, 'zyxgxy', 'zyxxxx', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55634d934a173.png', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55634d934a173.png', '96e79218965eb72c92a549dd5a330112', '123456@qq.com', '', '男', '朱云祥', '18862152242', '苏州工业园区', 0, '2015-05-26 00:23:11', NULL, NULL, 0),
(16, 'yqx', '我的昵称', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55635005143d8.', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55635005143d8.', '96e79218965eb72c92a549dd5a330112', '17726@qq.com', NULL, '男', '姚启秀', '13655277730', '江苏扬州', 0, '2015-05-26 00:39:14', NULL, NULL, 0),
(15, 'zhuyunxiang123', 'zhuyunxiang', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55634cca21a19.jpg', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55634cca21a19.jpg', '96e79218965eb72c92a549dd5a330112', '2345@qq.com', NULL, '男', 'zhuyunxiang', '18862152242', '苏州', 0, '2015-05-26 00:25:09', NULL, NULL, 0),
(17, '咩咩', '咩咩', '', '', 'e10adc3949ba59abbe56e057f20f883e', '1142080445@qq.com', '', '女', '王扬', '18862144741', '18862144741', 0, '2015-05-26 15:08:59', NULL, NULL, 0),
(18, 'tangjia', 'tangjia', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55646b7a56f2b.', 'http://weimart-public.stor.sinaapp.com/Uploads/head_img/55646b7a56f2b.', '96e79218965eb72c92a549dd5a330112', 'tabgjia@qq.com', NULL, '男', '唐家', '18862152242', '苏州', 0, '2015-05-26 20:48:21', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_user_collect_product`
--

CREATE TABLE IF NOT EXISTS `weimart_user_collect_product` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_user_collect_product`
--


-- --------------------------------------------------------

--
-- 表的结构 `weimart_user_collect_shop`
--

CREATE TABLE IF NOT EXISTS `weimart_user_collect_shop` (
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_user_collect_shop`
--


-- --------------------------------------------------------

--
-- 表的结构 `weimart_user_comment_product`
--

CREATE TABLE IF NOT EXISTS `weimart_user_comment_product` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_user_comment_product`
--

INSERT INTO `weimart_user_comment_product` (`user_id`, `product_id`, `comment_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_user_comment_shop`
--

CREATE TABLE IF NOT EXISTS `weimart_user_comment_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_user_comment_shop`
--

INSERT INTO `weimart_user_comment_shop` (`user_id`, `shop_id`, `comment_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_user_role`
--

CREATE TABLE IF NOT EXISTS `weimart_user_role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_user_role`
--

INSERT INTO `weimart_user_role` (`role_id`, `user_id`) VALUES
(13, 1),
(13, 213),
(13, 214),
(13, 215),
(13, 216),
(13, 217),
(13, 218);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_user_shop`
--

CREATE TABLE IF NOT EXISTS `weimart_user_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_user_shop`
--

INSERT INTO `weimart_user_shop` (`user_id`, `shop_id`) VALUES
(1, 1),
(2, 2),
(4, 3),
(12, 4),
(18, 5),
(18, 6),
(242, 0),
(242, 8),
(243, 9),
(244, 10);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_user_visit_product`
--

CREATE TABLE IF NOT EXISTS `weimart_user_visit_product` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `visit_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visit_hidden` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_user_visit_product`
--

INSERT INTO `weimart_user_visit_product` (`user_id`, `product_id`, `visit_time`, `visit_hidden`) VALUES
(1, 1, '2014-10-26 22:47:08', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_user_visit_shop`
--

CREATE TABLE IF NOT EXISTS `weimart_user_visit_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `visit_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `visit_hidden` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weimart_user_visit_shop`
--

INSERT INTO `weimart_user_visit_shop` (`user_id`, `shop_id`, `visit_time`, `visit_hidden`) VALUES
(1, 1, '2014-10-26 22:41:55', '');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_wechat_info`
--

CREATE TABLE IF NOT EXISTS `weimart_wechat_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wechat_name` varchar(20) DEFAULT NULL,
  `wechat_id` varchar(20) DEFAULT NULL,
  `app_id` varchar(200) DEFAULT NULL,
  `app_secret` varchar(200) DEFAULT NULL,
  `token` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `weimart_wechat_info`
--

INSERT INTO `weimart_wechat_info` (`id`, `wechat_name`, `wechat_id`, `app_id`, `app_secret`, `token`, `user_id`, `time`) VALUES
(1, '122', '444', '555', '66', '77', 2, '2015-02-14 10:40:08'),
(2, '校际圈', '123', 'wx713da7bfd9175724', '101fdc6b6f08f76505b98a84ef0111dc', 'zyx', 1, '2015-02-14 10:40:21');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_wechat_media_list`
--

CREATE TABLE IF NOT EXISTS `weimart_wechat_media_list` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_img` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_content` text COLLATE utf8_unicode_ci,
  `media_msg_id` int(11) NOT NULL DEFAULT '0',
  `media_major` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_index_url` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_is_deleted` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `media_head_in_content` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_author` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `weimart_wechat_media_list`
--

INSERT INTO `weimart_wechat_media_list` (`media_id`, `media_title`, `media_img`, `media_content`, `media_msg_id`, `media_major`, `media_index_url`, `media_is_deleted`, `media_create_time`, `media_head_in_content`, `media_author`, `order_index`) VALUES
(4, '标题qwe', '/weimart/Public/Uploads/media_img/552a94f53889a.jpg', '<blockquote style=\\"\\\\&quot;\\\\\\\\&quot;margin:\\\\&quot;\\" 20px=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" 15px=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" 1px=\\"\\\\&quot;\\\\&quot;\\" dashed=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" line-height:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" color:=\\"\\\\&quot;\\\\&quot;\\" white-space:=\\"\\\\&quot;\\\\&quot;\\" background:=\\"\\\\&quot;\\\\&quot;\\"><span style=\\"\\\\&quot;\\\\\\\\&quot;margin:\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" line-height:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" color:=\\"\\\\&quot;\\\\&quot;\\"><img class=\\"loadingclass\\" id=\\"loading_i8g3at59\\" src=\\"http://localhost:8085/weimart/Public/commen/ueditor/themes/default/images/spacer.gif\\" title=\\"正在上传...\\"/>摘要 :&nbsp;</span>探讨下互联网会把社会改造成什么样子，到底是中心化还是去中心化</blockquote><p class=\\"\\\\&quot;\\\\\\\\&quot;image\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" line-height:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-align:=\\"\\\\&quot;\\\\&quot;\\"><img src=\\"\\\\&quot;\\\\\\\\&quot;/ueditor/php/upload/image/20150414/1428941031906077.jpg\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin:\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" line-height:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" max-width:=\\"\\\\&quot;\\\\&quot;/\\"/></p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">之前看肖知兴写文章强调KK一派的观点时，我曾经回复过互联网其实是同步放大了中心化和去中心化的力量，单纯强调去中心化是不合适的。中心化或者去中心化本身看着很像个学术问题，也并不重要，但实际上这种趋势会影响每个人，并一定会改变社会的结构。那在互联网的冲击下，社会到底会走向那里？这也许可以从赚钱的方式看出一些端倪。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\"><strong>那些赚钱的模式</strong></p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">与互联网相关的公司很多，但经过验证的盈利模式则没有那么多，大致有下面六种：</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">第一种模式是最传统的卖货模式，可以包含传统的百货里的东西和按摩这类服务。这种模式在互联网上实现出来就是电商和O2O。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">第二种模式也算卖“货”，但货有点特殊，卖的是数字产品的使用权。最初是Windows的License模式，到现在则体现为IaasS，PaaS，SassS的服务费。Windows，Oracle现在仍是License模式，但云服务已经过度到只收服务费了。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">第三种则是搭平台进行分成模式。这在起点这样的网站上体现的比较明显，在那里作者与起点网分享付费订阅的收入。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">第四种模式是广告模式。这模式骨子里相当于是卖流量。而广告本身又可以分为三代：第一代是电线杆小广告式的，门户的广告，电视的广告都是这种；第二代是Google式的，根据关键字提供相关联广告；第三代则是基于人的，软文类广告是这类。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">第五种则是卖增值物品。游戏和QQ的皇冠都是这种模式。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">第六种是虚拟央行模式。这个比较特别，需要多说一点。央行和一般银行的不同之处在于：它不赚钱，但制造钱。现实里央行可以通过发行更多的钞票来收铸币税，但对于虚拟世界这就是一种盈利模式。想象下只要一个虚拟社区足够大，那它的虚拟货币就具有极高的交换价值，这样一来发行量就是可以赚到的钱。当然你恶意发行肯定会在虚拟世界导致通货膨胀，但在极度通货膨胀和不通货膨胀间有很大的操作空间，在很多时候你可以即发行10亿也可以发行11亿，只要未来有办法回收。这背后其实是货币发行权的价值，其实是一种很微妙的模式。这模式逻辑上成立，所以我把它列在这里，但这题目太复杂，在这篇里不会展开太多。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">眼下来看经过确实验证的模式大致就这么多，所以可以认为不管一个公司讲了多少让人眼花缭乱的故事，如果不能在这几种模式上找到依托，那其实这公司没有未来。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\"><strong>竞争的新内涵</strong></p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">由这种赚钱的模式反过来可以预测未来的商业生态。第二到第六种模式天生需要大平台，而这种平台事实上不可能太多，这就是互联网催生出来的中心化。而第一种、第五种模式则天生需要满足人们多样化的需求，所以需要把平台上创建商品的一端开放出来，让更多人参与进来提供具有特色的东西，这就是去中心化。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">这么说有点倒果为因的意思，但如果回溯到产品本身，一样也还是这结果。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">我们日常所见的五花八门的商品，大致可以分为两个类别：一类是大批量无差别的，一类则是小批量有差别的。离人越远的越偏向前者，比如钢铁；离人越近的越偏向后者，比如服装。这在大豆和大米上体现的特别明显，虽然都是农作物，但大米就要细分很多类，比如五常大米、盘锦大米等，大豆则没人关注那么多。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">从过去的现实来看，这种商品的特质导致两类中心化的趋势，对于无差别类商品那会导致某一类行业只会剩下少数几家企业，比如钢铁。互联网会使信息透明，而信息透明会让这种可以通过参数比较好坏的产品越来越集中到少数几家有优势的企业里面。对于小批量有差别类商品，比如服装、工艺品则会在方便和个性化的推动下出现平台。在这点上我们可以更清楚的看到中心化和去中心化相并行的趋势。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">这种中心化是指少数几个大平台，而去中心化是指平台上出售的各种越来越具有个性的商品。电商平台和各种商品、商家是这种关系，游戏与分发乃至打通游戏账户体系提供虚拟货币的平台是这种关系，写手与小说平台是这种关系，搜索与被搜索的内容也是这种关系。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">这种大平台天生会按类别归并，所以并不会很多；但平台上提供个性化服务或商品的则注定会很多以便满足不同层次的需求。互联网化越彻底，这种中心化与去中心化的组合就会越明显。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">这与上面所说的赚钱模式吻合的非常好。除了第一种和第五种模式对应于提供个性化产品或服务的商家和个人，所有其他模式都需要一定的规模才可能产生并持续，而平台恰恰是支撑这种规模的必须手段。即可以讲是平台造就了那些盈利模式，也可以讲盈利模式催生了平台化。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">这在一定程度上会改变竞争的内涵。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">就像域名资源是有限的一样，平台所可能依托的东西其实是有限的，至少在一定技术水平上是有限的。所以竞争变成了发现的游戏，谁猜未来的准确率高，谁就有先发优势。做iPhone这类创新需要天才的创造力，但大多的时候定位平台需要点“猜谜”和“想象”的能力。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\"><strong>互联网将重塑社会形态</strong></p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">这两类中心化与去中心化的趋势很可能会重塑我们的社会形态。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">寡头式的中心化加上工业4.0，最终会导致生产无差别商品的企业极度精英化，凡是可以不依赖于创造力、想象力的东西最终都会被计算机取代，形象来讲就是有一堆机器人把那些不需要太高智能的活都干了，最后剩下的只是电脑无法战胜人脑的工作，比如依赖于想象力和判断力的，这注定会是高端工作。这进一步意味着制造业所能吸纳的就业人数会越来越少。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">平台式的中心化则会导致更多的故事。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">从财富上看成功的掌握了平台的，相当于拥有了在特定领域里制定规则的权利，所以必然会是财富的中心。而各种技术的发展使这种平台的运作和维护通常并不需要很多人（现在顶级三家互联网公司的所有员工加起来还没有一个宝钢多，但收入、利润等则要掉过来看），所以这类成功的平台会是未来的财富中心。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">从平台上的产品来看，差异化是唯一的出路。一件东西之所以会有价值有利润往往是多种因素复合的结果：首先是因为有用，其次是因为信息不对称，最后是因为真的稀缺，或者因为喜欢。在过去很多产品利润空间大是因为信息不对称，在互联网让信息透明后这部分钱其实是赚不到了，因此没差异产品在激烈竞争下毛利率会驱零。越是很容易量化和比较的部分越不值钱，而越差异化个性化的东西越能产生额外价值。这里确实能够吸纳更多的人口就业，相当于说是手艺人越来越有生存空间。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">这种平台+手艺人的模式注定会造成贫富差距，阿里上做电商的不太可能比阿里还赚钱，越个性化这种可能性越小，因为目标用户会变少。但这种模式确实有可能打造一种纺锤形的社会，并且会大幅度提高人们的生活质量，所以是比较值得期待的。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">如果只看中心化那世界其实是很悲观的，如果只看去中心化那世界则是过于乐观的。未来更可能是这两者叠加出来的一种形态。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\"><strong>现实里的挑战</strong></p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">在上述那种经济模式里，两类人能够很好的找到自己的位置一类是在中心化一端的人，这里会聚集传说中的那些精英；一类是在去中心化一端的人，这里会聚集非常多的手艺人。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">这也许是中国会要面对的独特挑战。中国人口构成里最主要的农民，农民工与工人，并不具备提供个性化服务的能力，如果上述分析是对的那意味着非常多的人其实在中心化与去中心化的模式里找不到自己的位置。两者都不靠就会变成需要同科技做竞争，而工厂的工人同工业4.0的趋势相竞争长线来看是不可能胜出的，作为结果这些人就很可能会被甩到社会的边缘。这种挑战因为来自于科技的发展而不可能被回避。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">当然国家与国家间的发展是不平衡的，在漫长的过渡期里可以通过向其他地区输出产能来缓解这问题，但这不是解决之道。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">社会不太可能开倒车，所以互联网对社会而言也许更像是一场带着阵痛的变革。与此同时互联网对信息传播方式的影响则会为变革里注入更多的变数。</p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\"><strong>小结</strong></p><p class=\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\" style=\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\" margin-bottom:=\\"\\\\&quot;\\\\&quot;\\" padding:=\\"\\\\&quot;\\\\&quot;\\" border:=\\"\\\\&quot;\\\\&quot;\\" font-family:=\\"\\\\&quot;\\\\&quot;\\" font-size:=\\"\\\\&quot;\\\\&quot;\\" font-style:=\\"\\\\&quot;\\\\&quot;\\" font-variant:=\\"\\\\&quot;\\\\&quot;\\" font-weight:=\\"\\\\&quot;\\\\&quot;\\" font-stretch:=\\"\\\\&quot;\\\\&quot;\\" vertical-align:=\\"\\\\&quot;\\\\&quot;\\" text-indent:=\\"\\\\&quot;\\\\&quot;\\">很多时候我们思考互联网带来的冲击更多的是看那里出现了新机会，但互联网会影响到的显然不止是商业，这篇就尝试从具体的商业视角跳出来，从宏观点的视角来探讨下它所可能带来的社会影响。</p><p><br/></p>', 3, 'qwe', '', '', '2015-04-12 23:53:27', 'true', '', 0),
(5, '标题', '/weimart/Public/Uploads/media_img/5533764ca3998.jpg', '<p>12321313</p>', 7, '1231231', NULL, NULL, '2015-04-19 17:33:05', NULL, NULL, NULL),
(6, '标题qwe', '/weimart/Public/Uploads/media_img/5533772aad03a.jpg', '<p>其味无穷</p>', 8, '请问请问', NULL, NULL, '2015-04-19 17:36:45', NULL, NULL, NULL),
(8, '标题', 'http://weimart-public.stor.sinaapp.com/Uploads/media_img/554c5418a30c4.jpg', '<p>1231232131<img class="loadingclass" id="loading_i9gebrov" src="http://weimart.sinaapp.com/Public/commen/ueditor/themes/default/images/spacer.gif" title="正在上传..."/></p>', 9, '123123', '', '', '2015-05-08 14:13:48', '', '', 0),
(9, '标题', 'http://weimart-public.stor.sinaapp.com/Uploads/media_img/554d6dc4313d1.jpg', '<p><img src="http://weimart-public.stor.sinaapp.com/ueditor/php/upload/image/20150509/1431137739463652.jpg" title="1431137739463652.jpg" alt="壁纸20141126003226.jpg"/></p><p><br/></p><p>你好啊</p>', 11, '你好', NULL, NULL, '2015-05-09 10:15:51', 'true', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `weimart_wechat_menu_first`
--

CREATE TABLE IF NOT EXISTS `weimart_wechat_menu_first` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一级菜单的id',
  `menu_name` varchar(16) NOT NULL COMMENT '一级菜单的名称',
  `menu_type` varchar(8) DEFAULT NULL,
  `menu_key` varchar(128) DEFAULT NULL COMMENT '一级菜单的key',
  `menu_url` varchar(1024) DEFAULT NULL,
  `menu_state` varchar(8) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `weimart_wechat_menu_first`
--

INSERT INTO `weimart_wechat_menu_first` (`menu_id`, `menu_name`, `menu_type`, `menu_key`, `menu_url`, `menu_state`, `create_time`) VALUES
(12, '进入主页', 'url', '67832b5d86a03e06e9dc82fd49211382', 'http://weimart.sinaapp.com/weimart_mobile/www', '', '2015-05-26 16:47:22');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_wechat_menu_second`
--

CREATE TABLE IF NOT EXISTS `weimart_wechat_menu_second` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二级菜单的id',
  `menu_name` varchar(16) NOT NULL COMMENT '二级菜单的名称',
  `menu_type` varchar(8) DEFAULT NULL COMMENT '返回的数据类型',
  `menu_key` varchar(128) NOT NULL COMMENT '二级菜单的key',
  `menu_url` varchar(1024) DEFAULT NULL,
  `menu_first_id` int(11) NOT NULL COMMENT '所属一级菜单的id',
  `menu_state` varchar(8) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `weimart_wechat_menu_second`
--

INSERT INTO `weimart_wechat_menu_second` (`menu_id`, `menu_name`, `menu_type`, `menu_key`, `menu_url`, `menu_first_id`, `menu_state`) VALUES
(1, '菜单', 'url', '18af7679535efb8bdf925e9c58878bdc', 'http://www.baidu.com', 1, ''),
(3, '看看1', 'text', '289f1d13de27d7ddffbf529a8339dccf', NULL, 1, ''),
(4, '逛逛1', 'url', 'fbe1400c1b99f2ed6fff8df0c95ab299', 'http://', 1, ''),
(5, '222', NULL, '357c55fdf87e3bb43fb282825da36677', NULL, 7, ''),
(6, '132', 'text', '69b2ed523c71033dd766eada03f5dcbd', NULL, 1, ''),
(7, '12312', 'text', '3e74f017e236eb3903a2bcd035981ca2', NULL, 8, ''),
(8, '55', NULL, 'af1d467130ec7721022e27dd5553299e', NULL, 8, ''),
(15, 'ccc', 'media', '060a373e86564fb44fcb9de60ad4d5dd', NULL, 14, ''),
(14, 'aaac', 'url', 'bf02d45be60d089ec75e017da69d44a0', '12345qwee', 14, '');

-- --------------------------------------------------------

--
-- 表的结构 `weimart_wechat_msg_list`
--

CREATE TABLE IF NOT EXISTS `weimart_wechat_msg_list` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg_key` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `msg_keyword` text COLLATE utf8_unicode_ci,
  `msg_text` text COLLATE utf8_unicode_ci,
  `msg_is_deleted` int(8) NOT NULL DEFAULT '0',
  `msg_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msg_author` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg_head_in_content` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `weimart_wechat_msg_list`
--

INSERT INTO `weimart_wechat_msg_list` (`msg_id`, `msg_type`, `msg_key`, `msg_keyword`, `msg_text`, `msg_is_deleted`, `msg_create_time`, `msg_author`, `msg_head_in_content`) VALUES
(1, 'custom_text', '41893b813bd7c16db886b6af275f4634', 'a,', 'aaa', 1, '2015-04-12 23:52:51', '', ''),
(2, 'custom_media', '7c3005088e00587546d5352d9b90e1d3', 'b,', '', 1, '2015-04-12 23:52:59', '', ''),
(3, 'custom_media', 'baeca3e73005921f747ea76cc48e05e4', 'b,', '', 1, '2015-04-12 23:53:04', '', ''),
(4, 'custom_media', '753a6da456dbc0cd38620930ae2eb96e', 'aaa,', '', 1, '2015-04-13 00:07:36', '', ''),
(5, 'custom_media', '013434ad941b5cb92c7148cc510872e6', 'qwe,', '', 1, '2015-04-13 00:09:05', '', ''),
(6, 'custom_text', '558cab09fe236beecccc571efa1d6955', '吧,', '1231', 1, '2015-04-19 17:32:34', '', ''),
(7, 'custom_media', 'aa3829a6bad5917d128557eb31bbfd84', '212,', '', 1, '2015-04-19 17:32:52', '', ''),
(8, 'custom_media', '612581638947550f8fb7e02d80972e0a', '请问请问,', '', 1, '2015-04-19 17:36:35', '', ''),
(9, 'media', 'ddf165ca3f9440e1afa17de36336e34c', NULL, NULL, 0, '2015-05-08 14:13:20', NULL, NULL),
(10, 'custom_media', '5fd9ec6f2dcc9ebb85d29c92c15b0d9a', '你好,', '', 1, '2015-05-09 10:15:08', '', ''),
(11, 'custom_media', 'd1a5b95dbc6be93a5ef98dbb964ce7b7', '你好,1231231,12312321,123,1231,', '', 1, '2015-05-09 10:15:21', '', ''),
(12, 'custom_text', '62faf3d171c5287e64760d134fb5dab8', '1,', '<a href="http://192.168.11.168/weimart/weimart_mobile/www/">点击</a>\n<a href="http://weimart。sinaapp.com/weimart_mobile/www/">微网页</a>', 1, '2015-05-10 22:01:00', '', ''),
(13, 'custom_text', '98c47b8440cc99b16b13620243903b76', '2,', '<a href="http://weimart.sinaapp.com/#/home">点击进入卖盟</a>', 1, '2015-05-10 22:05:46', '', ''),
(14, 'custom_text', 'ee2d4cf8d75112e7307c30e4bc793d2b', '', '1231321313', 1, '2015-05-24 21:46:58', '', ''),
(15, 'custom_text', '6d0a926066fa92d809b42fe480f9354e', '店铺,商店,微店,', '<a href="http://weimart.sinaapp.com/weimart_mobile/www/home.html#/home">点击进入微店</a>', 0, '2015-06-04 09:16:14', NULL, NULL),
(16, 'custom_text', '2b5aa0e32c85e20b4512f9dcf8f01108', '商品,商品分类,', '<a href="http://weimart.sinaapp.com/weimart_mobile/www/home.html#/list">点击进入商品页</a>', 0, '2015-06-04 09:26:40', NULL, NULL);
