-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2014 年 11 月 09 日 11:31
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `weimart`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_comment_content`
-- 

CREATE TABLE `weimart_comment_content` (
  `comment_id` int(11) NOT NULL,
  `comment_floor` int(11) default NULL,
  `comment_content` text,
  `comment_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`comment_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_comment_content`
-- 

INSERT INTO `weimart_comment_content` VALUES (1, 1, 'this is comment', '2014-10-26 22:05:13', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_permission`
-- 

CREATE TABLE `weimart_permission` (
  `permission_id` int(11) NOT NULL auto_increment,
  `permission_name` varchar(45) default NULL,
  `permission_key` varchar(45) default NULL,
  PRIMARY KEY  (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `weimart_permission`
-- 

INSERT INTO `weimart_permission` VALUES (1, '登陆', 'login');
INSERT INTO `weimart_permission` VALUES (2, '用户管理', 'user_admin');

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_product`
-- 

CREATE TABLE `weimart_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `product_name` varchar(64) default NULL,
  `product_key` varchar(45) default NULL,
  `product_desc` text,
  `product_price` decimal(10,0) default NULL,
  `product_num` int(11) default NULL,
  `product_left` int(11) default NULL,
  `product_register_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `product_is_deleted` int(11) NOT NULL default '0',
  PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `weimart_product`
-- 

INSERT INTO `weimart_product` VALUES (1, '一双鞋', 'key', '介绍', 3, 2, 2, '2014-10-22 21:31:12', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_product_type`
-- 

CREATE TABLE `weimart_product_type` (
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_product_type`
-- 

INSERT INTO `weimart_product_type` VALUES (1, 1);
INSERT INTO `weimart_product_type` VALUES (1, 2);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_ptype`
-- 

CREATE TABLE `weimart_ptype` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(45) default NULL,
  `type_key` varchar(45) default NULL,
  `super_type_id` int(11) default NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `weimart_ptype`
-- 

INSERT INTO `weimart_ptype` VALUES (1, 'nan', '1233', NULL);
INSERT INTO `weimart_ptype` VALUES (2, 'nv', '123', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_role`
-- 

CREATE TABLE `weimart_role` (
  `role_id` int(11) NOT NULL auto_increment,
  `role_name` varchar(45) default NULL,
  `role_key` varchar(45) default NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 导出表中的数据 `weimart_role`
-- 

INSERT INTO `weimart_role` VALUES (1, '系统管理员', 'admin');
INSERT INTO `weimart_role` VALUES (2, '游客', 'tourist');
INSERT INTO `weimart_role` VALUES (3, '会员', 'golden');
INSERT INTO `weimart_role` VALUES (4, '店主', 'keeper');
INSERT INTO `weimart_role` VALUES (9, 'test', '123');
INSERT INTO `weimart_role` VALUES (12, 'test111', '123');
INSERT INTO `weimart_role` VALUES (13, 'test1112', '123');
INSERT INTO `weimart_role` VALUES (14, 'test1111', '123');

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_role_permission`
-- 

CREATE TABLE `weimart_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_role_permission`
-- 

INSERT INTO `weimart_role_permission` VALUES (1, 1);
INSERT INTO `weimart_role_permission` VALUES (1, 2);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_shop`
-- 

CREATE TABLE `weimart_shop` (
  `shop_id` int(11) NOT NULL auto_increment,
  `shop_name` varchar(45) default NULL,
  `shop_desc` text,
  `shop_ad` text,
  `shop_brif` varchar(200) default NULL,
  `shop_key` varchar(128) default NULL,
  `shop_stage` int(11) default NULL,
  `shop_register_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `shop_last_updated` timestamp NOT NULL default '0000-00-00 00:00:00',
  `shop_is_deleted` int(11) NOT NULL default '0',
  `super_shop_id` int(11) NOT NULL,
  `shop_delegate_time` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `weimart_shop`
-- 

INSERT INTO `weimart_shop` VALUES (1, '我的微店', '描述', '宣传标语', '简介', 'Myshop', 1, '2014-10-22 22:49:06', '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00');
INSERT INTO `weimart_shop` VALUES (2, '我的微2', '描述', '宣传标语', '简介', 'Myshop', 1, '2014-10-22 22:51:54', '0000-00-00 00:00:00', 0, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_shop_product`
-- 

CREATE TABLE `weimart_shop_product` (
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`shop_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_shop_product`
-- 

INSERT INTO `weimart_shop_product` VALUES (1, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_shop_type`
-- 

CREATE TABLE `weimart_shop_type` (
  `shop_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY  (`shop_id`,`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_shop_type`
-- 

INSERT INTO `weimart_shop_type` VALUES (1, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_stype`
-- 

CREATE TABLE `weimart_stype` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(45) default NULL,
  `type_key` varchar(45) default NULL,
  `super_type_id` int(11) NOT NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `weimart_stype`
-- 

INSERT INTO `weimart_stype` VALUES (1, '鞋类', 'shoe', 0);
INSERT INTO `weimart_stype` VALUES (2, '慢跑鞋', 'sport_shoe', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_user`
-- 

CREATE TABLE `weimart_user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(16) collate utf8_unicode_ci default NULL,
  `user_nick_name` varchar(45) collate utf8_unicode_ci NOT NULL,
  `user_header_img` varchar(128) collate utf8_unicode_ci default NULL,
  `user_header_temp_img` varchar(128) collate utf8_unicode_ci default NULL,
  `user_pwd` varchar(64) collate utf8_unicode_ci default NULL,
  `user_email` varchar(64) collate utf8_unicode_ci default NULL,
  `user_wechat_key` varchar(256) collate utf8_unicode_ci default NULL,
  `user_gender` varchar(8) collate utf8_unicode_ci default NULL,
  `user_full_name` varchar(16) collate utf8_unicode_ci default NULL,
  `user_telephone` varchar(11) collate utf8_unicode_ci default NULL,
  `user_address` varchar(128) collate utf8_unicode_ci default NULL,
  `user_stage` int(11) default NULL,
  `user_regist_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `user_last_updated` timestamp NOT NULL default '0000-00-00 00:00:00',
  `user_last_logined` timestamp NOT NULL default '0000-00-00 00:00:00',
  `user_is_deleted` int(11) NOT NULL default '0',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=219 ;

-- 
-- 导出表中的数据 `weimart_user`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_user_comment_product`
-- 

CREATE TABLE `weimart_user_comment_product` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_user_comment_product`
-- 

INSERT INTO `weimart_user_comment_product` VALUES (1, 1, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_user_comment_shop`
-- 

CREATE TABLE `weimart_user_comment_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_user_comment_shop`
-- 

INSERT INTO `weimart_user_comment_shop` VALUES (1, 1, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_user_role`
-- 

CREATE TABLE `weimart_user_role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_user_role`
-- 

INSERT INTO `weimart_user_role` VALUES (13, 212);
INSERT INTO `weimart_user_role` VALUES (13, 213);
INSERT INTO `weimart_user_role` VALUES (13, 214);
INSERT INTO `weimart_user_role` VALUES (13, 215);
INSERT INTO `weimart_user_role` VALUES (13, 216);
INSERT INTO `weimart_user_role` VALUES (13, 217);
INSERT INTO `weimart_user_role` VALUES (13, 218);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_user_shop`
-- 

CREATE TABLE `weimart_user_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_user_shop`
-- 

INSERT INTO `weimart_user_shop` VALUES (1, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_user_visit_product`
-- 

CREATE TABLE `weimart_user_visit_product` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `visit_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `visit_hidden` varchar(45) default NULL,
  PRIMARY KEY  (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_user_visit_product`
-- 

INSERT INTO `weimart_user_visit_product` VALUES (1, 1, '2014-10-26 22:47:08', NULL);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_user_visit_shop`
-- 

CREATE TABLE `weimart_user_visit_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `visit_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `visit_hidden` varchar(45) default NULL,
  PRIMARY KEY  (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `weimart_user_visit_shop`
-- 

INSERT INTO `weimart_user_visit_shop` VALUES (1, 1, '2014-10-26 22:41:55', '');
