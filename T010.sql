/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t010`;
CREATE DATABASE IF NOT EXISTS `t010` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t010`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/jspmfz6u8/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/jspmfz6u8/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/jspmfz6u8/upload/picture3.jpg'),
	(6, 'homepage', NULL);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '学生名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(71, '2023-12-13 01:27:33', 1, '学生名1', '留言内容1', '回复内容1'),
	(72, '2023-12-13 01:27:33', 2, '学生名2', '留言内容2', '回复内容2'),
	(73, '2023-12-13 01:27:33', 3, '学生名3', '留言内容3', '回复内容3'),
	(74, '2023-12-13 01:27:33', 4, '学生名4', '留言内容4', '回复内容4'),
	(75, '2023-12-13 01:27:33', 5, '学生名5', '留言内容5', '回复内容5'),
	(76, '2023-12-13 01:27:33', 6, '学生名6', '留言内容6', '回复内容6');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='新闻资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(61, '2023-12-13 01:27:33', '标题1', '简介1', 'http://localhost:8080/jspmfz6u8/upload/news_picture1.jpg', '内容1'),
	(62, '2023-12-13 01:27:33', '标题2', '简介2', 'http://localhost:8080/jspmfz6u8/upload/news_picture2.jpg', '内容2'),
	(63, '2023-12-13 01:27:33', '标题3', '简介3', 'http://localhost:8080/jspmfz6u8/upload/news_picture3.jpg', '内容3'),
	(64, '2023-12-13 01:27:33', '标题4', '简介4', 'http://localhost:8080/jspmfz6u8/upload/news_picture4.jpg', '内容4'),
	(65, '2023-12-13 01:27:33', '标题5', '简介5', 'http://localhost:8080/jspmfz6u8/upload/news_picture5.jpg', '内容5'),
	(66, '2023-12-13 01:27:33', '标题6', '简介6', 'http://localhost:8080/jspmfz6u8/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `qiye`;
CREATE TABLE IF NOT EXISTS `qiye` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyehao` varchar(200) NOT NULL COMMENT '企业号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyehao` (`qiyehao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='企业';

DELETE FROM `qiye`;
INSERT INTO `qiye` (`id`, `addtime`, `qiyehao`, `mima`, `qiyemingcheng`, `tupian`, `lianxidianhua`, `dizhi`, `youxiang`) VALUES
	(21, '2023-12-13 01:27:33', '企业1', '123456', '企业名称1', 'http://localhost:8080/jspmfz6u8/upload/qiye_tupian1.jpg', '13823888881', '地址1', '773890001@qq.com'),
	(22, '2023-12-13 01:27:33', '企业2', '123456', '企业名称2', 'http://localhost:8080/jspmfz6u8/upload/qiye_tupian2.jpg', '13823888882', '地址2', '773890002@qq.com'),
	(23, '2023-12-13 01:27:33', '企业3', '123456', '企业名称3', 'http://localhost:8080/jspmfz6u8/upload/qiye_tupian3.jpg', '13823888883', '地址3', '773890003@qq.com'),
	(24, '2023-12-13 01:27:33', '企业4', '123456', '企业名称4', 'http://localhost:8080/jspmfz6u8/upload/qiye_tupian4.jpg', '13823888884', '地址4', '773890004@qq.com'),
	(25, '2023-12-13 01:27:33', '企业5', '123456', '企业名称5', 'http://localhost:8080/jspmfz6u8/upload/qiye_tupian5.jpg', '13823888885', '地址5', '773890005@qq.com'),
	(26, '2023-12-13 01:27:33', '企业6', '123456', '企业名称6', 'http://localhost:8080/jspmfz6u8/upload/qiye_tupian6.jpg', '13823888886', '地址6', '773890006@qq.com');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '9co2x54pbq9xo3sz3xi4py555phcfqw5', '2023-12-13 01:29:23', '2023-12-13 02:41:13'),
	(2, 11, '学生1', 'yonghu', '学生', 'm4ulmpppshzac90u6bil63l5ij18j1to', '2023-12-13 01:30:33', '2023-12-13 02:42:33'),
	(3, 21, '企业1', 'qiye', '企业', 'cgzssuqx8qcmx8dl7e737q0gi2owke7k', '2023-12-13 01:43:12', '2023-12-13 02:43:12');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='学生表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-12-13 01:27:33');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '学生名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `shoujihaoma`, `youxiang`) VALUES
	(11, '2023-12-13 01:27:33', '学生1', '123456', '姓名1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888881', '916077357@qq.com'),
	(12, '2023-12-13 01:27:33', '学生2', '123456', '姓名2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888882', '916077357@qq.com'),
	(13, '2023-12-13 01:27:33', '学生3', '123456', '姓名3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888883', '916077357@qq.com'),
	(14, '2023-12-13 01:27:33', '学生4', '123456', '姓名4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888884', '916077357@qq.com'),
	(15, '2023-12-13 01:27:33', '学生5', '123456', '姓名5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888885', '916077357@qq.com'),
	(16, '2023-12-13 01:27:33', '学生6', '123456', '姓名6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888886', '916077357@qq.com');

DROP TABLE IF EXISTS `zhiweileibie`;
CREATE TABLE IF NOT EXISTS `zhiweileibie` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweileibie` varchar(200) NOT NULL COMMENT '职位类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='职位类别';

DELETE FROM `zhiweileibie`;
INSERT INTO `zhiweileibie` (`id`, `addtime`, `zhiweileibie`) VALUES
	(31, '2023-12-13 01:27:33', '职位类别1'),
	(32, '2023-12-13 01:27:33', '职位类别2'),
	(33, '2023-12-13 01:27:33', '职位类别3'),
	(34, '2023-12-13 01:27:33', '职位类别4'),
	(35, '2023-12-13 01:27:33', '职位类别5'),
	(36, '2023-12-13 01:27:33', '职位类别6');

DROP TABLE IF EXISTS `zhiweishenqing`;
CREATE TABLE IF NOT EXISTS `zhiweishenqing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `zhiweileibie` varchar(200) DEFAULT NULL COMMENT '职位类别',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhiweijianjie` varchar(200) DEFAULT NULL COMMENT '职位简介',
  `qiyehao` varchar(200) DEFAULT NULL COMMENT '企业号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '学生名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='职位申请';

DELETE FROM `zhiweishenqing`;
INSERT INTO `zhiweishenqing` (`id`, `addtime`, `zhiweimingcheng`, `zhiweileibie`, `xinzidaiyu`, `zhiweijianjie`, `qiyehao`, `qiyemingcheng`, `shenqingriqi`, `jianli`, `yonghuming`, `xingming`, `shoujihaoma`, `sfsh`, `shhf`) VALUES
	(51, '2023-12-13 01:27:33', '职位名称1', '职位类别1', '薪资待遇1', '职位简介1', '企业号1', '企业名称1', '2023-12-13', '', '学生名1', '姓名1', '手机号码1', '是', ''),
	(52, '2023-12-13 01:27:33', '职位名称2', '职位类别2', '薪资待遇2', '职位简介2', '企业号2', '企业名称2', '2023-12-13', '', '学生名2', '姓名2', '手机号码2', '是', ''),
	(53, '2023-12-13 01:27:33', '职位名称3', '职位类别3', '薪资待遇3', '职位简介3', '企业号3', '企业名称3', '2023-12-13', '', '学生名3', '姓名3', '手机号码3', '是', ''),
	(54, '2023-12-13 01:27:33', '职位名称4', '职位类别4', '薪资待遇4', '职位简介4', '企业号4', '企业名称4', '2023-12-13', '', '学生名4', '姓名4', '手机号码4', '是', ''),
	(55, '2023-12-13 01:27:33', '职位名称5', '职位类别5', '薪资待遇5', '职位简介5', '企业号5', '企业名称5', '2023-12-13', '', '学生名5', '姓名5', '手机号码5', '是', ''),
	(56, '2023-12-13 01:27:33', '职位名称6', '职位类别6', '薪资待遇6', '职位简介6', '企业号6', '企业名称6', '2023-12-13', '', '学生名6', '姓名6', '手机号码6', '是', '');

DROP TABLE IF EXISTS `zhiweixinxi`;
CREATE TABLE IF NOT EXISTS `zhiweixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `zhiweileibie` varchar(200) DEFAULT NULL COMMENT '职位类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhaopinrenshu` int DEFAULT NULL COMMENT '招聘人数',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhiweijianjie` longtext COMMENT '职位简介',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyehao` varchar(200) DEFAULT NULL COMMENT '企业号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='职位信息';

DELETE FROM `zhiweixinxi`;
INSERT INTO `zhiweixinxi` (`id`, `addtime`, `zhiweimingcheng`, `zhiweileibie`, `tupian`, `zhaopinrenshu`, `xinzidaiyu`, `zhiweijianjie`, `faburiqi`, `lianxiren`, `lianxifangshi`, `qiyehao`, `qiyemingcheng`, `dizhi`) VALUES
	(41, '2023-12-13 01:27:33', '职位名称1', '职位类别1', 'http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian1.jpg', 1, '薪资待遇1', '职位简介1', '2023-12-13', '联系人1', '13823888881', '企业号1', '企业名称1', '地址1'),
	(42, '2023-12-13 01:27:33', '职位名称2', '职位类别2', 'http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian2.jpg', 2, '薪资待遇2', '职位简介2', '2023-12-13', '联系人2', '13823888882', '企业号2', '企业名称2', '地址2'),
	(43, '2023-12-13 01:27:33', '职位名称3', '职位类别3', 'http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian3.jpg', 3, '薪资待遇3', '职位简介3', '2023-12-13', '联系人3', '13823888883', '企业号3', '企业名称3', '地址3'),
	(44, '2023-12-13 01:27:33', '职位名称4', '职位类别4', 'http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian4.jpg', 4, '薪资待遇4', '职位简介4', '2023-12-13', '联系人4', '13823888884', '企业号4', '企业名称4', '地址4'),
	(45, '2023-12-13 01:27:33', '职位名称5', '职位类别5', 'http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian5.jpg', 5, '薪资待遇5', '职位简介5', '2023-12-13', '联系人5', '13823888885', '企业号5', '企业名称5', '地址5'),
	(46, '2023-12-13 01:27:33', '职位名称6', '职位类别6', 'http://localhost:8080/jspmfz6u8/upload/zhiweixinxi_tupian6.jpg', 6, '薪资待遇6', '职位简介6', '2023-12-13', '联系人6', '13823888886', '企业号6', '企业名称6', '地址6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
