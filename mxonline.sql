/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : mxonline

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-12-26 17:24:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '课程编辑部门');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('1', '1', '33');
INSERT INTO `auth_group_permissions` VALUES ('2', '1', '34');
INSERT INTO `auth_group_permissions` VALUES ('3', '1', '36');
INSERT INTO `auth_group_permissions` VALUES ('4', '1', '45');
INSERT INTO `auth_group_permissions` VALUES ('5', '1', '46');
INSERT INTO `auth_group_permissions` VALUES ('6', '1', '48');
INSERT INTO `auth_group_permissions` VALUES ('7', '1', '49');
INSERT INTO `auth_group_permissions` VALUES ('8', '1', '50');
INSERT INTO `auth_group_permissions` VALUES ('9', '1', '52');

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 轮播图', '6', 'add_banner');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 轮播图', '6', 'change_banner');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 轮播图', '6', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 轮播图', '6', 'view_banner');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 邮箱验证码', '7', 'add_emailverfyrecord');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 邮箱验证码', '7', 'change_emailverfyrecord');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 邮箱验证码', '7', 'delete_emailverfyrecord');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 邮箱验证码', '7', 'view_emailverfyrecord');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 用户信息', '8', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 用户信息', '8', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 用户信息', '8', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 用户信息', '8', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 课程', '9', 'add_course');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 课程', '9', 'change_course');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 课程', '9', 'delete_course');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 课程', '9', 'view_course');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 章节', '10', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 章节', '10', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 章节', '10', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 章节', '10', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 视频', '11', 'add_video');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 视频', '11', 'change_video');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 视频', '11', 'delete_video');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 视频', '11', 'view_video');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 课程资源', '12', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 课程资源', '12', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 课程资源', '12', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 课程资源', '12', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 课程评论', '13', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 课程评论', '13', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 课程评论', '13', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 课程评论', '13', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 用户咨询', '14', 'add_userask');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 用户咨询', '14', 'change_userask');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 用户咨询', '14', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 用户咨询', '14', 'view_userask');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 用户课程', '15', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 用户课程', '15', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 用户课程', '15', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 用户课程', '15', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 用户收藏', '16', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 用户收藏', '16', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 用户收藏', '16', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 用户收藏', '16', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 用户消息', '17', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 用户消息', '17', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 用户消息', '17', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 用户消息', '17', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 城市', '18', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 城市', '18', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 城市', '18', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 城市', '18', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 课程机构', '19', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 课程机构', '19', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 课程机构', '19', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 课程机构', '19', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 教师', '20', 'add_teach');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 教师', '20', 'change_teach');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 教师', '20', 'delete_teach');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 教师', '20', 'view_teach');
INSERT INTO `auth_permission` VALUES ('81', 'Can add Bookmark', '21', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('82', 'Can change Bookmark', '21', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete Bookmark', '21', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('84', 'Can view Bookmark', '21', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('85', 'Can add User Setting', '22', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('86', 'Can change User Setting', '22', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete User Setting', '22', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('88', 'Can view User Setting', '22', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('89', 'Can add User Widget', '23', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('90', 'Can change User Widget', '23', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete User Widget', '23', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('92', 'Can view User Widget', '23', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('93', 'Can add log entry', '24', 'add_log');
INSERT INTO `auth_permission` VALUES ('94', 'Can change log entry', '24', 'change_log');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete log entry', '24', 'delete_log');
INSERT INTO `auth_permission` VALUES ('96', 'Can view log entry', '24', 'view_log');
INSERT INTO `auth_permission` VALUES ('97', 'Can add captcha store', '25', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('98', 'Can change captcha store', '25', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete captcha store', '25', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('100', 'Can view captcha store', '25', 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('73', 'FYJT', 'fyjt', '441f6df5bc1c52b7c4ae1693dca07fccef82af09', '2019-12-09 20:53:55.799945');
INSERT INTO `captcha_captchastore` VALUES ('76', 'WVZM', 'wvzm', 'f4bacbc2169fa764016f9ba8e8967e6e9973469f', '2019-12-10 22:50:53.363333');
INSERT INTO `captcha_captchastore` VALUES ('77', 'HARM', 'harm', 'ef3e6204a1d7697593c361b1e875fd1a1670fb9e', '2019-12-11 00:32:47.053156');
INSERT INTO `captcha_captchastore` VALUES ('78', 'PCQP', 'pcqp', 'e38d5727dd32ec94d87fbfc140fad6d96d1ee89f', '2019-12-12 23:08:15.946011');
INSERT INTO `captcha_captchastore` VALUES ('79', 'HJDD', 'hjdd', 'f9741709fdea9ae4135e770378ca86730811f8f5', '2019-12-13 21:40:26.394631');
INSERT INTO `captcha_captchastore` VALUES ('80', 'ZTVB', 'ztvb', '8755289291cb1f55ca976d8b4497881848a8ba8e', '2019-12-14 21:01:45.555748');
INSERT INTO `captcha_captchastore` VALUES ('81', 'FHMC', 'fhmc', '44a4a0af2dfb2bb8bec67160bd2b588693ff829d', '2019-12-14 22:23:58.857160');
INSERT INTO `captcha_captchastore` VALUES ('82', 'CIUV', 'ciuv', '0ddb352a22e5c2f76698cdb94578658512e5c572', '2019-12-14 23:25:47.741820');
INSERT INTO `captcha_captchastore` VALUES ('83', 'KJNS', 'kjns', '5860921fc5d5bebcf4f4842ffca7486ed5b59e10', '2019-12-15 14:55:38.026972');
INSERT INTO `captcha_captchastore` VALUES ('84', 'GTIF', 'gtif', 'c5ae3fc1c051ed1dcb62893995d464bb16cb2fb7', '2019-12-17 11:13:51.152651');
INSERT INTO `captcha_captchastore` VALUES ('85', 'XVRC', 'xvrc', '862378ef05e67d255bb3223739f7ddd68624f63c', '2019-12-17 16:45:05.349525');
INSERT INTO `captcha_captchastore` VALUES ('86', 'XAHL', 'xahl', '1be1294cb8d8508dab2d5701820e64843cfbddb1', '2019-12-18 21:58:50.393404');
INSERT INTO `captcha_captchastore` VALUES ('87', 'UASM', 'uasm', 'a990e605af8883f3dd96549c9d3e6f4ae4caf10c', '2019-12-20 14:27:17.507518');
INSERT INTO `captcha_captchastore` VALUES ('88', 'OCHD', 'ochd', '2332a3f5da6e52e295ff5b259d040a303e32d7cd', '2019-12-20 14:44:59.818628');
INSERT INTO `captcha_captchastore` VALUES ('89', 'PCQN', 'pcqn', 'ce096a25c7c34d8f5ae6d9df9eeea96204806dee', '2019-12-20 17:15:57.245118');
INSERT INTO `captcha_captchastore` VALUES ('90', 'ZJWU', 'zjwu', 'ef232af787c6855e68266a525c182a423ebf99c5', '2019-12-20 17:18:16.100677');
INSERT INTO `captcha_captchastore` VALUES ('91', 'PNHN', 'pnhn', '7a49f433adcff348186dfc20578b8659105fd9db', '2019-12-20 17:18:25.074217');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `is_banner` int(10) NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_time` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `youneed_konw` varchar(300) NOT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `teach_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab` (`course_org_id`),
  KEY `courses_course_teach_id_d4a9a3ab` (`teach_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('1', 'django课程', 'django课程', 'django课程', '0', 'cj', '0', '0', '0', 'courses/2019/12/Django_Ah7qt7a.jpg', '2', '2019-12-02 01:32:00.000000', 'Django入门课程', '', '', '', '1', null);
INSERT INTO `courses_course` VALUES ('2', 'python入门', 'python入门', 'python入门', '0', 'zj', '0', '0', '0', 'courses/2019/12/python_EeoJcxP.jpg', '2', '2019-12-02 01:49:00.000000', 'Python入门', '', '', '', '1', null);
INSERT INTO `courses_course` VALUES ('4', 'Python/人工智能/零基础就业课', 'Python', '注重实例教学。逐步掌握python，并能立刻用在自己的项目中，瞬间高大上起来。无论哪种语言，编程的方法，模式，数据结构，算法都是相通的，而python无疑是最容易上手的。别犹豫了，一起来学习吧。', '0', 'zj', '0', '0', '0', 'courses/2019/12/python_pLk6kh8.jpg', '1', '2019-12-15 14:53:00.000000', 'Python/人工智能', '', '', '', '4', null);
INSERT INTO `courses_course` VALUES ('5', 'Java软件工程师培训', '数组的使用', '该课程以及后续的一系列课程，是从零开始一直到让你可以找到理想工作的课程。我可以明确的告诉你，你无需任何基础，无需学历，无需会英语，哪怕你不懂电脑基本操作也没有关系。只要你自己有决心，有毅力，有强烈的改变自己的生活的欲望，我相信你在这里的课程结束后一定能很轻松的成为一名真正的软件工程师!或许你也想过去培训学校，但那需要花费更长的时间，难以承担的高额费用，还并不一定能达到你的预期。那么你不妨来试试这个课程吧。我不敢说知识能改变你的命运，但绝对可以改善你的生活，朝九晚六，双休的白领工作你完全可以实现！', '0', 'cj', '0', '0', '0', 'courses/2019/12/source_java_oU8HTFL.jpg', '1', '2019-12-15 14:55:00.000000', 'Java软件设计', '', '', '', '5', null);
INSERT INTO `courses_course` VALUES ('6', '程序员必备算法课！', '揭秘淘宝购物车算法', '双十一，双十二，你是否也在购物车中放置了很多商品？当面对购物车中不同商家、不同价格、不同质量和服务的商品时，如何在有限的预算下，选择到让你最满意的商品，\r\n\r\n本次公开课主要从以下几方面进行讲解：\r\n\r\n首先讲解如何将购物车选择商品问题转进行量化指标度量，转化为计算机可以求解的算法问题；\r\n\r\n其次结合实例讲解实际问题如何利用算法求解；\r\n\r\n最后基于Python语言如何设计算法并在计算机上进行实现。\r\n双十一，双十二，你是否也在购物车中放置了很多商品？当面对购物车中不同商家、不同价格、不同质量和服务的商品时，如何在有限的预算下，选择到让你最满意的商品，\r\n\r\n本次公开课主要从以下几方面进行讲解：\r\n\r\n首先讲解如何将购物车选择商品问题转进行量化指标度量，转化为计算机可以求解的算法问题；\r\n\r\n其次结合实例讲解实际问题如何利用算法求解；\r\n\r\n最后基于Python语言如何设计算法并在计算机上进行实现。\r\n课程收益:\r\n1.购物车商品选择的困惑\r\n2.购物车商品的形式化描述\r\n3.购物车商品问题求解\r\n4.购物车商品问题算法描述及实现 \r\n1.购物车商品选择的困惑\r\n2.购物车商品的形式化描述\r\n3.购物车商品问题求解\r\n4.购物车商品问题算法描述及实现', '0', 'gj', '0', '0', '0', 'courses/2019/12/source_csdn_ZW0iCC3.jpg', '3', '2019-12-15 14:57:00.000000', '算法设计', '', '', '', '6', null);
INSERT INTO `courses_course` VALUES ('7', '从零到一，Python网页爬虫攻略,城市数据团', '数据团开课啦！  如果你感应到大数据时代的召唤，却不知从哪入手； 如果你有数据分析基础却感叹自己是个学渣； 如果你即将毕业，不知前路与社会如何接轨； 如果你初入', '数据团开课啦！\r\n\r\n如果你感应到大数据时代的召唤，却不知从哪入手；\r\n如果你有数据分析基础却感叹自己是个学渣；\r\n如果你即将毕业，不知前路与社会如何接轨；\r\n如果你初入职场，却难以跟上老板高瞻远瞩的思维；\r\n如果你是数据团的老粉，认同“用数据认识世界”的价值观；\r\n……\r\n\r\n也许这是一次花费不大但改变可观的尝试！\r\n\r\n城市数据团重磅推出数据达人培养计划。这门课程面向数据爱好者和数据初学者，旨在为学员提供一套完整而高效地数据获取、分析、可视化的方法，让学员成为“搞得到数据，画的了图表，做的了报告”的数据达人。\r\n\r\n本次课程为《数据达人培养计划》系列课程之二：《从零到一，Python网页爬虫攻略》。\r\n如需详细了解《数据达人培养计划》整体内容，可参考“购前必读” 课时1、课时2的内容\r\n如需详细了解系列课程之二：《从零到一，Python网页爬虫攻略》，可参考“购前必读”课时3内容', '0', 'gj', '0', '0', '0', 'courses/2019/12/B5.jpg', '2', '2019-12-15 15:00:00.000000', 'Python爬虫', 'python', '', '', '7', null);
INSERT INTO `courses_course` VALUES ('8', 'ElasticSearch+Spark 构建高相关性搜索服务&千人千面推荐系统', '集结新版热门技术，解决长久热点问题－“相关性搜索＋个性化推荐”', '基于大众点评搜索以及推荐业务，从企业实际项目落地实践的角度出发，在使用SpringBoot加mybatis完成用户登录、注册、商家入驻以及结合前端模板搭建运营后台门店服务管理功能后，借助ElasticSearch的最新版本ES7逐步迭代，完成高相关性进阶搜索服务，并基于spark mllib2.4.4构建个性化千人千面推荐系统。', '0', 'zj', '0', '0', '0', 'courses/2019/12/B2.jpg', '4', '2019-12-15 15:06:00.000000', 'ElasticSearch+Spark', 'ElasticSea', '', '', '1', null);
INSERT INTO `courses_course` VALUES ('9', '大前端', '比前端全栈更上一层 专为实际开发经验1年以上的前端工程师设计 高效全能架构前端', '<p>&nbsp; &nbsp; 5G风口，前端岗位的内涵和外延不断扩大，企业缩减人力成本，前端岗位竞争越发激烈，还原真实企业项目，打通需求-设计-开发-测试-维护环节，前端、后端、移动端、小程序 1 套业务系统，多端场景开发技术和方案整合，不仅框架进阶应用，15 种效率工具讲解，高密度主流知识和技能覆盖，课程采用实用性、技术迁移能力强的业务案例，可自己部署 1 套效率工具。</p>', '0', 'cj', '0', '0', '0', 'courses/2019/12/source_java_gwtppaH.jpg', '22', '2019-12-15 15:08:00.000000', '前端', '前端', '什么都不需要，0基础入门', '学习如何制作大型网站', '12', '1');
INSERT INTO `courses_course` VALUES ('10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', '优秀工程师的成长之路就是一条不断打怪升级之路', '<p>&nbsp; &nbsp; 国内外一线大厂技术大咖与慕课网组成专家团队12个月磨一剑\r\n千万级电商项目从0到1到100全过程\r\n涵盖Java程序员不同成长阶段的问题及优选解决方案 <br/> </p><p><img src=\"/media/course/AL_20191221000957.png\" title=\"\" alt=\"AL.png\"/> </p><p><br/> </p>', '0', 'gj', '120', '500', '300', 'courses/2019/12/source_csdn_rwI5xRK.jpg', '92', '2019-12-15 15:10:00.000000', '架构师开发', 'java', '具备计算机基础知识', '怎么用Java来开发千万级项目，以及怎么让用Java开发一套完整的系统', '14', '3');
INSERT INTO `courses_course` VALUES ('3', '走进PHP后端工程师的世界', 'PHP后端工程师是当前人才需求量最大的开发职位之一。本课程是PHP后端工程师职业体系课程的介绍。', '课程概览\r\n\r\n本课程给大家介绍PHP后端工程师的职业体系。PHP是世界上使用最广泛的Web开发语言，同时也是当前人才需求量最大的技术方向之一。\r\n适合人群\r\n\r\n有志从事PHP开发的人员\r\n核心内容\r\n\r\n1.PHP简介\r\n2.PHP的发展历程及前景\r\n3.PHP的产品结构\r\n4.PHP的市场需求\r\n5.PHP的技术栈\r\n6.掌握PHP的学习方法和路径', '0', 'cj', '0', '0', '0', 'courses/2019/12/source01_HrpiL0R.png', '1', '2019-12-15 14:50:00.000000', 'PHP基础课程', '', '', '', '3', null);

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES ('1', 'Java页面', 'course/resource/2019/12/log.py', '2019-12-17 14:26:00.000000', '10');

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '第一节', '2019-12-02 01:39:00.000000', '1');
INSERT INTO `courses_lesson` VALUES ('2', '第一节 基础知识', '2019-12-17 11:21:00.000000', '10');
INSERT INTO `courses_lesson` VALUES ('3', '第二节 进阶开发', '2019-12-17 11:21:00.000000', '10');
INSERT INTO `courses_lesson` VALUES ('4', '第三节 高级开发', '2019-12-17 11:21:00.000000', '10');

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `learn_time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e` (`lesson_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('3', '1.3 Java 开发环境配置', '0', '', '2019-12-17 11:25:00.000000', '2');
INSERT INTO `courses_video` VALUES ('4', '1.4 Java 基础语法', '0', '', '2019-12-17 11:25:00.000000', '2');
INSERT INTO `courses_video` VALUES ('5', '1.5 Java 对象和类', '0', '', '2019-12-17 11:26:00.000000', '2');
INSERT INTO `courses_video` VALUES ('6', '1.6 Java 基本数据类型', '0', '', '2019-12-17 11:26:00.000000', '2');
INSERT INTO `courses_video` VALUES ('7', '1.7 Java 变量类型', '0', '', '2019-12-17 11:27:00.000000', '2');
INSERT INTO `courses_video` VALUES ('8', '1.8 Java 修饰符', '0', '', '2019-12-17 11:27:00.000000', '2');
INSERT INTO `courses_video` VALUES ('9', '1.9 Java 运算符', '0', '', '2019-12-17 11:27:00.000000', '2');
INSERT INTO `courses_video` VALUES ('10', '1.10 Java 循环结构 - for, while 及 do...while', '0', '', '2019-12-17 11:28:00.000000', '2');
INSERT INTO `courses_video` VALUES ('11', '1.11  Java 条件语句 - if...else', '0', '', '2019-12-17 11:28:00.000000', '2');
INSERT INTO `courses_video` VALUES ('12', '1.12 Java switch case 语句', '0', '', '2019-12-17 11:31:00.000000', '2');
INSERT INTO `courses_video` VALUES ('13', '1.13 Java Number & Math 类', '0', '', '2019-12-17 11:31:00.000000', '2');
INSERT INTO `courses_video` VALUES ('14', '1.14 Java Character 类', '0', '', '2019-12-17 11:32:00.000000', '2');
INSERT INTO `courses_video` VALUES ('15', '1.15 Java String 类', '0', '', '2019-12-17 11:32:00.000000', '2');
INSERT INTO `courses_video` VALUES ('16', '1.16 Java StringBuffer 和 StringBuilder 类', '0', '', '2019-12-17 11:32:00.000000', '2');
INSERT INTO `courses_video` VALUES ('17', '1.17 Java 数组', '0', '', '2019-12-17 11:33:00.000000', '2');
INSERT INTO `courses_video` VALUES ('18', '1.18 Java 日期时间', '0', '', '2019-12-17 11:33:00.000000', '2');
INSERT INTO `courses_video` VALUES ('19', '1.19 Java 正则表达式', '0', '', '2019-12-17 11:33:00.000000', '2');
INSERT INTO `courses_video` VALUES ('20', '1.20 Java 方法', '0', '', '2019-12-17 11:33:00.000000', '2');
INSERT INTO `courses_video` VALUES ('21', '1.21 Java 流(Stream)、文件(File)和IO', '0', '', '2019-12-17 11:34:00.000000', '2');
INSERT INTO `courses_video` VALUES ('22', '1.22 Java Scanner 类', '0', '', '2019-12-17 11:34:00.000000', '2');
INSERT INTO `courses_video` VALUES ('23', '1.23 Java 异常处理', '0', '', '2019-12-17 11:34:00.000000', '2');
INSERT INTO `courses_video` VALUES ('24', '2.1 Java 继承', '0', '', '2019-12-17 11:36:00.000000', '3');
INSERT INTO `courses_video` VALUES ('25', '2.2 Java 重写(Override)与重载(Overload)', '0', '', '2019-12-17 11:36:00.000000', '3');
INSERT INTO `courses_video` VALUES ('26', '2.3 Java 多态', '0', '', '2019-12-17 11:37:00.000000', '3');
INSERT INTO `courses_video` VALUES ('27', '2.4 Java 抽象类', '0', '', '2019-12-17 11:37:00.000000', '3');
INSERT INTO `courses_video` VALUES ('28', '2.5 Java 封装', '0', '', '2019-12-17 11:37:00.000000', '3');
INSERT INTO `courses_video` VALUES ('29', '2.6 Java 接口', '0', '', '2019-12-17 11:38:00.000000', '3');
INSERT INTO `courses_video` VALUES ('30', '2.7 Java 包(package)', '0', '', '2019-12-17 11:38:00.000000', '3');
INSERT INTO `courses_video` VALUES ('31', '3.1 Java 数据结构', '0', '', '2019-12-17 11:38:00.000000', '4');
INSERT INTO `courses_video` VALUES ('32', '3.2 Java 集合框架', '0', '', '2019-12-17 11:39:00.000000', '4');
INSERT INTO `courses_video` VALUES ('33', '3.3 Java 泛型', '0', '', '2019-12-17 11:39:00.000000', '4');
INSERT INTO `courses_video` VALUES ('34', '3.4 Java 序列化', '0', '', '2019-12-17 11:39:00.000000', '4');
INSERT INTO `courses_video` VALUES ('35', '3.5 Java 网络编程', '0', '', '2019-12-17 11:39:00.000000', '4');
INSERT INTO `courses_video` VALUES ('36', '3.6 Java 发送邮件', '0', '', '2019-12-17 11:40:00.000000', '4');
INSERT INTO `courses_video` VALUES ('37', '3.7 Java 多线程编程', '0', '', '2019-12-17 11:40:00.000000', '4');
INSERT INTO `courses_video` VALUES ('38', '3.8 Java Applet 基础', '0', '', '2019-12-17 11:40:00.000000', '4');
INSERT INTO `courses_video` VALUES ('39', '3.9 Java 文档注释', '0', '', '2019-12-17 11:41:00.000000', '4');
INSERT INTO `courses_video` VALUES ('40', '3.10 Java 实例', '0', '', '2019-12-17 11:41:00.000000', '4');
INSERT INTO `courses_video` VALUES ('41', '3.11 Java 8 新特性', '0', '', '2019-12-17 11:41:00.000000', '4');
INSERT INTO `courses_video` VALUES ('42', '3.12 Java MySQL 连接', '0', '', '2019-12-17 11:42:00.000000', '4');
INSERT INTO `courses_video` VALUES ('43', '3.13 Java 9 新特性', '0', '', '2019-12-17 11:42:00.000000', '4');
INSERT INTO `courses_video` VALUES ('44', '3.14 Java 测验', '0', '', '2019-12-17 11:42:00.000000', '4');
INSERT INTO `courses_video` VALUES ('2', '1.2java简介', '0', '', '2019-12-17 11:24:00.000000', '2');
INSERT INTO `courses_video` VALUES ('1', '1.1 Hello World', '0', '', '2019-12-17 11:23:00.000000', '2');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-12-01 17:23:25.236640', '2', 'xiaohuo', '1', '[{\"added\": {}}]', '8', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'user', 'banner');
INSERT INTO `django_content_type` VALUES ('7', 'user', 'emailverfyrecord');
INSERT INTO `django_content_type` VALUES ('8', 'user', 'userprofile');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('12', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('13', 'opration', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('14', 'opration', 'userask');
INSERT INTO `django_content_type` VALUES ('15', 'opration', 'usercourse');
INSERT INTO `django_content_type` VALUES ('16', 'opration', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('17', 'opration', 'usermessage');
INSERT INTO `django_content_type` VALUES ('18', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('19', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('20', 'organization', 'teach');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('25', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('26', 'courses', 'bannercourse');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-12-20 11:14:39.538294');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-12-20 11:14:39.812278');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-12-20 11:14:40.124538');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-12-20 11:14:41.258217');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-12-20 11:14:41.278010');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-12-20 11:14:41.296917');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-12-20 11:14:41.316017');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-12-20 11:14:41.321894');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-12-20 11:14:41.340934');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-12-20 11:14:41.369724');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2019-12-20 11:14:41.394227');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2019-12-20 11:14:41.675339');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2019-12-20 11:14:41.697357');
INSERT INTO `django_migrations` VALUES ('14', 'user', '0001_initial', '2019-12-20 11:14:42.196738');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2019-12-20 11:14:43.585925');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2019-12-20 11:14:44.085566');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2019-12-20 11:14:44.101674');
INSERT INTO `django_migrations` VALUES ('18', 'captcha', '0001_initial', '2019-12-20 11:14:44.544112');
INSERT INTO `django_migrations` VALUES ('19', 'organization', '0001_initial', '2019-12-20 11:14:44.949896');
INSERT INTO `django_migrations` VALUES ('20', 'courses', '0001_initial', '2019-12-20 11:14:45.927960');
INSERT INTO `django_migrations` VALUES ('21', 'opration', '0001_initial', '2019-12-20 11:14:47.330852');
INSERT INTO `django_migrations` VALUES ('22', 'opration', '0002_auto_20191220_1114', '2019-12-20 11:14:47.937482');
INSERT INTO `django_migrations` VALUES ('23', 'sessions', '0001_initial', '2019-12-20 11:14:49.101199');
INSERT INTO `django_migrations` VALUES ('24', 'xadmin', '0001_initial', '2019-12-20 11:14:49.710828');
INSERT INTO `django_migrations` VALUES ('25', 'xadmin', '0002_log', '2019-12-20 11:14:50.659904');
INSERT INTO `django_migrations` VALUES ('26', 'xadmin', '0003_auto_20160715_0100', '2019-12-20 11:14:51.231474');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('p56wwiagvw127owasla7e0uk0p6nc8st', 'MjhhYzZlYTAxMTkxMGI4Mjg2YjYwNGI4Mjk5YWQyZGZmOGQ2YmVmOTp7fQ==', '2020-01-03 14:57:51.729301');
INSERT INTO `django_session` VALUES ('dhv2oz71iyutp56v3ucon7pwytiuy1as', 'NWJmYjMyZTE5NTZiZjA2NjkxOWVkZWI2ZDFkNGU0MGQ1YjYwOGM3Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlci52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjMwZGI1Y2Y0YjFmYTQ5OWRkODk2ODUyOWZkZjU4NzlmNzhmZTBkZCIsIkxJU1RfUVVFUlkiOltbIm9yZ2FuaXphdGlvbiIsImNpdHlkaWN0Il0sIiJdfQ==', '2020-01-04 00:46:29.223768');
INSERT INTO `django_session` VALUES ('btziy3oz0w6otzuhcb740td1vdmapx39', 'NTBhZTI4OTkyOGUxMWM0NzllOTdhZjk2ZGE0ZDIxN2EzMzMwN2M3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXIudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImZkMzllYWVlMzNiMjcwZGMzMWU2NWQ4MzBkMjA1ODk5ODcxNGM2N2EifQ==', '2020-01-03 17:13:37.026425');

-- ----------------------------
-- Table structure for opration_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `opration_coursecomments`;
CREATE TABLE `opration_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `opration_coursecomments_course_id_c6f723b7` (`course_id`),
  KEY `opration_coursecomments_user_id_441b8dad` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opration_coursecomments
-- ----------------------------
INSERT INTO `opration_coursecomments` VALUES ('1', '很不错', '2019-12-17 15:48:09.219302', '10', '1');
INSERT INTO `opration_coursecomments` VALUES ('2', '很不错', '2019-12-17 15:58:16.312265', '10', '1');
INSERT INTO `opration_coursecomments` VALUES ('3', '很不错', '2019-12-17 15:58:19.748312', '10', '1');
INSERT INTO `opration_coursecomments` VALUES ('4', '很不错', '2019-12-17 15:58:20.869572', '10', '1');

-- ----------------------------
-- Table structure for opration_userask
-- ----------------------------
DROP TABLE IF EXISTS `opration_userask`;
CREATE TABLE `opration_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opration_userask
-- ----------------------------
INSERT INTO `opration_userask` VALUES ('1', '小火', '13268031035', 'python', '2019-12-13 21:41:30.292194');
INSERT INTO `opration_userask` VALUES ('2', '小火', '15220952215', 'Django', '2019-12-13 22:00:51.245263');

-- ----------------------------
-- Table structure for opration_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `opration_usercourse`;
CREATE TABLE `opration_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `opration_usercourse_course_id_af3f7939` (`course_id`),
  KEY `opration_usercourse_user_id_3ed2323e` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opration_usercourse
-- ----------------------------
INSERT INTO `opration_usercourse` VALUES ('1', '2019-12-15 16:34:00.000000', '10', '1');
INSERT INTO `opration_usercourse` VALUES ('2', '2019-12-15 16:34:00.000000', '5', '1');
INSERT INTO `opration_usercourse` VALUES ('3', '2019-12-15 16:34:00.000000', '8', '1');

-- ----------------------------
-- Table structure for opration_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `opration_userfavorite`;
CREATE TABLE `opration_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `opration_userfavorite_user_id_a14bab68` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opration_userfavorite
-- ----------------------------
INSERT INTO `opration_userfavorite` VALUES ('1', '1', '2', '2019-12-14 23:33:32.260434', '1');
INSERT INTO `opration_userfavorite` VALUES ('7', '9', '1', '2019-12-15 17:16:27.908762', '1');
INSERT INTO `opration_userfavorite` VALUES ('5', '14', '2', '2019-12-15 17:06:34.754830', '1');
INSERT INTO `opration_userfavorite` VALUES ('8', '12', '2', '2019-12-15 17:16:29.387664', '1');
INSERT INTO `opration_userfavorite` VALUES ('10', '10', '1', '2019-12-17 16:19:10.670634', '1');
INSERT INTO `opration_userfavorite` VALUES ('11', '3', '3', '2019-12-20 15:31:56.868555', '1');

-- ----------------------------
-- Table structure for opration_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `opration_usermessage`;
CREATE TABLE `opration_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opration_usermessage
-- ----------------------------
INSERT INTO `opration_usermessage` VALUES ('1', '1', '你的账号密码太短可能被盗，请及时修改密码', '2019-12-20 14:40:00.000000', '1');
INSERT INTO `opration_usermessage` VALUES ('2', '1', '欢迎注册成为一员', '2019-12-20 14:40:00.000000', '1');
INSERT INTO `opration_usermessage` VALUES ('3', '1', '请及时上课以免错过课程', '2019-12-20 14:41:00.000000', '1');
INSERT INTO `opration_usermessage` VALUES ('4', '1', '你的账号密码太短可能被盗，请及时修改密码', '2019-12-20 14:41:00.000000', '1');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '北京市', '北京市', '2019-12-09 21:51:00.000000');
INSERT INTO `organization_citydict` VALUES ('2', '广州市', '广州市', '2019-12-09 21:52:00.000000');
INSERT INTO `organization_citydict` VALUES ('3', '深圳市', '深圳市', '2019-12-09 21:52:00.000000');
INSERT INTO `organization_citydict` VALUES ('4', '上海市', '上海市', '2019-12-09 21:52:00.000000');
INSERT INTO `organization_citydict` VALUES ('5', '天津市', '天津市', '2019-12-09 21:52:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `tag` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `students` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseorg_city_id_4a842f85` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('1', '慕课网', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。\r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。', '全国知名', 'pxjg', '8', '0', 'org/2019/12/慕课.jpg', '北京师海淀区', '0', '0', '2019-12-09 21:54:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('2', '51CTO学院', '51CTO学院（又名51学院）是2013年由51CTO重磅推出的IT在线教育平台。 [1]  51CTO学院汇集各类IT精品视频课程，致力于打造顶尖IT培训讲师、网络技术精品培训课程、培训自测题三位一体的网络教育特色，是国内最完善、最专业的IT在线教育平台。 [2] \r\n51CTO学院聘请网络安全、服务器、Android、iOS、开发技术、云计算、大数据、HTML5、SQLServer、Oracle、数据库等各IT领域、具有丰富实战经验的行业专家，设计包括思科认证、软考、Linux认证、微软认证、H3C认证等各类精品IT课程体系，打造顶尖IT培训讲师、网络技术精品培训课程、培训自测题三位一体的网络教育特色，是国内最完善、最专业的IT在线教育平台。学员可免费在线观看，下载培训课件，并与培训讲师互动交流，参加课程评测。\r\n       51CTO学院聘请网络安全、服务器、Android、iOS、开发技术、云计算、大数据、HTML5、SQLServer、Oracle、数据库等各IT领域、具有丰富实战经验的行业专家，设计包括思科认证、软考、Linux认证、微软认证、H3C认证等各类精品IT课程体系，打造顶尖IT培训讲师、网络技术精品培训课程、培训自测题三位一体的网络教育特色，是国内最完善、最专业的IT在线教育平台。学员可免费在线观看，下载培训课件，并与培训讲师互动交流，参加课程评测。', '全国知名', 'pxjg', '0', '0', 'org/2019/12/51.png', '北京市海淀区中关村南一条甲一号2号楼602A', '0', '0', '2019-12-09 22:01:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('3', '极客学院', '极客学院 是中国android开发在线学习平台，汇集了几十名国内顶尖的有多年项目和实战经验的Android开发授课大师，精心制作了上千个高质量视频教程，涵盖了Android开发学习的基础入门、中级进阶，高级提升、项目实战开发等专业的android开发课程。\r\n极客学院背后是一支疯狂喜欢编程，狂热开发移动app的超有活力团队。他们希望通过最新的，高质量的，专业实战的在线开发课程打破传统的编程学习模式，以新一代的编程学习模式帮助开发者更快更好的学习Android开发，帮助开发者通过技术实现自己的理想。\r\n作为国内最大IT职业在线教育平台，极客学院一直致力于“让学习更有效”，帮助IT从业者在最短的时间内获得最多的知识，技能得到最快的提升。目前，极客学院已拥有60多万IT从业者用户。\r\n极客学院由中国第一本Android开发教程的作者靳岩和姚尚朗于2013年12月创办。靳岩和姚尚朗于2009年出版了中国大陆第一本Android开发教程《GoogleAndroid开发入门与实战》，此教程由人民邮电出版社于2009年出版，自出版后重印高达20多次，已成为国内最畅销的Android开发书籍。\r\n极客学院是中国最权威的android开发在线学习平台，汇集了几十名国内顶尖的有多年项目和实战经验的Android开发授课大师，精心制作了上千个高质量视频教程，涵盖了Android开发学习的基础入门、中级进阶，高级提升、项目实战开发等专业的android开发课程。极客学院希望通过最新的，高质量的，专业实战的在线课程帮助开发者更快更好的学习Android开发，帮助开发者通过技术实现自己的理想。', '全国知名', 'pxjg', '0', '0', 'org/2019/12/极客.jpg', '北京中关村', '0', '0', '2019-12-09 22:03:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('4', '腾讯课堂', '腾讯课堂是腾讯推出的专业在线教育平台，聚合大量优质教育机构和名师，下设职业培训、公务员考试、托福雅思、考证考级、英语口语、中小学教育等众多在线学习精品课程，打造老师在线上课教学、学生及时互动学习的课堂。\r\n腾讯课堂与QQ、QQ群在产品底层有深度整合，在网站课程页面报名成功后，可以在QQ客户端找到已报名的课程，通过QQ客户端直接进入课堂。\r\n腾讯课堂凭借QQ客户端的优势，实现在线即时互动教学；并利用QQ积累多年的音视频能力，提供流畅、高音质的课程直播效果；同时支持PPT演示、屏幕分享等多样化的授课模式，还为教师提供白板、提问等能力。 腾讯创建在线教育平台—腾讯课堂，改善了中国教育资源分布和发展不均的现状，依托互联网，打破地域的限制，让每个立志学习，有梦想的人，都能接受优秀老师的指导和教学；同时希望给优秀的机构及教师一个展示的平台。\r\n不仅如此，QQ群有天然的群聚效应，用户可通过腾讯课堂加入机构认证的官方QQ群，在群内与同学、老师交流，甚至可以添加教师为好友。实现一对一的在线教学指导。通过腾讯课堂平台报名并加入QQ群的用户，群主可以通过名称判别学生的身份、学习情况等。此外，机构在腾讯课堂上绑定的QQ群，可以建立课程表，群成员通过课程表发现课程便可直接点击进入网站报名，对群内用户实现长期的维护效果。\r\n除了技术及用户上的优势，腾讯课堂还配以对教育机构的政策支持。入驻机构在腾讯课堂达到一定评分之后将提供“万元广点通基金”（广点通由腾讯公司推出的效果广告系统，它是依托腾讯优质流量资源平台，提供给广告主多种广告形式投放，并利用专业数据处理算法实现成本可控、效益客观、精准定位的效果广告系统）并安排专业人员进行推广指导，让教育机构在短时间内以“零成本”获得第一批学生。\r\n此外为保证课程质量，针对每家已开课的机构，综合其上课人数，准点开课率，课程好评度等进行评分，按照机构、教师的分数情况按周进行排名，对优秀的机构进行奖励。随着教育机构陆续进驻，腾讯课堂会根据不同机构的发展情况，优化扶持政策，让机构能专注为学员提供优质的课程，让更优秀老师和教育机构脱颖而出。这样一来，由专业的教育机构提供教育课程，而腾讯则负责“在线”及用户，各自发挥所长，形成正向循环，实现互利共赢。', '全国知名', 'pxjg', '0', '0', 'org/2019/12/腾讯课堂.jpg', '深圳市', '0', '0', '2019-12-09 22:05:00.000000', '3');
INSERT INTO `organization_courseorg` VALUES ('5', '百度传课', '百度传课是中国教育领域新兴的在线教育平台，致力于用互联网的方式来打破中国教育资源地域分布的不平衡，精心打造在线课程发布网站、直播互动教室，提供在线直播互动的一站式全方位的专业教育服务。\r\n        百度传课作为中国领先的在线教育平台，一直致力于用互联网的力量突破地域和时间的限制，高效整合教育资源，同时服务于教育企业及个人用户。百度传课以强大的产品、核心技术优势以及专业的咨询服务为有教育、培训和授课等需求的企业提供营销培训体系建立、师资管理、课程安排、授课所需的各种课堂功能以及后期的学习跟踪、效果评估、学习目标延伸等服务，扶持内容、服务兼优的企业成长，帮助其最大限度的实现教育培训目标；同时，将此番不断优选出来的课程内容和学习资源呈现给想要获取知识、实现自我提升的个人用户，打造一个良性的教育生态。', '全国知名', 'pxjg', '0', '0', 'org/2019/12/百度传课.jpg', '北京中关村', '0', '0', '2019-12-09 22:08:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('6', 'CSDN学院', 'CSDN学院是CSDN最新推出的一个面向软件开发者的IT技术职业培训平台，旨在提供优质的IT课程，创造更为方便、快捷的学习方式。自2015年1月发布至今，CSDN学院已拥有了500000+学习用户，签约了400+IT资深讲师，上线了500+优质实战课程。\r\n          CSDN学院课程类型囊括移动开发、编程语言/框架、软件研发、系统/网络、云计算/大数据、数据库、游戏开发、硬件/嵌入式、认证考试、web开发等诸多技术领域，吸引了众多技术大咖、IT学习者的关注。\r\n    CSDN学院主要提供IT各领域精品课程，课程内容囊括云计算/大数据、移动开发、游戏开发、编程语言、Web开发、硬件/嵌入式、软件研发、系统/网络、数据库、办公/设计、认证考试等诸多技术领域。\r\n    CSDN学院的课程分为付费课程和免费课程，免费课程经用户登陆后即可直接进行学习。而付费课程需要用户付费后方可进行学习，CSDN学院每一门付费课程至少有一个课时可供用户免费观看，同时附有完整的课程大纲作为用户购买课程前的参考。\r\n    关于课件\r\n    付费课程的课件仅供付费用户下载，且付费用户享有2年内不限次数在线观看视频课程的特权。2年的期限自成功支付全部课程费用之日起计算。为保证用户最佳听课体验及学习效果，CSDN经营者保留在课程开课前或课程进行过程中提供、更新或完善课程大纲或课件内容的权利。付费课程内容仅供付费用户个人学习、研究使用，不得以任何方式有偿或无偿方式提供给第三方，不得以公开播放、授权使用或任何其他方式传播。', '全国知名', 'pxjg', '0', '0', 'org/2019/12/CSDN.jpg', '北京中关村', '0', '0', '2019-12-09 22:09:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('7', '网易云课堂', '网易云课堂，是网易公司打造的在线实用技能学习平台，该平台于2012年12月底正式上线，主要为学习者提供海量、优质的课程，用户可以根据自身的学习程度，自主安排学习进度。\r\n      网易云课堂立足于实用性的要求，网易云课堂与多家教育、培训机构建立合作，课程数量已达4100+，课时总数超50000,涵盖实用软件、IT与互联网、外语学习、生活家居、兴趣爱好、职场技能、金融管理、考试认证、中小学、亲子教育等十余大门类。', '全国知名', 'pxjg', '0', '0', 'org/2019/12/网易.png', '广州市天河区思蕴路5号自编A2栋2楼01单元', '0', '0', '2019-12-09 22:11:00.000000', '2');
INSERT INTO `organization_courseorg` VALUES ('8', '开课吧', '开课吧是慧科教育科技集团有限公司旗下， 泛互联网人职业提升品牌。\r\n开课吧整合全球知名IT和互联网企业一线师资及实战项目，面向IT、互联网、产业互联网以及使用互联网技术和应用的广大泛互联网从业者，提供Web前端、Java、Python、大数据、人工智能、产品、设计等热门学科的体系化在线课程，并通过人才赋能系统-“驭风系统”重构因材施教和按需学习的多元化教学场景，呈现公开课、微课、小课、大课、厂课等进阶式课程形态，满足用户多层次和个性化学习需求，实现职业提升和可持续成长。 [2] \r\n2019年8月，开课吧创办专注前沿互联网技术领域的创新实战大学“后厂理工学院”，前百度教育事业部总经理、开课吧总裁张高博士担任后厂理工学院首任院长。', '全国知名', 'pxjg', '0', '0', 'org/2019/12/开课吧.jpg', '北京市海淀区东北旺路8号院尚东数字山谷A区1号楼', '0', '0', '2019-12-09 22:13:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('9', '千锋教育', '千锋教育一直秉承“用良心做教育”的理念，中国移动互联网研发人才一体化服务的领导品牌，全力打造移动互联网高端研发人才服务平台。拥有全国权威的移动互联网教学就业保障团队，毕业学员占据了全国移动互联网培训人才一半以上的份额，做到了毕业学员业内高薪水，成为学员信赖的IT培训机构。拥有上百所合作高校，上千家移动方向合作企业。\r\n       公司总部位于北京，目前已在深圳、上海、郑州、广州、大连、武汉、成都、西安、杭州、青岛、重庆、长沙、哈尔滨、南京、太原建立分公司。千锋用微薄之力改变着中国的IT教育培训事业。每年有数十万学员受益于千锋教育组织的技术研讨会、技术培训课、网络公开课以及免费教学视频。\r\n       千锋教育开设HTML5前端、Java、Python、全链路设计、云计算、软件测试、大数据、智能物联网、Unity游戏开发、Go语言开发、网络安全、互联网营销学科，并推出软考、Adobe认证、PMP认证、红帽RHCE认证课程，千锋年培养优质人才20000余人，全国同期在校学员8000余人，组织实施各类讲座4万余场，每年有数百万名学员受益于千锋教育组织的技术研讨会、技术培训课、网络公开课及免费教学视频。', '全国知名', 'pxjg', '0', '0', 'org/2019/12/千峰教育.jpg', '北京中关村', '0', '0', '2019-12-09 22:15:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('10', '北京大学', '北京大学（Peking University），简称“北大”，由中华人民共和国教育部直属，中央直管副部级建制，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“基础学科拔尖学生培养试验计划”、“高等学校创新能力提升计划”、“高等学校学科创新引智计划”，世界百强大学，为国内九校联盟、松联盟、中国大学校长联谊会、京港大学联盟和国际环太平洋大学联盟、全球大学高研院联盟、亚洲大学联盟、东亚研究型大学协会、国际研究型大学联盟、东亚四大学论坛、国际公立大学论坛、中俄综合性大学联盟成员。\r\n北大创立于1898年维新变法之际，初名京师大学堂，是中国近现代第一所国立综合性大学，创办之初也是国家最高教育行政机关。1912年改为国立北京大学。1937年南迁至长沙，与国立清华大学和私立南开大学组成国立长沙临时大学，1938年迁至昆明，更名为国立西南联合大学。1946年复员返回北平。1952年经全国高校院系调整，成为以文理基础学科为主的综合性大学，并自北京城内沙滩等地迁至现址。2000年与原北京医科大学合并，组建为新的北京大学。\r\n北大是新文化运动的中心和五四运动的策源地，最早在中国传播马克思主义和科学、民主思想，是创建中国共产党的重要基地之一。长期以来，北大始终与中国和中国人民共命运，与时代和社会同前进，是培养和造就高素质创造性人才的摇篮，恰如蔡元培先生所言：“大学者，囊括大典，网罗众家之学府也……此思想自由之通则，而大学之所以为大也。”', '知名高校', 'gx', '0', '0', 'org/2019/12/北京大学_CXIcxk9.jpg', '北京市海淀区颐和园路5号', '0', '0', '2019-12-09 22:17:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('11', '清华大学', '清华大学（Tsinghua University），简称“清华”，由中华人民共和国教育部直属，中央直管副部级建制，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“基础学科拔尖学生培养试验计划”、“高等学校创新能力提升计划”、“高等学校学科创新引智计划”，为国内九校联盟、中国大学校长联谊会、松联盟和国际环太平洋大学联盟、亚洲大学联盟、清华—剑桥—MIT低碳大学联盟成员，被誉为“红色工程师的摇篮”。\r\n清华的前身清华学堂始建于1911年，校名“清华”源于校址“清华园”地名，是清政府设立的留美预备学校，其建校的资金源于1908年美国退还的部分庚子赔款。1912年更名为清华学校。1928年更名为国立清华大学。1937年抗日战争全面爆发后南迁长沙，与国立北京大学、私立南开大学组建国立长沙临时大学，1938年迁至昆明改名为国立西南联合大学。1946年迁回清华园。1949年中华人民共和国成立，清华大学进入新的发展阶段。1952年全国高等学校院系调整后成为多科性工业大学。1978年以来逐步恢复和发展为综合性的研究型大学。\r\n水木清华，钟灵毓秀，清华大学秉持“自强不息、厚德载物”的校训和“行胜于言”的校风，坚持“中西融汇、古今贯通、文理渗透”的办学风格和“又红又专、全面发展”的培养特色，弘扬“爱国奉献、追求卓越”传统和“人文日新”精神。恰如清华园工字厅内对联所书——“槛外山光，历春夏秋冬、万千变幻，都非凡境；窗中云影，任东西南北、去来澹荡，洵是仙居”。', '知名高校', 'gx', '0', '0', 'org/2019/12/清华大学_VMdo4sh.png', '海淀区清华大学', '0', '0', '2019-12-09 22:18:00.000000', '1');
INSERT INTO `organization_courseorg` VALUES ('12', '华南理工大学', '华南理工大学（South China University of Technology），简称华南理工，位于广东广州，由中华人民共和国教育部直属，是教育部与广东省人民政府共建的全国重点大学，位列“211工程”、“985工程”、“世界一流大学和一流学科”，入选“高等学校学科创新引智计划”、“卓越工程师教育培养计划”、“卓越法律人才教育培养计划”、新工科研究与实践项目、国家建设高水平大学公派研究生项目、中国政府奖学金来华留学生接收院校、教育部来华留学示范基地，是建筑老八校、卓越大学联盟、中俄工科大学联盟、中欧工程教育平台、粤港澳大湾区物流与供应链创新联盟、中英大学工程教育与研究联盟主要成员；是以工见长，理工结合，管、经、文、法、医等多学科协调发展的综合性研究型大学。\r\n华南理工大学原名华南工学院，组建于1952年全国高等学校院系调整时期，是以中山大学工学院、华南联合大学理工学院、岭南大学理工学院工科系及专业、广东工业专科学校为基础，调入湖南大学、武昌中华大学、武汉交通学院、南昌大学、广西大学等5所院校部分工科系及专业组建而成，1988年更为现名。作为组建基础的中山大学工学院成立于1934年，源于1931年成立的国立中山大学理工学院。\r\n截至2018年7月，学校占地面积约391万平方米。校园分为三个校区，五山校区位于广州市天河区石牌高校区；大学城校区位于广州市番禺区广州大学城内；广州国际校区位于广州市番禺区创新城。', '知名高校', 'gx', '0', '0', 'org/2019/12/华南理工大学_Ecwrwmb.jpg', '天河区五山路381号 | 番禺区广州大学城', '0', '1', '2019-12-09 22:19:00.000000', '2');
INSERT INTO `organization_courseorg` VALUES ('13', '中山大学', '中山大学（Sun Yat-sen University, SYSU），简称“中大”，由孙中山先生创办，由中华人民共和国教育部直属，是教育部、国家国防科技工业局和广东省共建的全国重点大学，位列首批国家“双一流”A类、“985工程”、“211工程”，入选“珠峰计划”、“111计划”、“2011计划”、卓越法律人才教育培养计划、卓越医生教育培养计划、国家建设高水平大学公派研究生项目、新工科研究与实践项目、中国政府奖学金来华留学生接收院校、全国深化创新创业教育改革示范高校、首批高等学校科技成果转化和技术转移基地、学位授权自主审核单位等，是中国高校行星科学联盟、中国人工智能教育联席会、粤港澳大湾区物流与供应链创新联成员。\r\n截至2019年7月，中山大学由广州校区、珠海校区、深圳校区三个校区、五个校园及十家附属医院组成。开设132个本科专业，有博士后科研流动站41个，博士学位授权点（一级学科）49个，硕士学位授权点（一级学科）59个，有专业学位类别37种，有全日制学生51300人。有专任教师3924人。', '知名高校', 'gx', '1', '0', 'org/2019/12/中山大学_nCwdxQl.png', '广州市海珠区新港西路135号（南校区）|       广州市越秀区中山二路074号（北校区）|       广州市番禺区外环东路132号（东校区） |  珠海市珠海市香洲区唐家湾（珠海校区）|  深圳市光明新区东新路南（深圳校区）', '0', '0', '2019-12-09 22:20:00.000000', '2');
INSERT INTO `organization_courseorg` VALUES ('14', '华南农业大学', '华南农业大学（South China Agricultural University），简称华农，是一所以农业科学和生命科学为优势，以热带亚热带区域农业研究为特色的全国重点大学，广东省人民政府和农业农村部共建的省部共建大学，为广东省“211工程”、广东省高水平大学建设高校，入选国家”特色重点学科项目“建设高校、国家建设高水平大学公派研究生项目、教育部三全育人改革试点高校、全国深化创新创业教育改革示范高校、中国政府奖学金来华留学生接收院校、国家“卓越农林人才教育培养计划”改革试点高校、国家大学生文化素质教育基地、首批高等学校科技成果转化和技术转移基地、国家“111计划”，粤港澳高校联盟、CDIO工程教育联盟成员单位。\r\n学校始创于1909年的广东全省农事试验场暨附设农业讲习所。1952年，由中山大学农学院、岭南大学农学院和广西大学农学院畜牧兽医系及病虫害系的一部分合并成立华南农学院，隶属农业部主管。1984年，更名为华南农业大学。2000年，学校由农业部划归广东省主管。 \r\n截至2019年5月，学校天河校本部4407余亩，增城教学科研基地3863余亩，建筑总面积145万平方米；设有26个学院（部）， 98个本科专业；有11个博士后科研流动站，12个博士学位授权一级学科，1个博士专业学位类别，28个硕士学位授权一级学科，12个硕士专业学位类别；5个学科进入ESI全球排名前1%；有教职工约3400人；有全日制在校生4.2万余人，其中本科生3.6万余人，研究生6000余人，留学生133人。', '知名高校', 'gx', '0', '0', 'org/2019/12/c.jpg', '天河区五山483号', '0', '1', '2019-12-09 22:22:00.000000', '2');
INSERT INTO `organization_courseorg` VALUES ('15', '华南师范大学', '华南师范大学（South China Normal University），简称“华南师大”，坐落于广东省广州市，是广东省人民政府和教育部共建高校，入选国家“双一流”世界一流学科建设高校  、首批国家“211工程”重点建设大学，入选国家“111计划”  、“卓越教师培养计划”、广东省高水平大学整体建设高校、广东省重点大学、中国政府奖学金来华留学生接收院校、国家大学生文化素质教育基地，中国100所首批联入CERNET和INTERNET网的高校之一。\r\n华南师范大学始建于1933年，前身是当代著名教育家林砺儒先生创建的广东省立勷勤大学师范学院；1982年10月，易名为华南师范大学；2006年，学校通过“十五”“211工程”建设整体验收。2004年，原中共中央总书记、国家主席胡锦涛出席澳门回归五周年庆典期间，称该校是中国数家名牌师范大学之一。教育家罗浚、汪德亮、五四新诗开创者之一康白情、古代文学家李镜池、古汉语学家吴三立、历史学家王越、逻辑学家李匡武、心理学家阮镜清、教育学家叶佩华、朱勃，数学家叶述武，物理学家黄友谋、刘颂豪等先后在此执教。\r\n截至2017年9月，学校有广州石牌、广州大学城和佛山南海3个校区，占地面积3025亩，校舍面积155万平方米，图书374万册；设有25个二级学院，84个本科专业；有专任教师1979人，研究生导师1161人；有院士（含双聘和外籍）10人，国家“千人计划”入选者12人，长江学者12人；有全日制本科生24894人，硕士研究生7553人，博士研究生842人，博士后在站98人，留学生1019人。', '知名高校', 'gx', '0', '0', 'org/2019/12/华南师范大学_sO2gs0x.jpg', '广州市天河区中山大道西55号（石牌校区）|   番禺区广州大学城外环西路378号（大学城校区）|   佛山市南海区狮山镇南海软件科技园（佛山南海校区）', '0', '0', '2019-12-09 22:23:00.000000', '2');

-- ----------------------------
-- Table structure for organization_teach
-- ----------------------------
DROP TABLE IF EXISTS `organization_teach`;
CREATE TABLE `organization_teach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teach_org_id_6db37cfd` (`org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teach
-- ----------------------------
INSERT INTO `organization_teach` VALUES ('1', 'bobby', '10', '网易', '软件架构师', '简单易懂', '0', '0', '2019-12-13 22:06:00.000000', 'teacher/2019/12/muk.png', '18', '1');
INSERT INTO `organization_teach` VALUES ('2', 'hello', '5', '阿里巴巴', 'CTO', 'ceazy', '0', '0', '2019-12-13 22:06:00.000000', 'teacher/2019/12/51.png', '18', '2');
INSERT INTO `organization_teach` VALUES ('3', '马化腾', '20', '腾讯', 'CEO', 'easy', '2', '1', '2019-12-13 22:07:00.000000', 'teacher/2019/12/mht.jpg', '18', '4');

-- ----------------------------
-- Table structure for user_banner
-- ----------------------------
DROP TABLE IF EXISTS `user_banner`;
CREATE TABLE `user_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_banner
-- ----------------------------
INSERT INTO `user_banner` VALUES ('1', '01', 'banner/2019/12/AL_YfhS55X.png', 'http://www.fireitblog.com/', '1', '2019-12-20 14:23:00.000000');
INSERT INTO `user_banner` VALUES ('2', '02', 'banner/2019/12/AL2_C5weIMh.jpg', 'http://www.fireitblog.com/', '2', '2019-12-20 14:24:00.000000');
INSERT INTO `user_banner` VALUES ('3', '03', 'banner/2019/12/B4_VMGEoB5.gif', 'http://www.fireitblog.com/', '3', '2019-12-20 14:24:00.000000');
INSERT INTO `user_banner` VALUES ('4', '04', 'banner/2019/12/B2.jpg.gif', 'http://www.fireitblog.com/', '4', '2019-12-20 14:24:00.000000');
INSERT INTO `user_banner` VALUES ('5', '05', 'banner/2019/12/B3.gif', 'http://www.fireitblog.com/', '5', '2019-12-20 14:25:00.000000');

-- ----------------------------
-- Table structure for user_emailverfyrecord
-- ----------------------------
DROP TABLE IF EXISTS `user_emailverfyrecord`;
CREATE TABLE `user_emailverfyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(50) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_emailverfyrecord
-- ----------------------------
INSERT INTO `user_emailverfyrecord` VALUES ('18', 'wV0Cg1EBm7VvlLFq', 'userhx520@163.com', 'forget', '2019-12-09 20:52:02.496164');
INSERT INTO `user_emailverfyrecord` VALUES ('17', 'fu1j1mDdBohtTuQC', 'userhx520@163.com', 'forget', '2019-12-09 20:49:22.186225');
INSERT INTO `user_emailverfyrecord` VALUES ('16', '6ZnUatAR0QhxBkYt', 'userhx520@163.com', 'forget', '2019-12-09 20:46:29.662548');

-- ----------------------------
-- Table structure for user_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `user_userprofile`;
CREATE TABLE `user_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_userprofile
-- ----------------------------
INSERT INTO `user_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$iDKgbiMa8h9I$o4A8pmE3IOuVp/GDGFFG3ctToFbfq0EUPUIjhPEK4xo=', '2019-12-20 17:11:33.163206', '1', 'admin', '', '', '1@1.com', '1', '1', '2019-12-20 11:25:00.000000', 'admin', '1999-01-09', 'male', '广州', '15220952215', 'image/2019/12/muk_0vVYH2M.png');
INSERT INTO `user_userprofile` VALUES ('11', 'pbkdf2_sha256$150000$7ZK64c09e8XM$ZBTDLpFJ2hXty8r8KbexddQVDJGfB8JslM1DbfE0pcU=', '2019-12-20 17:13:37.023419', '0', 'apple', '', '', '1041448225@qq.com', '0', '1', '2019-12-20 17:01:00.000000', 'apple', '2019-12-20', 'male', '广州市', '13268031035', 'image/2019/12/c_1POgNvD.jpg');

-- ----------------------------
-- Table structure for user_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_userprofile_groups`;
CREATE TABLE `user_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_userprofile_groups_userprofile_id_group_id_52847a61_uniq` (`userprofile_id`,`group_id`),
  KEY `user_userprofile_groups_userprofile_id_49724c40` (`userprofile_id`),
  KEY `user_userprofile_groups_group_id_98cc4038` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_userprofile_user_permissions`;
CREATE TABLE `user_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_userprofile_user_pe_userprofile_id_permissio_2e86ceca_uniq` (`userprofile_id`,`permission_id`),
  KEY `user_userprofile_user_permissions_userprofile_id_68dc814c` (`userprofile_id`),
  KEY `user_userprofile_user_permissions_permission_id_7f559b23` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2019-12-02 00:59:53.481133', '127.0.0.1', '1', 'EmailVerfyRecord object (1)', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2019-12-02 01:13:25.836554', '127.0.0.1', '2', 'EmailVerfyRecord object (2)', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2019-12-02 01:33:40.828020', '127.0.0.1', '1', 'Course object (1)', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2019-12-02 01:37:32.841877', '127.0.0.1', '1', 'Course object (1)', 'change', '修改 image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2019-12-02 01:39:18.278557', '127.0.0.1', '1', 'Lesson object (1)', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2019-12-02 01:49:27.911265', '127.0.0.1', '2', 'Course object (2)', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2019-12-05 11:46:35.422684', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('8', '2019-12-05 11:47:27.471346', '127.0.0.1', '3', 'xiaohuo', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2019-12-08 15:45:39.916236', '127.0.0.1', '3', 'xiaohuo', 'delete', '', '8', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2019-12-08 15:46:23.542674', '127.0.0.1', '4', 'xiaohuo', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2019-12-08 15:47:06.921872', '127.0.0.1', '4', 'xiaohuo', 'change', '修改 last_login，email，nick_name，address 和 img', '8', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2019-12-08 16:50:40.721769', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('13', '2019-12-08 16:51:09.752409', '127.0.0.1', '5', 'xiaohuo', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2019-12-08 16:51:37.259697', '127.0.0.1', '5', 'xiaohuo', 'change', '修改 nick_name，address 和 img', '8', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2019-12-08 16:52:00.473415', '127.0.0.1', '5', 'xiaohuo', 'change', '修改 email 和 img', '8', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2019-12-08 21:44:14.812828', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('17', '2019-12-08 21:57:56.832300', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('18', '2019-12-08 22:05:43.225915', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('19', '2019-12-08 22:09:12.273980', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('20', '2019-12-08 22:12:39.381232', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('21', '2019-12-09 19:46:49.115363', '127.0.0.1', null, '', 'delete', '批量删除 15 个 邮箱验证码', null, '1');
INSERT INTO `xadmin_log` VALUES ('22', '2019-12-09 21:52:00.319598', '127.0.0.1', '1', 'CityDict object (1)', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2019-12-09 21:52:17.185388', '127.0.0.1', '2', 'CityDict object (2)', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2019-12-09 21:52:31.941587', '127.0.0.1', '3', 'CityDict object (3)', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2019-12-09 21:52:44.039373', '127.0.0.1', '4', 'CityDict object (4)', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2019-12-09 21:52:53.173992', '127.0.0.1', '5', 'CityDict object (5)', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2019-12-09 21:53:01.855180', '127.0.0.1', '5', 'CityDict object (5)', 'change', '没有字段被修改。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2019-12-09 21:58:44.675141', '127.0.0.1', '1', 'CourseOrg object (1)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2019-12-09 22:03:34.897861', '127.0.0.1', '2', '51CTO学院', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2019-12-09 22:05:37.963002', '127.0.0.1', '3', '极客学院', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2019-12-09 22:08:02.472045', '127.0.0.1', '4', '腾讯课堂', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2019-12-09 22:09:27.870687', '127.0.0.1', '5', '百度传课', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2019-12-09 22:11:38.447769', '127.0.0.1', '6', 'CSDN学院', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2019-12-09 22:13:55.887337', '127.0.0.1', '7', '网易云课堂', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2019-12-09 22:15:08.252223', '127.0.0.1', '8', '开课吧', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2019-12-09 22:17:10.839433', '127.0.0.1', '9', '千锋教育', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2019-12-09 22:18:37.558679', '127.0.0.1', '10', '北京大学', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2019-12-09 22:19:38.047394', '127.0.0.1', '11', '清华大学', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2019-12-09 22:20:55.986876', '127.0.0.1', '12', '华南理工大学', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2019-12-09 22:22:59.036883', '127.0.0.1', '13', '中山大学', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2019-12-09 22:23:57.286867', '127.0.0.1', '14', '华南农业大学', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2019-12-09 22:26:00.467487', '127.0.0.1', '15', '华南师范大学', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2019-12-13 22:06:41.126523', '127.0.0.1', '1', 'Teach object (1)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2019-12-13 22:07:03.163141', '127.0.0.1', '2', 'Teach object (2)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2019-12-13 22:07:48.737630', '127.0.0.1', '3', 'Teach object (3)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2019-12-13 22:08:45.611390', '127.0.0.1', '2', 'Teach object (2)', 'change', '修改 work_company，work_position 和 points', '20', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2019-12-13 22:09:15.999021', '127.0.0.1', '1', 'Teach object (1)', 'change', '修改 work_company，work_position 和 points', '20', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2019-12-13 22:17:22.198044', '127.0.0.1', '2', 'python入门', 'change', '修改 course_org 和 image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2019-12-13 22:17:58.621129', '127.0.0.1', '1', 'django课程', 'change', '修改 course_org 和 image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2019-12-13 23:01:39.171470', '127.0.0.1', '3', '马化腾', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2019-12-13 23:10:10.205818', '127.0.0.1', '2', 'hello', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2019-12-13 23:10:19.044463', '127.0.0.1', '1', 'bobby', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2019-12-13 23:33:57.687851', '127.0.0.1', '1', 'django课程', 'change', '修改 course_org 和 image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2019-12-15 14:53:10.387084', '127.0.0.1', '3', '走进PHP后端工程师的世界', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2019-12-15 14:55:39.440079', '127.0.0.1', '4', 'Python/人工智能/零基础就业课', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2019-12-15 14:57:57.261919', '127.0.0.1', '5', 'Java软件工程师培训', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2019-12-15 15:00:21.198853', '127.0.0.1', '6', '程序员必备算法课！', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2019-12-15 15:03:44.933467', '127.0.0.1', '7', '从零到一，Python网页爬虫攻略,城市数据团', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2019-12-15 15:08:05.998994', '127.0.0.1', '8', 'ElasticSearch+Spark 构建高相关性搜索服务&千人千面推荐系统', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2019-12-15 15:10:53.151012', '127.0.0.1', '9', '大前端', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2019-12-15 15:12:02.179656', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2019-12-15 16:26:32.330155', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2019-12-15 16:26:52.097244', '127.0.0.1', '8', 'ElasticSearch+Spark 构建高相关性搜索服务&千人千面推荐系统', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2019-12-15 16:27:16.434989', '127.0.0.1', '7', '从零到一，Python网页爬虫攻略,城市数据团', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2019-12-15 16:27:31.780314', '127.0.0.1', '8', 'ElasticSearch+Spark 构建高相关性搜索服务&千人千面推荐系统', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2019-12-15 16:27:45.285263', '127.0.0.1', '6', '程序员必备算法课！', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2019-12-15 16:28:05.098988', '127.0.0.1', '5', 'Java软件工程师培训', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2019-12-15 16:28:26.500199', '127.0.0.1', '4', 'Python/人工智能/零基础就业课', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2019-12-15 16:28:41.715748', '127.0.0.1', '3', '走进PHP后端工程师的世界', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2019-12-15 16:28:55.700124', '127.0.0.1', '2', 'python入门', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2019-12-15 16:29:14.139185', '127.0.0.1', '1', 'django课程', 'change', '修改 image 和 category', '9', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2019-12-15 16:34:40.239410', '127.0.0.1', '1', 'UserCourse object (1)', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2019-12-15 16:34:48.792416', '127.0.0.1', '2', 'UserCourse object (2)', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2019-12-15 16:34:58.935042', '127.0.0.1', '3', 'UserCourse object (3)', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2019-12-15 16:36:15.247406', '127.0.0.1', '1', 'admin', 'change', '修改 last_login，nick_name，address 和 img', '8', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2019-12-15 16:54:48.945240', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'change', '修改 image 和 tag', '9', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2019-12-15 16:55:12.597383', '127.0.0.1', '9', '大前端', 'change', '修改 image，category 和 tag', '9', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2019-12-15 16:56:29.179372', '127.0.0.1', '8', 'ElasticSearch+Spark 构建高相关性搜索服务&千人千面推荐系统', 'change', '修改 image 和 tag', '9', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2019-12-15 16:56:42.362776', '127.0.0.1', '7', '从零到一，Python网页爬虫攻略,城市数据团', 'change', '修改 image 和 tag', '9', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2019-12-17 11:21:38.969325', '127.0.0.1', '2', '第一节 基础知识', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2019-12-17 11:21:56.346928', '127.0.0.1', '3', '第二节 进阶开发', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2019-12-17 11:22:09.125528', '127.0.0.1', '4', '第三节 高级开发', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2019-12-17 11:23:58.943646', '127.0.0.1', '1', '1.1 Hello World', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2019-12-17 11:25:19.956103', '127.0.0.1', '2', '1.2java简介', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2019-12-17 11:25:47.488633', '127.0.0.1', '3', '1.3 Java 开发环境配置', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2019-12-17 11:26:06.841019', '127.0.0.1', '4', '1.4 Java 基础语法', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2019-12-17 11:26:28.746653', '127.0.0.1', '5', '1.1 Java 对象和类', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2019-12-17 11:26:58.933827', '127.0.0.1', '6', '1.2 Java 基本数据类型', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2019-12-17 11:27:16.495422', '127.0.0.1', '7', '1.3 Java 变量类型', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2019-12-17 11:27:35.298067', '127.0.0.1', '8', '1.4 Java 修饰符', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2019-12-17 11:27:51.799207', '127.0.0.1', '9', '1.5 Java 运算符', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2019-12-17 11:28:26.189696', '127.0.0.1', '10', 'Java 循环结构 - for, while 及 do...while', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2019-12-17 11:29:09.042574', '127.0.0.1', '11', '1.1  Java 条件语句 - if...else', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2019-12-17 11:29:20.500008', '127.0.0.1', '10', '1.6Java 循环结构 - for, while 及 do...while', 'change', '修改 lesson 和 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('95', '2019-12-17 11:29:56.950988', '127.0.0.1', '5', '1.5 Java 对象和类', 'change', '修改 lesson 和 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('96', '2019-12-17 11:30:05.438942', '127.0.0.1', '10', 'Java 循环结构 - for, while 及 do...while', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('97', '2019-12-17 11:30:18.556489', '127.0.0.1', '6', '1.6 Java 基本数据类型', 'change', '修改 lesson 和 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('98', '2019-12-17 11:30:34.886939', '127.0.0.1', '7', '1.7 Java 变量类型', 'change', '修改 lesson 和 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('99', '2019-12-17 11:30:41.223441', '127.0.0.1', '8', '1.8 Java 修饰符', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('100', '2019-12-17 11:30:48.167116', '127.0.0.1', '8', '1.8 Java 修饰符', 'change', '修改 lesson', '11', '1');
INSERT INTO `xadmin_log` VALUES ('101', '2019-12-17 11:30:56.033171', '127.0.0.1', '9', '1.9 Java 运算符', 'change', '修改 lesson 和 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('102', '2019-12-17 11:31:03.588786', '127.0.0.1', '10', '1.10 Java 循环结构 - for, while 及 do...while', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('103', '2019-12-17 11:31:11.164417', '127.0.0.1', '11', '1.11  Java 条件语句 - if...else', 'change', '修改 lesson 和 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('104', '2019-12-17 11:31:35.090393', '127.0.0.1', '12', 'Java switch case 语句', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('105', '2019-12-17 11:31:42.661404', '127.0.0.1', '12', '1.12 Java switch case 语句', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('106', '2019-12-17 11:32:12.888984', '127.0.0.1', '13', '1.13 Java Number & Math 类', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('107', '2019-12-17 11:32:31.845265', '127.0.0.1', '14', '1.14 Java Character 类', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('108', '2019-12-17 11:32:50.555065', '127.0.0.1', '15', '1.15 Java String 类', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('109', '2019-12-17 11:33:08.535718', '127.0.0.1', '16', '1.16 Java StringBuffer 和 StringBuilder 类', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('110', '2019-12-17 11:33:25.480092', '127.0.0.1', '17', '1.16 Java 数组', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('111', '2019-12-17 11:33:43.286184', '127.0.0.1', '18', '1.17 Java 日期时间', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('112', '2019-12-17 11:33:58.811063', '127.0.0.1', '19', '1.18 Java 正则表达式', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('113', '2019-12-17 11:34:17.346573', '127.0.0.1', '20', '1.19 Java 方法', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('114', '2019-12-17 11:34:35.842494', '127.0.0.1', '21', '1.20 Java 流(Stream)、文件(File)和IO', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('115', '2019-12-17 11:34:52.063906', '127.0.0.1', '22', '1.21 Java Scanner 类', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('116', '2019-12-17 11:35:11.507766', '127.0.0.1', '23', '1.22 Java 异常处理', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('117', '2019-12-17 11:35:32.593209', '127.0.0.1', '17', '1.17 Java 数组', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('118', '2019-12-17 11:35:41.557389', '127.0.0.1', '18', '1.18 Java 日期时间', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('119', '2019-12-17 11:35:49.289350', '127.0.0.1', '19', '1.19 Java 正则表达式', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('120', '2019-12-17 11:35:57.865007', '127.0.0.1', '20', '1.20 Java 方法', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('121', '2019-12-17 11:36:03.986374', '127.0.0.1', '21', '1.21 Java 流(Stream)、文件(File)和IO', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('122', '2019-12-17 11:36:09.613373', '127.0.0.1', '22', '1.22 Java Scanner 类', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('123', '2019-12-17 11:36:14.642639', '127.0.0.1', '23', '1.23 Java 异常处理', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('124', '2019-12-17 11:36:45.586133', '127.0.0.1', '24', '1.1 Java 继承', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('125', '2019-12-17 11:36:51.112747', '127.0.0.1', '24', '2.1 Java 继承', 'change', '修改 name', '11', '1');
INSERT INTO `xadmin_log` VALUES ('126', '2019-12-17 11:37:16.750993', '127.0.0.1', '25', '2.2 Java 重写(Override)与重载(Overload)', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('127', '2019-12-17 11:37:34.346566', '127.0.0.1', '26', '2.3 Java 多态', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('128', '2019-12-17 11:37:49.771686', '127.0.0.1', '27', '2.4 Java 抽象类', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('129', '2019-12-17 11:38:07.075903', '127.0.0.1', '28', '2.5 Java 封装', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('130', '2019-12-17 11:38:23.662024', '127.0.0.1', '29', '2.6 Java 接口', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('131', '2019-12-17 11:38:42.647905', '127.0.0.1', '30', '2.7 Java 包(package)', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('132', '2019-12-17 11:39:09.636777', '127.0.0.1', '31', '3.1 Java 数据结构', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('133', '2019-12-17 11:39:26.926627', '127.0.0.1', '32', '3.2 Java 集合框架', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('134', '2019-12-17 11:39:43.446835', '127.0.0.1', '33', '3.3 Java 泛型', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('135', '2019-12-17 11:39:59.781979', '127.0.0.1', '34', '3.4 Java 序列化', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('136', '2019-12-17 11:40:14.461949', '127.0.0.1', '35', '3.5 Java 网络编程', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('137', '2019-12-17 11:40:29.766394', '127.0.0.1', '36', '3.6 Java 发送邮件', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('138', '2019-12-17 11:40:48.529252', '127.0.0.1', '37', '3.7 Java 多线程编程', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('139', '2019-12-17 11:41:04.197803', '127.0.0.1', '38', '3.8 Java Applet 基础', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('140', '2019-12-17 11:41:36.471656', '127.0.0.1', '39', '3.9 Java 文档注释', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('141', '2019-12-17 11:41:53.422639', '127.0.0.1', '40', '3.10 Java 实例', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('142', '2019-12-17 11:42:10.271389', '127.0.0.1', '41', '3.11 Java 8 新特性', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('143', '2019-12-17 11:42:31.698841', '127.0.0.1', '42', '3.12 Java MySQL 连接', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('144', '2019-12-17 11:42:53.045248', '127.0.0.1', '43', '3.13 Java 9 新特性', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('145', '2019-12-17 11:43:10.756619', '127.0.0.1', '44', '3.14 Java 测验', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('146', '2019-12-17 14:27:15.075790', '127.0.0.1', '1', 'Java页面', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('147', '2019-12-17 14:38:24.795638', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'change', '修改 teach 和 image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('148', '2019-12-17 14:45:00.656870', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'change', '修改 learn_time，students，fav_nums，image，youneed_konw 和 teacher_tell', '9', '1');
INSERT INTO `xadmin_log` VALUES ('149', '2019-12-17 14:46:14.047531', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'change', '修改 image 和 youneed_konw', '9', '1');
INSERT INTO `xadmin_log` VALUES ('150', '2019-12-17 21:19:06.805751', '127.0.0.1', '1', '1.1 Hello World', 'change', '修改 url', '11', '1');
INSERT INTO `xadmin_log` VALUES ('151', '2019-12-17 21:19:47.930134', '127.0.0.1', '1', '1.1 Hello World', 'change', '没有字段被修改。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('152', '2019-12-17 21:40:49.438285', '127.0.0.1', '1', '1.1 Hello World', 'change', '没有字段被修改。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('153', '2019-12-17 21:40:55.884479', '127.0.0.1', '2', '1.2java简介', 'change', '修改 url', '11', '1');
INSERT INTO `xadmin_log` VALUES ('154', '2019-12-17 21:41:01.370024', '127.0.0.1', '3', '1.3 Java 开发环境配置', 'change', '修改 url', '11', '1');
INSERT INTO `xadmin_log` VALUES ('155', '2019-12-20 14:24:16.352820', '127.0.0.1', '1', 'Banner object (1)', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('156', '2019-12-20 14:24:30.282102', '127.0.0.1', '2', 'Banner object (2)', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('157', '2019-12-20 14:24:56.656020', '127.0.0.1', '3', 'Banner object (3)', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('158', '2019-12-20 14:25:14.443380', '127.0.0.1', '4', 'Banner object (4)', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('159', '2019-12-20 14:25:26.843801', '127.0.0.1', '3', 'Banner object (3)', 'change', '修改 image 和 index', '6', '1');
INSERT INTO `xadmin_log` VALUES ('160', '2019-12-20 14:25:44.252153', '127.0.0.1', '5', 'Banner object (5)', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('161', '2019-12-20 14:39:55.635879', '127.0.0.1', '1', 'admin', 'change', '修改 last_login 和 img', '8', '1');
INSERT INTO `xadmin_log` VALUES ('162', '2019-12-20 14:40:51.934226', '127.0.0.1', '1', 'UserMessage object (1)', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('163', '2019-12-20 14:41:05.505818', '127.0.0.1', '2', 'UserMessage object (2)', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('164', '2019-12-20 14:41:37.047471', '127.0.0.1', '3', 'UserMessage object (3)', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('165', '2019-12-20 14:42:14.435041', '127.0.0.1', '4', 'UserMessage object (4)', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('166', '2019-12-20 14:42:50.548616', '127.0.0.1', null, '', 'delete', '批量删除 1 个 用户信息', null, '1');
INSERT INTO `xadmin_log` VALUES ('167', '2019-12-20 14:48:46.530328', '127.0.0.1', '15', '华南师范大学', 'change', '修改 tag 和 image', '19', '1');
INSERT INTO `xadmin_log` VALUES ('168', '2019-12-20 14:49:06.189592', '127.0.0.1', '14', '华南农业大学', 'change', '修改 tag 和 image', '19', '1');
INSERT INTO `xadmin_log` VALUES ('169', '2019-12-20 14:49:24.350332', '127.0.0.1', '13', '中山大学', 'change', '修改 tag 和 image', '19', '1');
INSERT INTO `xadmin_log` VALUES ('170', '2019-12-20 14:49:38.213304', '127.0.0.1', '12', '华南理工大学', 'change', '修改 tag 和 image', '19', '1');
INSERT INTO `xadmin_log` VALUES ('171', '2019-12-20 14:49:53.596042', '127.0.0.1', '11', '清华大学', 'change', '修改 tag 和 image', '19', '1');
INSERT INTO `xadmin_log` VALUES ('172', '2019-12-20 14:50:09.163631', '127.0.0.1', '10', '北京大学', 'change', '修改 tag 和 image', '19', '1');
INSERT INTO `xadmin_log` VALUES ('173', '2019-12-20 17:01:57.480316', '127.0.0.1', '11', 'apple', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('174', '2019-12-20 17:02:33.033161', '127.0.0.1', '11', 'apple', 'change', '修改 nick_name，birday，gender，address，mobile 和 img', '8', '1');
INSERT INTO `xadmin_log` VALUES ('175', '2019-12-20 17:02:46.812139', '127.0.0.1', '11', 'apple', 'change', '修改 email 和 img', '8', '1');
INSERT INTO `xadmin_log` VALUES ('176', '2019-12-20 17:18:04.354818', '127.0.0.1', '1', '课程编辑部门', 'create', '已添加。', '3', '1');
INSERT INTO `xadmin_log` VALUES ('177', '2019-12-21 00:11:28.842055', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'change', '修改 detail，is_banner 和 image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('178', '2019-12-21 00:14:30.760736', '127.0.0.1', '9', '大前端', 'change', '修改 detail，teach，image，youneed_konw 和 teacher_tell', '9', '1');
INSERT INTO `xadmin_log` VALUES ('179', '2019-12-21 00:37:57.560628', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'change', '修改 is_banner 和 image', '26', '1');
INSERT INTO `xadmin_log` VALUES ('180', '2019-12-21 00:43:36.743796', '127.0.0.1', '10', 'Java架构师体系课：跟随千万级项目从0到100全过程高效成长', 'change', '修改 is_banner 和 image', '26', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'user_userprofile_editform_portal', ',,,,|', '1');
INSERT INTO `xadmin_usersettings` VALUES ('3', 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
