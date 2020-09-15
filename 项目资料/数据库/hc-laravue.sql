/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : hc-laravue

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 15/09/2020 18:55:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_03_16_102314_add_simple_role_to_user_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_04_20_125200_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (5, '2019_04_20_130706_setup_role_permissions', 1);
INSERT INTO `migrations` VALUES (6, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_03_25_170854_remove_passport', 1);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` int(0) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` int(0) UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Laravue\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 3);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 4);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 5);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 6);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 7);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 8);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 9);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 10);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 11);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 13);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 14);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 15);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 16);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 17);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 18);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 19);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 20);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 21);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 22);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 23);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 24);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 25);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 26);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 27);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 28);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 29);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 30);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 31);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 32);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 33);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 34);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 35);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 36);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 37);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 38);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 39);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 40);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 41);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 42);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 43);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 44);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 45);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 46);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 47);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 48);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 49);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 50);
INSERT INTO `model_has_roles` VALUES (4, 'App\\Laravue\\Models\\User', 51);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Laravue\\Models\\User', 52);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 53);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Laravue\\Models\\User', 54);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Laravue\\Models\\User', 55);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'view menu element ui', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (2, 'view menu permission', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (3, 'view menu components', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (4, 'view menu charts', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (5, 'view menu nested routes', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (6, 'view menu table', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (7, 'view menu administrator', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (8, 'view menu theme', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (9, 'view menu clipboard', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (10, 'view menu excel', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (11, 'view menu zip', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (12, 'view menu pdf', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (13, 'view menu i18n', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (14, 'manage user', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (15, 'manage article', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `permissions` VALUES (16, 'manage permission', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(0) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` int(0) UNSIGNED NOT NULL,
  `role_id` int(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (14, 1);
INSERT INTO `role_has_permissions` VALUES (15, 1);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (2, 2);
INSERT INTO `role_has_permissions` VALUES (3, 2);
INSERT INTO `role_has_permissions` VALUES (4, 2);
INSERT INTO `role_has_permissions` VALUES (5, 2);
INSERT INTO `role_has_permissions` VALUES (6, 2);
INSERT INTO `role_has_permissions` VALUES (7, 2);
INSERT INTO `role_has_permissions` VALUES (8, 2);
INSERT INTO `role_has_permissions` VALUES (9, 2);
INSERT INTO `role_has_permissions` VALUES (10, 2);
INSERT INTO `role_has_permissions` VALUES (11, 2);
INSERT INTO `role_has_permissions` VALUES (12, 2);
INSERT INTO `role_has_permissions` VALUES (13, 2);
INSERT INTO `role_has_permissions` VALUES (14, 2);
INSERT INTO `role_has_permissions` VALUES (15, 2);
INSERT INTO `role_has_permissions` VALUES (1, 3);
INSERT INTO `role_has_permissions` VALUES (2, 3);
INSERT INTO `role_has_permissions` VALUES (3, 3);
INSERT INTO `role_has_permissions` VALUES (4, 3);
INSERT INTO `role_has_permissions` VALUES (5, 3);
INSERT INTO `role_has_permissions` VALUES (6, 3);
INSERT INTO `role_has_permissions` VALUES (7, 3);
INSERT INTO `role_has_permissions` VALUES (8, 3);
INSERT INTO `role_has_permissions` VALUES (9, 3);
INSERT INTO `role_has_permissions` VALUES (10, 3);
INSERT INTO `role_has_permissions` VALUES (11, 3);
INSERT INTO `role_has_permissions` VALUES (12, 3);
INSERT INTO `role_has_permissions` VALUES (13, 3);
INSERT INTO `role_has_permissions` VALUES (15, 3);
INSERT INTO `role_has_permissions` VALUES (1, 4);
INSERT INTO `role_has_permissions` VALUES (2, 4);
INSERT INTO `role_has_permissions` VALUES (1, 5);
INSERT INTO `role_has_permissions` VALUES (2, 5);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `roles` VALUES (2, 'manager', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `roles` VALUES (3, 'editor', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `roles` VALUES (4, 'user', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');
INSERT INTO `roles` VALUES (5, 'visitor', 'api', '2020-09-14 06:19:00', '2020-09-14 06:19:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@laravue.dev', NULL, '$2y$10$eYJWNrXCLm2uYpINx7zQrOINTSGumHU4Y6JIGSC.M3VFDNEuzQ.9q', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (2, 'Manager', 'manager@laravue.dev', NULL, '$2y$10$gltqTzw48t/LpRi1p4GDx.0pLnq0ZaQgst6TxIIczKHZx21uflbh.', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (3, 'Editor', 'editor@laravue.dev', NULL, '$2y$10$kDxMoIGMbU4IVxwmSwgFGenjdlteFl50oSGm9w6XOAlO68po70oZK', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (4, 'User', 'user@laravue.dev', NULL, '$2y$10$JDmtdnlmPuPKScrLFS412O.e.B/jd4MhsS2Vd6/utXYpN4GWe9.tS', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (5, 'Visitor', 'visitor@laravue.dev', NULL, '$2y$10$av3.GcqO44eyMeP7UvQGNeAHbCkrEPCNx0ORCEn654/3qdtDbP0uC', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (6, 'Adriana C. Ocampo Uria', 'adriana.c..ocampo.uria@laravue.dev', NULL, '$2y$10$Pu2IMQukT32tZI5nL1x3.OiE7SOZztJdDqjm.I/fDA6076OtgLeeG', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (7, 'Albert Einstein', 'albert.einstein@laravue.dev', NULL, '$2y$10$RD6zvmPEMP18iXk7bFteaOshWQPDJKMbDIeirymyM3HyvzQ6.0Vkq', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (8, 'Anna K. Behrensmeyer', 'anna.k..behrensmeyer@laravue.dev', NULL, '$2y$10$wMuVIr2dPq600zzMFbXYiuVIOZkE92L/WDU0f0GVgLIeOCgOBxFC.', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (9, 'Blaise Pascal', 'blaise.pascal@laravue.dev', NULL, '$2y$10$QEHcvgB6VzN81xOG9lZnNeYqi7PW4rnGakajqwMG.x6mTGObD0koq', NULL, '2020-09-14 06:19:01', '2020-09-14 06:19:01');
INSERT INTO `users` VALUES (10, 'Caroline Herschel', 'caroline.herschel@laravue.dev', NULL, '$2y$10$9E3ljMGfzbqbTBw3WgSoyO0SQe2j/a/.kFVsNZY7yQGTrr2OVXwme', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (11, 'Cecilia Payne-Gaposchkin', 'cecilia.payne-gaposchkin@laravue.dev', NULL, '$2y$10$gwj0tCsIwwimTmAYk.K8PufC7TaAX2CPNhcoLy3HN6i0eB.NzF4Xa', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (12, 'Chien-Shiung Wu', 'chien-shiung.wu@laravue.dev', NULL, '$2y$10$VgPr7NtMF1.IAkaWc6zuyecR1LKifyDiste3GnSrgfnOYDtmkkHMC', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (13, 'Dorothy Hodgkin', 'dorothy.hodgkin@laravue.dev', NULL, '$2y$10$DGWGmfLqwDTHOAMjvwzTb.qe1EpO3vFxE/z5QO2IoFpAZy/g14/Fy', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (14, 'Edmond Halley', 'edmond.halley@laravue.dev', NULL, '$2y$10$st0k2n9oYwbSQ2nEhbAGY.wUjKT8rH76xlA88AN1qN8DGd3o/V47i', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (15, 'Edwin Powell Hubble', 'edwin.powell.hubble@laravue.dev', NULL, '$2y$10$GLcAGCJZEGKGEokBpfMNIepVI6AfheOCRZYrhSrdb7l.SmJE285pS', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (16, 'Elizabeth Blackburn', 'elizabeth.blackburn@laravue.dev', NULL, '$2y$10$6K2RRCE6bJ4gDh4HQur6v.Obqq2Jl7AHZkLW9n6gFrYF0ECy.K.ai', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (17, 'Enrico Fermi', 'enrico.fermi@laravue.dev', NULL, '$2y$10$uB6XMPrrn1Lt5JIu1isGke2LWSeqBaDY25G4FFGHewPV3lk7JRhPa', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (18, 'Erwin Schroedinger', 'erwin.schroedinger@laravue.dev', NULL, '$2y$10$SM7Qgv6KoOmUI5oPgc74JOeoMOQR.0gU/T.nm0UHcgTnoLu6/qzj.', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (19, 'Flossie Wong-Staal', 'flossie.wong-staal@laravue.dev', NULL, '$2y$10$inab8tbB3E.QXfppRLFC0uROQokfWrq5JK6PpN7Way3lyK0KeU0S6', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (20, 'Frieda Robscheit-Robbins', 'frieda.robscheit-robbins@laravue.dev', NULL, '$2y$10$lsZODTllnhBSrx1D5K4NNufNmSSmVCVngPJf/AMAXpe4TXahYOvzq', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (21, 'Geraldine Seydoux', 'geraldine.seydoux@laravue.dev', NULL, '$2y$10$dGpywPgKOu.7xL5tjoJGdOg7uyqTUW7vRWPgVC01cmDNfu0UwjJO6', NULL, '2020-09-14 06:19:02', '2020-09-14 06:19:02');
INSERT INTO `users` VALUES (22, 'Gertrude B. Elion', 'gertrude.b..elion@laravue.dev', NULL, '$2y$10$sLL4MkrLrD0.lILtf2FFDuEb6FReGGk5mOXzCHM7IcmV9vxGD57Pu', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (23, 'Ingrid Daubechies', 'ingrid.daubechies@laravue.dev', NULL, '$2y$10$9VX/DsXJRprRK5Xn6gLyUeXtBPaGYbQX0nuTSLuw29CZdj3Uv48PK', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (24, 'Jacqueline K. Barton', 'jacqueline.k..barton@laravue.dev', NULL, '$2y$10$ye77u1tDtWmnVfkZeYroj.cvj./3OD35JHchtLUMEL4GDUKgOoVH6', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (25, 'Jane Goodall', 'jane.goodall@laravue.dev', NULL, '$2y$10$ANlkkya/QfQoaq5DJyqBje6FDd.5Y6bdObwQUUhZxSiIEz0X8G8MO', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (26, 'Jocelyn Bell Burnell', 'jocelyn.bell.burnell@laravue.dev', NULL, '$2y$10$5HDbW.ICiTOJLyPkyBcSHuAfpDebCuUjoX6YcB6spNCidXAwz2mzW', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (27, 'Johannes Kepler', 'johannes.kepler@laravue.dev', NULL, '$2y$10$h15.Diigzi0uMj1Arr/8LeVSF9vG0IIdihSvIQyJsYDsRfhhcnkNK', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (28, 'Lene Vestergaard Hau', 'lene.vestergaard.hau@laravue.dev', NULL, '$2y$10$gbCDbBklnh04SMzVmNiAYuzr/PGRH1AEltEcOSs88ttFiGWwT9nJW', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (29, 'Lise Meitner', 'lise.meitner@laravue.dev', NULL, '$2y$10$7FuvTZhG0ilFrEqDwBFaL.EBKptQttmbz/XS0F.PS7Pa/E8DEt9bq', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (30, 'Lord Kelvin', 'lord.kelvin@laravue.dev', NULL, '$2y$10$D9EX.6TUYR/WBr/9QvHMuecp6hWkEbd.gmRa5dAMcDCmWpbOpHCri', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (31, 'Maria Mitchell', 'maria.mitchell@laravue.dev', NULL, '$2y$10$nPArFCWj4UAhxhNzhjvmFOfqY3utHMpZANHMn6K9xHQGlrIAHtK5O', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (32, 'Marie Curie', 'marie.curie@laravue.dev', NULL, '$2y$10$Xu3vfOHDngsWPSSARWgwDe19FFiryyLU5QBw7G1a3ZgMgJGVy1FwW', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (33, 'Max Born', 'max.born@laravue.dev', NULL, '$2y$10$grmwZpeYLyLxIfDecMoiTeSbwgZyP5z6BgXV4c.xMDr6GsVRFvHl.', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (34, 'Max Planck', 'max.planck@laravue.dev', NULL, '$2y$10$p1UcImSCtUB2C9HXYshYje/qtxwYVxcseyMOOMDudgQFmz3b9xFQC', NULL, '2020-09-14 06:19:03', '2020-09-14 06:19:03');
INSERT INTO `users` VALUES (35, 'Melissa Franklin', 'melissa.franklin@laravue.dev', NULL, '$2y$10$162wqjiHiia0irGEPilmw.YV5v.LfU5zA2YAgC/PtoXKmV3G0ign2', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (36, 'Michael Faraday', 'michael.faraday@laravue.dev', NULL, '$2y$10$XDeGgkS3kiEGcu7UgAqWlOv37GUDUXuRUpTrImCYYjwJNuqivcVeW', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (37, 'Mildred S. Dresselhaus', 'mildred.s..dresselhaus@laravue.dev', NULL, '$2y$10$3Fxurh2FbAP3hY6aUy16GebL537IiZ1X9ezyKeiQDCOU0rh9LC9ju', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (38, 'Nicolaus Copernicus', 'nicolaus.copernicus@laravue.dev', NULL, '$2y$10$5/Xt55RQPfqBNpOtSZEIveOZVPd0LujbVu.3m0qfkmGd5gTEzUody', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (39, 'Niels Bohr', 'niels.bohr@laravue.dev', NULL, '$2y$10$eztWvSwe4gEH1dvORXltten9Te0IB419DjWob7iaRP1ZBn4kuakX.', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (40, 'Patricia S. Goldman-Rakic', 'patricia.s..goldman-rakic@laravue.dev', NULL, '$2y$10$SkxOSNT7IZis6TKeJwexlOsrO6eErP9gtMufkqwgJnv8Mv49lYMeK', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (41, 'Patty Jo Watson', 'patty.jo.watson@laravue.dev', NULL, '$2y$10$i2PBzoQYBXS6OmQyAUFLmuIWVdtlWsvJPW9HXA1wNbpmTqdbOPOOS', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (42, 'Polly Matzinger', 'polly.matzinger@laravue.dev', NULL, '$2y$10$PfOToMSDOSSZO4vbvLfehOBeg.OMJkKKfv9BJtJ.LbvUaef8tYhYW', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (43, 'Richard Phillips Feynman', 'richard.phillips.feynman@laravue.dev', NULL, '$2y$10$k43ujPSbyHVwhRWjxT.sDehivkKsUpSL9X7LrXoQaFy7xo0TGLyEG', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (44, 'Rita Levi-Montalcini', 'rita.levi-montalcini@laravue.dev', NULL, '$2y$10$2fh7hp9WVNdkrRZiQ1.0vOoV..76w.0fWtw0zUiY0pjMPhfKisyKi', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (45, 'Rosalind Franklin', 'rosalind.franklin@laravue.dev', NULL, '$2y$10$a6wUkM8u0WGwJrI4iw5PWOI1f/usldx5pTfJietCHf0nqcd2HjsK2', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (46, 'Ruzena Bajcsy', 'ruzena.bajcsy@laravue.dev', NULL, '$2y$10$co.tWQNdx08VPnB/spGFrewSXRw02ys5SQjNbh19d/B14upoUupWC', NULL, '2020-09-14 06:19:04', '2020-09-14 06:19:04');
INSERT INTO `users` VALUES (47, 'Sarah Boysen', 'sarah.boysen@laravue.dev', NULL, '$2y$10$0cCaMK6.e1qovE0Yk8zppuH.5sAr3/0ky/a.LOmzO0yJa03ZlMTvW', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');
INSERT INTO `users` VALUES (48, 'Shannon W. Lucid', 'shannon.w..lucid@laravue.dev', NULL, '$2y$10$Bj6ve7ENrcIfHLpxWR2zGuhGg3ZXIKgYDE2QwUw6swnmHp5bERXYm', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');
INSERT INTO `users` VALUES (49, 'Shirley Ann Jackson', 'shirley.ann.jackson@laravue.dev', NULL, '$2y$10$G4Kl.H1n1K5PwrXVHWTE4.pMNuak8uGw7SI.gY9UQWBxAtaUaevki', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');
INSERT INTO `users` VALUES (50, 'Sir Ernest Rutherford', 'sir.ernest.rutherford@laravue.dev', NULL, '$2y$10$2eivns/By6fAA2ebDrIFK.LnKyKwgsaeYQUnu5egQiM5jWkSBIvPm', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');
INSERT INTO `users` VALUES (51, 'Sir Isaac Newton', 'sir.isaac.newton@laravue.dev', NULL, '$2y$10$3muW9Vf28I6M0vQt.m/vtunS5xX6Gum3lSNy9fkCjItAjAgLvdpT2', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');
INSERT INTO `users` VALUES (52, 'Stephen Hawking', 'stephen.hawking@laravue.dev', NULL, '$2y$10$07hoJF4SLYfn13mqnhVHLeku.qzql0pZJwbo6oTZcOXJC94WzM3lm', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');
INSERT INTO `users` VALUES (53, 'Werner Karl Heisenberg', 'werner.karl.heisenberg@laravue.dev', NULL, '$2y$10$Gt7ChbM1SGeHodmFNtBiSeG95PbpPW9ky9t18xfOts8YEI2bX3xj.', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');
INSERT INTO `users` VALUES (54, 'Wilhelm Conrad Roentgen', 'wilhelm.conrad.roentgen@laravue.dev', NULL, '$2y$10$vyCtuflTDORBU68rY3.ZXuTOqHnuuQCEQ8DFAEwP0uo/JMf7slu2y', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');
INSERT INTO `users` VALUES (55, 'Wolfgang Ernst Pauli', 'wolfgang.ernst.pauli@laravue.dev', NULL, '$2y$10$BhoQWvRaVvG42s6AAeu8muB6WQCvHrTODmrA62/BF3jWvCzLIETyK', NULL, '2020-09-14 06:19:05', '2020-09-14 06:19:05');

SET FOREIGN_KEY_CHECKS = 1;
