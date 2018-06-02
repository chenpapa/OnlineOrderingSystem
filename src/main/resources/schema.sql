/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.19 : Database - cooms
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE = '' */;

/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS */`cooms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cooms`;

/*Table structure for table `catalog` */

DROP TABLE IF EXISTS `catalog`;

CREATE TABLE `catalog` (
  `catalog_id`         BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT
  COMMENT '菜系编号',
  `catalog_restaurant` BIGINT(20) UNSIGNED NOT NULL
  COMMENT '菜系餐厅（逻辑外键restaurant_id）',
  `catalog_name`       VARCHAR(10)         NOT NULL
  COMMENT '菜系名称（最长10字）',
  `catalog_is_deleted` TINYINT(1) UNSIGNED NOT NULL
  COMMENT '删除标志位（1表示删除，0表示为删除）',
  PRIMARY KEY (`catalog_id`),
  KEY `catalog_restaurant` (`catalog_restaurant`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1013
  DEFAULT CHARSET = utf8;

/*Data for the table `catalog` */

INSERT INTO `catalog` (`catalog_id`, `catalog_restaurant`, `catalog_name`, `catalog_is_deleted`)
VALUES (1000, 1000, '小馆金牌菜', 1), (1001, 1000, '小馆招牌菜', 1), (1002, 1000, '小馆拿手菜', 1), (1003, 1000, '精品凉菜', 1),
  (1004, 1000, '鲜榨自制饮品', 1), (1005, 1000, '汤羹', 1), (1006, 1000, '进口啤酒', 1), (1007, 1000, '饮料', 1),
  (1008, 1000, '白酒', 1), (1009, 1000, '套餐', 1), (1010, 1000, '餐盒', 1), (1011, 1000, '零售', 1), (1012, 1000, '国产啤酒', 1);

/*Table structure for table `detail` */

DROP TABLE IF EXISTS `detail`;

CREATE TABLE `detail` (
  `order_id`       BIGINT(20) UNSIGNED     NOT NULL
  COMMENT '订单编号',
  `goods_id`       BIGINT(20) UNSIGNED     NOT NULL
  COMMENT '菜品id',
  `goods_name`     VARCHAR(15)             NOT NULL
  COMMENT '菜品名称',
  `goods_price`    DECIMAL(10, 0) UNSIGNED NOT NULL
  COMMENT '菜品价格（逻辑外键goods_price）',
  `goods_discount` DECIMAL(10, 0) UNSIGNED DEFAULT NULL
  COMMENT '菜品打折价格（逻辑外键goods_discount）',
  `goods_count`    TINYINT(3) UNSIGNED     NOT NULL
  COMMENT '菜品数量'
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

/*Data for the table `detail` */

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id`           BIGINT(20) UNSIGNED     NOT NULL AUTO_INCREMENT
  COMMENT '菜品编号',
  `goods_catalog_id`   BIGINT(20) UNSIGNED     NOT NULL
  COMMENT '菜品菜系（逻辑外键catalog_id）',
  `goods_catalog_name` VARCHAR(10)             NOT NULL
  COMMENT '菜品菜系名称',
  `goods_name`         VARCHAR(15)             NOT NULL
  COMMENT '菜品名称',
  `goods_pic`          VARCHAR(300)            NOT NULL
  COMMENT '菜品图片(绝对路径)',
  `goods_price`        DECIMAL(10, 0) UNSIGNED NOT NULL
  COMMENT '菜品正常价格',
  `goods_discount`     DECIMAL(10, 0)                   DEFAULT NULL
  COMMENT '菜品打折价格',
  `goods_status`       TINYINT(1) UNSIGNED     NOT NULL
  COMMENT '菜品状态（售完/在售）',
  `goods_is_deleted`   TINYINT(1) UNSIGNED     NOT NULL
  COMMENT '删除标志位（1表示删除，0表示未删除）',
  PRIMARY KEY (`goods_id`),
  KEY `goods_is_deleted` (`goods_is_deleted`),
  KEY `goods_catalog_id` (`goods_catalog_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1101
  DEFAULT CHARSET = utf8;

/*Data for the table `goods` */

INSERT INTO `goods` (`goods_id`, `goods_catalog_id`, `goods_catalog_name`, `goods_name`, `goods_pic`, `goods_price`, `goods_discount`, `goods_status`, `goods_is_deleted`)
VALUES (1000, 1000, '小馆金牌菜', '小馆椒麻鱼大份', 'Fp_RVxm0l9qrvw3zxDBRTIJ_BGMq', '48', NULL, 1, 0),
  (1001, 1000, '小馆金牌菜', '五谷杂粮（特价）/扎', 'FpS0ZdKFAKj60rCO8P2Px0xI1XMl', '29', NULL, 1, 0),
  (1002, 1001, '小馆招牌菜', '三杯鸡', 'FsbONR4C5Ow5W77g8i8pe4TgelXa', '45', NULL, 1, 0),
  (1003, 1001, '小馆招牌菜', '香肠河蚌炖豆腐', 'Fkh0Z1zCx-IVjy513ae4pVQuW5C8', '32', NULL, 1, 0),
  (1004, 1001, '小馆招牌菜', '红烧牛肉锅', '50268c5ec4bf42bc8637783d6f7b95941520062967110.jpeg', '68', NULL, 1, 0),
  (1005, 1001, '小馆招牌菜', '大灶锅巴', 'acda378f5cb541e88b6037bb9599ca3a.jpg', '26', NULL, 1, 0),
  (1006, 1001, '小馆招牌菜', '铁板豆腐', '081fdb74e1bf41afb3c85c994d0c0f2a.jpg', '32', NULL, 1, 0),
  (1007, 1001, '小馆招牌菜', '酸汤肥牛', '55cddba69cd84e919b924b27b4305239.jpg', '48', NULL, 1, 0),
  (1008, 1001, '小馆招牌菜', '芋苗仔排', 'b465b633634c42098c25fb8c86290c07.jpg', '39', NULL, 1, 0),
  (1009, 1001, '小馆招牌菜', '铁板大虾', '5575135d1da64b719ee5669c3278a4831511621057926.jpeg', '49', NULL, 1, 0),
  (1010, 1001, '小馆招牌菜', '碳烤青鱼', 'FmrXC6X4VrgVY7XkEnfBQIAcCeGz', '59', NULL, 1, 0),
  (1011, 1001, '小馆招牌菜', '香酥脆皮鸡', 'e52aae10054c4de88e7cbb9d88c4818c.jpg', '30', NULL, 1, 0),
  (1012, 1001, '小馆招牌菜', '招牌口水鸡', 'a73ac06408d9405e84973ea7da210d3f.jpg', '19', NULL, 1, 0),
  (1013, 1001, '小馆招牌菜', '年糕牛柳', 'e42e13ba9fb044fd88777b6a1746e115.jpg', '39', NULL, 1, 0),
  (1014, 1001, '小馆招牌菜', '鲜榨西瓜汁/扎', '7798a43af7a14483963867cced921a3b.jpg', '38', NULL, 1, 0),
  (1015, 1001, '小馆招牌菜', '鲜榨西瓜汁/杯', 'fa5bfd94d8a34ae293e2b03f7b3d30f6.jpg', '10', NULL, 1, 0),
  (1016, 1001, '小馆招牌菜', '鲜榨雪梨汁（特价）/扎', '882c3153be69407793d83bd6a05eea7e.jpg', '29', NULL, 1, 0),
  (1017, 1001, '小馆招牌菜', '鲜榨雪梨汁/杯', '7433d16ca0d54c608033ae4dda1d3cc2.jpg', '10', NULL, 1, 0),
  (1018, 1001, '小馆招牌菜', '蓝莓山药', '6fb2d9f4c66b4229825c990f435d121b1511621110171.jpeg', '16', NULL, 1, 0),
  (1019, 1001, '小馆招牌菜', '小碗米饭/碗', 'f50b31c6225c43eba2ef16e3e38622c0.jpg', '1', NULL, 1, 0),
  (1020, 1001, '小馆招牌菜', '大碗米饭/碗', '01fecc03eb0046ddade63d12d16b58ce.jpg', '5', NULL, 1, 0),
  (1021, 1001, '小馆招牌菜', '酸菜鱼', 'FhxaaAIIZqvBfsMF0Dw2IweOTnpQ', '48', NULL, 1, 0),
  (1022, 1001, '小馆招牌菜', '铁板鱿鱼须', '4d7605b32dc44399a94cf1d407c9f64e.jpg', '42', NULL, 1, 0),
  (1023, 1001, '小馆招牌菜', '黄桃咕噜肉', '771fe54fe9f848b7b418feac5beac5241511621244072.jpeg', '29', NULL, 1, 0),
  (1024, 1001, '小馆招牌菜', '招牌猪手/块', '2f774bbfef5745e4b2adb1a25aea8f4a1520063023058.jpeg', '12', NULL, 1, 0),
  (1025, 1001, '小馆招牌菜', '铁板水晶粉丝', 'Fss36EclAa4fN4UHw9PwwPJtafDv', '26', NULL, 1, 0),
  (1026, 1001, '小馆招牌菜', '小馆椒麻鱼中份', 'Fp_RVxm0l9qrvw3zxDBRTIJ_BGMq', '29', NULL, 1, 0),
  (1027, 1002, '小馆拿手菜', '香酥脆皮肘', 'fece041d54b6444da81d9992131e6f0b1520063496785.jpeg', '59', NULL, 1, 0),
  (1028, 1002, '小馆拿手菜', '糯米南瓜（半个）', '0bd3dab634db41a88e7bba26da56aabc1511621730804.jpg', '22', NULL, 1, 0),
  (1029, 1002, '小馆拿手菜', '辣椒小炒肉', 'c551eb327c4b41afbbda2b18bdf171201520062792072.jpeg', '36', NULL, 1, 0),
  (1030, 1002, '小馆拿手菜', '激情毛血旺', 'FryexluWITyeep-42oNkV6lwIJ2K', '42', NULL, 1, 0),
  (1031, 1002, '小馆拿手菜', '新一代辣子鸡', 'FjKWyOO6aPQCUzD__OEatFwUZmHe', '49', NULL, 1, 0),
  (1032, 1002, '小馆拿手菜', '脆皮鸡柳', '1b968909bb514e16bb73e8cfdec568931520063542948.jpeg', '28', NULL, 1, 0),
  (1033, 1002, '小馆拿手菜', '椒麻肉片', 'FrPci6n9LO0b5hlKFIozQHBVUXln', '39', NULL, 1, 0),
  (1034, 1002, '小馆拿手菜', '椒麻牛柳', '239772446b0d4dda8a33613785fbf025.jpg', '48', NULL, 1, 0),
  (1035, 1002, '小馆拿手菜', '农家山芋粉', 'cbbf93bc66b44ade845db35cd7281cb11520479280221.jpeg', '26', NULL, 1, 0),
  (1036, 1002, '小馆拿手菜', '木耳炒鸡蛋', 'FrAZTif_Oov765fRHfDIcEKdpXde', '18', NULL, 1, 0),
  (1037, 1002, '小馆拿手菜', '鱼香肉丝', 'c2b9de1c51dd4706b8af07860bfba5cd1520062249136.jpeg', '24', NULL, 1, 0),
  (1038, 1002, '小馆拿手菜', '干锅包菜', '811b7a95bbfa4bd490e46dfc544d5cd7.jpg', '19', NULL, 1, 0),
  (1039, 1002, '小馆拿手菜', '干锅有机花菜', '6a0bcafcfbb146fc9559429929c021e6.jpg', '24', NULL, 1, 0),
  (1040, 1002, '小馆拿手菜', '干锅千页豆腐', '0d64e55e888749869aab22e6ed36ad2a.jpg', '28', NULL, 1, 0),
  (1041, 1002, '小馆拿手菜', '毛豆干子肉丝', 'd4e4815ecd0c4aa692d937e788cfd863.jpg', '22', NULL, 1, 0),
  (1042, 1002, '小馆拿手菜', '虾扯蛋', '5befe0f4dc3b4c208a0923b143902aed1511619686214.jpeg', '16', NULL, 1, 0),
  (1043, 1002, '小馆拿手菜', '青椒土豆丝', '4f67d56e30a34de49decc80acdc4309f.jpg', '10', NULL, 1, 0),
  (1044, 1002, '小馆拿手菜', '炒时蔬', '95c45622eb7d4afbb168b94564fa3c321520063802829.jpeg', '18', NULL, 1, 0),
  (1045, 1002, '小馆拿手菜', '豆角烧茄子', '1bbcc304483d47c7ae60dded10291641.jpg', '22', NULL, 1, 0),
  (1046, 1002, '小馆拿手菜', '干煸四季豆', '31c49311f4b84f7a8420d2ec4b077b20.jpg', '19', NULL, 1, 0),
  (1047, 1002, '小馆拿手菜', '松子玉米', 'c68e88673de946bc8c569b1534ccd88a.jpg', '13', NULL, 1, 0),
  (1048, 1002, '小馆拿手菜', '蒜蓉扇贝', '0c5e1dfd4f1043b8b0eff4a11352401f.jpg', '8', NULL, 1, 0),
  (1049, 1002, '小馆拿手菜', '干锅土豆片', 'FlG3NQ_WQRzDyJfArTnwh7bdACnr', '22', NULL, 1, 0),
  (1050, 1002, '小馆拿手菜', '干锅牛蛙', 'FveDo-P7A2Q-VZ5xeE8bCUYrafxY', '49', NULL, 1, 0),
  (1051, 1003, '精品凉菜', '醉花生', 'bcdddb46e59a4352b537f6ae7aa268fd1520061889389.jpg', '10', NULL, 1, 0),
  (1052, 1003, '精品凉菜', '椒麻鸡', 'Fnuqq_SoUc5fgbcgk_yUlAbtVRVY', '19', NULL, 1, 0),
  (1053, 1003, '精品凉菜', '生炝秋葵', '414ddaf378864905b2110dde2e0d47b31520061827749.jpeg', '16', NULL, 1, 0),
  (1054, 1003, '精品凉菜', '爽口萝卜丝', '435620951acb40dcbd867fd5e9122d15.jpg', '12', NULL, 1, 0),
  (1055, 1003, '精品凉菜', '养生小木耳', '8acd568cfc934e65b58e17aceaf2cbff.jpg', '12', NULL, 1, 0),
  (1056, 1003, '精品凉菜', '蔬菜沙拉', '3f025d6389384ad5bca0d811d32baec9.jpg', '18', NULL, 1, 0),
  (1057, 1003, '精品凉菜', '剁椒小皮蛋', '3594954f16e846d4ad9f50093f461c46.jpg', '16', NULL, 1, 0),
  (1058, 1003, '精品凉菜', '盐水鸭', 'a7f8538a77fa43b2b9216674b70c5cf8.jpg', '19', NULL, 1, 0),
  (1059, 1003, '精品凉菜', '泡椒藕带', 'b3ab1c61aa5f4401981783c1ef2c894b1520063982650.jpeg', '19', NULL, 1, 0),
  (1060, 1003, '精品凉菜', '麻辣黑鸡爪', 'bb8b2044facb449bb97f3088ba7eaeea1511621153694.jpeg', '28', NULL, 1, 0),
  (1061, 1003, '精品凉菜', '酱牛肉', 'bf24977c65264cb887c696c16df44bd21511621193313.jpeg', '38', NULL, 0, 0),
  (1062, 1004, '鲜榨自制饮品', '香蕉牛奶/杯', '1936b499d859420dae0ce8f64481b218.jpg', '13', NULL, 1, 0),
  (1063, 1004, '鲜榨自制饮品', '香蕉牛奶/扎', 'b4a75762cfa74c1d9526b7f8f6241a8c.jpg', '38', NULL, 1, 0),
  (1064, 1004, '鲜榨自制饮品', '芒果牛奶/杯', '651eb0c7f9b648b3a3091ab4538ad8e3.jpg', '16', NULL, 1, 0),
  (1065, 1004, '鲜榨自制饮品', '芒果牛奶/扎', '03d109ce436544879c007857b49ff313.jpg', '45', NULL, 1, 0),
  (1066, 1005, '汤羹', '打包米饭', 'Fl2f8WRc9bz7J2nm4snOXqcQPOqr', '2', NULL, 1, 0),
  (1067, 1005, '汤羹', '红糖糍粑', '4e77946626854c8c9678b020a6b26502.jpg', '18', NULL, 1, 0),
  (1068, 1005, '汤羹', '加工费/个', 'bd2360576d1c47649592b789b1b5c7c5.jpg', '1', NULL, 1, 0),
  (1069, 1005, '汤羹', '绿茶佛饼/只', '0a4e5c098d614217b431b172342d2d27.jpg', '2', NULL, 1, 0),
  (1070, 1005, '汤羹', '青椒牛柳炒饭', 'd1ec6184f4b945e4a1d8bc57a3e77f2e1520932195964.jpeg', '18', NULL, 1, 0),
  (1071, 1005, '汤羹', '阳春面', '6c818537ddac45689380f96f39228ea4.jpg', '18', NULL, 1, 0),
  (1072, 1005, '汤羹', '最好喝的西红柿蛋汤', '0753c0671a8746f1a1b96397c0fb15e4.jpg', '16', NULL, 1, 0),
  (1073, 1005, '汤羹', '酒酿元宵羹', '5487a38f71474b9b89fe9847406d0389.jpg', '16', NULL, 1, 0),
  (1074, 1006, '进口啤酒', '墨西哥科罗娜', 'ed962c3385f7445eaa3ab699080b9602.jpg', '16', NULL, 1, 0),
  (1075, 1006, '进口啤酒', '比利时福佳白', '7aa5a2391475447eb6f59a4363da73c2.jpg', '16', NULL, 1, 0),
  (1076, 1006, '进口啤酒', '比利时百熊', 'ee9ea54236664d19a5b6ef631fcb70f3.jpg', '19', NULL, 1, 0),
  (1077, 1006, '进口啤酒', '法国1664', '3fe5f66911e24ed4864d936a3632bdc5.jpg', '20', NULL, 1, 0),
  (1078, 1006, '进口啤酒', '庄园', '11b4b755d5ca4d8082d475f14a84f848.jpg', '16', NULL, 1, 0),
  (1079, 1006, '进口啤酒', '深粉', 'b123c454b6084aad9975ad5c7ffc5794.jpg', '29', NULL, 1, 0),
  (1080, 1006, '进口啤酒', '浅粉', '6fc2464088fc4a778e655e6b1069c6f0.jpg', '29', NULL, 1, 0),
  (1081, 1006, '进口啤酒', '埃斯特拉柠檬味', 'e78c5ea1209b471d9af289250a958aa2.jpg', '18', NULL, 1, 0),
  (1082, 1007, '饮料', '豆奶', '08aeb1795d284197b1aab35381cd4fc5.jpg', '4', NULL, 1, 0),
  (1083, 1007, '饮料', '小可乐/瓶', '5147018d845948d89cda30ac05d7c7d4.jpg', '4', NULL, 1, 0),
  (1084, 1007, '饮料', '大可乐/瓶', '491d55816a704625b711062ea6f575db.jpg', '10', NULL, 1, 0),
  (1085, 1007, '饮料', '小雪碧/瓶', '9e1c65a1f29642bc8652d952f37130b5.jpg', '4', NULL, 1, 0),
  (1086, 1007, '饮料', '大雪碧/瓶', 'fbd859cdee90426da3375639cfe11606.jpg', '10', NULL, 1, 0),
  (1087, 1007, '饮料', '王老吉/瓶', 'f1c202c24f284c5c90c8e1aad62bd578.jpg', '5', NULL, 1, 0),
  (1088, 1007, '饮料', '果粒橙/瓶', '55ab450dd1cb4895b74496cd0e58a22a.jpg', '10', NULL, 1, 0),
  (1089, 1008, '白酒', '江小白', '8e5eb0cf6aea44b18f9f42383cf5b141.jpg', '19', NULL, 1, 0),
  (1090, 1008, '白酒', '海之蓝', '9bb3237976834d5297a6f2a1c9b99f24.jpg', '148', NULL, 1, 0),
  (1091, 1008, '白酒', '醇品', '2dbcc33a11e54a8c844935d25c9b66571511622032890.jpeg', '55', NULL, 1, 0),
  (1092, 1009, '套餐', '套餐1', '7d35b25b36be4a9f85cdc2e8da06d6bd.jpeg', '32', NULL, 1, 0),
  (1093, 1009, '套餐', '套餐3', 'FvftA83u5Z1XAlYjwYkJ61jf_IhR', '30', NULL, 1, 0),
  (1094, 1009, '套餐', '套餐2 ', 'a3514d8a564e4d42893e65abaecd40ec.jpeg', '26', NULL, 1, 0),
  (1095, 1010, '餐盒', '餐盒小/个', 'c6a08f1e5b7a4e8687546776ba6c91dd.jpg', '1', NULL, 1, 0),
  (1096, 1010, '餐盒', '餐盒大/个', '48df7d55e80d4084ad90b06c449206f4.jpg', '2', NULL, 1, 0),
  (1097, 1011, '零售', '零售/元', 'e60387ca8f904810a6f2fb1d0b865e71.jpg', '1', NULL, 1, 0),
  (1098, 1012, '国产啤酒', '雪花纯生/瓶', 'e60387ca8f904810a6f2fb1d0b865e71.jpg', '8', NULL, 1, 0),
  (1099, 1012, '国产啤酒', '勇闯天涯/瓶', '92eb5b89e5d14a95b39aad0c123aa1b0.jpg', '5', NULL, 1, 0),
  (1100, 1012, '国产啤酒', '蓝带王', '944402782241433a9dd11cbd103dc208.jpg', '28', NULL, 1, 0);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `order_id`         BIGINT(20) UNSIGNED     NOT NULL AUTO_INCREMENT
  COMMENT '订单编号',
  `order_restaurant` BIGINT(20) UNSIGNED     NOT NULL
  COMMENT '订单餐厅（逻辑外键restaurant_id）',
  `order_user`       BIGINT(20) UNSIGNED     NOT NULL
  COMMENT '订单用户（逻辑外键user_phone）',
  `order_table`      INT(1) UNSIGNED         NOT NULL
  COMMENT '订单桌号',
  `order_date`       DATE                    NOT NULL
  COMMENT '订单日期',
  `order_status`     TINYINT(1) UNSIGNED     NOT NULL
  COMMENT '订单状态（1为已付，0为未付）',
  `order_total`      DECIMAL(10, 0) UNSIGNED NOT NULL
  COMMENT '订单金额',
  PRIMARY KEY (`order_id`),
  KEY `order_user` (`order_user`),
  KEY `order_restaurant` (`order_restaurant`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

/*Data for the table `order` */

/*Table structure for table `restaurant` */

DROP TABLE IF EXISTS `restaurant`;

CREATE TABLE `restaurant` (
  `restaurant_id`       BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT
  COMMENT '餐厅编号',
  `restaurant_password` VARCHAR(16)         NOT NULL
  COMMENT '餐厅密码',
  `restaurant_name`     VARCHAR(10)         NOT NULL
  COMMENT '餐厅名称（最长10位）',
  `restaurant_phone`    VARCHAR(11)         NOT NULL
  COMMENT '餐厅电话',
  `restaurant_address`  VARCHAR(30)         NOT NULL
  COMMENT '餐厅地址（最长30位）',
  `restaurant_logo`     VARCHAR(300)        NOT NULL
  COMMENT '餐厅logo（图片名）',
  `restaurant_table`    INT(2)              NOT NULL
  COMMENT '餐厅座位数量',
  PRIMARY KEY (`restaurant_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1001
  DEFAULT CHARSET = utf8;

/*Data for the table `restaurant` */

INSERT INTO `restaurant` (`restaurant_id`, `restaurant_password`, `restaurant_name`, `restaurant_phone`, `restaurant_address`, `restaurant_logo`, `restaurant_table`)
VALUES (1000, '123456', '二娃酸菜鱼', '18795892599', '南京市玄武区', 'a7fedfa29fb24996b0f84441e7707c44.jpg', 30);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_phone`    VARCHAR(11)         NOT NULL
  COMMENT '手机号码（11位）',
  `user_name`     VARCHAR(10)         NOT NULL
  COMMENT '用户姓名',
  `user_password` VARCHAR(16)         NOT NULL
  COMMENT '用户密码（最长16位）',
  `user_sex`      TINYINT(1) UNSIGNED NOT NULL
  COMMENT '用户性别（0为女，1为男）',
  `user_birthday` DATE                NOT NULL
  COMMENT '用户生日',
  PRIMARY KEY (`user_phone`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

/*Data for the table `user` */

INSERT INTO `user` (`user_phone`, `user_name`, `user_password`, `user_sex`, `user_birthday`)
VALUES ('18795892599', '杜以武', '123456', 0, '2016-12-06'), ('18795892633', '戴启祺', '123456', 0, '2017-12-26');

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;
