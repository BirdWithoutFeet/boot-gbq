/*
 Navicat Premium Data Transfer

 Source Server         : Gongs
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : db_blog

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 26/05/2022 18:18:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleHeadPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章封面',
  `articleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章名称',
  `articleTag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标签',
  `articleRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章简介',
  `articleReadCount` int(11) NULL DEFAULT 0 COMMENT '文章阅读量',
  `articleState` int(11) NULL DEFAULT 0 COMMENT '文章状态',
  `managerId` int(11) NULL DEFAULT NULL,
  `managerName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者名称',
  `articleContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `createTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `articleType` int(2) NULL DEFAULT NULL COMMENT '文章类型',
  `articleStarNum` int(11) NULL DEFAULT NULL COMMENT '文章点赞数',
  `articleConNum` int(11) NULL DEFAULT NULL COMMENT '文章评论数',
  `enclosure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ARTICLE_NAME`(`articleName`) USING BTREE COMMENT '文章名称索引'
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES (1, 'http://www.aquestian.cn/pic/group1/M00/00/00/rB-ydV3aFCKASUKdAAGGagDzDpM086.jpg', '菜逼博主', '', '菜逼博主', 591, 1, 1, 'aqian666', '<p>小垃圾一个</p>', '2019-11-24 13:28:08', 1000, NULL, NULL, NULL);
INSERT INTO `blog_article` VALUES (2, 'https://img2018.cnblogs.com/blog/1527989/201812/1527989-20181228140741668-18101786.png', '222222', '123', '231', 260, 23, 3, '123', '232', '2021-01-31 12:47:33', NULL, NULL, NULL, NULL);
INSERT INTO `blog_article` VALUES (47, 'http://localhost/0c61bfeac631fe5818e8fafc95729e9a.jpg', '123', 'Java,Vue,', '123', 30, 0, 5, 'lala', '<p>123</p>\n', '2021-01-31 12:47:33', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for blog_car
-- ----------------------------
DROP TABLE IF EXISTS `blog_car`;
CREATE TABLE `blog_car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `manager_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_car
-- ----------------------------
INSERT INTO `blog_car` VALUES (1, 1);

-- ----------------------------
-- Table structure for blog_car_good
-- ----------------------------
DROP TABLE IF EXISTS `blog_car_good`;
CREATE TABLE `blog_car_good`  (
  `good_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`good_id`, `car_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_car_good
-- ----------------------------
INSERT INTO `blog_car_good` VALUES (1, 1);
INSERT INTO `blog_car_good` VALUES (2, 1);
INSERT INTO `blog_car_good` VALUES (3, 1);
INSERT INTO `blog_car_good` VALUES (4, 1);

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_category
-- ----------------------------

-- ----------------------------
-- Table structure for blog_code
-- ----------------------------
DROP TABLE IF EXISTS `blog_code`;
CREATE TABLE `blog_code`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `vaule` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型',
  `status` int(2) NULL DEFAULT 1 COMMENT '状态',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_code
-- ----------------------------

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `createTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  `byManagerId` int(11) NULL DEFAULT NULL COMMENT '评论人',
  `pid` int(11) NULL DEFAULT NULL COMMENT '被评论人',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `articleName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES (1, 21, '哈哈', '2021-01-31', 1, NULL, '啊钱666', NULL);
INSERT INTO `blog_comment` VALUES (3, 21, '123123123', '2021-01-31 12:51:36', 5, 1, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (4, 21, 'shabi', '2021-01-31 16:41:58', 5, 3, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (5, 21, 'niniubi', '2021-01-31 16:42:32', 5, 1, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (6, 21, 'yo man', '2021-01-31 16:42:57', 5, 4, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (7, 21, 'HAHAH', '2021-01-31 16:48:51', 5, 1, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (8, 21, 'OJBK', '2021-01-31 16:49:45', 5, 6, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (9, 21, 'ABC', '2021-01-31 16:50:04', 5, 1, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (10, 21, '中国第一', '2021-01-31 16:50:41', 5, 4, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (11, 47, 'pilal', '2021-02-06 09:36:04', 5, NULL, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (12, 47, 'asdasd', '2021-02-06 09:36:16', 5, 11, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (13, 47, 'xczxczcxzxc', '2021-02-06 09:36:28', 5, 12, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (14, 47, 'zxczxc', '2021-02-06 09:36:41', 5, 13, 'lala', NULL);
INSERT INTO `blog_comment` VALUES (15, 1, 'ada', '2022-05-24 15:06:43', 1, NULL, 'aqian666', '菜逼博主');
INSERT INTO `blog_comment` VALUES (16, 1, '你好', '2022-05-24 16:56:13', 1, NULL, 'aqian666', '菜逼博主');

-- ----------------------------
-- Table structure for blog_friend_address
-- ----------------------------
DROP TABLE IF EXISTS `blog_friend_address`;
CREATE TABLE `blog_friend_address`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '友链名称',
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '友链地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_friend_address
-- ----------------------------
INSERT INTO `blog_friend_address` VALUES (1, '伊成', 'http://www.devcheng.net/');
INSERT INTO `blog_friend_address` VALUES (2, '筱进GG', 'http://www.cicoding.cn/');
INSERT INTO `blog_friend_address` VALUES (3, '理想乡', 'https://www.yanghainan.top');
INSERT INTO `blog_friend_address` VALUES (4, '空梦', 'http://youke0.xyz');
INSERT INTO `blog_friend_address` VALUES (5, '凯奇', 'https://www.sjl511.top/');
INSERT INTO `blog_friend_address` VALUES (6, '小谢', 'https://Atjava.github.io ');

-- ----------------------------
-- Table structure for blog_good_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_good_comment`;
CREATE TABLE `blog_good_comment`  (
  `id` int(11) NOT NULL,
  `good_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `update_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_good_comment
-- ----------------------------

-- ----------------------------
-- Table structure for blog_good_history
-- ----------------------------
DROP TABLE IF EXISTS `blog_good_history`;
CREATE TABLE `blog_good_history`  (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '搜索关键字',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_good_history
-- ----------------------------

-- ----------------------------
-- Table structure for blog_goods
-- ----------------------------
DROP TABLE IF EXISTS `blog_goods`;
CREATE TABLE `blog_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品资源源地址',
  `source` tinyint(4) NULL DEFAULT NULL COMMENT '来源（0：未知 1：京东 2：淘宝 3：拼多多）',
  `sale` int(11) NULL DEFAULT NULL COMMENT '销量',
  `degree` double NULL DEFAULT NULL COMMENT '好评率',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片地址',
  `shop_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_goods
-- ----------------------------
INSERT INTO `blog_goods` VALUES (1, '商品1', '1111', 0, 500, 58.2, 'imageurl', '啥都好', 100.00);
INSERT INTO `blog_goods` VALUES (2, '商品2', '1111111', 0, 400, 10.2, 'imageurl', '啥都好', 99.90);
INSERT INTO `blog_goods` VALUES (3, '商品3', '22222', 2, 90, 90.1, 'imageurl', '不太好', 10.90);
INSERT INTO `blog_goods` VALUES (4, '哇哈哈', '22222', 2, 80, 10.8, 'imageurl', '哇哈哈专卖店', 2.50);

-- ----------------------------
-- Table structure for blog_ip_address
-- ----------------------------
DROP TABLE IF EXISTS `blog_ip_address`;
CREATE TABLE `blog_ip_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `managerId` int(11) NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问ip',
  `status` int(2) NULL DEFAULT 1 COMMENT '状态',
  `loginTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_ip_address
-- ----------------------------
INSERT INTO `blog_ip_address` VALUES (1, 1, '0:0:0:0:0:0:0:1', 1, '2022-05-26 16:24:59');
INSERT INTO `blog_ip_address` VALUES (2, 1, '36.106.85.51', 1, '2019-11-07 14:24:17');
INSERT INTO `blog_ip_address` VALUES (3, 1, '192.168.1.188', 1, '2019-11-07 14:19:55');
INSERT INTO `blog_ip_address` VALUES (4, 1, '127.0.0.1', 1, '2022-05-24 14:22:35');
INSERT INTO `blog_ip_address` VALUES (5, 3, '0:0:0:0:0:0:0:1', 1, '2021-01-21 22:59:28');
INSERT INTO `blog_ip_address` VALUES (6, 5, '0:0:0:0:0:0:0:1', 1, '2021-02-06 11:05:09');
INSERT INTO `blog_ip_address` VALUES (7, 6, '0:0:0:0:0:0:0:1', 1, '2022-05-25 12:49:35');

-- ----------------------------
-- Table structure for blog_manager
-- ----------------------------
DROP TABLE IF EXISTS `blog_manager`;
CREATE TABLE `blog_manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `agipassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '临时密码',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `headPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(2) NULL DEFAULT 1 COMMENT '状态',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_manager
-- ----------------------------
INSERT INTO `blog_manager` VALUES (1, '房管大人', 'admin', NULL, 'e10adc3949ba59abbe56e057f20f883e', '1.png', '2019-11-12 10:33:47', 1, '超级管理员');
INSERT INTO `blog_manager` VALUES (5, 'lala', '289373410@qq.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 1, '博主');
INSERT INTO `blog_manager` VALUES (6, '缺失率', '1210849153@qq.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-05-25 12:46:19', 1, '博主');
INSERT INTO `blog_manager` VALUES (7, '你好吗', '11111111@qq.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '2022-05-25 12:49:17', 1, '博主');

-- ----------------------------
-- Table structure for blog_music
-- ----------------------------
DROP TABLE IF EXISTS `blog_music`;
CREATE TABLE `blog_music`  (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '音乐名称',
  `artist` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲来源',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲封面',
  `lrc` varchar(8000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌词',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_music
-- ----------------------------
INSERT INTO `blog_music` VALUES (1, '听妈妈的话', '周杰伦', 'http://www.170mv.com/kw/antiserver.kuwo.cn/anti.s?rid=MUSIC_138243&response=res&format=mp3|aac&type=convert_url&br=128kmp3&agent=iPhone&callback=getlink&jpcallback=getlink.mp3', 'http://img1.kuwo.cn/star/starheads/240/42/97/3914752958.jpg', '[00:11.64]小朋友 你是否有很多问号 \\n[00:14.26]为什么 别人在那看漫画 \\n[00:16.89]我却在学画画 对这钢琴说话 \\n[00:19.37]别人在玩游戏 我却靠在墙壁背我的ABC \\n[00:22.38]我说我要一架大大的飞机 \\n[00:24.91]我却得到一只旧旧螺旋机 \\n[00:27.48]为什么要听妈妈的话 \\n[00:29.79]长大后你就会开始懂得这段话 哼 \\n[00:32.26]长大后我开始明白 \\n[00:35.23]为什么我 跑得比别人快 \\n[00:36.64]飞得比别人高 \\n[00:37.88]将来大家看的都是我画的漫画 \\n[00:40.23]大家唱的都是 我写的歌 \\n[00:42.95]妈妈的辛苦 不让你看见 \\n[00:45.57]温暖的事都在她心里面 \\n[00:48.01]有空就得多摸摸她的手 \\n[00:50.70]把手牵着一起梦游 \\n[00:53.10]听妈妈的话 别让她受伤 \\n[01:03.14]想快快长大 才能保护她 \\n[01:12.93]美丽的白发 幸福中发芽 \\n[01:23.96]天使的魔法 温暖中慈祥 \\n[01:34.43]在你的未来 音乐是你的王牌 \\n[01:36.21]那王牌谈的恋爱 \\n[01:37.68]而我不想把你教坏 \\n[01:39.21]还是听妈妈的话吧 \\n[01:40.52]晚点在恋爱吧 \\n[01:41.96]我知道你未来的路 \\n[01:44.09]干嘛比我更清楚 \\n[01:45.40]你因为太多学习的同学 \\n[01:46.53]在这块写东写西 \\n[01:47.50]但我建议最好听妈妈 \\n[01:49.10]我会用功读书 \\n[01:50.23]用功读书怎么会从我嘴巴说出 \\n[01:52.34]不想你输所以要叫你用功读书 \\n[01:55.47]妈妈挑给你的毛病你要好好的收着 \\n[01:57.56]因为不知道是我要告诉她我还留着 \\n[01:59.91]对了 我会遇到了周润发 \\n[02:02.31]所以你可以跟同学炫耀 \\n[02:03.38]赌神未来是你爸爸 \\n[02:04.47]我找不到你写的情书 \\n[02:06.94]你喜欢的要承认 \\n[02:08.02]因为我会了解你会在操场上牵她 \\n[02:09.40]你会开始喜欢唱流行歌 \\n[02:12.81]因为张学友开始准备唱吻别 \\n[02:15.43]听妈妈的话 别让她受伤 \\n[02:26.22]想快快长大 才能保护她 \\n[02:36.16]美丽的白发 幸福中发芽 \\n[02:46.66]天使的魔法 温暖中慈祥 \\n[02:56.68]听妈妈的话 别让她受伤 \\n[03:07.46]想快快长大 才能保护她 \\n[03:17.27]长大后我开始明白 为什么我 \\n[03:20.81]跑得比别人快 飞得比别人高 \\n[03:22.56]将来大家看的都是我画的漫画 \\n[03:25.52]大家唱的都是我写的歌 \\n[03:28.31]妈妈的辛苦她不让你看见 \\n[03:30.72]温暖的事都在她心里面 \\n[03:33.31]有空就得多摸摸她的手 \\n[03:36.15]把手牵着一起梦游 \\n[03:38.34]听妈妈的话 别让她受伤 \\n[03:48.72]想快快长大 才能保护她 \\n[03:59.10]美丽的白发 幸福中发芽 \\n[04:09.32]天使的魔法 温暖中慈祥');
INSERT INTO `blog_music` VALUES (2, '以父之名', '周杰伦', 'http://www.170mv.com/kw/antiserver.kuwo.cn/anti.s?rid=MUSIC_28386348&response=res&format=mp3|aac&type=convert_url&br=128kmp3&agent=iPhone&callback=getlink&jpcallback=getlink.mp3', 'https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=ce3122aecb8065387beaa315afe6c679/d01373f082025aaff92dd92bfaedab64034f1a36.jpg', '\\n[00:18.80]以父之名 \\n[00:35.80]周杰伦 \\n[00:52.80]制作人：秋晓之 QQ：285552115 \\n[01:09.80] \\n[01:26.56]微凉的晨露沾湿黑礼服 \\n[01:29.67]石板路有雾父在低诉 \\n[01:32.52]无奈的觉悟只能更残酷 \\n[01:35.33]一切都为了通往圣堂的路 \\n[01:38.02]吹不散的雾隐没了意图 \\n[01:40.67]谁轻柔踱步停住 \\n[01:43.34]还来不及哭穿过的子弹就带走温度 \\n[01:47.15] \\n[01:48.69]我们每个人都有罪 \\n[01:50.44]犯着不同的罪 \\n[01:51.77]我能决定谁对 \\n[01:53.15]谁又该要沉睡 \\n[01:54.53]争论不能解决 \\n[01:55.76]在永无止境的夜 \\n[01:57.35]关掉你的嘴 \\n[01:58.69]唯一的恩惠 \\n[01:59.88]挡在前面的人都有罪 \\n[02:01.18]后悔也无路可退 \\n[02:02.64]以父之名判决 \\n[02:03.96]那感觉没有适合词汇 \\n[02:05.59]就像边笑边掉泪 \\n[02:07.04]凝视着完全的黑 \\n[02:08.42]阻挡悲剧蔓延的悲剧会让我沉醉 \\n[02:10.72]低头亲吻我的左手 \\n[02:12.17]换取被宽恕的承诺 \\n[02:13.50]老旧管风琴在角落 \\n[02:14.93]一直一直一直伴奏 \\n[02:16.25]黑色帘幕被风吹动 \\n[02:17.66]阳光无言地穿透 \\n[02:19.18]洒向那群被我驯服后的 兽 \\n[02:21.88]沉默地喊叫沉默地喊叫 \\n[02:23.55]孤单开始发酵 \\n[02:24.88]不停对着我嘲笑 \\n[02:26.29]回忆逐渐燃烧 \\n[02:27.66]曾经纯真的画面 \\n[02:28.77]残忍地温柔出现 \\n[02:30.21]脆弱时间到 \\n[02:31.33]我们一起来祷告 \\n[02:32.95]仁慈的父我已坠入 \\n[02:35.73]看不见罪的国度 \\n[02:38.77]请原谅我的自负 \\n[02:41.68] \\n[02:43.77]没人能说没人可说 \\n[02:46.59]好难承受 \\n[02:48.67]荣耀的背后刻着一道孤独 \\n[02:52.52] \\n[02:54.66]闭上双眼我又看见 \\n[02:57.67]当年那梦的画面 \\n[03:00.59]天空是蒙蒙的雾 \\n[03:03.56] \\n[03:05.76]父亲牵着我的双手 \\n[03:08.66]轻轻走过 \\n[03:10.67]清晨那安安静静的石板路 \\n[03:14.58] \\n[03:46.34]低头亲吻我的左手 \\n[03:47.88]换取被宽恕的承诺 \\n[03:49.21]老旧管风琴在角落 \\n[03:50.68]一直一直一直伴奏 \\n[03:52.21]黑色帘幕被风吹动 \\n[03:53.55]阳光无言地穿透 \\n[03:54.88]洒向那群被我驯服后的 兽 \\n[03:57.56]沉默地喊叫沉默地喊叫 \\n[03:59.21]孤单开始发酵 \\n[04:00.68]不停对着我嘲笑 \\n[04:01.77]回忆逐渐燃烧 \\n[04:03.33]曾经纯真的画面 \\n[04:04.54]残忍地温柔出现 \\n[04:05.69]脆弱时间到 \\n[04:06.88]我们一起来祷告 \\n[04:08.65]仁慈的父我已坠入 \\n[04:11.90]看不见罪的国度 \\n[04:14.58]请原谅我的自负 \\n[04:17.97] \\n[04:19.88]没人能说没人可说 \\n[04:22.85]好难承受 \\n[04:24.66]荣耀的背后刻着一道孤独 \\n[04:27.67] \\n[04:30.84]仁慈的父我已坠入 \\n[04:36.44]看不见罪的国度 \\n[04:42.07]请原谅我 我的自负 \\n[04:47.36]刻着一道孤独 \\n[04:52.74]仁慈的父我已坠入 \\n[04:55.56]看不见罪的国度 \\n[04:58.28]请原谅我的自负 \\n[05:01.75] \\n[05:03.58]没人能说没人可说 \\n[05:06.49]好难承受 \\n[05:08.66]荣耀的背后刻着一道孤独 \\n[05:12.29] \\n[05:14.32]那斑驳的家徽 我擦拭了一夜(闭上双眼我又看见) \\n[05:17.45]孤独的光辉 我才懂的感觉(当年那梦的画面) \\n[05:20.13]烛光 不 不 停的 摇晃(天空是蒙蒙的雾) \\n[05:22.41]猫头鹰在 窗棂上 对著远方眺望 \\n[05:25.50]通向 大厅的长廊 (父亲牵着我的双手) \\n[05:28.42]一样 说不出的沧桑(轻轻走过)');
INSERT INTO `blog_music` VALUES (3, 'Wayward One', 'Jillian Rae', 'https://www.170mv.com/kw/antiserver.kuwo.cn/anti.s?rid=MUSIC_72217588&response=res&format=mp3|aac&type=convert_url&br=128kmp3&agent=iPhone&callback=getlink&jpcallback=getlink.mp3', 'https://p1.music.126.net/K0-IPcIQ9QFvA0jXTBqoWQ==/109951163636756693.jpg?param=300y300', '暂无歌词');
INSERT INTO `blog_music` VALUES (6, '听妈妈的话', '周杰伦', 'http://www.170hi.com/kw/antiserver.kuwo.cn/anti.s?rid=MUSIC_6871864&response=res&format=mp3|aac&type=convert_url&br=128kmp3&agent=iPhone&callback=getlink&jpcallback=getlink.mp3', 'https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=ce3122aecb8065387beaa315afe6c679/d01373f082025aaff92dd92bfaedab64034f1a36.jpg', '[00:11.64]小朋友 你是否有很多问号 \\n[00:14.26]为什么 别人在那看漫画 \\n[00:16.89]我却在学画画 对这钢琴说话 \\n[00:19.37]别人在玩游戏 我却靠在墙壁背我的ABC \\n[00:22.38]我说我要一架大大的飞机 \\n[00:24.91]我却得到一只旧旧螺旋机 \\n[00:27.48]为什么要听妈妈的话 \\n[00:29.79]长大后你就会开始懂得这段话 哼 \\n[00:32.26]长大后我开始明白 \\n[00:35.23]为什么我 跑得比别人快 \\n[00:36.64]飞得比别人高 \\n[00:37.88]将来大家看的都是我画的漫画 \\n[00:40.23]大家唱的都是 我写的歌 \\n[00:42.95]妈妈的辛苦 不让你看见 \\n[00:45.57]温暖的事都在她心里面 \\n[00:48.01]有空就得多摸摸她的手 \\n[00:50.70]把手牵着一起梦游 \\n[00:53.10]听妈妈的话 别让她受伤 \\n[01:03.14]想快快长大 才能保护她 \\n[01:12.93]美丽的白发 幸福中发芽 \\n[01:23.96]天使的魔法 温暖中慈祥 \\n[01:34.43]在你的未来 音乐是你的王牌 \\n[01:36.21]那王牌谈的恋爱 \\n[01:37.68]而我不想把你教坏 \\n[01:39.21]还是听妈妈的话吧 \\n[01:40.52]晚点在恋爱吧 \\n[01:41.96]我知道你未来的路 \\n[01:44.09]干嘛比我更清楚 \\n[01:45.40]你因为太多学习的同学 \\n[01:46.53]在这块写东写西 \\n[01:47.50]但我建议最好听妈妈 \\n[01:49.10]我会用功读书 \\n[01:50.23]用功读书怎么会从我嘴巴说出 \\n[01:52.34]不想你输所以要叫你用功读书 \\n[01:55.47]妈妈挑给你的毛病你要好好的收着 \\n[01:57.56]因为不知道是我要告诉她我还留着 \\n[01:59.91]对了 我会遇到了周润发 \\n[02:02.31]所以你可以跟同学炫耀 \\n[02:03.38]赌神未来是你爸爸 \\n[02:04.47]我找不到你写的情书 \\n[02:06.94]你喜欢的要承认 \\n[02:08.02]因为我会了解你会在操场上牵她 \\n[02:09.40]你会开始喜欢唱流行歌 \\n[02:12.81]因为张学友开始准备唱吻别 \\n[02:15.43]听妈妈的话 别让她受伤 \\n[02:26.22]想快快长大 才能保护她 \\n[02:36.16]美丽的白发 幸福中发芽 \\n[02:46.66]天使的魔法 温暖中慈祥 \\n[02:56.68]听妈妈的话 别让她受伤 \\n[03:07.46]想快快长大 才能保护她 \\n[03:17.27]长大后我开始明白 为什么我 \\n[03:20.81]跑得比别人快 飞得比别人高 \\n[03:22.56]将来大家看的都是我画的漫画 \\n[03:25.52]大家唱的都是我写的歌 \\n[03:28.31]妈妈的辛苦她不让你看见 \\n[03:30.72]温暖的事都在她心里面 \\n[03:33.31]有空就得多摸摸她的手 \\n[03:36.15]把手牵着一起梦游 \\n[03:38.34]听妈妈的话 别让她受伤 \\n[03:48.72]想快快长大 才能保护她 \\n[03:59.10]美丽的白发 幸福中发芽 \\n[04:09.32]天使的魔法 温暖中慈祥');
INSERT INTO `blog_music` VALUES (7, '以父之名', '周杰伦', 'http://www.170mv.com/kw/antiserver.kuwo.cn/anti.s?rid=MUSIC_28386348&response=res&format=mp3|aac&type=convert_url&br=128kmp3&agent=iPhone&callback=getlink&jpcallback=getlink.mp3', 'https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=ce3122aecb8065387beaa315afe6c679/d01373f082025aaff92dd92bfaedab64034f1a36.jpg', '\\n[00:18.80]以父之名 \\n[00:35.80]周杰伦 \\n[00:52.80]制作人：秋晓之 QQ：285552115 \\n[01:09.80] \\n[01:26.56]微凉的晨露沾湿黑礼服 \\n[01:29.67]石板路有雾父在低诉 \\n[01:32.52]无奈的觉悟只能更残酷 \\n[01:35.33]一切都为了通往圣堂的路 \\n[01:38.02]吹不散的雾隐没了意图 \\n[01:40.67]谁轻柔踱步停住 \\n[01:43.34]还来不及哭穿过的子弹就带走温度 \\n[01:47.15] \\n[01:48.69]我们每个人都有罪 \\n[01:50.44]犯着不同的罪 \\n[01:51.77]我能决定谁对 \\n[01:53.15]谁又该要沉睡 \\n[01:54.53]争论不能解决 \\n[01:55.76]在永无止境的夜 \\n[01:57.35]关掉你的嘴 \\n[01:58.69]唯一的恩惠 \\n[01:59.88]挡在前面的人都有罪 \\n[02:01.18]后悔也无路可退 \\n[02:02.64]以父之名判决 \\n[02:03.96]那感觉没有适合词汇 \\n[02:05.59]就像边笑边掉泪 \\n[02:07.04]凝视着完全的黑 \\n[02:08.42]阻挡悲剧蔓延的悲剧会让我沉醉 \\n[02:10.72]低头亲吻我的左手 \\n[02:12.17]换取被宽恕的承诺 \\n[02:13.50]老旧管风琴在角落 \\n[02:14.93]一直一直一直伴奏 \\n[02:16.25]黑色帘幕被风吹动 \\n[02:17.66]阳光无言地穿透 \\n[02:19.18]洒向那群被我驯服后的 兽 \\n[02:21.88]沉默地喊叫沉默地喊叫 \\n[02:23.55]孤单开始发酵 \\n[02:24.88]不停对着我嘲笑 \\n[02:26.29]回忆逐渐燃烧 \\n[02:27.66]曾经纯真的画面 \\n[02:28.77]残忍地温柔出现 \\n[02:30.21]脆弱时间到 \\n[02:31.33]我们一起来祷告 \\n[02:32.95]仁慈的父我已坠入 \\n[02:35.73]看不见罪的国度 \\n[02:38.77]请原谅我的自负 \\n[02:41.68] \\n[02:43.77]没人能说没人可说 \\n[02:46.59]好难承受 \\n[02:48.67]荣耀的背后刻着一道孤独 \\n[02:52.52] \\n[02:54.66]闭上双眼我又看见 \\n[02:57.67]当年那梦的画面 \\n[03:00.59]天空是蒙蒙的雾 \\n[03:03.56] \\n[03:05.76]父亲牵着我的双手 \\n[03:08.66]轻轻走过 \\n[03:10.67]清晨那安安静静的石板路 \\n[03:14.58] \\n[03:46.34]低头亲吻我的左手 \\n[03:47.88]换取被宽恕的承诺 \\n[03:49.21]老旧管风琴在角落 \\n[03:50.68]一直一直一直伴奏 \\n[03:52.21]黑色帘幕被风吹动 \\n[03:53.55]阳光无言地穿透 \\n[03:54.88]洒向那群被我驯服后的 兽 \\n[03:57.56]沉默地喊叫沉默地喊叫 \\n[03:59.21]孤单开始发酵 \\n[04:00.68]不停对着我嘲笑 \\n[04:01.77]回忆逐渐燃烧 \\n[04:03.33]曾经纯真的画面 \\n[04:04.54]残忍地温柔出现 \\n[04:05.69]脆弱时间到 \\n[04:06.88]我们一起来祷告 \\n[04:08.65]仁慈的父我已坠入 \\n[04:11.90]看不见罪的国度 \\n[04:14.58]请原谅我的自负 \\n[04:17.97] \\n[04:19.88]没人能说没人可说 \\n[04:22.85]好难承受 \\n[04:24.66]荣耀的背后刻着一道孤独 \\n[04:27.67] \\n[04:30.84]仁慈的父我已坠入 \\n[04:36.44]看不见罪的国度 \\n[04:42.07]请原谅我 我的自负 \\n[04:47.36]刻着一道孤独 \\n[04:52.74]仁慈的父我已坠入 \\n[04:55.56]看不见罪的国度 \\n[04:58.28]请原谅我的自负 \\n[05:01.75] \\n[05:03.58]没人能说没人可说 \\n[05:06.49]好难承受 \\n[05:08.66]荣耀的背后刻着一道孤独 \\n[05:12.29] \\n[05:14.32]那斑驳的家徽 我擦拭了一夜(闭上双眼我又看见) \\n[05:17.45]孤独的光辉 我才懂的感觉(当年那梦的画面) \\n[05:20.13]烛光 不 不 停的 摇晃(天空是蒙蒙的雾) \\n[05:22.41]猫头鹰在 窗棂上 对著远方眺望 \\n[05:25.50]通向 大厅的长廊 (父亲牵着我的双手) \\n[05:28.42]一样 说不出的沧桑(轻轻走过)');

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES (1, '张三');

SET FOREIGN_KEY_CHECKS = 1;
