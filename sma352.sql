/*
 Navicat Premium Data Transfer

 Source Server         : LOCALDB
 Source Server Type    : MySQL
 Source Server Version : 80017 (8.0.17)
 Source Host           : localhost:3306
 Source Schema         : sma3444

 Target Server Type    : MySQL
 Target Server Version : 80017 (8.0.17)
 File Encoding         : 65001

 Date: 31/01/2024 15:56:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sma_addresses
-- ----------------------------
DROP TABLE IF EXISTS `sma_addresses`;
CREATE TABLE `sma_addresses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `line1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `line2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postal_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `company_id`(`company_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_addresses
-- ----------------------------

-- ----------------------------
-- Table structure for sma_adjustment_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_adjustment_items`;
CREATE TABLE `sma_adjustment_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NULL DEFAULT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `serial_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adjustment_id`(`adjustment_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_adjustment_items
-- ----------------------------

-- ----------------------------
-- Table structure for sma_adjustments
-- ----------------------------
DROP TABLE IF EXISTS `sma_adjustments`;
CREATE TABLE `sma_adjustments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL,
  `reference_no` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `attachment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `count_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `warehouse_id`(`warehouse_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_adjustments
-- ----------------------------

-- ----------------------------
-- Table structure for sma_attachments
-- ----------------------------
DROP TABLE IF EXISTS `sma_attachments`;
CREATE TABLE `sma_attachments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `subject_type` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orig_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for sma_brands
-- ----------------------------
DROP TABLE IF EXISTS `sma_brands`;
CREATE TABLE `sma_brands`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_brands
-- ----------------------------

-- ----------------------------
-- Table structure for sma_calendar
-- ----------------------------
DROP TABLE IF EXISTS `sma_calendar`;
CREATE TABLE `sma_calendar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NULL DEFAULT NULL,
  `color` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_calendar
-- ----------------------------

-- ----------------------------
-- Table structure for sma_captcha
-- ----------------------------
DROP TABLE IF EXISTS `sma_captcha`;
CREATE TABLE `sma_captcha`  (
  `captcha_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`captcha_id`) USING BTREE,
  INDEX `word`(`word` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_captcha
-- ----------------------------

-- ----------------------------
-- Table structure for sma_categories
-- ----------------------------
DROP TABLE IF EXISTS `sma_categories`;
CREATE TABLE `sma_categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `slug` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_categories
-- ----------------------------
INSERT INTO `sma_categories` VALUES (1, 'C1', 'Category 1', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sma_combo_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_combo_items`;
CREATE TABLE `sma_combo_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` decimal(12, 4) NOT NULL,
  `unit_price` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_combo_items
-- ----------------------------
INSERT INTO `sma_combo_items` VALUES (1, 3, 'HCLTD001', 1.0000, 14.0000);

-- ----------------------------
-- Table structure for sma_companies
-- ----------------------------
DROP TABLE IF EXISTS `sma_companies`;
CREATE TABLE `sma_companies`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `group_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_group_id` int(11) NULL DEFAULT NULL,
  `customer_group_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vat_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postal_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cf1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf6` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invoice_footer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `payment_term` int(11) NULL DEFAULT 0,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'logo.png',
  `award_points` int(11) NULL DEFAULT 0,
  `deposit_amount` decimal(25, 4) NULL DEFAULT NULL,
  `price_group_id` int(11) NULL DEFAULT NULL,
  `price_group_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gst_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id`(`group_id` ASC) USING BTREE,
  INDEX `group_id_2`(`group_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_companies
-- ----------------------------
INSERT INTO `sma_companies` VALUES (1, 3, 'customer', 1, 'General', 'Walk-in Customer', 'Walk-in Customer', '', 'Customer Address', 'Petaling Jaya', 'Selangor', '46000', 'Malaysia', '0123456789', 'customer@tecdiary.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL);
INSERT INTO `sma_companies` VALUES (2, 4, 'supplier', NULL, NULL, 'Test Supplier', 'Supplier Company Name', NULL, 'Supplier Address', 'Petaling Jaya', 'Selangor', '46050', 'Malaysia', '0123456789', 'supplier@tecdiary.com', '-', '-', '-', '-', '-', '-', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL);
INSERT INTO `sma_companies` VALUES (3, NULL, 'biller', NULL, NULL, 'Mian Saleem', 'Test Biller', '5555', 'Biller adddress', 'City', '', '', 'Country', '012345678', 'saleem@tecdiary.com', '', '', '', '', '', '', ' Thank you for shopping with us. Please come again', 0, 'logo1.png', 0, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sma_costing
-- ----------------------------
DROP TABLE IF EXISTS `sma_costing`;
CREATE TABLE `sma_costing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) NULL DEFAULT NULL,
  `purchase_item_id` int(11) NULL DEFAULT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `purchase_net_unit_cost` decimal(25, 4) NULL DEFAULT NULL,
  `purchase_unit_cost` decimal(25, 4) NULL DEFAULT NULL,
  `sale_net_unit_price` decimal(25, 4) NOT NULL,
  `sale_unit_price` decimal(25, 4) NOT NULL,
  `quantity_balance` decimal(15, 4) NULL DEFAULT NULL,
  `inventory` tinyint(1) NULL DEFAULT 0,
  `overselling` tinyint(1) NULL DEFAULT 0,
  `option_id` int(11) NULL DEFAULT NULL,
  `purchase_id` int(11) NULL DEFAULT NULL,
  `transfer_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_costing
-- ----------------------------
INSERT INTO `sma_costing` VALUES (1, '2024-01-31', 1, 1, 1, NULL, 1.0000, 0.0000, 0.0000, 3.0000, 3.0000, -1.0000, NULL, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sma_currencies
-- ----------------------------
DROP TABLE IF EXISTS `sma_currencies`;
CREATE TABLE `sma_currencies`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rate` decimal(12, 4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT 0,
  `symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_currencies
-- ----------------------------
INSERT INTO `sma_currencies` VALUES (1, 'USD', 'US Dollar', 1.0000, 0, NULL);
INSERT INTO `sma_currencies` VALUES (2, 'EUR', 'EURO', 0.7340, 0, NULL);

-- ----------------------------
-- Table structure for sma_customer_groups
-- ----------------------------
DROP TABLE IF EXISTS `sma_customer_groups`;
CREATE TABLE `sma_customer_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `percent` int(11) NOT NULL,
  `discount` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_customer_groups
-- ----------------------------
INSERT INTO `sma_customer_groups` VALUES (1, 'General', 0, NULL);
INSERT INTO `sma_customer_groups` VALUES (2, 'Reseller', -5, NULL);
INSERT INTO `sma_customer_groups` VALUES (3, 'Distributor', -15, NULL);
INSERT INTO `sma_customer_groups` VALUES (4, 'New Customer (+10)', 10, NULL);

-- ----------------------------
-- Table structure for sma_date_format
-- ----------------------------
DROP TABLE IF EXISTS `sma_date_format`;
CREATE TABLE `sma_date_format`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `js` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `php` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sql` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_date_format
-- ----------------------------
INSERT INTO `sma_date_format` VALUES (1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y');
INSERT INTO `sma_date_format` VALUES (2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y');
INSERT INTO `sma_date_format` VALUES (3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y');
INSERT INTO `sma_date_format` VALUES (4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y');
INSERT INTO `sma_date_format` VALUES (5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y');
INSERT INTO `sma_date_format` VALUES (6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- ----------------------------
-- Table structure for sma_deliveries
-- ----------------------------
DROP TABLE IF EXISTS `sma_deliveries`;
CREATE TABLE `sma_deliveries`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) NOT NULL,
  `do_reference_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sale_reference_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attachment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delivered_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `received_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_deliveries
-- ----------------------------

-- ----------------------------
-- Table structure for sma_deposits
-- ----------------------------
DROP TABLE IF EXISTS `sma_deposits`;
CREATE TABLE `sma_deposits`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int(11) NOT NULL,
  `amount` decimal(25, 4) NOT NULL,
  `paid_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_deposits
-- ----------------------------

-- ----------------------------
-- Table structure for sma_expense_categories
-- ----------------------------
DROP TABLE IF EXISTS `sma_expense_categories`;
CREATE TABLE `sma_expense_categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_expense_categories
-- ----------------------------

-- ----------------------------
-- Table structure for sma_expenses
-- ----------------------------
DROP TABLE IF EXISTS `sma_expenses`;
CREATE TABLE `sma_expenses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` decimal(25, 4) NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_expenses
-- ----------------------------

-- ----------------------------
-- Table structure for sma_gift_card_topups
-- ----------------------------
DROP TABLE IF EXISTS `sma_gift_card_topups`;
CREATE TABLE `sma_gift_card_topups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL,
  `card_id` int(11) NOT NULL,
  `amount` decimal(15, 4) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `card_id`(`card_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_gift_card_topups
-- ----------------------------

-- ----------------------------
-- Table structure for sma_gift_cards
-- ----------------------------
DROP TABLE IF EXISTS `sma_gift_cards`;
CREATE TABLE `sma_gift_cards`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` decimal(25, 4) NOT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `customer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance` decimal(25, 4) NOT NULL,
  `expiry` date NULL DEFAULT NULL,
  `created_by` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `card_no`(`card_no` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_gift_cards
-- ----------------------------

-- ----------------------------
-- Table structure for sma_groups
-- ----------------------------
DROP TABLE IF EXISTS `sma_groups`;
CREATE TABLE `sma_groups`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_groups
-- ----------------------------
INSERT INTO `sma_groups` VALUES (1, 'owner', 'Owner');
INSERT INTO `sma_groups` VALUES (2, 'admin', 'Administrator');
INSERT INTO `sma_groups` VALUES (3, 'customer', 'Customer');
INSERT INTO `sma_groups` VALUES (4, 'supplier', 'Supplier');
INSERT INTO `sma_groups` VALUES (5, 'sales', 'Sales Staff');

-- ----------------------------
-- Table structure for sma_login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `sma_login_attempts`;
CREATE TABLE `sma_login_attempts`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_login_attempts
-- ----------------------------
INSERT INTO `sma_login_attempts` VALUES (1, 0x3A3A31, 'admin', 1706662198);
INSERT INTO `sma_login_attempts` VALUES (2, 0x3A3A31, 'admin', 1706662204);

-- ----------------------------
-- Table structure for sma_logs
-- ----------------------------
DROP TABLE IF EXISTS `sma_logs`;
CREATE TABLE `sma_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_logs
-- ----------------------------
INSERT INTO `sma_logs` VALUES (1, 'Product is being deleted by owner (User Id: 1)', '{\"model\":{\"id\":\"1\",\"code\":\"VCH001\",\"name\":\"CISCO 1900\",\"unit\":null,\"cost\":null,\"price\":\"3.0000\",\"alert_quantity\":\"0.0000\",\"image\":\"no_image.png\",\"category_id\":\"1\",\"subcategory_id\":null,\"cf1\":\"\",\"cf2\":\"\",\"cf3\":\"\",\"cf4\":\"\",\"cf5\":\"\",\"cf6\":\"\",\"quantity\":\"0.0000\",\"tax_rate\":\"1\",\"track_quantity\":\"0\",\"details\":\"\",\"warehouse\":null,\"barcode_symbology\":\"code128\",\"file\":\"\",\"product_details\":\"\",\"tax_method\":\"1\",\"type\":\"service\",\"supplier1\":\"0\",\"supplier1price\":null,\"supplier2\":null,\"supplier2price\":null,\"supplier3\":null,\"supplier3price\":null,\"supplier4\":null,\"supplier4price\":null,\"supplier5\":null,\"supplier5price\":null,\"promotion\":null,\"promo_price\":null,\"start_date\":null,\"end_date\":null,\"supplier1_part_no\":\"\",\"supplier2_part_no\":null,\"supplier3_part_no\":null,\"supplier4_part_no\":null,\"supplier5_part_no\":null,\"sale_unit\":\"0\",\"purchase_unit\":\"0\",\"brand\":\"0\",\"slug\":\"cisco-1900\",\"featured\":null,\"weight\":\"0.0000\",\"hsn_code\":null,\"views\":\"0\",\"hide\":\"0\",\"second_name\":\"\",\"hide_pos\":\"0\"}}', '2024-01-31 13:08:55');

-- ----------------------------
-- Table structure for sma_migrations
-- ----------------------------
DROP TABLE IF EXISTS `sma_migrations`;
CREATE TABLE `sma_migrations`  (
  `version` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_migrations
-- ----------------------------
INSERT INTO `sma_migrations` VALUES (315);

-- ----------------------------
-- Table structure for sma_notifications
-- ----------------------------
DROP TABLE IF EXISTS `sma_notifications`;
CREATE TABLE `sma_notifications`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_date` datetime NULL DEFAULT NULL,
  `till_date` datetime NULL DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT 3,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_notifications
-- ----------------------------
INSERT INTO `sma_notifications` VALUES (1, '<p>Thank you for purchasing Stock Manager Advance. Please do not forget to check the documentation in help folder. If you find any error/bug, please email to support@tecdiary.com with details. You can send us your valued suggestions/feedback too.</p><p>Please rate Stock Manager Advance on your download page of codecanyon.net</p>', '2014-08-15 13:00:57', '2015-01-01 00:00:00', '2017-01-01 00:00:00', 3);

-- ----------------------------
-- Table structure for sma_order_ref
-- ----------------------------
DROP TABLE IF EXISTS `sma_order_ref`;
CREATE TABLE `sma_order_ref`  (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT 1,
  `qu` int(11) NOT NULL DEFAULT 1,
  `po` int(11) NOT NULL DEFAULT 1,
  `to` int(11) NOT NULL DEFAULT 1,
  `pos` int(11) NOT NULL DEFAULT 1,
  `do` int(11) NOT NULL DEFAULT 1,
  `pay` int(11) NOT NULL DEFAULT 1,
  `re` int(11) NOT NULL DEFAULT 1,
  `rep` int(11) NOT NULL DEFAULT 1,
  `ex` int(11) NOT NULL DEFAULT 1,
  `ppay` int(11) NOT NULL DEFAULT 1,
  `qa` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`ref_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_order_ref
-- ----------------------------
INSERT INTO `sma_order_ref` VALUES (1, '2015-03-01', 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for sma_payments
-- ----------------------------
DROP TABLE IF EXISTS `sma_payments`;
CREATE TABLE `sma_payments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) NULL DEFAULT NULL,
  `return_id` int(11) NULL DEFAULT NULL,
  `purchase_id` int(11) NULL DEFAULT NULL,
  `reference_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transaction_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paid_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cheque_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cc_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cc_holder` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cc_month` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cc_year` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cc_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` decimal(25, 4) NOT NULL,
  `currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pos_paid` decimal(25, 4) NULL DEFAULT 0.0000,
  `pos_balance` decimal(25, 4) NULL DEFAULT 0.0000,
  `approval_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_payments
-- ----------------------------
INSERT INTO `sma_payments` VALUES (1, '2024-01-31 00:51:39', 1, NULL, NULL, 'IPAY2024/01/0001', NULL, 'cash', '', '', '', '', '', '', 3.0000, NULL, 1, NULL, 'received', '', 3.0000, 0.0000, NULL);

-- ----------------------------
-- Table structure for sma_paypal
-- ----------------------------
DROP TABLE IF EXISTS `sma_paypal`;
CREATE TABLE `sma_paypal`  (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `paypal_currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25, 4) NOT NULL DEFAULT 2.0000,
  `extra_charges_my` decimal(25, 4) NOT NULL DEFAULT 3.9000,
  `extra_charges_other` decimal(25, 4) NOT NULL DEFAULT 4.4000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_paypal
-- ----------------------------
INSERT INTO `sma_paypal` VALUES (1, 1, 'mypaypal@paypal.com', 'USD', 0.0000, 0.0000, 0.0000);

-- ----------------------------
-- Table structure for sma_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sma_permissions`;
CREATE TABLE `sma_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) NULL DEFAULT 0,
  `products-add` tinyint(1) NULL DEFAULT 0,
  `products-edit` tinyint(1) NULL DEFAULT 0,
  `products-delete` tinyint(1) NULL DEFAULT 0,
  `products-cost` tinyint(1) NULL DEFAULT 0,
  `products-price` tinyint(1) NULL DEFAULT 0,
  `quotes-index` tinyint(1) NULL DEFAULT 0,
  `quotes-add` tinyint(1) NULL DEFAULT 0,
  `quotes-edit` tinyint(1) NULL DEFAULT 0,
  `quotes-pdf` tinyint(1) NULL DEFAULT 0,
  `quotes-email` tinyint(1) NULL DEFAULT 0,
  `quotes-delete` tinyint(1) NULL DEFAULT 0,
  `sales-index` tinyint(1) NULL DEFAULT 0,
  `sales-add` tinyint(1) NULL DEFAULT 0,
  `sales-edit` tinyint(1) NULL DEFAULT 0,
  `sales-pdf` tinyint(1) NULL DEFAULT 0,
  `sales-email` tinyint(1) NULL DEFAULT 0,
  `sales-delete` tinyint(1) NULL DEFAULT 0,
  `purchases-index` tinyint(1) NULL DEFAULT 0,
  `purchases-add` tinyint(1) NULL DEFAULT 0,
  `purchases-edit` tinyint(1) NULL DEFAULT 0,
  `purchases-pdf` tinyint(1) NULL DEFAULT 0,
  `purchases-email` tinyint(1) NULL DEFAULT 0,
  `purchases-delete` tinyint(1) NULL DEFAULT 0,
  `transfers-index` tinyint(1) NULL DEFAULT 0,
  `transfers-add` tinyint(1) NULL DEFAULT 0,
  `transfers-edit` tinyint(1) NULL DEFAULT 0,
  `transfers-pdf` tinyint(1) NULL DEFAULT 0,
  `transfers-email` tinyint(1) NULL DEFAULT 0,
  `transfers-delete` tinyint(1) NULL DEFAULT 0,
  `customers-index` tinyint(1) NULL DEFAULT 0,
  `customers-add` tinyint(1) NULL DEFAULT 0,
  `customers-edit` tinyint(1) NULL DEFAULT 0,
  `customers-delete` tinyint(1) NULL DEFAULT 0,
  `suppliers-index` tinyint(1) NULL DEFAULT 0,
  `suppliers-add` tinyint(1) NULL DEFAULT 0,
  `suppliers-edit` tinyint(1) NULL DEFAULT 0,
  `suppliers-delete` tinyint(1) NULL DEFAULT 0,
  `sales-deliveries` tinyint(1) NULL DEFAULT 0,
  `sales-add_delivery` tinyint(1) NULL DEFAULT 0,
  `sales-edit_delivery` tinyint(1) NULL DEFAULT 0,
  `sales-delete_delivery` tinyint(1) NULL DEFAULT 0,
  `sales-email_delivery` tinyint(1) NULL DEFAULT 0,
  `sales-pdf_delivery` tinyint(1) NULL DEFAULT 0,
  `sales-gift_cards` tinyint(1) NULL DEFAULT 0,
  `sales-add_gift_card` tinyint(1) NULL DEFAULT 0,
  `sales-edit_gift_card` tinyint(1) NULL DEFAULT 0,
  `sales-delete_gift_card` tinyint(1) NULL DEFAULT 0,
  `pos-index` tinyint(1) NULL DEFAULT 0,
  `sales-return_sales` tinyint(1) NULL DEFAULT 0,
  `reports-index` tinyint(1) NULL DEFAULT 0,
  `reports-warehouse_stock` tinyint(1) NULL DEFAULT 0,
  `reports-quantity_alerts` tinyint(1) NULL DEFAULT 0,
  `reports-expiry_alerts` tinyint(1) NULL DEFAULT 0,
  `reports-products` tinyint(1) NULL DEFAULT 0,
  `reports-daily_sales` tinyint(1) NULL DEFAULT 0,
  `reports-monthly_sales` tinyint(1) NULL DEFAULT 0,
  `reports-sales` tinyint(1) NULL DEFAULT 0,
  `reports-payments` tinyint(1) NULL DEFAULT 0,
  `reports-purchases` tinyint(1) NULL DEFAULT 0,
  `reports-profit_loss` tinyint(1) NULL DEFAULT 0,
  `reports-customers` tinyint(1) NULL DEFAULT 0,
  `reports-suppliers` tinyint(1) NULL DEFAULT 0,
  `reports-staff` tinyint(1) NULL DEFAULT 0,
  `reports-register` tinyint(1) NULL DEFAULT 0,
  `sales-payments` tinyint(1) NULL DEFAULT 0,
  `purchases-payments` tinyint(1) NULL DEFAULT 0,
  `purchases-expenses` tinyint(1) NULL DEFAULT 0,
  `products-adjustments` tinyint(1) NOT NULL DEFAULT 0,
  `bulk_actions` tinyint(1) NOT NULL DEFAULT 0,
  `customers-deposits` tinyint(1) NOT NULL DEFAULT 0,
  `customers-delete_deposit` tinyint(1) NOT NULL DEFAULT 0,
  `products-barcode` tinyint(1) NOT NULL DEFAULT 0,
  `purchases-return_purchases` tinyint(1) NOT NULL DEFAULT 0,
  `reports-expenses` tinyint(1) NOT NULL DEFAULT 0,
  `reports-daily_purchases` tinyint(1) NULL DEFAULT 0,
  `reports-monthly_purchases` tinyint(1) NULL DEFAULT 0,
  `products-stock_count` tinyint(1) NULL DEFAULT 0,
  `edit_price` tinyint(1) NULL DEFAULT 0,
  `returns-index` tinyint(1) NULL DEFAULT 0,
  `returns-add` tinyint(1) NULL DEFAULT 0,
  `returns-edit` tinyint(1) NULL DEFAULT 0,
  `returns-delete` tinyint(1) NULL DEFAULT 0,
  `returns-email` tinyint(1) NULL DEFAULT 0,
  `returns-pdf` tinyint(1) NULL DEFAULT 0,
  `reports-tax` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_permissions
-- ----------------------------
INSERT INTO `sma_permissions` VALUES (1, 5, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for sma_pos_register
-- ----------------------------
DROP TABLE IF EXISTS `sma_pos_register`;
CREATE TABLE `sma_pos_register`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25, 4) NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_cash` decimal(25, 4) NULL DEFAULT NULL,
  `total_cheques` int(11) NULL DEFAULT NULL,
  `total_cc_slips` int(11) NULL DEFAULT NULL,
  `total_cash_submitted` decimal(25, 4) NULL DEFAULT NULL,
  `total_cheques_submitted` int(11) NULL DEFAULT NULL,
  `total_cc_slips_submitted` int(11) NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `closed_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_pos_register
-- ----------------------------
INSERT INTO `sma_pos_register` VALUES (1, '2023-06-25 14:50:07', 1, 0.0000, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sma_pos_settings
-- ----------------------------
DROP TABLE IF EXISTS `sma_pos_settings`;
CREATE TABLE `sma_pos_settings`  (
  `pos_id` int(11) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf_title2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf_value1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf_value2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receipt_printer` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cash_drawer_codes` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `focus_add_item` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_manual_product` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_selection` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_customer` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toggle_category_slider` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toggle_subcategory_slider` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancel_sale` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suspend_sale` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `print_items_list` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finalize_sale` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `today_sale` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open_hold_bills` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `close_register` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `pos_printers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `product_button_color` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'default',
  `tooltips` tinyint(1) NULL DEFAULT 1,
  `paypal_pro` tinyint(1) NULL DEFAULT 0,
  `stripe` tinyint(1) NULL DEFAULT 0,
  `rounding` tinyint(1) NULL DEFAULT 0,
  `char_per_line` tinyint(4) NULL DEFAULT 42,
  `pin_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `purchase_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'purchase_code',
  `envato_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'envato_username',
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3.5.2',
  `after_sale_page` tinyint(1) NULL DEFAULT 0,
  `item_order` tinyint(1) NULL DEFAULT 0,
  `authorize` tinyint(1) NULL DEFAULT 0,
  `toggle_brands_slider` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remote_printing` tinyint(1) NULL DEFAULT 1,
  `printer` int(11) NULL DEFAULT NULL,
  `order_printers` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `auto_print` tinyint(1) NULL DEFAULT 0,
  `customer_details` tinyint(1) NULL DEFAULT NULL,
  `local_printers` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`pos_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_pos_settings
-- ----------------------------
INSERT INTO `sma_pos_settings` VALUES (1, 22, 20, 1, 1, 3, '1', 'GST Reg', 'VAT Reg', '123456789', '987654321', 'BIXOLON SRP-350II', 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 1, 'BIXOLON SRP-350II, BIXOLON SRP-350II', 0, 'default', 1, 0, 0, 0, 42, NULL, 'purchase_code', 'envato_username', '3.5.2', 0, 0, 0, NULL, 1, NULL, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sma_price_groups
-- ----------------------------
DROP TABLE IF EXISTS `sma_price_groups`;
CREATE TABLE `sma_price_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_price_groups
-- ----------------------------
INSERT INTO `sma_price_groups` VALUES (1, 'Default');

-- ----------------------------
-- Table structure for sma_printers
-- ----------------------------
DROP TABLE IF EXISTS `sma_printers`;
CREATE TABLE `sma_printers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profile` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `char_per_line` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` varbinary(45) NULL DEFAULT NULL,
  `port` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_printers
-- ----------------------------

-- ----------------------------
-- Table structure for sma_product_photos
-- ----------------------------
DROP TABLE IF EXISTS `sma_product_photos`;
CREATE TABLE `sma_product_photos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_product_photos
-- ----------------------------

-- ----------------------------
-- Table structure for sma_product_prices
-- ----------------------------
DROP TABLE IF EXISTS `sma_product_prices`;
CREATE TABLE `sma_product_prices`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `price` decimal(25, 4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  INDEX `price_group_id`(`price_group_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_product_prices
-- ----------------------------

-- ----------------------------
-- Table structure for sma_product_variants
-- ----------------------------
DROP TABLE IF EXISTS `sma_product_variants`;
CREATE TABLE `sma_product_variants`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cost` decimal(25, 4) NULL DEFAULT NULL,
  `price` decimal(25, 4) NULL DEFAULT NULL,
  `quantity` decimal(15, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_product_id_name`(`product_id` ASC, `name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_product_variants
-- ----------------------------

-- ----------------------------
-- Table structure for sma_products
-- ----------------------------
DROP TABLE IF EXISTS `sma_products`;
CREATE TABLE `sma_products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` int(11) NULL DEFAULT NULL,
  `cost` decimal(25, 4) NULL DEFAULT NULL,
  `price` decimal(25, 4) NOT NULL,
  `alert_quantity` decimal(15, 4) NULL DEFAULT 20.0000,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NULL DEFAULT NULL,
  `cf1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cf6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` decimal(15, 4) NULL DEFAULT 0.0000,
  `tax_rate` int(11) NULL DEFAULT NULL,
  `track_quantity` tinyint(1) NULL DEFAULT 1,
  `details` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `warehouse` int(11) NULL DEFAULT NULL,
  `barcode_symbology` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'code128',
  `file` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_details` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tax_method` tinyint(1) NULL DEFAULT 0,
  `type` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'standard',
  `supplier1` int(11) NULL DEFAULT NULL,
  `supplier1price` decimal(25, 4) NULL DEFAULT NULL,
  `supplier2` int(11) NULL DEFAULT NULL,
  `supplier2price` decimal(25, 4) NULL DEFAULT NULL,
  `supplier3` int(11) NULL DEFAULT NULL,
  `supplier3price` decimal(25, 4) NULL DEFAULT NULL,
  `supplier4` int(11) NULL DEFAULT NULL,
  `supplier4price` decimal(25, 4) NULL DEFAULT NULL,
  `supplier5` int(11) NULL DEFAULT NULL,
  `supplier5price` decimal(25, 4) NULL DEFAULT NULL,
  `promotion` tinyint(1) NULL DEFAULT 0,
  `promo_price` decimal(25, 4) NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `supplier1_part_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplier2_part_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplier3_part_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplier4_part_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplier5_part_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sale_unit` int(11) NULL DEFAULT NULL,
  `purchase_unit` int(11) NULL DEFAULT NULL,
  `brand` int(11) NULL DEFAULT NULL,
  `slug` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `featured` tinyint(1) NULL DEFAULT NULL,
  `weight` decimal(10, 4) NULL DEFAULT NULL,
  `hsn_code` int(11) NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0,
  `second_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hide_pos` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code` ASC) USING BTREE,
  INDEX `category_id`(`category_id` ASC) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE,
  INDEX `id_2`(`id` ASC) USING BTREE,
  INDEX `category_id_2`(`category_id` ASC) USING BTREE,
  INDEX `unit`(`unit` ASC) USING BTREE,
  INDEX `brand`(`brand` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_products
-- ----------------------------
INSERT INTO `sma_products` VALUES (2, 'HCLTD001', 'ម្សៅខាប់', 2, 0.0000, 14.0000, 0.0000, 'no_image.png', 1, NULL, '', '', '', '', '', '', 0.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 2, 2, 0, 'hcltd001', NULL, 0.0000, NULL, 0, 0, '', 0);
INSERT INTO `sma_products` VALUES (3, 'VCH001', 'ddd', NULL, NULL, 14.0000, 0.0000, 'no_image.png', 1, NULL, '', '', '', '', '', '', 0.0000, NULL, 0, '', NULL, 'code128', '', '', NULL, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 'vch001', NULL, 0.0000, NULL, 0, 0, '', 0);
INSERT INTO `sma_products` VALUES (4, 'dd', 'CISCO 1900', 3, 3.0000, 3.0000, 0.0000, 'no_image.png', 1, NULL, '', '', '', '', '', '', 0.0000, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 3, 3, 0, 'dd', NULL, 0.0000, NULL, 0, 0, '', 0);

-- ----------------------------
-- Table structure for sma_promos
-- ----------------------------
DROP TABLE IF EXISTS `sma_promos`;
CREATE TABLE `sma_promos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product2buy` int(11) NOT NULL,
  `product2get` int(11) NOT NULL,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_promos
-- ----------------------------

-- ----------------------------
-- Table structure for sma_purchase_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_purchase_items`;
CREATE TABLE `sma_purchase_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NULL DEFAULT NULL,
  `transfer_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_id` int(11) NULL DEFAULT NULL,
  `net_unit_cost` decimal(25, 4) NOT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item_tax` decimal(25, 4) NULL DEFAULT NULL,
  `tax_rate_id` int(11) NULL DEFAULT NULL,
  `tax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_discount` decimal(25, 4) NULL DEFAULT NULL,
  `expiry` date NULL DEFAULT NULL,
  `subtotal` decimal(25, 4) NOT NULL,
  `quantity_balance` decimal(15, 4) NULL DEFAULT 0.0000,
  `date` date NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit_cost` decimal(25, 4) NULL DEFAULT NULL,
  `real_unit_cost` decimal(25, 4) NULL DEFAULT NULL,
  `quantity_received` decimal(15, 4) NULL DEFAULT NULL,
  `supplier_part_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `purchase_item_id` int(11) NULL DEFAULT NULL,
  `product_unit_id` int(11) NULL DEFAULT NULL,
  `product_unit_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_quantity` decimal(15, 4) NOT NULL,
  `gst` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  `base_unit_cost` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `purchase_id`(`purchase_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_purchase_items
-- ----------------------------

-- ----------------------------
-- Table structure for sma_purchases
-- ----------------------------
DROP TABLE IF EXISTS `sma_purchases`;
CREATE TABLE `sma_purchases`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` decimal(25, 4) NULL DEFAULT NULL,
  `product_discount` decimal(25, 4) NULL DEFAULT NULL,
  `order_discount_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_discount` decimal(25, 4) NULL DEFAULT NULL,
  `total_discount` decimal(25, 4) NULL DEFAULT NULL,
  `product_tax` decimal(25, 4) NULL DEFAULT NULL,
  `order_tax_id` int(11) NULL DEFAULT NULL,
  `order_tax` decimal(25, 4) NULL DEFAULT NULL,
  `total_tax` decimal(25, 4) NULL DEFAULT 0.0000,
  `shipping` decimal(25, 4) NULL DEFAULT 0.0000,
  `grand_total` decimal(25, 4) NOT NULL,
  `paid` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `status` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `payment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'pending',
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payment_term` tinyint(4) NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `return_id` int(11) NULL DEFAULT NULL,
  `surcharge` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `return_purchase_ref` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `purchase_id` int(11) NULL DEFAULT NULL,
  `return_purchase_total` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_purchases
-- ----------------------------

-- ----------------------------
-- Table structure for sma_quote_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_quote_items`;
CREATE TABLE `sma_quote_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_id` int(11) NULL DEFAULT NULL,
  `net_unit_price` decimal(25, 4) NOT NULL,
  `unit_price` decimal(25, 4) NULL DEFAULT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `item_tax` decimal(25, 4) NULL DEFAULT NULL,
  `tax_rate_id` int(11) NULL DEFAULT NULL,
  `tax` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_discount` decimal(25, 4) NULL DEFAULT NULL,
  `subtotal` decimal(25, 4) NOT NULL,
  `serial_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_unit_price` decimal(25, 4) NULL DEFAULT NULL,
  `product_unit_id` int(11) NULL DEFAULT NULL,
  `product_unit_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_quantity` decimal(15, 4) NOT NULL,
  `gst` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `quote_id`(`quote_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_quote_items
-- ----------------------------

-- ----------------------------
-- Table structure for sma_quotes
-- ----------------------------
DROP TABLE IF EXISTS `sma_quotes`;
CREATE TABLE `sma_quotes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `internal_note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` decimal(25, 4) NOT NULL,
  `product_discount` decimal(25, 4) NULL DEFAULT 0.0000,
  `order_discount` decimal(25, 4) NULL DEFAULT NULL,
  `order_discount_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_discount` decimal(25, 4) NULL DEFAULT 0.0000,
  `product_tax` decimal(25, 4) NULL DEFAULT 0.0000,
  `order_tax_id` int(11) NULL DEFAULT NULL,
  `order_tax` decimal(25, 4) NULL DEFAULT NULL,
  `total_tax` decimal(25, 4) NULL DEFAULT NULL,
  `shipping` decimal(25, 4) NULL DEFAULT 0.0000,
  `grand_total` decimal(25, 4) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplier_id` int(11) NULL DEFAULT NULL,
  `supplier` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_quotes
-- ----------------------------

-- ----------------------------
-- Table structure for sma_return_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_return_items`;
CREATE TABLE `sma_return_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_id` int(11) NULL DEFAULT NULL,
  `net_unit_price` decimal(25, 4) NOT NULL,
  `unit_price` decimal(25, 4) NULL DEFAULT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `item_tax` decimal(25, 4) NULL DEFAULT NULL,
  `tax_rate_id` int(11) NULL DEFAULT NULL,
  `tax` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_discount` decimal(25, 4) NULL DEFAULT NULL,
  `subtotal` decimal(25, 4) NOT NULL,
  `serial_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_unit_price` decimal(25, 4) NULL DEFAULT NULL,
  `product_unit_id` int(11) NULL DEFAULT NULL,
  `product_unit_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_quantity` decimal(15, 4) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gst` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `return_id`(`return_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  INDEX `product_id_2`(`product_id` ASC, `return_id` ASC) USING BTREE,
  INDEX `return_id_2`(`return_id` ASC, `product_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_return_items
-- ----------------------------

-- ----------------------------
-- Table structure for sma_returns
-- ----------------------------
DROP TABLE IF EXISTS `sma_returns`;
CREATE TABLE `sma_returns`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `staff_note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` decimal(25, 4) NOT NULL,
  `product_discount` decimal(25, 4) NULL DEFAULT 0.0000,
  `order_discount_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_discount` decimal(25, 4) NULL DEFAULT 0.0000,
  `order_discount` decimal(25, 4) NULL DEFAULT 0.0000,
  `product_tax` decimal(25, 4) NULL DEFAULT 0.0000,
  `order_tax_id` int(11) NULL DEFAULT NULL,
  `order_tax` decimal(25, 4) NULL DEFAULT 0.0000,
  `total_tax` decimal(25, 4) NULL DEFAULT 0.0000,
  `grand_total` decimal(25, 4) NOT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) NULL DEFAULT NULL,
  `paid` decimal(25, 4) NULL DEFAULT 0.0000,
  `surcharge` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  `shipping` decimal(25, 4) NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_returns
-- ----------------------------

-- ----------------------------
-- Table structure for sma_sale_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_sale_items`;
CREATE TABLE `sma_sale_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_id` int(11) NULL DEFAULT NULL,
  `net_unit_price` decimal(25, 4) NOT NULL,
  `unit_price` decimal(25, 4) NULL DEFAULT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `item_tax` decimal(25, 4) NULL DEFAULT NULL,
  `tax_rate_id` int(11) NULL DEFAULT NULL,
  `tax` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_discount` decimal(25, 4) NULL DEFAULT NULL,
  `subtotal` decimal(25, 4) NOT NULL,
  `serial_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_unit_price` decimal(25, 4) NULL DEFAULT NULL,
  `sale_item_id` int(11) NULL DEFAULT NULL,
  `product_unit_id` int(11) NULL DEFAULT NULL,
  `product_unit_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_quantity` decimal(15, 4) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gst` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sale_id`(`sale_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  INDEX `product_id_2`(`product_id` ASC, `sale_id` ASC) USING BTREE,
  INDEX `sale_id_2`(`sale_id` ASC, `product_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_sale_items
-- ----------------------------
INSERT INTO `sma_sale_items` VALUES (1, 1, 1, 'VCH001', 'CISCO 1900', 'service', NULL, 3.0000, 3.0000, 1.0000, 1, 0.0000, 1, '0', '0', 0.0000, 3.0000, '', 3.0000, NULL, NULL, NULL, 1.0000, '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sma_sales
-- ----------------------------
DROP TABLE IF EXISTS `sma_sales`;
CREATE TABLE `sma_sales`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `staff_note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` decimal(25, 4) NOT NULL,
  `product_discount` decimal(25, 4) NULL DEFAULT 0.0000,
  `order_discount_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_discount` decimal(25, 4) NULL DEFAULT 0.0000,
  `order_discount` decimal(25, 4) NULL DEFAULT 0.0000,
  `product_tax` decimal(25, 4) NULL DEFAULT 0.0000,
  `order_tax_id` int(11) NULL DEFAULT NULL,
  `order_tax` decimal(25, 4) NULL DEFAULT 0.0000,
  `total_tax` decimal(25, 4) NULL DEFAULT 0.0000,
  `shipping` decimal(25, 4) NULL DEFAULT 0.0000,
  `grand_total` decimal(25, 4) NOT NULL,
  `sale_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payment_term` tinyint(4) NULL DEFAULT NULL,
  `due_date` date NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) NULL DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT 0,
  `paid` decimal(25, 4) NULL DEFAULT 0.0000,
  `return_id` int(11) NULL DEFAULT NULL,
  `surcharge` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `return_sale_ref` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sale_id` int(11) NULL DEFAULT NULL,
  `return_sale_total` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `rounding` decimal(10, 4) NULL DEFAULT NULL,
  `suspend_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `api` tinyint(1) NULL DEFAULT 0,
  `shop` tinyint(1) NULL DEFAULT 0,
  `address_id` int(11) NULL DEFAULT NULL,
  `reserve_id` int(11) NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manual_payment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  `payment_method` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_sales
-- ----------------------------
INSERT INTO `sma_sales` VALUES (1, '2024-01-31 00:51:39', 'SALE/POS2024/01/0001', 1, 'Walk-in Customer', 3, 'Test Biller', 1, '', '', 3.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, 1, 0.0000, 0.0000, 0.0000, 3.0000, 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, 3.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, '0d537ae03ae07e4eb409a16b5d14c81c83e4124cdaa28aaa0644d44642345ec7', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sma_sessions
-- ----------------------------
DROP TABLE IF EXISTS `sma_sessions`;
CREATE TABLE `sma_sessions`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ci_sessions_timestamp`(`timestamp` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_sessions
-- ----------------------------
INSERT INTO `sma_sessions` VALUES ('1srnkd9k1v7nnlubk51fg3unbllt5fc6', '::1', 1706683844, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638333834343B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638313233353B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('2m442q0f1p6akref0onp6sc7ljf7nhhr', '::1', 1706683130, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638333133303B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638313233353B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('5qdrb2u4jeu144nq5sm02fudhsh3sito', '::1', 1706682518, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638323531383B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638313233353B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('8ie1et2nnrour6c15c00i5jbih8kpidg', '::1', 1706684178, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638343137383B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638313233353B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('8tfvup36kr78bjvtqf18606i6r0j0hmi', '::1', 1706665912, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363636353931323B7265717565737465645F706167657C733A353A2261646D696E223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231363837363739333939223B6C6173745F69707C733A31343A223130332E3130372E37372E313333223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363636343838343B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B6D6573736167657C733A32393A2253657474696E6773207375636365737366756C6C792075706461746564223B5F5F63695F766172737C613A313A7B733A373A226D657373616765223B733A333A226F6C64223B7D);
INSERT INTO `sma_sessions` VALUES ('ahtqnf2abmf9b95n5dqn554ovlq7fc67', '::1', 1706664944, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363636343934343B7265717565737465645F706167657C733A353A2261646D696E223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231363837363739333939223B6C6173745F69707C733A31343A223130332E3130372E37372E313333223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363636343838343B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('b170bh0jp6mo3u5e5aqmhtjmhobbadtj', '103.107.77.133', 1687679411, 0x5F5F63695F6C6173745F726567656E65726174657C693A313638373637393431313B);
INSERT INTO `sma_sessions` VALUES ('brl00k3rvqkua7bkn3tikt7blp4ftmg5', '::1', 1706681955, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638313935353B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638313233353B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('dgnhf2scl1lnrclmppat810m7mgnqm95', '::1', 1706665917, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363636353931323B7265717565737465645F706167657C733A353A2261646D696E223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231363837363739333939223B6C6173745F69707C733A31343A223130332E3130372E37372E313333223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363636343838343B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('f13knobqjp642sma668gcdas34ia5tl6', '::1', 1706685905, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638353930353B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638343832313B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('fbapk44jeel5asjjp4qvatqrr0p18t9u', '::1', 1706664231, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363636343233313B7265717565737465645F706167657C733A353A2261646D696E223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231363837363739333939223B6C6173745F69707C733A31343A223130332E3130372E37372E313333223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363636323332323B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('jhshdqql62dal7f0qj0tt018lhc6nea6', '::1', 1706683525, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638333532353B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638313233353B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('k1908rvthet61ejuq8bmb9fj5nhbqkvo', '::1', 1706691035, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363639313033353B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638343832313B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('nc2u86udldb629gg0o3lgr8s9terirca', '::1', 1706691035, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363639313033353B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638343832313B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('nr4vrqerf6rro5dfsvnnb77ih47g5pom', '::1', 1706681337, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638313333373B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638313233353B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('stc99fuu4t7o715c57nodr3t21mftepd', '::1', 1706664596, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363636343539363B7265717565737465645F706167657C733A353A2261646D696E223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231363837363739333939223B6C6173745F69707C733A31343A223130332E3130372E37372E313333223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363636343438323B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('tmnniom5q86eqp6a2uv3nql3ulr4fgma', '::1', 1706684548, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638343534383B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638313233353B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);
INSERT INTO `sma_sessions` VALUES ('v3rmvtfb8nm95s9tusjdlbmpo8nf3jep', '::1', 1706684912, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730363638343931323B7265717565737465645F706167657C733A31383A2261646D696E2F70726F64756374732F616464223B6964656E746974797C733A353A226F776E6572223B757365726E616D657C733A353A226F776E6572223B656D61696C7C733A31383A226F776E65724074656364696172792E636F6D223B757365725F69647C733A313A2231223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231373036363632323138223B6C6173745F69707C733A333A223A3A31223B6176617461727C4E3B67656E6465727C733A343A226D616C65223B67726F75705F69647C733A313A2231223B77617265686F7573655F69647C4E3B766965775F72696768747C733A313A2230223B656469745F72696768747C733A313A2230223B616C6C6F775F646973636F756E747C733A313A2230223B62696C6C65725F69647C4E3B636F6D70616E795F69647C4E3B73686F775F636F73747C733A313A2230223B73686F775F70726963657C733A313A2230223B6C6173745F61637469766974797C693A313730363638343832313B72656769737465725F69647C733A313A2231223B636173685F696E5F68616E647C733A363A22302E30303030223B72656769737465725F6F70656E5F74696D657C733A31393A22323032332D30362D32352031343A35303A3037223B);

-- ----------------------------
-- Table structure for sma_settings
-- ----------------------------
DROP TABLE IF EXISTS `sma_settings`;
CREATE TABLE `sma_settings`  (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `language` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_warehouse` int(11) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT 0,
  `default_currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_tax_rate` int(11) NOT NULL,
  `rows_per_page` int(11) NOT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT 0,
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quote_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `purchase_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transfer_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delivery_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payment_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `return_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `returnp_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expense_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT 0,
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT 0,
  `restrict_user` tinyint(4) NOT NULL DEFAULT 0,
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `timezone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT 0,
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) NULL DEFAULT NULL,
  `reg_ver` tinyint(1) NULL DEFAULT NULL,
  `allow_reg` tinyint(1) NULL DEFAULT NULL,
  `reg_notification` tinyint(1) NULL DEFAULT NULL,
  `auto_reg` tinyint(1) NULL DEFAULT NULL,
  `protocol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smtp_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smtp_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smtp_port` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '25',
  `smtp_crypto` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `corn` datetime NULL DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT 0,
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `captcha` tinyint(1) NOT NULL DEFAULT 1,
  `reference_format` tinyint(1) NOT NULL DEFAULT 1,
  `racks` tinyint(1) NULL DEFAULT 0,
  `attributes` tinyint(1) NOT NULL DEFAULT 0,
  `product_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `decimals` tinyint(4) NOT NULL DEFAULT 2,
  `qty_decimals` tinyint(4) NOT NULL DEFAULT 2,
  `decimals_sep` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) NULL DEFAULT 0,
  `default_biller` int(11) NULL DEFAULT NULL,
  `envato_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `purchase_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rtl` tinyint(1) NULL DEFAULT 0,
  `each_spent` decimal(15, 4) NULL DEFAULT NULL,
  `ca_point` tinyint(4) NULL DEFAULT NULL,
  `each_sale` decimal(15, 4) NULL DEFAULT NULL,
  `sa_point` tinyint(4) NULL DEFAULT NULL,
  `update` tinyint(1) NULL DEFAULT 0,
  `sac` tinyint(1) NULL DEFAULT 0,
  `display_all_products` tinyint(1) NULL DEFAULT 0,
  `display_symbol` tinyint(1) NULL DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remove_expired` tinyint(1) NULL DEFAULT 0,
  `barcode_separator` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-',
  `set_focus` tinyint(1) NOT NULL DEFAULT 0,
  `price_group` int(11) NULL DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT 1,
  `ppayment_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'POP',
  `disable_editing` smallint(6) NULL DEFAULT 90,
  `qa_prefix` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_cost` tinyint(1) NULL DEFAULT NULL,
  `apis` tinyint(1) NOT NULL DEFAULT 0,
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pdf_lib` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'dompdf',
  `use_code_for_slug` tinyint(1) NULL DEFAULT NULL,
  `ws_barcode_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'weight',
  `ws_barcode_chars` tinyint(4) NULL DEFAULT NULL,
  `flag_chars` tinyint(4) NULL DEFAULT NULL,
  `item_code_start` tinyint(4) NULL DEFAULT NULL,
  `item_code_chars` tinyint(4) NULL DEFAULT NULL,
  `price_start` tinyint(4) NULL DEFAULT NULL,
  `price_chars` tinyint(4) NULL DEFAULT NULL,
  `price_divide_by` int(11) NULL DEFAULT NULL,
  `weight_start` tinyint(4) NULL DEFAULT NULL,
  `weight_chars` tinyint(4) NULL DEFAULT NULL,
  `weight_divide_by` int(11) NULL DEFAULT NULL,
  `ksa_qrcode` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`setting_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_settings
-- ----------------------------
INSERT INTO `sma_settings` VALUES (1, 'logo2.png', 'logo3.png', 'Stock Manager Advance', 'english', 1, 2, 'USD', 0, 10, '3.5.2', 1, 5, 'SALE', 'QUOTE', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', '', 0, 'default', 1, 1, 1, 1, 0, 1, 1, 1, 0, 'Asia/Phnom_Penh', 800, 800, 150, 150, 0, 0, 0, 0, NULL, 'mail', '/usr/sbin/sendmail', 'pop.gmail.com', 'contact@sma.tecdiary.org', '12345678', '25', NULL, NULL, 1, 'contact@tecdiary.com', 0, 4, 1, 0, 2, 0, 0, 0, 2, 2, '.', ',', 0, 3, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', 0, '-', 0, 1, 1, 'POP', 90, '', 0, 0, 'AN', 'dompdf', 1, 'weight', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for sma_skrill
-- ----------------------------
DROP TABLE IF EXISTS `sma_skrill`;
CREATE TABLE `sma_skrill`  (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `extra_charges_my` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `extra_charges_other` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_skrill
-- ----------------------------
INSERT INTO `sma_skrill` VALUES (1, 1, 'testaccount2@moneybookers.com', 'mbtest', 'USD', 0.0000, 0.0000, 0.0000);

-- ----------------------------
-- Table structure for sma_stock_count_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_stock_count_items`;
CREATE TABLE `sma_stock_count_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_count_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_variant` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_variant_id` int(11) NULL DEFAULT NULL,
  `expected` decimal(15, 4) NOT NULL,
  `counted` decimal(15, 4) NOT NULL,
  `cost` decimal(25, 4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `stock_count_id`(`stock_count_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_stock_count_items
-- ----------------------------

-- ----------------------------
-- Table structure for sma_stock_counts
-- ----------------------------
DROP TABLE IF EXISTS `sma_stock_counts`;
CREATE TABLE `sma_stock_counts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL,
  `reference_no` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `initial_file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `final_file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brands` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand_names` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categories` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_names` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `products` int(11) NULL DEFAULT NULL,
  `rows` int(11) NULL DEFAULT NULL,
  `differences` int(11) NULL DEFAULT NULL,
  `matches` int(11) NULL DEFAULT NULL,
  `missing` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `finalized` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `warehouse_id`(`warehouse_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_stock_counts
-- ----------------------------

-- ----------------------------
-- Table structure for sma_suspended_bills
-- ----------------------------
DROP TABLE IF EXISTS `sma_suspended_bills`;
CREATE TABLE `sma_suspended_bills`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_discount_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_tax_id` int(11) NULL DEFAULT NULL,
  `total` decimal(25, 4) NOT NULL,
  `biller_id` int(11) NULL DEFAULT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `suspend_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shipping` decimal(15, 4) NULL DEFAULT 0.0000,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_suspended_bills
-- ----------------------------

-- ----------------------------
-- Table structure for sma_suspended_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_suspended_items`;
CREATE TABLE `sma_suspended_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suspend_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `net_unit_price` decimal(25, 4) NOT NULL,
  `unit_price` decimal(25, 4) NOT NULL,
  `quantity` decimal(15, 4) NULL DEFAULT 0.0000,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `item_tax` decimal(25, 4) NULL DEFAULT NULL,
  `tax_rate_id` int(11) NULL DEFAULT NULL,
  `tax` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_discount` decimal(25, 4) NULL DEFAULT NULL,
  `subtotal` decimal(25, 4) NOT NULL,
  `serial_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_id` int(11) NULL DEFAULT NULL,
  `product_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_unit_price` decimal(25, 4) NULL DEFAULT NULL,
  `product_unit_id` int(11) NULL DEFAULT NULL,
  `product_unit_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_quantity` decimal(15, 4) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gst` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_suspended_items
-- ----------------------------

-- ----------------------------
-- Table structure for sma_tax_rates
-- ----------------------------
DROP TABLE IF EXISTS `sma_tax_rates`;
CREATE TABLE `sma_tax_rates`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` decimal(12, 4) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_tax_rates
-- ----------------------------
INSERT INTO `sma_tax_rates` VALUES (1, 'No Tax', 'NT', 0.0000, '2');
INSERT INTO `sma_tax_rates` VALUES (2, 'VAT @10%', 'VAT10', 10.0000, '1');
INSERT INTO `sma_tax_rates` VALUES (3, 'GST @6%', 'GST', 6.0000, '1');
INSERT INTO `sma_tax_rates` VALUES (4, 'VAT @20%', 'VT20', 20.0000, '1');

-- ----------------------------
-- Table structure for sma_transfer_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_transfer_items`;
CREATE TABLE `sma_transfer_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_id` int(11) NULL DEFAULT NULL,
  `expiry` date NULL DEFAULT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `tax_rate_id` int(11) NULL DEFAULT NULL,
  `tax` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_tax` decimal(25, 4) NULL DEFAULT NULL,
  `net_unit_cost` decimal(25, 4) NULL DEFAULT NULL,
  `subtotal` decimal(25, 4) NULL DEFAULT NULL,
  `quantity_balance` decimal(15, 4) NOT NULL,
  `unit_cost` decimal(25, 4) NULL DEFAULT NULL,
  `real_unit_cost` decimal(25, 4) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `warehouse_id` int(11) NULL DEFAULT NULL,
  `product_unit_id` int(11) NULL DEFAULT NULL,
  `product_unit_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_quantity` decimal(15, 4) NOT NULL,
  `gst` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `transfer_id`(`transfer_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_transfer_items
-- ----------------------------

-- ----------------------------
-- Table structure for sma_transfers
-- ----------------------------
DROP TABLE IF EXISTS `sma_transfers`;
CREATE TABLE `sma_transfers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_no` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_warehouse_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_warehouse_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` decimal(25, 4) NULL DEFAULT NULL,
  `total_tax` decimal(25, 4) NULL DEFAULT NULL,
  `grand_total` decimal(25, 4) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'pending',
  `shipping` decimal(25, 4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgst` decimal(25, 4) NULL DEFAULT NULL,
  `sgst` decimal(25, 4) NULL DEFAULT NULL,
  `igst` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_transfers
-- ----------------------------

-- ----------------------------
-- Table structure for sma_unit_items
-- ----------------------------
DROP TABLE IF EXISTS `sma_unit_items`;
CREATE TABLE `sma_unit_items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `unit_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_price` decimal(25, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_unit_items
-- ----------------------------

-- ----------------------------
-- Table structure for sma_units
-- ----------------------------
DROP TABLE IF EXISTS `sma_units`;
CREATE TABLE `sma_units`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `base_unit` int(11) NULL DEFAULT NULL,
  `operator` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_value` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation_value` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `base_unit`(`base_unit` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_units
-- ----------------------------
INSERT INTO `sma_units` VALUES (1, 'Hកាន', 'កាន', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (2, 'Hខាំ', 'ខាំ', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (3, 'HKG', 'KG', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (4, 'Hគីឡូក្រាម', 'គីឡូក្រាម', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (5, 'Hដង', 'ដង', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (6, 'Hដប', 'ដប', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (7, 'Hដុំ', 'ដុំ', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (8, 'Hថង់', 'ថង់', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (9, 'Hធុង', 'ធុង', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (10, 'Hបាវ', 'Hបាវ', NULL, NULL, NULL, NULL);
INSERT INTO `sma_units` VALUES (11, 'Dគីឡូក្រាម', 'គីឡូក្រាម', 2, '*', NULL, '100');
INSERT INTO `sma_units` VALUES (12, 'Dបាវ', 'បាវ20KG', 2, '*', NULL, '2000');
INSERT INTO `sma_units` VALUES (13, 'Vបាវ', 'បាវ', 3, '*', NULL, '25');
INSERT INTO `sma_units` VALUES (14, 'Dកាន', 'កាន', 4, '*', NULL, '30');
INSERT INTO `sma_units` VALUES (15, 'Vកាន', 'កាន', 6, '*', NULL, '60');
INSERT INTO `sma_units` VALUES (16, 'VKG20', 'KG', 10, '*', NULL, '25');

-- ----------------------------
-- Table structure for sma_user_logins
-- ----------------------------
DROP TABLE IF EXISTS `sma_user_logins`;
CREATE TABLE `sma_user_logins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_user_logins
-- ----------------------------
INSERT INTO `sma_user_logins` VALUES (1, 1, NULL, 0x3130332E3130372E37372E313333, 'owner@tecdiary.com', '2023-06-25 14:49:59');
INSERT INTO `sma_user_logins` VALUES (2, 1, NULL, 0x3A3A31, 'owner', '2024-01-31 07:50:18');
INSERT INTO `sma_user_logins` VALUES (3, 1, NULL, 0x3A3A31, 'owner', '2024-01-31 13:02:30');

-- ----------------------------
-- Table structure for sma_users
-- ----------------------------
DROP TABLE IF EXISTS `sma_users`;
CREATE TABLE `sma_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `last_ip_address` varbinary(45) NULL DEFAULT NULL,
  `ip_address` varbinary(45) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activation_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED NULL DEFAULT NULL,
  `remember_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_on` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED NULL DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `biller_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  `show_cost` tinyint(1) NULL DEFAULT 0,
  `show_price` tinyint(1) NULL DEFAULT 0,
  `award_points` int(11) NULL DEFAULT 0,
  `view_right` tinyint(1) NOT NULL DEFAULT 0,
  `edit_right` tinyint(1) NOT NULL DEFAULT 0,
  `allow_discount` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id`(`group_id` ASC, `warehouse_id` ASC, `biller_id` ASC) USING BTREE,
  INDEX `group_id_2`(`group_id` ASC, `company_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_users
-- ----------------------------
INSERT INTO `sma_users` VALUES (1, 0x3A3A31, 0x0000, 'owner', '2c8ab736b2ccab4f50e72d5fd7d21020cbb77ae7', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, NULL, 1351661704, 1706680950, 1, 'Owner', 'Owner', 'Stock Manager', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for sma_variants
-- ----------------------------
DROP TABLE IF EXISTS `sma_variants`;
CREATE TABLE `sma_variants`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_variants
-- ----------------------------

-- ----------------------------
-- Table structure for sma_warehouses
-- ----------------------------
DROP TABLE IF EXISTS `sma_warehouses`;
CREATE TABLE `sma_warehouses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `map` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price_group_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_warehouses
-- ----------------------------
INSERT INTO `sma_warehouses` VALUES (1, 'WHI', 'Warehouse 1', '<p>Address, City</p>', NULL, '012345678', 'whi@tecdiary.com', NULL);
INSERT INTO `sma_warehouses` VALUES (2, 'WHII', 'Warehouse 2', '<p>Warehouse 2, Jalan Sultan Ismail, 54000, Kuala Lumpur</p>', NULL, '0105292122', 'whii@tecdiary.com', NULL);

-- ----------------------------
-- Table structure for sma_warehouses_products
-- ----------------------------
DROP TABLE IF EXISTS `sma_warehouses_products`;
CREATE TABLE `sma_warehouses_products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `rack` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avg_cost` decimal(25, 4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  INDEX `warehouse_id`(`warehouse_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_warehouses_products
-- ----------------------------
INSERT INTO `sma_warehouses_products` VALUES (3, 2, 1, 0.0000, NULL, 0.0000);
INSERT INTO `sma_warehouses_products` VALUES (4, 2, 2, 0.0000, NULL, 0.0000);
INSERT INTO `sma_warehouses_products` VALUES (5, 3, 1, 0.0000, NULL, 0.0000);
INSERT INTO `sma_warehouses_products` VALUES (6, 3, 2, 0.0000, NULL, 0.0000);
INSERT INTO `sma_warehouses_products` VALUES (7, 4, 1, 0.0000, NULL, 3.0000);
INSERT INTO `sma_warehouses_products` VALUES (8, 4, 2, 0.0000, NULL, 3.0000);

-- ----------------------------
-- Table structure for sma_warehouses_products_variants
-- ----------------------------
DROP TABLE IF EXISTS `sma_warehouses_products_variants`;
CREATE TABLE `sma_warehouses_products_variants`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15, 4) NOT NULL,
  `rack` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `option_id`(`option_id` ASC) USING BTREE,
  INDEX `product_id`(`product_id` ASC) USING BTREE,
  INDEX `warehouse_id`(`warehouse_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sma_warehouses_products_variants
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
