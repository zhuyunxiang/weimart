/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : weimart

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2015-02-15 00:33:28
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `weimart_comment_content`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_comment_content`;
CREATE TABLE `weimart_comment_content` (
  `comment_id` int(11) NOT NULL,
  `comment_floor` int(11) default NULL,
  `comment_content` text,
  `comment_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`comment_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_comment_content
-- ----------------------------
INSERT INTO `weimart_comment_content` VALUES ('1', '1', 'this is comment', '2014-10-26 22:05:13', '1');

-- ----------------------------
-- Table structure for `weimart_permission`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_permission`;
CREATE TABLE `weimart_permission` (
  `permission_id` int(11) NOT NULL auto_increment,
  `permission_name` varchar(45) default NULL,
  `permission_key` varchar(45) default NULL,
  PRIMARY KEY  (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_permission
-- ----------------------------
INSERT INTO `weimart_permission` VALUES ('1', '登陆', 'login');
INSERT INTO `weimart_permission` VALUES ('2', '用户管理', 'user_admin');

-- ----------------------------
-- Table structure for `weimart_product`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_product`;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_product
-- ----------------------------
INSERT INTO `weimart_product` VALUES ('1', '一双鞋', 'key', '介绍', '3', '2', '2', '2014-10-22 21:31:12', '0');

-- ----------------------------
-- Table structure for `weimart_product_type`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_product_type`;
CREATE TABLE `weimart_product_type` (
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_product_type
-- ----------------------------
INSERT INTO `weimart_product_type` VALUES ('1', '1');
INSERT INTO `weimart_product_type` VALUES ('1', '2');

-- ----------------------------
-- Table structure for `weimart_ptype`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_ptype`;
CREATE TABLE `weimart_ptype` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(45) default NULL,
  `type_key` varchar(45) default NULL,
  `super_type_id` int(11) default NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_ptype
-- ----------------------------
INSERT INTO `weimart_ptype` VALUES ('1', 'nan', '1233', null);
INSERT INTO `weimart_ptype` VALUES ('2', 'nv', '123', '1');

-- ----------------------------
-- Table structure for `weimart_role`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_role`;
CREATE TABLE `weimart_role` (
  `role_id` int(11) NOT NULL auto_increment,
  `role_name` varchar(45) default NULL,
  `role_key` varchar(45) default NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_role
-- ----------------------------
INSERT INTO `weimart_role` VALUES ('1', '系统管理员', 'admin');
INSERT INTO `weimart_role` VALUES ('2', '游客', 'tourist');
INSERT INTO `weimart_role` VALUES ('3', '会员', 'golden');
INSERT INTO `weimart_role` VALUES ('4', '店主', 'keeper');
INSERT INTO `weimart_role` VALUES ('9', 'test', '123');
INSERT INTO `weimart_role` VALUES ('12', 'test111', '123');
INSERT INTO `weimart_role` VALUES ('13', 'test1112', '123');
INSERT INTO `weimart_role` VALUES ('14', 'test1111', '123');

-- ----------------------------
-- Table structure for `weimart_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_role_permission`;
CREATE TABLE `weimart_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_role_permission
-- ----------------------------
INSERT INTO `weimart_role_permission` VALUES ('1', '1');
INSERT INTO `weimart_role_permission` VALUES ('1', '2');

-- ----------------------------
-- Table structure for `weimart_shop`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_shop`;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_shop
-- ----------------------------
INSERT INTO `weimart_shop` VALUES ('1', '我的微店', '描述', '宣传标语', '简介', 'Myshop', '1', '2014-10-22 22:49:06', '0000-00-00 00:00:00', '0', '1', '0000-00-00 00:00:00');
INSERT INTO `weimart_shop` VALUES ('2', '我的微2', '描述', '宣传标语', '简介', 'Myshop', '1', '2014-10-22 22:51:54', '0000-00-00 00:00:00', '0', '1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `weimart_shop_product`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_shop_product`;
CREATE TABLE `weimart_shop_product` (
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`shop_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_shop_product
-- ----------------------------
INSERT INTO `weimart_shop_product` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `weimart_shop_type`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_shop_type`;
CREATE TABLE `weimart_shop_type` (
  `shop_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY  (`shop_id`,`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_shop_type
-- ----------------------------
INSERT INTO `weimart_shop_type` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `weimart_stype`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_stype`;
CREATE TABLE `weimart_stype` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(45) default NULL,
  `type_key` varchar(45) default NULL,
  `super_type_id` int(11) NOT NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_stype
-- ----------------------------
INSERT INTO `weimart_stype` VALUES ('1', '鞋类', 'shoe', '0');
INSERT INTO `weimart_stype` VALUES ('2', '慢跑鞋', 'sport_shoe', '1');

-- ----------------------------
-- Table structure for `weimart_user`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_user`;
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
) ENGINE=MyISAM AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weimart_user
-- ----------------------------
INSERT INTO `weimart_user` VALUES ('1', 'zyx', 'zhuyunxiang', null, null, '96E79218965EB72C92A549DD5A330112', null, null, null, null, null, null, null, '2015-01-03 23:08:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for `weimart_user_comment_product`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_user_comment_product`;
CREATE TABLE `weimart_user_comment_product` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_user_comment_product
-- ----------------------------
INSERT INTO `weimart_user_comment_product` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `weimart_user_comment_shop`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_user_comment_shop`;
CREATE TABLE `weimart_user_comment_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_user_comment_shop
-- ----------------------------
INSERT INTO `weimart_user_comment_shop` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `weimart_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_user_role`;
CREATE TABLE `weimart_user_role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_user_role
-- ----------------------------
INSERT INTO `weimart_user_role` VALUES ('13', '1');
INSERT INTO `weimart_user_role` VALUES ('13', '213');
INSERT INTO `weimart_user_role` VALUES ('13', '214');
INSERT INTO `weimart_user_role` VALUES ('13', '215');
INSERT INTO `weimart_user_role` VALUES ('13', '216');
INSERT INTO `weimart_user_role` VALUES ('13', '217');
INSERT INTO `weimart_user_role` VALUES ('13', '218');

-- ----------------------------
-- Table structure for `weimart_user_shop`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_user_shop`;
CREATE TABLE `weimart_user_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_user_shop
-- ----------------------------
INSERT INTO `weimart_user_shop` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `weimart_user_visit_product`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_user_visit_product`;
CREATE TABLE `weimart_user_visit_product` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `visit_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `visit_hidden` varchar(45) default NULL,
  PRIMARY KEY  (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_user_visit_product
-- ----------------------------
INSERT INTO `weimart_user_visit_product` VALUES ('1', '1', '2014-10-26 22:47:08', null);

-- ----------------------------
-- Table structure for `weimart_user_visit_shop`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_user_visit_shop`;
CREATE TABLE `weimart_user_visit_shop` (
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `visit_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `visit_hidden` varchar(45) default NULL,
  PRIMARY KEY  (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_user_visit_shop
-- ----------------------------
INSERT INTO `weimart_user_visit_shop` VALUES ('1', '1', '2014-10-26 22:41:55', '');

-- ----------------------------
-- Table structure for `weimart_wechat_info`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_wechat_info`;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_wechat_info
-- ----------------------------
INSERT INTO `weimart_wechat_info` VALUES ('1', '122', '444', '555', '66', '77', '2', '2015-02-14 10:40:08');
INSERT INTO `weimart_wechat_info` VALUES ('2', '校际圈', '111111', 'wx713da7bfd9175724', '101fdc6b6f08f76505b98a84ef0111dc', '11111', '1', '2015-02-14 10:40:21');

-- ----------------------------
-- Table structure for `weimart_wechat_media_list`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_wechat_media_list`;
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
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weimart_wechat_media_list
-- ----------------------------
INSERT INTO `weimart_wechat_media_list` VALUES ('132', 'tetetet', 'Public/upload/thumb_1401082303.jpg', '<p>213131</p>', '112', '1231231', '1231231', null, '2014-05-26 13:31:50', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('2', '123', 'Public/upload/thumb_1400327975.jpg', '<p>的说法是的范德萨发大水</p>', '3', '玩儿完任务', '11111555', null, '2014-05-17 20:06:10', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('3', '1233333', 'Public/upload/thumb_1400327804.jpg', '<p>3333333333333</p>', '4', '5555555555555', 'undefined', null, '2014-05-17 19:56:57', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('4', '44444', 'Public/upload/thumb_1400327951.jpg', '<p>4444444444444444</p><p>44444444</p>', '5', '', '', null, '2014-05-17 19:59:16', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('5', 'sjdklasjdlasd', 'Public/upload/thumb_1401018192.jpg', '<p>asdgajsdhsjad</p><p>爱上大声地</p>', '6', 'asdhnakjsdna', 'www.baidu.com', null, '2014-05-25 19:43:14', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('6', '标题一', 'Public/upload/thumb_1400761803.jpg', '<p>正文一</p>', '7', '摘要一', '网址一', null, '2014-05-22 20:30:48', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('7', '标题we', 'Public/upload/thumb_1400761832.jpg', '<p>正文二</p>', '7', '摘要二', '滴孩子we', null, '2014-05-22 20:30:48', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('8', '标题一11', 'Public/upload/thumb_1400762708.jpg', '<p>正文意义</p>', '8', '摘要111', '地址纸质', null, '2014-05-22 20:45:45', 'yes', '作者一11');
INSERT INTO `weimart_wechat_media_list` VALUES ('9', '标题二阿斯达', null, '<p>啊实打实大声道</p>', '8', '爱上大声地', '啊啊十大', null, '2014-05-22 20:45:45', 'yes', '爱上大声地');
INSERT INTO `weimart_wechat_media_list` VALUES ('10', 'biaoti', 'Public/upload/thumb_1401017978.jpg', '<p>33333333</p>', '9', '2222', 'undefined', null, '2014-05-25 19:39:46', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('11', 'biaotyi111', 'Public/upload/thumb_1401018149.jpg', '<p>asddddddddddddddddddd</p>', '10', 'asdasdada', '', null, '2014-05-25 19:42:51', null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('12', '1111', 'Public/upload/thumb_1401019938.jpg', '<p>4444444</p>', '11', '333333', '55555', null, '2014-05-25 20:12:27', 'yes', '2222');
INSERT INTO `weimart_wechat_media_list` VALUES ('13', '123133333', 'Public/upload/thumb_1401020023.jpg', '<p>123333333333333</p>', '12', '', '', null, '2014-05-25 20:14:02', 'yes', '33321332123');
INSERT INTO `weimart_wechat_media_list` VALUES ('14', '标题123123131', 'Public/upload/thumb_1401020037.jpg', '<p>12333333333333</p>', '12', '', '', null, '2014-05-25 20:14:02', 'yes', '1222222222222222');
INSERT INTO `weimart_wechat_media_list` VALUES ('15', '12312313131111', 'Public/upload/thumb_1401020256.jpg', '<p>11111111111</p>', '13', '11111111', '11111111111', null, '2014-05-25 20:18:04', 'yes', '123123131311111');
INSERT INTO `weimart_wechat_media_list` VALUES ('16', '标题1231231', 'Public/upload/thumb_1401020277.jpg', '<p>12312312313</p>', '13', '123123131', '1111111111111', null, '2014-05-25 20:18:04', 'yes', '1231231');
INSERT INTO `weimart_wechat_media_list` VALUES ('127', '测试的1', null, null, '111', null, null, null, '2014-05-26 00:08:16', 'test', null);
INSERT INTO `weimart_wechat_media_list` VALUES ('128', '测试的2', null, null, '111', null, null, null, '2014-05-26 00:09:22', 'test', null);
INSERT INTO `weimart_wechat_media_list` VALUES ('129', '测试的3', null, null, '111', null, null, null, '2014-05-26 00:09:22', 'test', null);
INSERT INTO `weimart_wechat_media_list` VALUES ('130', '测试的22', null, null, '111', null, null, null, '2014-05-26 00:13:12', 'test', null);
INSERT INTO `weimart_wechat_media_list` VALUES ('131', '测试的333', null, null, '111', null, null, null, '2014-05-26 00:13:12', 'test', null);

-- ----------------------------
-- Table structure for `weimart_wechat_menu_first`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_wechat_menu_first`;
CREATE TABLE `weimart_wechat_menu_first` (
  `menu_id` int(11) NOT NULL auto_increment COMMENT '一级菜单的id',
  `menu_name` varchar(16) NOT NULL COMMENT '一级菜单的名称',
  `menu_type` varchar(8) default NULL,
  `menu_key` varchar(128) default NULL COMMENT '一级菜单的key',
  `menu_url` varchar(1024) default NULL,
  `menu_state` varchar(8) NOT NULL,
  `create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_wechat_menu_first
-- ----------------------------
INSERT INTO `weimart_wechat_menu_first` VALUES ('1', '购物', null, 'a2b080b5636423adddb84f8fcc5fe6af', null, '', '2015-02-15 00:10:32');
INSERT INTO `weimart_wechat_menu_first` VALUES ('7', '你是谁啊啊', null, 'b6727aa14dc5695ffde1b7a5cd01193d', null, '', '2015-01-20 21:50:51');

-- ----------------------------
-- Table structure for `weimart_wechat_menu_second`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_wechat_menu_second`;
CREATE TABLE `weimart_wechat_menu_second` (
  `menu_id` int(11) NOT NULL auto_increment COMMENT '二级菜单的id',
  `menu_name` varchar(16) NOT NULL COMMENT '二级菜单的名称',
  `menu_type` varchar(8) default NULL COMMENT '返回的数据类型',
  `menu_key` varchar(128) NOT NULL COMMENT '二级菜单的key',
  `menu_url` varchar(1024) default NULL,
  `menu_first_id` int(11) NOT NULL COMMENT '所属一级菜单的id',
  `menu_state` varchar(8) NOT NULL,
  PRIMARY KEY  (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_wechat_menu_second
-- ----------------------------
INSERT INTO `weimart_wechat_menu_second` VALUES ('1', '菜单', 'url', '18af7679535efb8bdf925e9c58878bdc', null, '1', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('3', '看看', 'text', '289f1d13de27d7ddffbf529a8339dccf', null, '1', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('4', '逛逛', null, 'fbe1400c1b99f2ed6fff8df0c95ab299', null, '1', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('5', '222', null, '357c55fdf87e3bb43fb282825da36677', null, '7', '');

-- ----------------------------
-- Table structure for `weimart_wechat_msg_list`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_wechat_msg_list`;
CREATE TABLE `weimart_wechat_msg_list` (
  `msg_id` int(11) NOT NULL auto_increment,
  `msg_type` varchar(8) collate utf8_unicode_ci default NULL,
  `msg_key` varchar(128) collate utf8_unicode_ci NOT NULL default '',
  `msg_text` varchar(10000) collate utf8_unicode_ci default NULL,
  `msg_is_deleted` varchar(8) collate utf8_unicode_ci NOT NULL,
  `msg_create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `msg_author` varchar(16) collate utf8_unicode_ci default NULL,
  `msg_head_in_content` varchar(8) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`msg_id`,`msg_key`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weimart_wechat_msg_list
-- ----------------------------
INSERT INTO `weimart_wechat_msg_list` VALUES ('114', 'media', '289f1d13de27d7ddffbf529a8339dccf', '879789aaa', '', '2015-01-28 21:44:37', '金口难开', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES ('2', 'text', '947c8e6f636e9a71580f9cc2fb889e7d', '12312313\n工会会', '', '0000-00-00 00:00:00', null, null);
INSERT INTO `weimart_wechat_msg_list` VALUES ('113', 'media', 'b06ac5869cb56b3e6910f14525b38357', '就这么挣？', '', '2014-09-16 23:06:08', '作者', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES ('112', 'media', '0f3dc9d6a883762732d14da829cea2b5', null, '', '2014-05-26 13:31:50', '123123', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES ('5', 'media', '2aed2d8b15d815dbe9d20c71024b2ef6', null, '', '2014-05-17 19:59:16', '4444444444444444', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES ('6', 'media', 'c5dfe7cab10cd19b84ae1b012043dab5', null, '', '2014-05-17 19:59:50', 'asdnjkasndkjas', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES ('7', 'media', 'e43b434450bc497401bab47772219ab3', null, '', '2014-05-22 20:30:48', null, null);
INSERT INTO `weimart_wechat_msg_list` VALUES ('8', 'media', 'ce881724929030f54b4a323940f2e486', null, '', '2014-05-22 20:45:45', null, null);
INSERT INTO `weimart_wechat_msg_list` VALUES ('9', 'media', 'cb0a5012aa3e30682864ec0a3fa270b3', null, '', '2014-05-25 19:41:43', '123asdasd', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES ('10', 'media', 'b8ba65d009256125e4801a74087415e6', null, '', '2014-05-25 19:42:36', 'asdasda', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES ('11', 'media', 'c5dfe7cab10cd19b84ae1b012043dab5', null, '', '2014-05-25 20:12:27', null, null);
INSERT INTO `weimart_wechat_msg_list` VALUES ('12', 'media', 'c5dfe7cab10cd19b84ae1b012043dab5', null, '', '2014-05-25 20:14:02', null, null);
INSERT INTO `weimart_wechat_msg_list` VALUES ('13', 'media', 'd232aac45d3ec3a3db9c5e5f8e68e26c', null, '', '2014-05-25 20:18:04', null, null);
INSERT INTO `weimart_wechat_msg_list` VALUES ('14', 'media', '41c0c0bfe7c0898eacd6c02dd590f1a0', '我的文字的内容', '', '2014-05-26 13:30:33', 'testauthor', 'yes');
INSERT INTO `weimart_wechat_msg_list` VALUES ('111', null, 'test_key', 'neir', '', '2014-05-26 00:07:09', null, null);
INSERT INTO `weimart_wechat_msg_list` VALUES ('115', 'text', 'fbe1400c1b99f2ed6fff8df0c95ab299', '444555666777', '', '2015-02-01 15:51:35', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES ('116', 'text', '18af7679535efb8bdf925e9c58878bdc', '1113344', '', '2015-02-01 23:05:11', '', '');
