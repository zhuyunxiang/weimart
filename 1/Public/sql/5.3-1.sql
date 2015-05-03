/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : weimart

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2015-05-03 23:56:34
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
-- Table structure for `weimart_log_list`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_log_list`;
CREATE TABLE `weimart_log_list` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(20) default NULL,
  `content` text,
  `ip` varchar(20) default NULL,
  `time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_log_list
-- ----------------------------
INSERT INTO `weimart_log_list` VALUES ('28', '驱蚊器', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 13:50:49');
INSERT INTO `weimart_log_list` VALUES ('29', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-19 15:06:38');
INSERT INTO `weimart_log_list` VALUES ('30', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-19 15:07:05');
INSERT INTO `weimart_log_list` VALUES ('31', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-19 15:07:20');
INSERT INTO `weimart_log_list` VALUES ('32', '请问天天', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:10:10');
INSERT INTO `weimart_log_list` VALUES ('33', '123555', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:14:48');
INSERT INTO `weimart_log_list` VALUES ('34', null, '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:15:45');
INSERT INTO `weimart_log_list` VALUES ('35', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-19 15:20:57');
INSERT INTO `weimart_log_list` VALUES ('36', 'qwe rew', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:23:51');
INSERT INTO `weimart_log_list` VALUES ('37', 'qwe rew', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:24:04');
INSERT INTO `weimart_log_list` VALUES ('38', '123444', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:27:01');
INSERT INTO `weimart_log_list` VALUES ('39', '123444', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:27:18');
INSERT INTO `weimart_log_list` VALUES ('40', 'qweqw', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:34:32');
INSERT INTO `weimart_log_list` VALUES ('41', 'qweqw', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:34:43');
INSERT INTO `weimart_log_list` VALUES ('42', 'qweqweee', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:35:46');
INSERT INTO `weimart_log_list` VALUES ('43', 'qweqweee', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:35:56');
INSERT INTO `weimart_log_list` VALUES ('44', 'qweqwqw', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 15:37:50');
INSERT INTO `weimart_log_list` VALUES ('45', 'qweqwqw', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-19 15:37:58');
INSERT INTO `weimart_log_list` VALUES ('46', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:20');
INSERT INTO `weimart_log_list` VALUES ('47', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:33');
INSERT INTO `weimart_log_list` VALUES ('48', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:39');
INSERT INTO `weimart_log_list` VALUES ('49', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:39');
INSERT INTO `weimart_log_list` VALUES ('50', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:39');
INSERT INTO `weimart_log_list` VALUES ('51', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:40');
INSERT INTO `weimart_log_list` VALUES ('52', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 16:23:40');
INSERT INTO `weimart_log_list` VALUES ('53', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-19 16:34:19');
INSERT INTO `weimart_log_list` VALUES ('54', '12312313333', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-19 20:15:03');
INSERT INTO `weimart_log_list` VALUES ('55', 'zyx', '删除用户成功 [Delete User Success ID:220]', '127.0.0.1', '2015-04-19 22:38:04');
INSERT INTO `weimart_log_list` VALUES ('56', 'zyx', '删除用户成功 [Delete User Success ID:221]', '127.0.0.1', '2015-04-19 22:39:22');
INSERT INTO `weimart_log_list` VALUES ('57', 'zyx', '删除用户成功 [Delete User Success ID:222]', '127.0.0.1', '2015-04-19 22:39:25');
INSERT INTO `weimart_log_list` VALUES ('58', 'zyx', '删除用户成功 [Delete User Success ID:223]', '127.0.0.1', '2015-04-19 22:39:28');
INSERT INTO `weimart_log_list` VALUES ('59', 'zyx', '删除用户成功 [Delete User Success ID:224]', '127.0.0.1', '2015-04-19 22:39:31');
INSERT INTO `weimart_log_list` VALUES ('60', 'zyx', '删除用户成功 [Delete User Success ID:225]', '127.0.0.1', '2015-04-19 22:39:34');
INSERT INTO `weimart_log_list` VALUES ('61', 'zyx', '删除用户成功 [Delete User Success ID:226]', '127.0.0.1', '2015-04-19 22:39:37');
INSERT INTO `weimart_log_list` VALUES ('62', 'zyx', '删除用户成功 [Delete User Success ID:227]', '127.0.0.1', '2015-04-19 22:39:39');
INSERT INTO `weimart_log_list` VALUES ('63', 'zyx', '删除用户成功 [Delete User Success ID:228]', '127.0.0.1', '2015-04-19 22:39:42');
INSERT INTO `weimart_log_list` VALUES ('64', 'zyx', '删除用户成功 [Delete User Success ID:229]', '127.0.0.1', '2015-04-19 22:39:45');
INSERT INTO `weimart_log_list` VALUES ('65', 'zyx', '删除用户成功 [Delete User Success ID:230]', '127.0.0.1', '2015-04-19 22:39:47');
INSERT INTO `weimart_log_list` VALUES ('66', 'zyx', '删除用户成功 [Delete User Success ID:231]', '127.0.0.1', '2015-04-19 22:39:49');
INSERT INTO `weimart_log_list` VALUES ('67', 'zyx', '删除用户成功 [Delete User Success ID:232]', '127.0.0.1', '2015-04-19 22:39:52');
INSERT INTO `weimart_log_list` VALUES ('68', 'zyx', '删除用户成功 [Delete User Success ID:233]', '127.0.0.1', '2015-04-19 22:39:55');
INSERT INTO `weimart_log_list` VALUES ('69', 'zyx', '删除用户成功 [Delete User Success ID:240]', '127.0.0.1', '2015-04-19 22:40:01');
INSERT INTO `weimart_log_list` VALUES ('70', 'zyx', '删除用户成功 [Delete User Success ID:239]', '127.0.0.1', '2015-04-19 22:40:03');
INSERT INTO `weimart_log_list` VALUES ('71', 'zyx', '删除用户成功 [Delete User Success ID:238]', '127.0.0.1', '2015-04-19 22:40:06');
INSERT INTO `weimart_log_list` VALUES ('72', 'zyx', '删除用户成功 [Delete User Success ID:237]', '127.0.0.1', '2015-04-19 22:40:10');
INSERT INTO `weimart_log_list` VALUES ('73', 'zyx', '删除用户成功 [Delete User Success ID:236]', '127.0.0.1', '2015-04-19 22:40:17');
INSERT INTO `weimart_log_list` VALUES ('74', 'zyx', '删除用户成功 [Delete User Success ID:1]', '127.0.0.1', '2015-04-19 22:46:02');
INSERT INTO `weimart_log_list` VALUES ('75', 'zyx', '删除用户成功 [Delete User Success ID:235]', '127.0.0.1', '2015-04-19 22:46:05');
INSERT INTO `weimart_log_list` VALUES ('76', 'zyx', '删除用户成功 [Delete User Success ID:1]', '127.0.0.1', '2015-04-19 22:46:55');
INSERT INTO `weimart_log_list` VALUES ('77', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 22:47:17');
INSERT INTO `weimart_log_list` VALUES ('78', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 22:47:18');
INSERT INTO `weimart_log_list` VALUES ('79', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-04-19 22:47:18');
INSERT INTO `weimart_log_list` VALUES ('80', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-19 22:47:31');
INSERT INTO `weimart_log_list` VALUES ('81', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-22 23:18:34');
INSERT INTO `weimart_log_list` VALUES ('82', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-22 23:32:23');
INSERT INTO `weimart_log_list` VALUES ('83', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:40:44');
INSERT INTO `weimart_log_list` VALUES ('84', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:44:58');
INSERT INTO `weimart_log_list` VALUES ('85', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-23 20:45:01');
INSERT INTO `weimart_log_list` VALUES ('86', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-04-23 20:45:02');
INSERT INTO `weimart_log_list` VALUES ('87', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:46:33');
INSERT INTO `weimart_log_list` VALUES ('88', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:47:43');
INSERT INTO `weimart_log_list` VALUES ('89', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:47:57');
INSERT INTO `weimart_log_list` VALUES ('90', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-23 20:48:19');
INSERT INTO `weimart_log_list` VALUES ('91', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:48:30');
INSERT INTO `weimart_log_list` VALUES ('92', 'zyx11', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 20:48:36');
INSERT INTO `weimart_log_list` VALUES ('93', '111111', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-23 21:54:22');
INSERT INTO `weimart_log_list` VALUES ('94', '111111', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 21:54:43');
INSERT INTO `weimart_log_list` VALUES ('95', '111111', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-23 21:56:03');
INSERT INTO `weimart_log_list` VALUES ('96', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-26 22:43:59');
INSERT INTO `weimart_log_list` VALUES ('97', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-27 10:05:44');
INSERT INTO `weimart_log_list` VALUES ('98', 'zyx', '删除商品信息成功 [Delete Product Success ID:6]', '127.0.0.1', '2015-04-27 12:30:03');
INSERT INTO `weimart_log_list` VALUES ('99', 'zyx', '删除商品信息成功 [Delete Product Success ID:5]', '127.0.0.1', '2015-04-27 12:42:10');
INSERT INTO `weimart_log_list` VALUES ('100', 'zyx', '删除商品信息成功 [Delete Product Success ID:4]', '127.0.0.1', '2015-04-27 12:42:17');
INSERT INTO `weimart_log_list` VALUES ('101', 'zyx', '删除商品信息成功 [Delete Product Success ID:3]', '127.0.0.1', '2015-04-27 12:42:24');
INSERT INTO `weimart_log_list` VALUES ('102', 'zyx', '删除商品信息成功 [Delete Product Success ID:2]', '127.0.0.1', '2015-04-27 13:06:56');
INSERT INTO `weimart_log_list` VALUES ('103', 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-04-27 13:07:16');
INSERT INTO `weimart_log_list` VALUES ('104', 'xxx', '用户注册失败 [User Register Error] Detail:该邮箱已经注册!', '127.0.0.1', '2015-04-27 13:07:43');
INSERT INTO `weimart_log_list` VALUES ('105', '111', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-27 13:07:51');
INSERT INTO `weimart_log_list` VALUES ('106', '111', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-04-27 13:08:06');
INSERT INTO `weimart_log_list` VALUES ('107', null, '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-04-27 13:26:45');
INSERT INTO `weimart_log_list` VALUES ('108', null, '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-04-27 13:27:24');
INSERT INTO `weimart_log_list` VALUES ('109', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 00:28:00');
INSERT INTO `weimart_log_list` VALUES ('110', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 11:51:09');
INSERT INTO `weimart_log_list` VALUES ('111', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:34:26');
INSERT INTO `weimart_log_list` VALUES ('112', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:45:06');
INSERT INTO `weimart_log_list` VALUES ('113', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:49:00');
INSERT INTO `weimart_log_list` VALUES ('114', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:50:31');
INSERT INTO `weimart_log_list` VALUES ('115', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:51:24');
INSERT INTO `weimart_log_list` VALUES ('116', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:52:11');
INSERT INTO `weimart_log_list` VALUES ('117', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:54:53');
INSERT INTO `weimart_log_list` VALUES ('118', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:55:14');
INSERT INTO `weimart_log_list` VALUES ('119', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 15:56:46');
INSERT INTO `weimart_log_list` VALUES ('120', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 16:22:00');
INSERT INTO `weimart_log_list` VALUES ('121', 'zyx2', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-30 16:22:29');
INSERT INTO `weimart_log_list` VALUES ('122', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 20:28:29');
INSERT INTO `weimart_log_list` VALUES ('123', 'zyx3', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-04-30 20:33:33');
INSERT INTO `weimart_log_list` VALUES ('124', 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-04-30 21:02:37');
INSERT INTO `weimart_log_list` VALUES ('125', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 22:43:25');
INSERT INTO `weimart_log_list` VALUES ('126', 'zyx2', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-04-30 23:49:54');
INSERT INTO `weimart_log_list` VALUES ('127', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 00:03:04');
INSERT INTO `weimart_log_list` VALUES ('128', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 13:39:20');
INSERT INTO `weimart_log_list` VALUES ('129', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 13:41:53');
INSERT INTO `weimart_log_list` VALUES ('130', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 13:42:10');
INSERT INTO `weimart_log_list` VALUES ('131', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-01 13:43:55');
INSERT INTO `weimart_log_list` VALUES ('132', 'zyx2', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 13:43:59');
INSERT INTO `weimart_log_list` VALUES ('133', 'zyx2', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-01 14:43:59');
INSERT INTO `weimart_log_list` VALUES ('134', 'zyx2', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-01 14:45:13');
INSERT INTO `weimart_log_list` VALUES ('135', 'zyx2', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-01 14:46:30');
INSERT INTO `weimart_log_list` VALUES ('136', 'zyx2', '保存商品信息成功 [Save Product Success ID:Array]', '127.0.0.1', '2015-05-01 14:47:15');
INSERT INTO `weimart_log_list` VALUES ('137', 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-01 14:49:03');
INSERT INTO `weimart_log_list` VALUES ('138', 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-01 15:46:42');
INSERT INTO `weimart_log_list` VALUES ('139', 'zyx2', '保存商品信息成功 [Save Product Success ID:]', '127.0.0.1', '2015-05-01 15:51:51');
INSERT INTO `weimart_log_list` VALUES ('140', 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-01 15:52:24');
INSERT INTO `weimart_log_list` VALUES ('141', 'zyx2', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-01 15:52:40');
INSERT INTO `weimart_log_list` VALUES ('142', 'zyx2', '删除商品信息成功 [Delete Product Success ID:11]', '127.0.0.1', '2015-05-01 15:53:33');
INSERT INTO `weimart_log_list` VALUES ('143', 'zyx2', '删除商品信息成功 [Delete Product Success ID:12]', '127.0.0.1', '2015-05-01 15:53:35');
INSERT INTO `weimart_log_list` VALUES ('144', 'zyx2', '删除商品信息成功 [Delete Product Success ID:13]', '127.0.0.1', '2015-05-01 15:53:37');
INSERT INTO `weimart_log_list` VALUES ('145', 'zyx2', '删除商品信息成功 [Delete Product Success ID:15]', '127.0.0.1', '2015-05-01 15:54:03');
INSERT INTO `weimart_log_list` VALUES ('146', 'zyx2', '删除商品信息成功 [Delete Product Success ID:14]', '127.0.0.1', '2015-05-01 15:54:04');
INSERT INTO `weimart_log_list` VALUES ('147', 'zyx2', '删除商品信息成功 [Delete Product Success ID:10]', '127.0.0.1', '2015-05-01 15:54:06');
INSERT INTO `weimart_log_list` VALUES ('148', 'zyx2', '删除商品信息成功 [Delete Product Success ID:9]', '127.0.0.1', '2015-05-01 15:54:13');
INSERT INTO `weimart_log_list` VALUES ('149', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 16:00:32');
INSERT INTO `weimart_log_list` VALUES ('150', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 16:06:18');
INSERT INTO `weimart_log_list` VALUES ('151', 'zyx123', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-01 16:17:37');
INSERT INTO `weimart_log_list` VALUES ('152', 'zyx123', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-01 16:21:44');
INSERT INTO `weimart_log_list` VALUES ('153', '21321312', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-02 14:03:24');
INSERT INTO `weimart_log_list` VALUES ('154', '123456', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-02 14:05:40');
INSERT INTO `weimart_log_list` VALUES ('155', '12312313', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-02 14:08:38');
INSERT INTO `weimart_log_list` VALUES ('156', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:35:32');
INSERT INTO `weimart_log_list` VALUES ('157', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:38:08');
INSERT INTO `weimart_log_list` VALUES ('158', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:39:57');
INSERT INTO `weimart_log_list` VALUES ('159', 'xxx', '用户注册失败 [User Register Error] Detail:用户名已经存在!', '127.0.0.1', '2015-05-02 14:40:29');
INSERT INTO `weimart_log_list` VALUES ('160', 'xxx', '用户注册失败 [User Register Error] Detail:用户名已经存在!', '127.0.0.1', '2015-05-02 14:40:36');
INSERT INTO `weimart_log_list` VALUES ('161', '123123123111', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-02 14:40:43');
INSERT INTO `weimart_log_list` VALUES ('162', '123123123111', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 14:40:55');
INSERT INTO `weimart_log_list` VALUES ('163', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:41:12');
INSERT INTO `weimart_log_list` VALUES ('164', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:48:27');
INSERT INTO `weimart_log_list` VALUES ('165', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:48:51');
INSERT INTO `weimart_log_list` VALUES ('166', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:49:03');
INSERT INTO `weimart_log_list` VALUES ('167', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:50:17');
INSERT INTO `weimart_log_list` VALUES ('168', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:51:48');
INSERT INTO `weimart_log_list` VALUES ('169', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:54:14');
INSERT INTO `weimart_log_list` VALUES ('170', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 14:54:35');
INSERT INTO `weimart_log_list` VALUES ('171', null, '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 14:54:44');
INSERT INTO `weimart_log_list` VALUES ('172', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-02 15:03:27');
INSERT INTO `weimart_log_list` VALUES ('173', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-02 15:05:34');
INSERT INTO `weimart_log_list` VALUES ('174', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:30:10');
INSERT INTO `weimart_log_list` VALUES ('175', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:31:04');
INSERT INTO `weimart_log_list` VALUES ('176', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:31:49');
INSERT INTO `weimart_log_list` VALUES ('177', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:32:31');
INSERT INTO `weimart_log_list` VALUES ('178', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:32:36');
INSERT INTO `weimart_log_list` VALUES ('179', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:33:01');
INSERT INTO `weimart_log_list` VALUES ('180', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-02 15:33:21');
INSERT INTO `weimart_log_list` VALUES ('181', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:33:26');
INSERT INTO `weimart_log_list` VALUES ('182', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-02 15:34:18');
INSERT INTO `weimart_log_list` VALUES ('183', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:34:25');
INSERT INTO `weimart_log_list` VALUES ('184', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:35:32');
INSERT INTO `weimart_log_list` VALUES ('185', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:37:11');
INSERT INTO `weimart_log_list` VALUES ('186', 'xxx', '用户录入详细信息失败 [User Save Detail Error] Detail:', '127.0.0.1', '2015-05-02 15:37:44');
INSERT INTO `weimart_log_list` VALUES ('187', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:37:49');
INSERT INTO `weimart_log_list` VALUES ('188', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:38:02');
INSERT INTO `weimart_log_list` VALUES ('189', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-02 15:38:07');
INSERT INTO `weimart_log_list` VALUES ('190', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:34');
INSERT INTO `weimart_log_list` VALUES ('191', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:35');
INSERT INTO `weimart_log_list` VALUES ('192', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:36');
INSERT INTO `weimart_log_list` VALUES ('193', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:36');
INSERT INTO `weimart_log_list` VALUES ('194', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:41:36');
INSERT INTO `weimart_log_list` VALUES ('195', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:42:42');
INSERT INTO `weimart_log_list` VALUES ('196', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:42:47');
INSERT INTO `weimart_log_list` VALUES ('197', 'xxx', '用户登陆失败 [User Login Error]', '127.0.0.1', '2015-05-02 15:42:49');
INSERT INTO `weimart_log_list` VALUES ('198', 'zyx', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-03 10:52:53');
INSERT INTO `weimart_log_list` VALUES ('199', 'zyx', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-03 10:53:25');
INSERT INTO `weimart_log_list` VALUES ('200', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-03 10:53:48');
INSERT INTO `weimart_log_list` VALUES ('201', 'zyx', '用户登陆成功 [User Login Success]', '127.0.0.1', '2015-05-03 10:54:29');
INSERT INTO `weimart_log_list` VALUES ('202', 'zyx', '保存商品信息成功 [Save Product Success ID:1]', '127.0.0.1', '2015-05-03 22:17:10');
INSERT INTO `weimart_log_list` VALUES ('203', 'zhuyunxiang', '用户注册成功 [User Register Success]', '127.0.0.1', '2015-05-03 23:02:25');
INSERT INTO `weimart_log_list` VALUES ('204', 'zhuyunxiang', '用户录入详细信息成功 [User Save Detail Success]', '127.0.0.1', '2015-05-03 23:02:53');
INSERT INTO `weimart_log_list` VALUES ('205', null, '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00D]', '127.0.0.1', '2015-05-03 23:38:26');
INSERT INTO `weimart_log_list` VALUES ('206', 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00E]', '127.0.0.1', '2015-05-03 23:39:45');
INSERT INTO `weimart_log_list` VALUES ('207', 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述02015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00J]', '127.0.0.1', '2015-05-03 23:51:01');
INSERT INTO `weimart_log_list` VALUES ('208', 'zyx', '数据保存成功！ [save Shop Info ID:1 Data:1我的小铺/weimart/Public/Uploads/shop_img/55462d0392907.jpg/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg朱云祥的小铺专卖正品正品的内容描述12015-05-03 23:04:050000-00-00 00:00:00000000-00-00 00:00:00ArrayArrayArrayArrayArrayArray00N]', '127.0.0.1', '2015-05-03 23:51:06');

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
  `product_img` varchar(128) default NULL,
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
INSERT INTO `weimart_product` VALUES ('1', '我的商品', '/weimart/Public/Uploads/product_img/55462dd8acd7e.jpg', null, '<p>上传的是手机数码产品</p>', '10', '1', '1', '2015-05-03 22:17:10', '0');

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
INSERT INTO `weimart_product_type` VALUES ('1', '26');

-- ----------------------------
-- Table structure for `weimart_ptype`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_ptype`;
CREATE TABLE `weimart_ptype` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(45) default NULL,
  `type_key` varchar(45) default NULL,
  `super_type_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `type_class` varchar(20) default NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_ptype
-- ----------------------------
INSERT INTO `weimart_ptype` VALUES ('1', '女装·男装', null, '0', '0', null);
INSERT INTO `weimart_ptype` VALUES ('2', '鞋靴·箱包', null, '0', '0', null);
INSERT INTO `weimart_ptype` VALUES ('3', '运动户外', null, '0', '0', null);
INSERT INTO `weimart_ptype` VALUES ('4', '护肤彩妆', null, '0', '0', null);
INSERT INTO `weimart_ptype` VALUES ('5', '潮流女装', null, '1', '0', null);
INSERT INTO `weimart_ptype` VALUES ('6', '连衣裙', null, '5', '0', null);
INSERT INTO `weimart_ptype` VALUES ('7', 'T恤', null, '5', '0', 'hot');
INSERT INTO `weimart_ptype` VALUES ('8', '裤子', null, '5', '0', null);
INSERT INTO `weimart_ptype` VALUES ('9', '精选男装', null, '1', '0', null);
INSERT INTO `weimart_ptype` VALUES ('10', 'T恤', null, '9', '0', null);
INSERT INTO `weimart_ptype` VALUES ('11', '裤子', null, '9', '0', null);
INSERT INTO `weimart_ptype` VALUES ('12', '夏新品', null, '5', '0', null);
INSERT INTO `weimart_ptype` VALUES ('13', '长裙', null, '6', '0', null);
INSERT INTO `weimart_ptype` VALUES ('14', '半身裙', null, '6', '0', null);
INSERT INTO `weimart_ptype` VALUES ('15', '雪纺裙', null, '6', '0', null);
INSERT INTO `weimart_ptype` VALUES ('16', '印花T', null, '7', '0', null);
INSERT INTO `weimart_ptype` VALUES ('17', '长袖', null, '7', '0', null);
INSERT INTO `weimart_ptype` VALUES ('18', '打底', null, '7', '0', null);
INSERT INTO `weimart_ptype` VALUES ('19', '短裤', null, '8', '0', null);
INSERT INTO `weimart_ptype` VALUES ('20', '九分', null, '8', '0', null);
INSERT INTO `weimart_ptype` VALUES ('21', '大码MM', null, '8', '0', null);
INSERT INTO `weimart_ptype` VALUES ('22', '女鞋', null, '2', '0', null);
INSERT INTO `weimart_ptype` VALUES ('23', '男鞋', null, '2', '0', null);
INSERT INTO `weimart_ptype` VALUES ('24', '女包', null, '2', '0', null);
INSERT INTO `weimart_ptype` VALUES ('25', '男包', null, '2', '0', null);
INSERT INTO `weimart_ptype` VALUES ('26', '手机数码', null, '0', '0', null);
INSERT INTO `weimart_ptype` VALUES ('27', '家用办公', null, '0', '0', null);
INSERT INTO `weimart_ptype` VALUES ('28', '手机', null, '26', '0', null);
INSERT INTO `weimart_ptype` VALUES ('29', '平板', null, '26', '0', null);
INSERT INTO `weimart_ptype` VALUES ('30', '电脑', null, '26', '0', null);
INSERT INTO `weimart_ptype` VALUES ('31', 'iphone', null, '28', '0', null);
INSERT INTO `weimart_ptype` VALUES ('32', '小米', null, '28', '0', 'hot');
INSERT INTO `weimart_ptype` VALUES ('33', '大家电', null, '27', '0', null);
INSERT INTO `weimart_ptype` VALUES ('34', '厨房电器', null, '27', '0', null);
INSERT INTO `weimart_ptype` VALUES ('35', '格兰仕微波炉', null, '34', '1', null);
INSERT INTO `weimart_ptype` VALUES ('36', '珠宝配饰', null, '0', '0', null);
INSERT INTO `weimart_ptype` VALUES ('37', '汇吃美食', null, '0', '0', null);
INSERT INTO `weimart_ptype` VALUES ('38', '时尚饰品', null, '36', '0', null);
INSERT INTO `weimart_ptype` VALUES ('39', '珠宝首饰', null, '36', '0', null);
INSERT INTO `weimart_ptype` VALUES ('40', '项链', null, '38', '0', null);
INSERT INTO `weimart_ptype` VALUES ('41', '手链', null, '38', '0', null);
INSERT INTO `weimart_ptype` VALUES ('42', '戒指', null, '38', '0', null);
INSERT INTO `weimart_ptype` VALUES ('43', '发饰', null, '38', '0', null);
INSERT INTO `weimart_ptype` VALUES ('44', '品质手表', null, '36', '0', null);
INSERT INTO `weimart_ptype` VALUES ('45', '眼镜配饰', null, '36', '0', null);
INSERT INTO `weimart_ptype` VALUES ('46', '最热单品', null, '36', '0', null);
INSERT INTO `weimart_ptype` VALUES ('47', '流行饰品', null, '36', '0', null);
INSERT INTO `weimart_ptype` VALUES ('48', '头饰', null, '47', '0', 'hot');
INSERT INTO `weimart_ptype` VALUES ('49', '鲜果肉禽', null, '37', '0', null);
INSERT INTO `weimart_ptype` VALUES ('50', '零食酒水', null, '37', '0', null);
INSERT INTO `weimart_ptype` VALUES ('51', '榴莲', null, '49', '0', null);
INSERT INTO `weimart_ptype` VALUES ('52', '荔枝', null, '49', '0', 'hot');
INSERT INTO `weimart_ptype` VALUES ('53', '运动鞋', null, '3', '0', null);
INSERT INTO `weimart_ptype` VALUES ('54', '运动服', null, '3', '0', null);
INSERT INTO `weimart_ptype` VALUES ('55', '美容护肤', null, '4', '0', null);
INSERT INTO `weimart_ptype` VALUES ('56', '强效保养', null, '4', '0', null);

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
  `shop_img` varchar(255) default NULL,
  `shop_img_temp` varchar(255) default NULL,
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
INSERT INTO `weimart_shop` VALUES ('1', '我的小铺', '/weimart/Public/Uploads/shop_img/55462d0392907.jpg', '/weimart/Public/Uploads/shop_img/thumb_55462d0392907.jpg', '朱云祥的小铺', '专卖正品', '正品的内容描述', '', '1', '2015-05-03 23:04:05', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `weimart_shop` VALUES ('2', '我的店', '/weimart/Public/Uploads/shop_img/554638a62dde1.jpg', '/weimart/Public/Uploads/shop_img/thumb_554638a62dde1.jpg', '我的店铺信息', '我的店铺标语', '我的店铺描述', null, '0', '2015-05-03 23:03:30', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');

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
  `user_nick_name` varchar(45) collate utf8_unicode_ci default NULL,
  `user_header_img` varchar(128) collate utf8_unicode_ci default NULL,
  `user_header_temp_img` varchar(128) collate utf8_unicode_ci default NULL,
  `user_pwd` varchar(256) collate utf8_unicode_ci default NULL,
  `user_email` varchar(64) collate utf8_unicode_ci default NULL,
  `user_wechat_key` varchar(256) collate utf8_unicode_ci default NULL,
  `user_gender` varchar(8) collate utf8_unicode_ci default NULL,
  `user_full_name` varchar(16) collate utf8_unicode_ci default NULL,
  `user_telephone` varchar(11) collate utf8_unicode_ci default NULL,
  `user_address` varchar(128) collate utf8_unicode_ci default NULL,
  `user_stage` int(11) default NULL,
  `user_regist_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `user_last_updated` timestamp NULL default '0000-00-00 00:00:00',
  `user_last_logined` timestamp NULL default '0000-00-00 00:00:00',
  `user_is_deleted` int(11) default '0',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weimart_user
-- ----------------------------
INSERT INTO `weimart_user` VALUES ('1', 'zyx', 'zhuyunxiang', '/weimart/Public/Uploads/head_img/55458d89bcbab.jpg', '/weimart/Public/Uploads/head_img/thumb_55458d89bcbab.jpg', '96e79218965eb72c92a549dd5a330112', '493405455@qq.com', null, '男', '朱云祥', '18862152242', '苏州市工业园区', '0', '2015-05-03 10:53:25', null, null, '0');
INSERT INTO `weimart_user` VALUES ('2', 'zhuyunxiang', 'zhuyunxiang', '/weimart/Public/Uploads/head_img/55463885ba7e2.jpg', '/weimart/Public/Uploads/head_img/thumb_55463885ba7e2.jpg', 'fac97e579639be3f10db671a4462ed91', 'zhuyunxiang820@live.cn', null, '男', '朱云祥', '18862152242', '苏州市工业园区', '0', '2015-05-03 23:02:53', null, null, '0');

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
INSERT INTO `weimart_user_shop` VALUES ('2', '2');
INSERT INTO `weimart_user_shop` VALUES ('242', '0');
INSERT INTO `weimart_user_shop` VALUES ('242', '8');
INSERT INTO `weimart_user_shop` VALUES ('243', '9');
INSERT INTO `weimart_user_shop` VALUES ('244', '10');

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
INSERT INTO `weimart_wechat_info` VALUES ('2', '校际圈', '123', 'wx713da7bfd9175724', '101fdc6b6f08f76505b98a84ef0111dc', 'zyx', '1', '2015-02-14 10:40:21');

-- ----------------------------
-- Table structure for `weimart_wechat_media_list`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_wechat_media_list`;
CREATE TABLE `weimart_wechat_media_list` (
  `media_id` int(11) NOT NULL auto_increment,
  `media_title` varchar(20) collate utf8_unicode_ci default NULL,
  `media_img` varchar(128) collate utf8_unicode_ci default NULL,
  `media_content` text collate utf8_unicode_ci,
  `media_msg_id` int(11) NOT NULL default '0',
  `media_major` varchar(200) collate utf8_unicode_ci default NULL,
  `media_index_url` varchar(512) collate utf8_unicode_ci default NULL,
  `media_is_deleted` varchar(8) collate utf8_unicode_ci default NULL,
  `media_create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `media_head_in_content` varchar(8) collate utf8_unicode_ci default NULL,
  `media_author` varchar(16) collate utf8_unicode_ci default NULL,
  `order_index` int(11) default NULL,
  PRIMARY KEY  (`media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weimart_wechat_media_list
-- ----------------------------
INSERT INTO `weimart_wechat_media_list` VALUES ('4', '标题qwe', '/weimart/Public/Uploads/media_img/552a94f53889a.jpg', '<blockquote style=\\\"\\\\&quot;\\\\\\\\&quot;margin:\\\\&quot;\\\" 20px=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" 15px=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" 1px=\\\"\\\\&quot;\\\\&quot;\\\" dashed=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" line-height:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" color:=\\\"\\\\&quot;\\\\&quot;\\\" white-space:=\\\"\\\\&quot;\\\\&quot;\\\" background:=\\\"\\\\&quot;\\\\&quot;\\\"><span style=\\\"\\\\&quot;\\\\\\\\&quot;margin:\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" line-height:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" color:=\\\"\\\\&quot;\\\\&quot;\\\"><img class=\\\"loadingclass\\\" id=\\\"loading_i8g3at59\\\" src=\\\"http://localhost:8085/weimart/Public/commen/ueditor/themes/default/images/spacer.gif\\\" title=\\\"正在上传...\\\"/>摘要 :&nbsp;</span>探讨下互联网会把社会改造成什么样子，到底是中心化还是去中心化</blockquote><p class=\\\"\\\\&quot;\\\\\\\\&quot;image\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" line-height:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-align:=\\\"\\\\&quot;\\\\&quot;\\\"><img src=\\\"\\\\&quot;\\\\\\\\&quot;/ueditor/php/upload/image/20150414/1428941031906077.jpg\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin:\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" line-height:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" max-width:=\\\"\\\\&quot;\\\\&quot;/\\\"/></p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">之前看肖知兴写文章强调KK一派的观点时，我曾经回复过互联网其实是同步放大了中心化和去中心化的力量，单纯强调去中心化是不合适的。中心化或者去中心化本身看着很像个学术问题，也并不重要，但实际上这种趋势会影响每个人，并一定会改变社会的结构。那在互联网的冲击下，社会到底会走向那里？这也许可以从赚钱的方式看出一些端倪。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\"><strong>那些赚钱的模式</strong></p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">与互联网相关的公司很多，但经过验证的盈利模式则没有那么多，大致有下面六种：</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">第一种模式是最传统的卖货模式，可以包含传统的百货里的东西和按摩这类服务。这种模式在互联网上实现出来就是电商和O2O。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">第二种模式也算卖“货”，但货有点特殊，卖的是数字产品的使用权。最初是Windows的License模式，到现在则体现为IaasS，PaaS，SassS的服务费。Windows，Oracle现在仍是License模式，但云服务已经过度到只收服务费了。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">第三种则是搭平台进行分成模式。这在起点这样的网站上体现的比较明显，在那里作者与起点网分享付费订阅的收入。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">第四种模式是广告模式。这模式骨子里相当于是卖流量。而广告本身又可以分为三代：第一代是电线杆小广告式的，门户的广告，电视的广告都是这种；第二代是Google式的，根据关键字提供相关联广告；第三代则是基于人的，软文类广告是这类。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">第五种则是卖增值物品。游戏和QQ的皇冠都是这种模式。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">第六种是虚拟央行模式。这个比较特别，需要多说一点。央行和一般银行的不同之处在于：它不赚钱，但制造钱。现实里央行可以通过发行更多的钞票来收铸币税，但对于虚拟世界这就是一种盈利模式。想象下只要一个虚拟社区足够大，那它的虚拟货币就具有极高的交换价值，这样一来发行量就是可以赚到的钱。当然你恶意发行肯定会在虚拟世界导致通货膨胀，但在极度通货膨胀和不通货膨胀间有很大的操作空间，在很多时候你可以即发行10亿也可以发行11亿，只要未来有办法回收。这背后其实是货币发行权的价值，其实是一种很微妙的模式。这模式逻辑上成立，所以我把它列在这里，但这题目太复杂，在这篇里不会展开太多。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">眼下来看经过确实验证的模式大致就这么多，所以可以认为不管一个公司讲了多少让人眼花缭乱的故事，如果不能在这几种模式上找到依托，那其实这公司没有未来。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\"><strong>竞争的新内涵</strong></p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">由这种赚钱的模式反过来可以预测未来的商业生态。第二到第六种模式天生需要大平台，而这种平台事实上不可能太多，这就是互联网催生出来的中心化。而第一种、第五种模式则天生需要满足人们多样化的需求，所以需要把平台上创建商品的一端开放出来，让更多人参与进来提供具有特色的东西，这就是去中心化。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">这么说有点倒果为因的意思，但如果回溯到产品本身，一样也还是这结果。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">我们日常所见的五花八门的商品，大致可以分为两个类别：一类是大批量无差别的，一类则是小批量有差别的。离人越远的越偏向前者，比如钢铁；离人越近的越偏向后者，比如服装。这在大豆和大米上体现的特别明显，虽然都是农作物，但大米就要细分很多类，比如五常大米、盘锦大米等，大豆则没人关注那么多。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">从过去的现实来看，这种商品的特质导致两类中心化的趋势，对于无差别类商品那会导致某一类行业只会剩下少数几家企业，比如钢铁。互联网会使信息透明，而信息透明会让这种可以通过参数比较好坏的产品越来越集中到少数几家有优势的企业里面。对于小批量有差别类商品，比如服装、工艺品则会在方便和个性化的推动下出现平台。在这点上我们可以更清楚的看到中心化和去中心化相并行的趋势。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">这种中心化是指少数几个大平台，而去中心化是指平台上出售的各种越来越具有个性的商品。电商平台和各种商品、商家是这种关系，游戏与分发乃至打通游戏账户体系提供虚拟货币的平台是这种关系，写手与小说平台是这种关系，搜索与被搜索的内容也是这种关系。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">这种大平台天生会按类别归并，所以并不会很多；但平台上提供个性化服务或商品的则注定会很多以便满足不同层次的需求。互联网化越彻底，这种中心化与去中心化的组合就会越明显。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">这与上面所说的赚钱模式吻合的非常好。除了第一种和第五种模式对应于提供个性化产品或服务的商家和个人，所有其他模式都需要一定的规模才可能产生并持续，而平台恰恰是支撑这种规模的必须手段。即可以讲是平台造就了那些盈利模式，也可以讲盈利模式催生了平台化。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">这在一定程度上会改变竞争的内涵。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">就像域名资源是有限的一样，平台所可能依托的东西其实是有限的，至少在一定技术水平上是有限的。所以竞争变成了发现的游戏，谁猜未来的准确率高，谁就有先发优势。做iPhone这类创新需要天才的创造力，但大多的时候定位平台需要点“猜谜”和“想象”的能力。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\"><strong>互联网将重塑社会形态</strong></p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">这两类中心化与去中心化的趋势很可能会重塑我们的社会形态。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">寡头式的中心化加上工业4.0，最终会导致生产无差别商品的企业极度精英化，凡是可以不依赖于创造力、想象力的东西最终都会被计算机取代，形象来讲就是有一堆机器人把那些不需要太高智能的活都干了，最后剩下的只是电脑无法战胜人脑的工作，比如依赖于想象力和判断力的，这注定会是高端工作。这进一步意味着制造业所能吸纳的就业人数会越来越少。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">平台式的中心化则会导致更多的故事。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">从财富上看成功的掌握了平台的，相当于拥有了在特定领域里制定规则的权利，所以必然会是财富的中心。而各种技术的发展使这种平台的运作和维护通常并不需要很多人（现在顶级三家互联网公司的所有员工加起来还没有一个宝钢多，但收入、利润等则要掉过来看），所以这类成功的平台会是未来的财富中心。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">从平台上的产品来看，差异化是唯一的出路。一件东西之所以会有价值有利润往往是多种因素复合的结果：首先是因为有用，其次是因为信息不对称，最后是因为真的稀缺，或者因为喜欢。在过去很多产品利润空间大是因为信息不对称，在互联网让信息透明后这部分钱其实是赚不到了，因此没差异产品在激烈竞争下毛利率会驱零。越是很容易量化和比较的部分越不值钱，而越差异化个性化的东西越能产生额外价值。这里确实能够吸纳更多的人口就业，相当于说是手艺人越来越有生存空间。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">这种平台+手艺人的模式注定会造成贫富差距，阿里上做电商的不太可能比阿里还赚钱，越个性化这种可能性越小，因为目标用户会变少。但这种模式确实有可能打造一种纺锤形的社会，并且会大幅度提高人们的生活质量，所以是比较值得期待的。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">如果只看中心化那世界其实是很悲观的，如果只看去中心化那世界则是过于乐观的。未来更可能是这两者叠加出来的一种形态。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\"><strong>现实里的挑战</strong></p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">在上述那种经济模式里，两类人能够很好的找到自己的位置一类是在中心化一端的人，这里会聚集传说中的那些精英；一类是在去中心化一端的人，这里会聚集非常多的手艺人。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">这也许是中国会要面对的独特挑战。中国人口构成里最主要的农民，农民工与工人，并不具备提供个性化服务的能力，如果上述分析是对的那意味着非常多的人其实在中心化与去中心化的模式里找不到自己的位置。两者都不靠就会变成需要同科技做竞争，而工厂的工人同工业4.0的趋势相竞争长线来看是不可能胜出的，作为结果这些人就很可能会被甩到社会的边缘。这种挑战因为来自于科技的发展而不可能被回避。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">当然国家与国家间的发展是不平衡的，在漫长的过渡期里可以通过向其他地区输出产能来缓解这问题，但这不是解决之道。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">社会不太可能开倒车，所以互联网对社会而言也许更像是一场带着阵痛的变革。与此同时互联网对信息传播方式的影响则会为变革里注入更多的变数。</p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\"><strong>小结</strong></p><p class=\\\"\\\\&quot;\\\\\\\\&quot;text\\\\\\\\&quot;\\\\&quot;\\\" style=\\\"\\\\&quot;\\\\\\\\&quot;margin-top:\\\\&quot;\\\" margin-bottom:=\\\"\\\\&quot;\\\\&quot;\\\" padding:=\\\"\\\\&quot;\\\\&quot;\\\" border:=\\\"\\\\&quot;\\\\&quot;\\\" font-family:=\\\"\\\\&quot;\\\\&quot;\\\" font-size:=\\\"\\\\&quot;\\\\&quot;\\\" font-style:=\\\"\\\\&quot;\\\\&quot;\\\" font-variant:=\\\"\\\\&quot;\\\\&quot;\\\" font-weight:=\\\"\\\\&quot;\\\\&quot;\\\" font-stretch:=\\\"\\\\&quot;\\\\&quot;\\\" vertical-align:=\\\"\\\\&quot;\\\\&quot;\\\" text-indent:=\\\"\\\\&quot;\\\\&quot;\\\">很多时候我们思考互联网带来的冲击更多的是看那里出现了新机会，但互联网会影响到的显然不止是商业，这篇就尝试从具体的商业视角跳出来，从宏观点的视角来探讨下它所可能带来的社会影响。</p><p><br/></p>', '3', 'qwe', '', '', '2015-04-12 23:53:27', 'true', '', '0');
INSERT INTO `weimart_wechat_media_list` VALUES ('5', '标题', '/weimart/Public/Uploads/media_img/5533764ca3998.jpg', '<p>12321313</p>', '7', '1231231', null, null, '2015-04-19 17:33:05', null, null, null);
INSERT INTO `weimart_wechat_media_list` VALUES ('6', '标题qwe', '/weimart/Public/Uploads/media_img/5533772aad03a.jpg', '<p>其味无穷</p>', '8', '请问请问', null, null, '2015-04-19 17:36:45', null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_wechat_menu_first
-- ----------------------------
INSERT INTO `weimart_wechat_menu_first` VALUES ('12', '进入百度', 'url', '67832b5d86a03e06e9dc82fd49211382', 'http://www.baidu.com', '', '2015-03-22 16:52:41');

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weimart_wechat_menu_second
-- ----------------------------
INSERT INTO `weimart_wechat_menu_second` VALUES ('1', '菜单', 'url', '18af7679535efb8bdf925e9c58878bdc', 'http://www.baidu.com', '1', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('3', '看看1', 'text', '289f1d13de27d7ddffbf529a8339dccf', null, '1', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('4', '逛逛1', 'url', 'fbe1400c1b99f2ed6fff8df0c95ab299', 'http://', '1', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('5', '222', null, '357c55fdf87e3bb43fb282825da36677', null, '7', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('6', '132', 'text', '69b2ed523c71033dd766eada03f5dcbd', null, '1', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('7', '12312', 'text', '3e74f017e236eb3903a2bcd035981ca2', null, '8', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('8', '55', null, 'af1d467130ec7721022e27dd5553299e', null, '8', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('15', 'ccc', 'media', '060a373e86564fb44fcb9de60ad4d5dd', null, '14', '');
INSERT INTO `weimart_wechat_menu_second` VALUES ('14', 'aaac', 'url', 'bf02d45be60d089ec75e017da69d44a0', '12345qwee', '14', '');

-- ----------------------------
-- Table structure for `weimart_wechat_msg_list`
-- ----------------------------
DROP TABLE IF EXISTS `weimart_wechat_msg_list`;
CREATE TABLE `weimart_wechat_msg_list` (
  `msg_id` int(11) NOT NULL auto_increment,
  `msg_type` varchar(20) collate utf8_unicode_ci default NULL,
  `msg_key` varchar(128) collate utf8_unicode_ci default '',
  `msg_keyword` text collate utf8_unicode_ci,
  `msg_text` text collate utf8_unicode_ci,
  `msg_is_deleted` int(8) NOT NULL default '0',
  `msg_create_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `msg_author` varchar(16) collate utf8_unicode_ci default NULL,
  `msg_head_in_content` varchar(8) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weimart_wechat_msg_list
-- ----------------------------
INSERT INTO `weimart_wechat_msg_list` VALUES ('1', 'custom_text', '41893b813bd7c16db886b6af275f4634', 'a,', 'aaa', '1', '2015-04-12 23:52:51', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES ('2', 'custom_media', '7c3005088e00587546d5352d9b90e1d3', 'b,', '', '1', '2015-04-12 23:52:59', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES ('3', 'custom_media', 'baeca3e73005921f747ea76cc48e05e4', 'b,', '', '1', '2015-04-12 23:53:04', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES ('4', 'custom_media', '753a6da456dbc0cd38620930ae2eb96e', 'aaa,', '', '1', '2015-04-13 00:07:36', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES ('5', 'custom_media', '013434ad941b5cb92c7148cc510872e6', 'qwe,', '', '1', '2015-04-13 00:09:05', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES ('6', 'custom_text', '558cab09fe236beecccc571efa1d6955', '吧,', '1231', '1', '2015-04-19 17:32:34', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES ('7', 'custom_media', 'aa3829a6bad5917d128557eb31bbfd84', '212,', '', '1', '2015-04-19 17:32:52', '', '');
INSERT INTO `weimart_wechat_msg_list` VALUES ('8', 'custom_media', '612581638947550f8fb7e02d80972e0a', '请问请问,', '', '1', '2015-04-19 17:36:35', '', '');
