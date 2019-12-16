/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : life

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 16/12/2019 18:19:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admires
-- ----------------------------
DROP TABLE IF EXISTS `admires`;
CREATE TABLE `admires`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NULL DEFAULT NULL COMMENT '对应的作品或评论的id',
  `status` tinyint(4) NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '点赞类型  1作品点赞  2 评论点赞 ',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `community_news_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for community_news
-- ----------------------------
DROP TABLE IF EXISTS `community_news`;
CREATE TABLE `community_news`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `key_words` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `read_count` int(11) NULL DEFAULT NULL,
  `admire_count` int(11) NULL DEFAULT NULL,
  `news_type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of community_news
-- ----------------------------
INSERT INTO `community_news` VALUES (1, '宝能汽车业务战略研讨会1', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (2, '宝能汽车业务战略研讨会2', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (3, '宝能汽车业务战略研讨会3', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (4, '宝能汽车业务战略研讨会4', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (5, '宝能汽车业务战略研讨会5', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (6, '宝能汽车业务战略研讨会6', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (7, '宝能汽车业务战略研讨会7', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (8, '宝能汽车业务战略研讨会8', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (9, '宝能汽车业务战略研讨会9', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (10, '宝能汽车业务战略研讨会10', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (11, '宝能汽车业务战略研讨会11', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (12, '宝能汽车业务战略研讨会12', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (13, '宝能汽车业务战略研讨会', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (14, '宝能汽车业务战略研讨会', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (15, '宝能汽车业务战略研讨会', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (16, '宝能汽车业务战略研讨会', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (17, '宝能汽车业务战略研讨会', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (18, '宝能汽车业务战略研讨会', '张三', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 1, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (19, '底气驾驭新生,扫描二维码111111111111111111111111111111', '观致新闻团队', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 2, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (20, '底气驾驭新生,扫描二维码', '观致新闻团队', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 2, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (21, '底气驾驭新生,扫描二维码', '观致新闻团队', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 2, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (22, '底气驾驭新生,扫描二维码', '观致新闻团队', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 2, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (23, '底气驾驭新生,扫描二维码', '观致新闻团队', '宝能汽车业务战略研讨会在深圳举行，欢迎莅临', '汽车', 2, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (24, 'New Years Greetings', '观致新闻团队', '观致正在步入崭新时代', '汽车', 3, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (25, 'New Years Greetings', '观致新闻团队', '观致正在步入崭新时代', '汽车', 3, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (26, 'New Years Greetings', '观致新闻团队', '观致正在步入崭新时代', '汽车', 3, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (27, 'New Years Greetings', '观致新闻团队', '观致正在步入崭新时代', '汽车', 3, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (28, 'New Years Greetings', '观致新闻团队', '观致正在步入崭新时代', '汽车', 3, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `community_news` VALUES (29, 'New Years Greetings', '观致新闻团队', '观致正在步入崭新时代', '汽车', 3, 0, 0, 0, '2019-12-16 15:19:07', '2019-12-16 15:19:09');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `customers_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for footers
-- ----------------------------
DROP TABLE IF EXISTS `footers`;
CREATE TABLE `footers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of footers
-- ----------------------------
INSERT INTO `footers` VALUES (1, '观致圈儿', '/circle', 0, 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (2, '观致动态', '/dynamic', 0, 1, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (3, '管理技术动态', '/managerTech', 0, 1, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (4, '公告', '/notice', 0, 1, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (5, '观致伙伴', '/partner', 0, 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (6, '观致人', '/person', 0, 5, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (7, '点赞祝福', '/blessing', 0, 5, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (8, '观致风采', '/elegant', 0, 5, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (9, '管理技术交流', '/technical', 0, 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (10, '思想分享', '/thought', 0, 9, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (11, '技术分享', '/techShare', 0, 9, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (12, '观生活', '/life', 0, 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (13, '协会天地', '/association', 0, 12, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (14, '脱单区', '/single', 0, 12, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (15, '跳蚤市场', '/market', 0, 12, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (16, '学习分享', '/study', 0, 12, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (17, '关于和声社区', '/index', 0, 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (18, '管理规定', '/stipulation', 0, 17, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (19, '隐私声明', '/privacy ', 0, 17, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `footers` VALUES (20, '联系我们', '/contactUs', 0, 17, '2019-12-16 03:20:16', '2019-12-16 03:20:16');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, '和声社区', '/index', 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `menus` VALUES (2, '观致圈儿', '/circle', 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `menus` VALUES (3, '观致伙伴', '/partner', 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `menus` VALUES (4, '技术交流', '/technical', 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `menus` VALUES (5, '观致生活', '/life', 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');
INSERT INTO `menus` VALUES (6, '下载天地', '/download', 0, '2019-12-16 03:20:16', '2019-12-16 03:20:16');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_12_13_081444_create_menus_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_13_081635_create_footers_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_13_082324_create_community_news_table', 1);
INSERT INTO `migrations` VALUES (6, '2019_12_13_083143_create_admires_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_12_13_084643_create_reads_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_12_13_084751_create_comments_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_12_13_090552_create_replys_table', 1);
INSERT INTO `migrations` VALUES (10, '2019_12_13_091348_create_customers_table', 1);
INSERT INTO `migrations` VALUES (11, '2019_12_16_073000_create_notices_table', 2);
INSERT INTO `migrations` VALUES (12, '2019_12_16_093906_add_community_news_table', 3);

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES (1, '为了观致磐涅重生 --张三致全体员工的心', '张三', '全体管理团队于二月底到任', '2019-12-16 15:19:07', '2019-12-16 15:19:09');
INSERT INTO `notices` VALUES (2, '为了观致磐涅重生 --张三致全体员工的心', '张三', '全体管理团队于二月底到任', '2019-12-16 15:19:07', '2019-12-16 15:20:09');
INSERT INTO `notices` VALUES (3, '为了观致磐涅重生 --张三致全体员工的心', '张三', '全体管理团队于二月底到任', '2019-12-16 15:19:07', '2019-12-16 15:22:09');
INSERT INTO `notices` VALUES (4, '为了观致磐涅重生 --张三致全体员工的心', '李四', '全体管理团队于二月底到任', '2019-12-16 15:19:07', '2019-12-16 15:28:09');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reads
-- ----------------------------
DROP TABLE IF EXISTS `reads`;
CREATE TABLE `reads`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `community_news_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for replys
-- ----------------------------
DROP TABLE IF EXISTS `replys`;
CREATE TABLE `replys`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `reply_type` int(11) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
