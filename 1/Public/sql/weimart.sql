-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2015 年 04 月 05 日 17:21
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

INSERT INTO `weimart_user` VALUES (1, 'zyx', 'zhuyunxiang', NULL, NULL, '96E79218965EB72C92A549DD5A330112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-03 23:08:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

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

INSERT INTO `weimart_user_role` VALUES (13, 1);
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

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_wechat_info`
-- 

CREATE TABLE `weimart_wechat_info` (
  `id` int(11) NOT NULL auto_increment,
  `wechat_name` varchar(20) default NULL,
  `wechat_id` varchar(20) default NULL,
  `app_id` varchar(200) default NULL,
  `app_secret` varchar(200) default NULL,
  `token` varchar(20) default NULL,
  `user_id` int(11) default NULL,
  `time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `weimart_wechat_info`
-- 

INSERT INTO `weimart_wechat_info` VALUES (1, '122', '444', '555', '66', '77', 2, '2015-02-14 10:40:08');
INSERT INTO `weimart_wechat_info` VALUES (2, '校际圈', '123', 'wx713da7bfd9175724', '101fdc6b6f08f76505b98a84ef0111dc', 'zyx', 1, '2015-02-14 10:40:21');

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_wechat_media_list`
-- 

CREATE TABLE `weimart_wechat_media_list` (
  `media_id` int(11) NOT NULL auto_increment,
  `media_title` varchar(16) collate utf8_unicode_ci default NULL,
  `media_img` varchar(128) collate utf8_unicode_ci default NULL,
  `media_content` varchar(6000) collate utf8_unicode_ci default NULL,
  `media_msg_id` int(11) NOT NULL default '0',
  `media_major` varchar(200) collate utf8_unicode_ci default NULL,
  `media_index_url` varchar(512) collate utf8_unicode_ci default NULL,
  `media_is_deleted` varchar(8) collate utf8_unicode_ci default NULL,
  `media_create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `media_head_in_content` varchar(8) collate utf8_unicode_ci default NULL,
  `media_author` varchar(16) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`media_id`,`media_msg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=133 ;

-- 
-- 导出表中的数据 `weimart_wechat_media_list`
-- 

INSERT INTO `weimart_wechat_media_list` VALUES (132, 'tetetet', 'Public/upload/thumb_1401082303.jpg', '<p>213131</p>', 112, '1231231', '1231231', NULL, '2014-05-26 13:31:50', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (2, '123', 'Public/upload/thumb_1400327975.jpg', '<p>的说法是的范德萨发大水</p>', 3, '玩儿完任务', '11111555', NULL, '2014-05-17 20:06:10', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (3, '1233333', 'Public/upload/thumb_1400327804.jpg', '<p>3333333333333</p>', 4, '5555555555555', 'undefined', NULL, '2014-05-17 19:56:57', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (4, '44444', 'Public/upload/thumb_1400327951.jpg', '<p>4444444444444444</p><p>44444444</p>', 5, '', '', NULL, '2014-05-17 19:59:16', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (5, 'sjdklasjdlasd', 'Public/upload/thumb_1401018192.jpg', '<p>asdgajsdhsjad</p><p>爱上大声地</p>', 6, 'asdhnakjsdna', 'www.baidu.com', NULL, '2014-05-25 19:43:14', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (6, '标题一', 'Public/upload/thumb_1400761803.jpg', '<p>正文一</p>', 7, '摘要一', '网址一', NULL, '2014-05-22 20:30:48', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (7, '标题we', 'Public/upload/thumb_1400761832.jpg', '<p>正文二</p>', 7, '摘要二', '滴孩子we', NULL, '2014-05-22 20:30:48', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (8, '标题一11', 'Public/upload/thumb_1400762708.jpg', '<p>正文意义</p>', 8, '摘要111', '地址纸质', NULL, '2014-05-22 20:45:45', 'yes', '作者一11');
INSERT INTO `weimart_wechat_media_list` VALUES (9, '标题二阿斯达', NULL, '<p>啊实打实大声道</p>', 8, '爱上大声地', '啊啊十大', NULL, '2014-05-22 20:45:45', 'yes', '爱上大声地');
INSERT INTO `weimart_wechat_media_list` VALUES (10, 'biaoti', 'Public/upload/thumb_1401017978.jpg', '<p>33333333</p>', 9, '2222', 'undefined', NULL, '2014-05-25 19:39:46', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (11, 'biaotyi111', 'Public/upload/thumb_1401018149.jpg', '<p>asddddddddddddddddddd</p>', 10, 'asdasdada', '', NULL, '2014-05-25 19:42:51', NULL, NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (12, '1111', 'Public/upload/thumb_1401019938.jpg', '<p>4444444</p>', 11, '333333', '55555', NULL, '2014-05-25 20:12:27', 'yes', '2222');
INSERT INTO `weimart_wechat_media_list` VALUES (13, '123133333', 'Public/upload/thumb_1401020023.jpg', '<p>123333333333333</p>', 12, '', '', NULL, '2014-05-25 20:14:02', 'yes', '33321332123');
INSERT INTO `weimart_wechat_media_list` VALUES (14, '标题123123131', 'Public/upload/thumb_1401020037.jpg', '<p>12333333333333</p>', 12, '', '', NULL, '2014-05-25 20:14:02', 'yes', '1222222222222222');
INSERT INTO `weimart_wechat_media_list` VALUES (15, '12312313131111', 'Public/upload/thumb_1401020256.jpg', '<p>11111111111</p>', 13, '11111111', '11111111111', NULL, '2014-05-25 20:18:04', 'yes', '123123131311111');
INSERT INTO `weimart_wechat_media_list` VALUES (16, '标题1231231', 'Public/upload/thumb_1401020277.jpg', '<p>12312312313</p>', 13, '123123131', '1111111111111', NULL, '2014-05-25 20:18:04', 'yes', '1231231');
INSERT INTO `weimart_wechat_media_list` VALUES (127, '测试的1', NULL, NULL, 111, NULL, NULL, NULL, '2014-05-26 00:08:16', 'test', NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (128, '测试的2', NULL, NULL, 111, NULL, NULL, NULL, '2014-05-26 00:09:22', 'test', NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (129, '测试的3', NULL, NULL, 111, NULL, NULL, NULL, '2014-05-26 00:09:22', 'test', NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (130, '测试的22', NULL, NULL, 111, NULL, NULL, NULL, '2014-05-26 00:13:12', 'test', NULL);
INSERT INTO `weimart_wechat_media_list` VALUES (131, '测试的333', NULL, NULL, 111, NULL, NULL, NULL, '2014-05-26 00:13:12', 'test', NULL);

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_wechat_menu_first`
-- 

CREATE TABLE `weimart_wechat_menu_first` (
  `menu_id` int(11) NOT NULL auto_increment COMMENT '一级菜单的id',
  `menu_name` varchar(16) NOT NULL COMMENT '一级菜单的名称',
  `menu_type` varchar(8) default NULL,
  `menu_key` varchar(128) default NULL COMMENT '一级菜单的key',
  `menu_url` varchar(1024) default NULL,
  `menu_state` varchar(8) NOT NULL,
  `create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 导出表中的数据 `weimart_wechat_menu_first`
-- 

INSERT INTO `weimart_wechat_menu_first` VALUES (12, '进入百度', 'url', '67832b5d86a03e06e9dc82fd49211382', 'http://www.baidu.com', '', '2015-03-22 16:52:41');
INSERT INTO `weimart_wechat_menu_first` VALUES (13, '敬请期待', NULL, 'ffd4f2be8653d7175572f14e5a7e8fbe', NULL, '', '2015-03-22 16:53:04');
INSERT INTO `weimart_wechat_menu_first` VALUES (14, '测试', 'text', '793d0983fa4ea4ff6918a835d3b2a393', 'www', '', '2015-03-22 22:34:28');

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_wechat_menu_second`
-- 

CREATE TABLE `weimart_wechat_menu_second` (
  `menu_id` int(11) NOT NULL auto_increment COMMENT '二级菜单的id',
  `menu_name` varchar(16) NOT NULL COMMENT '二级菜单的名称',
  `menu_type` varchar(8) default NULL COMMENT '返回的数据类型',
  `menu_key` varchar(128) NOT NULL COMMENT '二级菜单的key',
  `menu_url` varchar(1024) default NULL,
  `menu_first_id` int(11) NOT NULL COMMENT '所属一级菜单的id',
  `menu_state` varchar(8) NOT NULL,
  PRIMARY KEY  (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `weimart_wechat_menu_second`
-- 

INSERT INTO `weimart_wechat_menu_second` VALUES (1, '菜单', 'url', '18af7679535efb8bdf925e9c58878bdc', 'http://www.baidu.com', 1, '');
INSERT INTO `weimart_wechat_menu_second` VALUES (3, '看看1', 'text', '289f1d13de27d7ddffbf529a8339dccf', NULL, 1, '');
INSERT INTO `weimart_wechat_menu_second` VALUES (4, '逛逛1', 'url', 'fbe1400c1b99f2ed6fff8df0c95ab299', 'http://', 1, '');
INSERT INTO `weimart_wechat_menu_second` VALUES (5, '222', NULL, '357c55fdf87e3bb43fb282825da36677', NULL, 7, '');
INSERT INTO `weimart_wechat_menu_second` VALUES (6, '132', 'text', '69b2ed523c71033dd766eada03f5dcbd', NULL, 1, '');
INSERT INTO `weimart_wechat_menu_second` VALUES (7, '12312', 'text', '3e74f017e236eb3903a2bcd035981ca2', NULL, 8, '');
INSERT INTO `weimart_wechat_menu_second` VALUES (8, '55', NULL, 'af1d467130ec7721022e27dd5553299e', NULL, 8, '');
INSERT INTO `weimart_wechat_menu_second` VALUES (15, 'ccc', NULL, '060a373e86564fb44fcb9de60ad4d5dd', NULL, 14, '');
INSERT INTO `weimart_wechat_menu_second` VALUES (14, 'aaac', 'url', 'bf02d45be60d089ec75e017da69d44a0', '12345qwee', 14, '');

-- --------------------------------------------------------

-- 
-- 表的结构 `weimart_wechat_msg_list`
-- 

CREATE TABLE `weimart_wechat_msg_list` (
  `msg_id` int(11) NOT NULL auto_increment,
  `msg_type` varchar(11) collate utf8_unicode_ci default NULL,
  `msg_key` varchar(128) collate utf8_unicode_ci default '',
  `msg_keyword` text collate utf8_unicode_ci,
  `msg_text` text collate utf8_unicode_ci,
  `msg_is_deleted` int(8) NOT NULL default '0',
  `msg_create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `msg_author` varchar(16) collate utf8_unicode_ci default NULL,
  `msg_head_in_content` varchar(8) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`msg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=146 ;

-- 
-- 导出表中的数据 `weimart_wechat_msg_list`
-- 

INSERT INTO `weimart_wechat_msg_list` VALUES (114, 'media', '289f1d13de27d7ddffbf529a8339dccf', NULL, '879789aaa', 0, '2015-01-28 21:44:37', '金口难开', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES (2, 'text', '947c8e6f636e9a71580f9cc2fb889e7d', NULL, '12312313\n工会会', 0, '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (113, 'media', 'b06ac5869cb56b3e6910f14525b38357', NULL, '就这么挣？', 0, '2014-09-16 23:06:08', '作者', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES (112, 'media', '0f3dc9d6a883762732d14da829cea2b5', NULL, NULL, 0, '2014-05-26 13:31:50', '123123', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES (5, 'media', '2aed2d8b15d815dbe9d20c71024b2ef6', NULL, NULL, 0, '2014-05-17 19:59:16', '4444444444444444', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES (6, 'media', 'c5dfe7cab10cd19b84ae1b012043dab5', NULL, NULL, 0, '2014-05-17 19:59:50', 'asdnjkasndkjas', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES (7, 'media', 'e43b434450bc497401bab47772219ab3', NULL, NULL, 0, '2014-05-22 20:30:48', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (8, 'media', 'ce881724929030f54b4a323940f2e486', NULL, NULL, 0, '2014-05-22 20:45:45', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (9, 'media', 'cb0a5012aa3e30682864ec0a3fa270b3', NULL, NULL, 0, '2014-05-25 19:41:43', '123asdasd', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES (10, 'media', 'b8ba65d009256125e4801a74087415e6', NULL, NULL, 0, '2014-05-25 19:42:36', 'asdasda', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES (11, 'media', 'c5dfe7cab10cd19b84ae1b012043dab5', NULL, NULL, 0, '2014-05-25 20:12:27', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (12, 'media', 'c5dfe7cab10cd19b84ae1b012043dab5', NULL, NULL, 0, '2014-05-25 20:14:02', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (13, 'media', 'd232aac45d3ec3a3db9c5e5f8e68e26c', NULL, NULL, 0, '2014-05-25 20:18:04', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (14, 'media', '41c0c0bfe7c0898eacd6c02dd590f1a0', NULL, '我的文字的内容', 0, '2014-05-26 13:30:33', 'testauthor', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES (111, NULL, 'test_key', NULL, 'neir', 0, '2014-05-26 00:07:09', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (115, 'text', 'fbe1400c1b99f2ed6fff8df0c95ab299', NULL, '444555666777888111', 0, '2015-02-01 15:51:35', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (116, 'text', '18af7679535efb8bdf925e9c58878bdc', NULL, '111334455', 0, '2015-02-01 23:05:11', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (117, 'text', '2a8310e01cd76fc48a6ff2ac017e1cb1', NULL, '111', 0, '2015-02-24 22:58:56', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (118, 'text', '2a8310e01cd76fc48a6ff2ac017e1cb1', NULL, '111', 0, '2015-02-24 22:59:22', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (119, 'text', '2a8310e01cd76fc48a6ff2ac017e1cb1', NULL, '456456', 0, '2015-03-17 21:47:56', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (120, 'text', '3e74f017e236eb3903a2bcd035981ca2', NULL, '1231qew', 0, '2015-03-17 21:48:23', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (121, 'text', 'b37668d596fc4a0de5d95ce73ca8cf5a', NULL, '12321313', 0, '2015-03-22 17:05:40', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (138, NULL, '', '测试回复', '1111', 0, '2015-04-05 23:51:39', NULL, NULL);
INSERT INTO `weimart_wechat_msg_list` VALUES (139, 'custom_text', 'bbf23089f8c37fb78c11f71ed752d1ca', 'zhuyunxiang', 'ceshi', 1, '2015-04-05 23:52:58', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (140, 'custom_text', '347977b7981653a89ac779c3ec2cbcc2', 'qweqwe', '请问请问', 1, '2015-04-06 00:15:18', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (141, 'custom_text', 'e14f7775f66d89ddf200529bd2809fb7', '12312', '1231', 1, '2015-04-06 00:15:03', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (142, 'custom_text', '2537878bac52483ac58924be03c0d40e', 'zyx', 'qqq', 1, '2015-04-06 00:23:14', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (143, 'custom_text', 'bd9d51aca2e65da2c06c78377e2208c4', '12', '12313', 1, '2015-04-06 00:27:07', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (144, 'custom_text', '0a0af4f865ee0ebd55e57c2af7250791', '1,2,3,qwe,qwe,qwe,', 'eqeqeq', 1, '2015-04-06 00:28:24', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES (145, 'custom_text', '716566ee268b40ff4d17ecb5f020354c', '123,123213,123,123,', '12321', 1, '2015-04-06 01:09:07', '', '');
