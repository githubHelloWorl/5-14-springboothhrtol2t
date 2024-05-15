/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : springboothhrtol2t

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 14/05/2024 23:17:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2024-03-22 09:30:29', '关于我们', 'ABOUT US', '当你设想门外是寒冷可怕的世界时，你还应该开门出去看看，是否真的如此。如果你有信心，你对前途就不犹豫了。如果你有勇气，你就不怕前途是否有困难或危险了每个人心中都应有两盏灯，一盏是希望的灯，一盏是勇气的灯。有了这两盏灯，我们就不怕海上的黑暗和风涛的险恶了。人的一生很像是在雾中行走。远远望去，只是迷蒙一片，辨不出方向和吉凶。可是，当你鼓起勇气，放下恐惧和怀疑，一步一步向前走去的时候，你就会发现，每走一步，你都能把下一步路看得清楚一点。“往前走，别站在远远的地方观望！”你就可以找到你的方向。', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for chatmessage
-- ----------------------------
DROP TABLE IF EXISTS `chatmessage`;
CREATE TABLE `chatmessage`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `uid` bigint(20) NOT NULL COMMENT '用户ID',
  `fid` bigint(20) NOT NULL COMMENT '好友用户ID',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `format` int(11) NULL DEFAULT NULL COMMENT '格式(1:文字，2:图片)',
  `isread` int(11) NULL DEFAULT 0 COMMENT '消息已读(0:未读，1:已读)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chatmessage
-- ----------------------------
INSERT INTO `chatmessage` VALUES (1, '2024-03-22 09:49:52', 13, 1711072142697, '你好', 1, 1);
INSERT INTO `chatmessage` VALUES (2, '2024-03-22 09:50:12', 1711072142697, 13, '你好', 1, 1);
INSERT INTO `chatmessage` VALUES (3, '2024-03-22 09:50:15', 1711072142697, 13, 'upload/1711072215305.jpg', 2, 1);
INSERT INTO `chatmessage` VALUES (4, '2024-03-22 09:50:59', 13, 1711072142697, '好的', 1, 1);
INSERT INTO `chatmessage` VALUES (5, '2024-03-22 09:51:03', 13, 1711072142697, '这个可以的', 1, 1);
INSERT INTO `chatmessage` VALUES (6, '2024-03-22 09:51:17', 1711072142697, 13, '好的', 1, 0);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/1713150200334.jpg', NULL);
INSERT INTO `config` VALUES (2, 'picture2', 'upload/1713150182831.jpg', NULL);
INSERT INTO `config` VALUES (3, 'picture3', 'upload/1713150165643.jpg', NULL);

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `isdone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `istop` int(11) NULL DEFAULT 0 COMMENT '是否置顶',
  `toptime` datetime(0) NULL DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '校友圈动态' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (101, '2024-03-22 09:30:29', '帖子标题1', '帖子内容1', 0, 1, '用户名1', 'upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg', '开放', 0, '2024-03-22 09:30:29');
INSERT INTO `forum` VALUES (102, '2024-03-22 09:30:29', '帖子标题2', '帖子内容2', 0, 2, '用户名2', 'upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg', '开放', 0, '2024-03-22 09:30:29');
INSERT INTO `forum` VALUES (103, '2024-03-22 09:30:29', '帖子标题3', '帖子内容3', 0, 3, '用户名3', 'upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg', '开放', 0, '2024-03-22 09:30:29');
INSERT INTO `forum` VALUES (104, '2024-03-22 09:30:29', '帖子标题4', '帖子内容4', 0, 4, '用户名4', 'upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg', '开放', 0, '2024-03-22 09:30:29');
INSERT INTO `forum` VALUES (105, '2024-03-22 09:30:29', '帖子标题5', '帖子内容5', 0, 5, '用户名5', 'upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg', '开放', 0, '2024-03-22 09:30:29');
INSERT INTO `forum` VALUES (106, '2024-03-22 09:30:29', '帖子标题6', '帖子内容6', 0, 6, '用户名6', 'upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg', '开放', 0, '2024-03-22 09:30:29');
INSERT INTO `forum` VALUES (107, '2024-03-22 09:30:29', '帖子标题7', '帖子内容7', 0, 7, '用户名7', 'upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg', '开放', 0, '2024-03-22 09:30:29');
INSERT INTO `forum` VALUES (108, '2024-03-22 09:30:29', '帖子标题8', '帖子内容8', 0, 8, '用户名8', 'upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg', '开放', 1, '2024-03-22 09:54:28');
INSERT INTO `forum` VALUES (109, '2024-03-22 09:51:33', NULL, '<p>在这了可以评价</p>', 101, 1711072142697, '11', 'upload/1711072139530.jpg', NULL, 0, NULL);
INSERT INTO `forum` VALUES (110, '2024-03-22 09:51:40', '标题', '<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p>', 0, 1711072142697, '11', NULL, '开放', 0, '2024-03-22 09:51:39');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `uid` bigint(20) NOT NULL COMMENT '用户ID',
  `fid` bigint(20) NOT NULL COMMENT '好友用户ID',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `role` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `alias` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '别名',
  `type` int(11) NULL DEFAULT 0 COMMENT '类型(0:好友申请，1:好友，2:消息)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好友表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES (2, '2024-03-22 09:49:47', 1711072142697, 13, '用户账号3', 'upload/yonghu_touxiang3.jpg', NULL, 'yonghu', NULL, 1);
INSERT INTO `friend` VALUES (3, '2024-03-22 09:49:47', 13, 1711072142697, '11', 'upload/1711072139530.jpg', NULL, 'yonghu', NULL, 1);
INSERT INTO `friend` VALUES (4, '2024-03-22 09:49:52', 13, 1711072142697, '11', 'upload/1711072139530.jpg', NULL, '', NULL, 2);
INSERT INTO `friend` VALUES (5, '2024-03-22 09:49:52', 1711072142697, 13, '用户账号3', 'upload/yonghu_touxiang3.jpg', NULL, 'yonghu', NULL, 2);
INSERT INTO `friend` VALUES (6, '2024-05-14 18:51:25', 1715601981004, 1715682690045, '1', 'upload/1715682673232.jpg', NULL, 'yonghu', NULL, 0);

-- ----------------------------
-- Table structure for ganbuzhaopin
-- ----------------------------
DROP TABLE IF EXISTS `ganbuzhaopin`;
CREATE TABLE `ganbuzhaopin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团名称',
  `zhaopinfengmian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '招聘封面',
  `gongzuodidian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作时间',
  `xinzidaiyu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '薪资待遇',
  `zhaopinrenshu` int(11) NULL DEFAULT NULL COMMENT '招聘人数',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  `gangweixiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '岗位详情',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `storeupnum` int(11) NULL DEFAULT 0 COMMENT '收藏数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '社团招聘' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ganbuzhaopin
-- ----------------------------
INSERT INTO `ganbuzhaopin` VALUES (21, '2024-03-22 09:30:29', '社团名称1', 'upload/ganbuzhaopin_zhaopinfengmian1.jpg,upload/ganbuzhaopin_zhaopinfengmian2.jpg,upload/ganbuzhaopin_zhaopinfengmian3.jpg', '工作地点1', '工作时间1', '薪资待遇1', 1, '负责人1', '联系电话1', '2024-03-22', '岗位详情1', '2024-03-22 09:30:29', 1, 1);
INSERT INTO `ganbuzhaopin` VALUES (22, '2024-03-22 09:30:29', '社团名称2', 'upload/ganbuzhaopin_zhaopinfengmian2.jpg,upload/ganbuzhaopin_zhaopinfengmian3.jpg,upload/ganbuzhaopin_zhaopinfengmian4.jpg', '工作地点2', '工作时间2', '薪资待遇2', 2, '负责人2', '联系电话2', '2024-03-22', '岗位详情2', '2024-03-22 09:30:29', 2, 2);
INSERT INTO `ganbuzhaopin` VALUES (23, '2024-03-22 09:30:29', '社团名称3', 'upload/ganbuzhaopin_zhaopinfengmian3.jpg,upload/ganbuzhaopin_zhaopinfengmian4.jpg,upload/ganbuzhaopin_zhaopinfengmian5.jpg', '工作地点3', '工作时间3', '薪资待遇3', 3, '负责人3', '联系电话3', '2024-03-22', '岗位详情3', '2024-03-22 09:30:29', 3, 3);
INSERT INTO `ganbuzhaopin` VALUES (24, '2024-03-22 09:30:29', '社团名称4', 'upload/ganbuzhaopin_zhaopinfengmian4.jpg,upload/ganbuzhaopin_zhaopinfengmian5.jpg,upload/ganbuzhaopin_zhaopinfengmian6.jpg', '工作地点4', '工作时间4', '薪资待遇4', 4, '负责人4', '联系电话4', '2024-03-22', '岗位详情4', '2024-03-22 09:30:29', 4, 4);
INSERT INTO `ganbuzhaopin` VALUES (25, '2024-03-22 09:30:29', '社团名称5', 'upload/ganbuzhaopin_zhaopinfengmian5.jpg,upload/ganbuzhaopin_zhaopinfengmian6.jpg,upload/ganbuzhaopin_zhaopinfengmian7.jpg', '工作地点5', '工作时间5', '薪资待遇5', 5, '负责人5', '联系电话5', '2024-03-22', '岗位详情5', '2024-03-22 09:30:29', 5, 5);
INSERT INTO `ganbuzhaopin` VALUES (26, '2024-03-22 09:30:29', '社团名称6', 'upload/ganbuzhaopin_zhaopinfengmian6.jpg,upload/ganbuzhaopin_zhaopinfengmian7.jpg,upload/ganbuzhaopin_zhaopinfengmian8.jpg', '工作地点6', '工作时间6', '薪资待遇6', 6, '负责人6', '联系电话6', '2024-03-22', '岗位详情6', '2024-03-22 09:30:29', 6, 6);
INSERT INTO `ganbuzhaopin` VALUES (27, '2024-03-22 09:30:29', '社团名称7', 'upload/ganbuzhaopin_zhaopinfengmian7.jpg,upload/ganbuzhaopin_zhaopinfengmian8.jpg,upload/ganbuzhaopin_zhaopinfengmian9.jpg', '工作地点7', '工作时间7', '薪资待遇7', 7, '负责人7', '联系电话7', '2024-03-22', '岗位详情7', '2024-03-22 09:48:28', 8, 7);

-- ----------------------------
-- Table structure for huodongbaoming
-- ----------------------------
DROP TABLE IF EXISTS `huodongbaoming`;
CREATE TABLE `huodongbaoming`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `huodongfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动分类',
  `huodongdidian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动地点',
  `huodongzhaopian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动照片',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `lianxifangshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `baomingshijian` date NULL DEFAULT NULL COMMENT '报名时间',
  `beizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动报名' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huodongbaoming
-- ----------------------------
INSERT INTO `huodongbaoming` VALUES (61, '2024-03-22 09:30:29', '活动名称1', '活动分类1', '活动地点1', 'upload/huodongbaoming_huodongzhaopian1.jpg,upload/huodongbaoming_huodongzhaopian2.jpg,upload/huodongbaoming_huodongzhaopian3.jpg', '用户账号1', '用户姓名1', '联系方式1', '2024-03-22', '备注1');
INSERT INTO `huodongbaoming` VALUES (62, '2024-03-22 09:30:29', '活动名称2', '活动分类2', '活动地点2', 'upload/huodongbaoming_huodongzhaopian2.jpg,upload/huodongbaoming_huodongzhaopian3.jpg,upload/huodongbaoming_huodongzhaopian4.jpg', '用户账号2', '用户姓名2', '联系方式2', '2024-03-22', '备注2');
INSERT INTO `huodongbaoming` VALUES (63, '2024-03-22 09:30:29', '活动名称3', '活动分类3', '活动地点3', 'upload/huodongbaoming_huodongzhaopian3.jpg,upload/huodongbaoming_huodongzhaopian4.jpg,upload/huodongbaoming_huodongzhaopian5.jpg', '用户账号3', '用户姓名3', '联系方式3', '2024-03-22', '备注3');
INSERT INTO `huodongbaoming` VALUES (64, '2024-03-22 09:30:29', '活动名称4', '活动分类4', '活动地点4', 'upload/huodongbaoming_huodongzhaopian4.jpg,upload/huodongbaoming_huodongzhaopian5.jpg,upload/huodongbaoming_huodongzhaopian6.jpg', '用户账号4', '用户姓名4', '联系方式4', '2024-03-22', '备注4');
INSERT INTO `huodongbaoming` VALUES (65, '2024-03-22 09:30:29', '活动名称5', '活动分类5', '活动地点5', 'upload/huodongbaoming_huodongzhaopian5.jpg,upload/huodongbaoming_huodongzhaopian6.jpg,upload/huodongbaoming_huodongzhaopian7.jpg', '用户账号5', '用户姓名5', '联系方式5', '2024-03-22', '备注5');
INSERT INTO `huodongbaoming` VALUES (66, '2024-03-22 09:30:29', '活动名称6', '活动分类6', '活动地点6', 'upload/huodongbaoming_huodongzhaopian6.jpg,upload/huodongbaoming_huodongzhaopian7.jpg,upload/huodongbaoming_huodongzhaopian8.jpg', '用户账号6', '用户姓名6', '联系方式6', '2024-03-22', '备注6');
INSERT INTO `huodongbaoming` VALUES (67, '2024-03-22 09:30:29', '活动名称7', '活动分类7', '活动地点7', 'upload/huodongbaoming_huodongzhaopian7.jpg,upload/huodongbaoming_huodongzhaopian8.jpg,upload/huodongbaoming_huodongzhaopian9.jpg', '用户账号7', '用户姓名7', '联系方式7', '2024-03-22', '备注7');
INSERT INTO `huodongbaoming` VALUES (68, '2024-03-22 09:30:29', '活动名称8', '活动分类8', '活动地点8', 'upload/huodongbaoming_huodongzhaopian8.jpg,upload/huodongbaoming_huodongzhaopian9.jpg,upload/huodongbaoming_huodongzhaopian10.jpg', '用户账号8', '用户姓名8', '联系方式8', '2024-03-22', '备注8');
INSERT INTO `huodongbaoming` VALUES (69, '2024-03-22 09:55:56', '活动', '分类', '地点', 'upload/1711072385674.jpg', '11', '张艺', '13333366521', '2024-03-22', '在这里可以编辑内容');

-- ----------------------------
-- Table structure for huodongfenlei
-- ----------------------------
DROP TABLE IF EXISTS `huodongfenlei`;
CREATE TABLE `huodongfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huodongfenlei
-- ----------------------------
INSERT INTO `huodongfenlei` VALUES (31, '2024-03-22 09:30:29', '活动分类1');
INSERT INTO `huodongfenlei` VALUES (32, '2024-03-22 09:30:29', '活动分类2');
INSERT INTO `huodongfenlei` VALUES (33, '2024-03-22 09:30:29', '活动分类3');
INSERT INTO `huodongfenlei` VALUES (34, '2024-03-22 09:30:29', '活动分类4');
INSERT INTO `huodongfenlei` VALUES (35, '2024-03-22 09:30:29', '活动分类5');
INSERT INTO `huodongfenlei` VALUES (36, '2024-03-22 09:30:29', '活动分类6');
INSERT INTO `huodongfenlei` VALUES (37, '2024-03-22 09:30:29', '活动分类7');
INSERT INTO `huodongfenlei` VALUES (38, '2024-03-22 09:30:29', '活动分类8');
INSERT INTO `huodongfenlei` VALUES (39, '2024-03-22 09:52:49', '分类');

-- ----------------------------
-- Table structure for huodongxinxi
-- ----------------------------
DROP TABLE IF EXISTS `huodongxinxi`;
CREATE TABLE `huodongxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `huodongfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动分类',
  `huodongzhaopian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动照片',
  `huodongdidian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动地点',
  `huodongshijian` date NULL DEFAULT NULL COMMENT '活动时间',
  `huodongxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动详情',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `storeupnum` int(11) NULL DEFAULT 0 COMMENT '收藏数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `huodongbianhao`(`huodongbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huodongxinxi
-- ----------------------------
INSERT INTO `huodongxinxi` VALUES (41, '2024-03-22 09:30:29', '1111111111', '活动名称1', '活动分类1', 'upload/huodongxinxi_huodongzhaopian1.jpg,upload/huodongxinxi_huodongzhaopian2.jpg,upload/huodongxinxi_huodongzhaopian3.jpg', '活动地点1', '2024-03-22', '活动详情1', '2024-03-22', '2024-03-22 09:30:29', 1, 1);
INSERT INTO `huodongxinxi` VALUES (43, '2024-03-22 09:30:29', '3333333333', '活动名称3', '活动分类3', 'upload/huodongxinxi_huodongzhaopian3.jpg,upload/huodongxinxi_huodongzhaopian4.jpg,upload/huodongxinxi_huodongzhaopian5.jpg', '活动地点3', '2024-03-22', '活动详情3', '2024-03-22', '2024-03-22 09:30:29', 3, 3);
INSERT INTO `huodongxinxi` VALUES (44, '2024-03-22 09:30:29', '4444444444', '活动名称4', '活动分类4', 'upload/huodongxinxi_huodongzhaopian4.jpg,upload/huodongxinxi_huodongzhaopian5.jpg,upload/huodongxinxi_huodongzhaopian6.jpg', '活动地点4', '2024-03-22', '活动详情4', '2024-03-22', '2024-03-22 09:30:29', 4, 4);
INSERT INTO `huodongxinxi` VALUES (46, '2024-03-22 09:30:29', '6666666666', '活动名称6', '分类', 'upload/huodongxinxi_huodongzhaopian6.jpg,upload/huodongxinxi_huodongzhaopian7.jpg,upload/huodongxinxi_huodongzhaopian8.jpg', '活动地点6', '2024-03-22', '<p>活动详情6</p>', '2024-03-22', '2024-03-22 09:53:18', 8, 6);
INSERT INTO `huodongxinxi` VALUES (49, '2024-03-22 09:53:11', '1711072373496', '活动', '分类', 'upload/1711072385674.jpg', '地点', '2024-03-22', '<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p>', '2024-03-22', '2024-03-22 09:55:58', 2, 0);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `rpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 170 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (161, '2024-03-22 09:30:29', 1, '用户名1', 'upload/messages_avatarurl1.jpg', '留言内容1', 'upload/messages_cpicture1.jpg', '回复内容1', 'upload/messages_rpicture1.jpg');
INSERT INTO `messages` VALUES (162, '2024-03-22 09:30:29', 2, '用户名2', 'upload/messages_avatarurl2.jpg', '留言内容2', 'upload/messages_cpicture2.jpg', '回复内容2', 'upload/messages_rpicture2.jpg');
INSERT INTO `messages` VALUES (163, '2024-03-22 09:30:29', 3, '用户名3', 'upload/messages_avatarurl3.jpg', '留言内容3', 'upload/messages_cpicture3.jpg', '回复内容3', 'upload/messages_rpicture3.jpg');
INSERT INTO `messages` VALUES (164, '2024-03-22 09:30:29', 4, '用户名4', 'upload/messages_avatarurl4.jpg', '留言内容4', 'upload/messages_cpicture4.jpg', '回复内容4', 'upload/messages_rpicture4.jpg');
INSERT INTO `messages` VALUES (165, '2024-03-22 09:30:29', 5, '用户名5', 'upload/messages_avatarurl5.jpg', '留言内容5', 'upload/messages_cpicture5.jpg', '回复内容5', 'upload/messages_rpicture5.jpg');
INSERT INTO `messages` VALUES (166, '2024-03-22 09:30:29', 6, '用户名6', 'upload/messages_avatarurl6.jpg', '留言内容6', 'upload/messages_cpicture6.jpg', '回复内容6', 'upload/messages_rpicture6.jpg');
INSERT INTO `messages` VALUES (167, '2024-03-22 09:30:29', 7, '用户名7', 'upload/messages_avatarurl7.jpg', '留言内容7', 'upload/messages_cpicture7.jpg', '回复内容7', 'upload/messages_rpicture7.jpg');
INSERT INTO `messages` VALUES (168, '2024-03-22 09:30:29', 8, '用户名8', 'upload/messages_avatarurl8.jpg', '留言内容8', 'upload/messages_cpicture8.jpg', '回复内容8', 'upload/messages_rpicture8.jpg');
INSERT INTO `messages` VALUES (169, '2024-03-22 09:51:59', 1711072142697, '11', 'upload/1711072139530.jpg', '<p>在这了可以留言</p>', 'upload/1711072318877.jpg', '<p>在这了可以回复</p>', 'upload/1711072460409.jpg');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `typename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `headportrait` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  `storeupnum` int(11) NULL DEFAULT 0 COMMENT '收藏数',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (121, '2024-03-22 09:30:29', '趁着年轻，输得起，看得开，去经历', '我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤', '分类名称1', '发布人1', 'upload/news_headportrait1.jpg', 3, '2024-04-15 11:14:19', 1, 1, 1, 'upload/1713150869073.jpg', '<p>我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤。</p><p>首先，我皈依了减肥。我可以整整一天滴水不进，然后第二天中午，一个小时之内连续去三个食堂吃午饭，每次都是两荤一素、一两米饭加一瓶大可乐，像是一个人孢子分裂出了三个暴食症患者。其次，因为要么饿得百爪挠心，要么撑得寝食难安，我变成了一个昼夜颠倒的人，再加上觉得自己邋遢难看，不愿见人，便逃掉了很多课。其三，逃课的空虚让我花了大量时间网购，击败了全国90%以上的电商消费者，和快递员结下了深厚的友谊。我买的大多数是衣服，衣服又穿不进，羞愤难当，继续皈依减肥。总之，那是我非常不快乐的几年。因为难以接受自己，所以蜷缩着，拒绝他人。</p><p>我很久之后才知道，人用来自憎的大脑边缘系统，在童年时就已经形成。可是，用来开导自己、原谅自己、使自己变得强大的智慧，却往往在我们本该成熟的年纪依然不具备。每一世代的年轻人都是脆弱的、敏感的、容易受他人影响的。而对于正年轻的一代来说，这个挑战异乎寻常的艰难。</p><p>电影《楚门的世界》中提出了一个假设以及相应的解答:当一个人活在所有人的窥探之下，他应该怎么办?答案是:他逃走，获得自由。然而，如果所有人活在所有人的窥探之下，那又该如何逃避?这不是假设，而是正在悄然发生的现实。我们无时无刻不在朋友圈、微博、贴吧、个人主页上展现自己的生活，同时，也在同样的平台上窥探他人的生活。我们无时无刻不在评估他人，同时，也在接受他人的评估。“个性张扬”只是狐假虎威的外衣，为的是掩饰自卑与自恋此起彼伏、相爱相杀的脆弱。我们羡慕嫉妒他人，也努力把自己的生活修饰得让他人羡慕嫉妒。我们对他人的意见过于敏感，无法忍受不被“点赞”的人生。</p><p>社交网络的核心在于“社交”，社交的动力，是出于人们无法忍受孤独;人们之所以无法忍受孤独，是因为人们无法拷问自己。可是，总有一天，我们要站在镜子前，发现我们并不是自己创造出来的那个有趣、可爱、有吸引力、有能力的人。那么，你还喜欢镜子里的自己吗?或者，镜子里的你还喜欢自己吗?这个世界是否称赞你、羡慕你、爱你，在某种程度上是个不断膨胀的谎言。关键的问题在于，你是否对自己足够诚实，并且接受诚实之后的不完美。</p><p>失去的痛苦、被拒绝的痛苦、被伤害的痛苦、分别的痛苦，它们如此显眼地横在前行的路上，让人想逃遁到那个充满着“赞”的虚幻世界里。然而，我们是人，走在一条从摇篮到坟墓的路上，年轻在途中，衰老在途中。必须和真实的世界发生联系，而不是兀自为尚未发生的事情恐惧;必须和真实的人发生各种关系，而不是如一座座只能遥远眺望的孤岛。</p><p>那些杀不死我们的，它们有时并不会让我们更加强大，而只是成为一段诗意或自嘲的记忆。趁着年轻，输得起，看得开，去经历。那些杀不死我们的，它们在混沌而无序的未来里，并不能成为我们手中的武器，却为我们的存活，增加了反抗脆弱与敏感的韧性。</p>');
INSERT INTO `news` VALUES (124, '2024-03-22 09:30:29', '在大学给自己定个目标', '最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到', '分类名称4', '发布人4', 'upload/news_headportrait4.jpg', 6, '2024-04-15 11:15:21', 4, 4, 4, 'upload/1713150930839.jpg', '<p>最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到。</p><p>这让我想到前段时间蹿红网络的“悔过励志帖”——《同学，我大四了》，作者回首自己的大学4年，他感叹投入精力“充其量不过40%”︰每天上网时间少则4个小时，多则10个小时;考试永远是画画重点，在高呼“60分万岁”中与奖学金无缘。作者借自己求职受挫，写帖子以警醒后来人，不要等毕业时再后悔，就业难不仅仅是大学、社会的问题，也是自身的问题。</p><p>也许，这样的大学生不是一个两个，而是一个群体。然而，我总是怀疑这样的励志帖，甚至教师在课堂上苦口婆心地劝说，能对现实中的大学和大学生起到多大的影响和作用，很多时候恐怕只有“三分钟热度”的效应。毕竟，现实的窘境不是一天积累起来的，从小学到高中，学生们的学习都是被动地接受应试，隐藏着功利性的目的，也许从没有为主动学习感到过快乐，而在高中时代，有的教师甚至打出这样的励志宣言:等你考上大学，你就可以想干什么干什么了..…..乎，高中时代的目标是很清晰的，就是为了考上大学，而在一些高中生的眼里，大学甚至就好比是天堂，进了大学的门就可以放轻松了。</p><p>此前，有很多声音都认为大学越来越像培训机构，功利性学习正在整个大学蔓延，考证热、过早地职业化都是大学功利性学习最好的表现形式。在这种批判的声音中，“培训机构”总有被贬低的意味，难与大学之学术思想殿堂的高雅相媲美。但是，在这种批判的背后，还有一个现实问题被遮蔽，那就是很多大学生对自己的学习、对大学生活没有任何目标。</p><p>暨南大学舆情研究中心曾就“当代广州大学生生活与思想现状”作过详细的问卷调查，其中，接受调查的广州高校在读本科生共有191份有效样本，就“读大学的原因”、“大学第一印象”、“专业选择首要因素”等问题制作问卷调查并进行分析。结果显示，在未来规划方面，73.3%的同学表示只有粗略的想法，并无非常明确的目标。</p><p>如果说功利化的学习毕竟还有一个前进的目标，至少能体现出一种为了目标而奋斗的精神和奔头，而没有任何目标，漫无目的地混日子则更可怕，它体现的是一种虚无、意义的缺失。说实话，没有引导学生树立明确的奋斗目标、进而指引学生为之努力的大学，学生很难找到努力的方向，也找不到努力的意义，这还不如“培训机构”来得实在、来得有效用，至少，培训机构的目标很清晰，它能够给学生们一个实实在在看得见的效果，而没有任何目标、浑浑噩噩的大学生活，也许只会给很多学生带来悔过。</p><p>无论如何，混日子的大学生活是不可取的。一方面，高校应该在新生入学的时候，作好目标和方向的引导，甚至贯穿大学4年的学习过程;另一方面，还在迷途的大学生，应尽早为自己找个前进的方向，作好自我规划，对自己的未来和前途负责。</p>');
INSERT INTO `news` VALUES (126, '2024-03-22 09:30:29', '远大的目标是成功的磁石', '上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标', '分类名称6', '发布人6', 'upload/news_headportrait6.jpg', 7, '2024-04-15 11:14:47', 6, 6, 6, 'upload/1713150910450.jpg', '<p>上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标。</p><p>有大目标的人，生活永远是积极的，他们会朝着自己的目标不断前进;没有大目标的老实人浑浑噩噩，不思进取，最后被生活淘汰。</p><p>从前有个叫阿巴格的人生活在内蒙古草原上。有一次，年少的阿巴格和爸爸在草原上迷了路，阿巴格又累又怕，到最后快走不动了。爸爸就从兜里掏出五枚硬币，把一枚硬币埋在草地里，把其余四枚放在阿巴格的手上，说:“人生有五枚金币，童年、少年、青年、中年、老年各有一枚，你现在才用了一枚，就是埋在草地里的那一枚，你不能把五枚都扔在草原里，你要一点点地用，每一次都用出不同来，这样才不枉人生一世。今天我们一定要走出草原，你将来也一定要走出草原。世界很大，人活着，就要多走些地方，多看看，不要让你的金币没有用就扔掉。”在父亲的鼓励下，阿巴格走出了草原。长大后，阿巴格离开了家乡，成了一名十分优秀的船长。</p><p>目标是与一个人的愿望相联系的，是对未来的一种设想，它往往和目前的行动不直接联系。但目标又不能脱离现实的生活，现实生活中的某些现象如果符合了个人的需要，与个人的世界观一致，这些现实的因素就会以个人目标的形式表现出来。目标总是对现实生活的重新加工，舍弃其中某些成分，又对某些因素给予强调的过程，但它必须以对客观规律的认识为基础，符合客观规律。</p><p>能实现自己目标的老实人，对他个人而言，他是一个成功者，也是个幸福者。目标是成功的必要条件，虽然仅仅拥有目标，你不一定能取得成功;但是如果没有目标，成功对你而言就无从谈起。</p><p>远大的美好目标能吸引人努力为实现它而奋斗不止。</p>');

-- ----------------------------
-- Table structure for newstype
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `typename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES (111, '2024-03-22 09:30:29', '分类名称1');
INSERT INTO `newstype` VALUES (112, '2024-03-22 09:30:29', '分类名称2');
INSERT INTO `newstype` VALUES (113, '2024-03-22 09:30:29', '分类名称3');
INSERT INTO `newstype` VALUES (114, '2024-03-22 09:30:29', '分类名称4');
INSERT INTO `newstype` VALUES (115, '2024-03-22 09:30:29', '分类名称5');
INSERT INTO `newstype` VALUES (116, '2024-03-22 09:30:29', '分类名称6');
INSERT INTO `newstype` VALUES (117, '2024-03-22 09:30:29', '分类名称7');
INSERT INTO `newstype` VALUES (118, '2024-03-22 09:30:29', '分类名称8');
INSERT INTO `newstype` VALUES (119, '2024-03-22 09:54:51', '通知');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for systemintro
-- ----------------------------
DROP TABLE IF EXISTS `systemintro`;
CREATE TABLE `systemintro`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统简介' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of systemintro
-- ----------------------------
INSERT INTO `systemintro` VALUES (1, '2024-03-22 09:30:29', '系统简介', 'SYSTEM INTRODUCTION', '在平静的海平面上，每个人都可以成为领航员。但如果只有阳光而没有阴影，只有欢乐而没有痛苦，那就不是完整的人生。就拿最幸福的人来说吧——他的幸福是一团纠结的纱线。痛苦和幸福轮番而至，让我们悲喜交集，甚至死亡都让人生更加可爱。人在生命的严肃时刻，在悲伤与丧亲的阴影下，才最接近真实的自我。在生活和事业的各个方面，才智的功能远不如性格，头脑的功能远不如心性，天分远不如自制力、毅力与教养。我始终认为内心开始过严肃生活的人，他外在的生活会开始变得更为俭朴。在一个奢侈浪费的年代，但愿我能让世人了解：人类真正的需求是多么的稀少。不重蹈覆辙才是真正的醒悟。比别人优秀并无任何高贵之处，真正的高贵在于超越从前的自我。', 'upload/systemintro_picture1.jpg', 'upload/systemintro_picture2.jpg', 'upload/systemintro_picture3.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '用户账号1', 'yonghu', '用户', 'cnz7sxgzru2jrz5063fgz12snwa6d8rs', '2024-03-22 09:47:27', '2024-03-22 10:47:28');
INSERT INTO `token` VALUES (2, 1711072142697, '11', 'yonghu', '用户', 'b1guf6yttgcuhaessih6jhcz1cf6sgsl', '2024-03-22 09:49:06', '2024-04-15 12:01:51');
INSERT INTO `token` VALUES (3, 13, '用户账号3', 'yonghu', '用户', '7er682mbssz3hat8pcup2lyxgf3tmnye', '2024-03-22 09:49:33', '2024-03-22 10:50:48');
INSERT INTO `token` VALUES (4, 12, '用户账号2', 'yonghu', '用户', 'jajcyy6oyslhf5nkx630xbcbb2uhlvcv', '2024-03-22 09:50:23', '2024-03-22 10:50:24');
INSERT INTO `token` VALUES (5, 15, '用户账号5', 'yonghu', '用户', 'mwulngcgjl6ho2fu9hxl2tfdkk5ls3mb', '2024-03-22 09:50:39', '2024-03-22 10:50:39');
INSERT INTO `token` VALUES (6, 1, 'admin', 'users', '管理员', 'nknwmk1678afexg7ruqg6sjyxe5qv8fg', '2024-03-22 09:52:09', '2024-05-15 00:00:24');
INSERT INTO `token` VALUES (7, 1715601981004, '123', 'yonghu', '用户', 'yogpvdbjk8etqznydn751d2ajvdsdgy9', '2024-05-13 20:06:30', '2024-05-13 21:06:31');
INSERT INTO `token` VALUES (8, 1715682690045, '1', 'yonghu', '用户', 'nd1da08hyk87krrdqvuodo5kda6znfb1', '2024-05-14 18:31:45', '2024-05-15 00:00:03');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'upload/image1.jpg', '管理员', '2024-03-22 09:30:29');

-- ----------------------------
-- Table structure for yingpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yingpinxinxi`;
CREATE TABLE `yingpinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社团名称',
  `zhaopinfengmian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '招聘封面',
  `gongzuodidian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作时间',
  `yingpinshijian` date NULL DEFAULT NULL COMMENT '应聘时间',
  `jianli` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简历',
  `beizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应聘信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yingpinxinxi
-- ----------------------------
INSERT INTO `yingpinxinxi` VALUES (71, '2024-03-22 09:30:29', '社团名称1', 'upload/yingpinxinxi_zhaopinfengmian1.jpg,upload/yingpinxinxi_zhaopinfengmian2.jpg,upload/yingpinxinxi_zhaopinfengmian3.jpg', '工作地点1', '工作时间1', '2024-03-22', '', '备注1', '用户账号1', '用户姓名1');
INSERT INTO `yingpinxinxi` VALUES (72, '2024-03-22 09:30:29', '社团名称2', 'upload/yingpinxinxi_zhaopinfengmian2.jpg,upload/yingpinxinxi_zhaopinfengmian3.jpg,upload/yingpinxinxi_zhaopinfengmian4.jpg', '工作地点2', '工作时间2', '2024-03-22', '', '备注2', '用户账号2', '用户姓名2');
INSERT INTO `yingpinxinxi` VALUES (73, '2024-03-22 09:30:29', '社团名称3', 'upload/yingpinxinxi_zhaopinfengmian3.jpg,upload/yingpinxinxi_zhaopinfengmian4.jpg,upload/yingpinxinxi_zhaopinfengmian5.jpg', '工作地点3', '工作时间3', '2024-03-22', '', '备注3', '用户账号3', '用户姓名3');
INSERT INTO `yingpinxinxi` VALUES (74, '2024-03-22 09:30:29', '社团名称4', 'upload/yingpinxinxi_zhaopinfengmian4.jpg,upload/yingpinxinxi_zhaopinfengmian5.jpg,upload/yingpinxinxi_zhaopinfengmian6.jpg', '工作地点4', '工作时间4', '2024-03-22', '', '备注4', '用户账号4', '用户姓名4');
INSERT INTO `yingpinxinxi` VALUES (75, '2024-03-22 09:30:29', '社团名称5', 'upload/yingpinxinxi_zhaopinfengmian5.jpg,upload/yingpinxinxi_zhaopinfengmian6.jpg,upload/yingpinxinxi_zhaopinfengmian7.jpg', '工作地点5', '工作时间5', '2024-03-22', '', '备注5', '用户账号5', '用户姓名5');
INSERT INTO `yingpinxinxi` VALUES (76, '2024-03-22 09:30:29', '社团名称6', 'upload/yingpinxinxi_zhaopinfengmian6.jpg,upload/yingpinxinxi_zhaopinfengmian7.jpg,upload/yingpinxinxi_zhaopinfengmian8.jpg', '工作地点6', '工作时间6', '2024-03-22', '', '备注6', '用户账号6', '用户姓名6');
INSERT INTO `yingpinxinxi` VALUES (77, '2024-03-22 09:30:29', '社团名称7', 'upload/yingpinxinxi_zhaopinfengmian7.jpg,upload/yingpinxinxi_zhaopinfengmian8.jpg,upload/yingpinxinxi_zhaopinfengmian9.jpg', '工作地点7', '工作时间7', '2024-03-22', '', '备注7', '用户账号7', '用户姓名7');
INSERT INTO `yingpinxinxi` VALUES (78, '2024-03-22 09:30:29', '社团名称8', 'upload/yingpinxinxi_zhaopinfengmian8.jpg,upload/yingpinxinxi_zhaopinfengmian9.jpg,upload/yingpinxinxi_zhaopinfengmian10.jpg', '工作地点8', '工作时间8', '2024-03-22', '', '备注8', '用户账号8', '用户姓名8');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `nianling` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `jianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuzhanghao`(`yonghuzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1715682690046 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (12, '2024-03-22 09:30:29', '用户账号2', '123456', '用户姓名2', '男', '13823888882', 2, 'upload/yonghu_touxiang2.jpg', '简介2');
INSERT INTO `yonghu` VALUES (13, '2024-03-22 09:30:29', '用户账号3', '123456', '用户姓名3', '男', '13823888883', 3, 'upload/yonghu_touxiang3.jpg', '简介3');
INSERT INTO `yonghu` VALUES (14, '2024-03-22 09:30:29', '用户账号4', '123456', '用户姓名4', '男', '13823888884', 4, 'upload/yonghu_touxiang4.jpg', '简介4');
INSERT INTO `yonghu` VALUES (15, '2024-03-22 09:30:29', '用户账号5', '123456', '用户姓名5', '男', '13823888885', 5, 'upload/yonghu_touxiang5.jpg', '简介5');
INSERT INTO `yonghu` VALUES (16, '2024-03-22 09:30:29', '用户账号6', '123456', '用户姓名6', '男', '13823888886', 6, 'upload/yonghu_touxiang6.jpg', '简介6');
INSERT INTO `yonghu` VALUES (17, '2024-03-22 09:30:29', '用户账号7', '123456', '用户姓名7', '男', '13823888887', 7, 'upload/yonghu_touxiang7.jpg', '简介7');
INSERT INTO `yonghu` VALUES (18, '2024-03-22 09:30:29', '用户账号8', '123456', '用户姓名8', '男', '13823888888', 8, 'upload/yonghu_touxiang8.jpg', '简介8');
INSERT INTO `yonghu` VALUES (1711072142697, '2024-03-22 09:49:02', '11', '11', 'kk', '男', '18888888888', 25, 'upload/1713151501122.png', '');
INSERT INTO `yonghu` VALUES (1715601981004, '2024-05-13 20:06:21', '123', '123', '展位', '男', '18888888888', 15, 'upload/1715601978855.jpg', '');
INSERT INTO `yonghu` VALUES (1715682690045, '2024-05-14 18:31:30', '1', '121351', '111', '男', '18048013769', 20, 'upload/1715682673232.jpg', '');

-- ----------------------------
-- Table structure for youxiuxiaoyouqiang
-- ----------------------------
DROP TABLE IF EXISTS `youxiuxiaoyouqiang`;
CREATE TABLE `youxiuxiaoyouqiang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `fengmian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '封面',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `riqi` date NULL DEFAULT NULL COMMENT '日期',
  `shiji` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '事迹',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优秀校友墙' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of youxiuxiaoyouqiang
-- ----------------------------
INSERT INTO `youxiuxiaoyouqiang` VALUES (55, '2024-03-22 09:30:29', '标题5', 'upload/1713150644726.jpg', '用户账号5', '用户姓名5', '2024-03-22', '事迹5', '<p>详情5</p>');
INSERT INTO `youxiuxiaoyouqiang` VALUES (56, '2024-03-22 09:30:29', '标题6', 'upload/1713150626596.jpg', '用户账号6', '用户姓名6', '2024-03-22', '事迹6', '<p>详情6</p>');
INSERT INTO `youxiuxiaoyouqiang` VALUES (57, '2024-03-22 09:30:29', '标题7', 'upload/1713150524954.jpg', '用户账号7', '用户姓名7', '2024-03-22', '事迹7', '<p>详情7</p>');
INSERT INTO `youxiuxiaoyouqiang` VALUES (59, '2024-03-22 09:54:12', '校友墙', 'upload/1713150216664.jpg', '11', '0001', '2024-03-22', '操作者可以在输入框输入   详情信息   等内容\n操作者可以在输入框输入   详情信息   等内容\n操作者可以在输入框输入   详情信息   等内容\n操作者可以在输入框输入   详情信息   等内容', '<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容</p>');

SET FOREIGN_KEY_CHECKS = 1;
