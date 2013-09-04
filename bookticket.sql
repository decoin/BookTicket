/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : bookticket
Target Host     : localhost:3306
Target Database : bookticket
Date: 2013-09-04 10:32:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for flights
-- ----------------------------
DROP TABLE IF EXISTS `flights`;
CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL AUTO_INCREMENT,
  `flightno` varchar(255) NOT NULL,
  `startaddress` varchar(255) NOT NULL,
  `lastaddress` varchar(255) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `lasttime` varchar(255) NOT NULL,
  `dollars` float NOT NULL,
  `number` int(11) NOT NULL,
  `remains` int(11) NOT NULL,
  PRIMARY KEY (`flight_id`),
  KEY `fn_ol_fk` (`flightno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flights
-- ----------------------------
INSERT INTO `flights` VALUES ('1', 'SG001', '上海', '广州', '20130902 12:00', '20130902 18:00', '500', '30', '30');
INSERT INTO `flights` VALUES ('2', 'BC010', '北京', '长沙', '20130906 10:00', '20130906 14:00', '800', '50', '50');
INSERT INTO `flights` VALUES ('3', 'CG002', '长沙', '广州', '20130902 11:00', '20130902 14:00', '300', '30', '29');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `orderlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `flightno` varchar(255) DEFAULT NULL,
  `orderno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderlist_id`),
  KEY `flightno` (`flightno`),
  KEY `orderno` (`orderno`),
  KEY `FKE8B3E0EC714181FE` (`orderno`),
  KEY `FKE8B3E0EC1768E02B` (`flightno`),
  CONSTRAINT `fn_ol_fk` FOREIGN KEY (`flightno`) REFERENCES `flights` (`flightno`),
  CONSTRAINT `on_ol_fk` FOREIGN KEY (`orderno`) REFERENCES `orders` (`orderno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) NOT NULL,
  `total` float NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `orderdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `user_name` (`user_name`),
  KEY `or_ol_fk` (`orderno`),
  KEY `FKC3DF62E55B05DA54` (`user_name`),
  CONSTRAINT `us_or_fk` FOREIGN KEY (`user_name`) REFERENCES `user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'ZSZJ3LGR75', '300', 'zyj', null);
INSERT INTO `orders` VALUES ('2', 'K35NI1T3Y8', '300', 'zyj', null);
INSERT INTO `orders` VALUES ('3', 'WGIRZ3XLR0', '500', 'zyj', null);
INSERT INTO `orders` VALUES ('4', 'OAFW765M73', '500', 'zyj', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `cardid` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `us_or_fk` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', 'zyj', '123', '20130902', '540263187@qq.com', '男', '15521268091', '天河区', null);
INSERT INTO `user` VALUES ('6', '钟宇杰', '123', '20130903', '540263187@qq.com', '男', '15521268091', '天河区', null);
