/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiqingjujiajianceguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiqingjujiajianceguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiqingjujiajianceguanli`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-04 15:57:32'),(2,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-04 15:57:32'),(3,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-04 15:57:32'),(4,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-04 15:57:32'),(5,'keshou_types','有无咳嗽',1,'有',NULL,NULL,'2023-04-04 15:57:32'),(6,'keshou_types','有无咳嗽',2,'无',NULL,NULL,'2023-04-04 15:57:32'),(7,'wuaichu_types','有无外出',1,'有',NULL,NULL,'2023-04-04 15:57:32'),(8,'wuaichu_types','有无外出',2,'无',NULL,NULL,'2023-04-04 15:57:32'),(9,'binghuan_types','是否接触病患',1,'有',NULL,NULL,'2023-04-04 15:57:32'),(10,'binghuan_types','是否接触病患',2,'无',NULL,NULL,'2023-04-04 15:57:32'),(11,'gaofengxian_types','是否出入高风险区域',1,'有',NULL,NULL,'2023-04-04 15:57:32'),(12,'gaofengxian_types','是否出入高风险区域',2,'无',NULL,NULL,'2023-04-04 15:57:32'),(13,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-04 15:57:32'),(14,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-04 15:57:32'),(15,'zhishi_types','知识类型',1,'知识类型1',NULL,NULL,'2023-04-04 15:57:32'),(16,'zhishi_types','知识类型',2,'知识类型2',NULL,NULL,'2023-04-04 15:57:32'),(17,'zhishi_types','知识类型',3,'知识类型3',NULL,NULL,'2023-04-04 15:57:32'),(18,'zhishi_types','知识类型',4,'知识类型4',NULL,NULL,'2023-04-04 15:57:32'),(19,'zhishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-04 15:57:32'),(20,'zhishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-04 15:57:32'),(21,'zhishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-04 15:57:32'),(22,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-04 15:57:33'),(23,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-04 15:57:33'),(24,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-04 15:57:33'),(25,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-04 15:57:33'),(26,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-04 15:57:33'),(27,'yisheng_types','科室',1,'科室1',NULL,NULL,'2023-04-04 15:57:33'),(28,'yisheng_types','科室',2,'科室2',NULL,NULL,'2023-04-04 15:57:33'),(29,'zhiwei_types','职位',1,'职位1',NULL,NULL,'2023-04-04 15:57:33'),(30,'zhiwei_types','职位',2,'职位2',NULL,NULL,'2023-04-04 15:57:33'),(31,'yisheng_yuyue_yesno_types','报名状态',1,'待处理',NULL,NULL,'2023-04-04 15:57:33'),(32,'yisheng_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-04 15:57:33'),(33,'yisheng_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-04 15:57:33'),(34,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-04 15:57:33'),(35,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-04 15:57:33');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yisheng_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,3,NULL,'发布内容1',148,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(2,'帖子标题2',NULL,1,NULL,'发布内容2',145,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(3,'帖子标题3',NULL,2,NULL,'发布内容3',302,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(4,'帖子标题4',NULL,2,NULL,'发布内容4',86,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(5,'帖子标题5',NULL,1,NULL,'发布内容5',181,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(6,'帖子标题6',NULL,3,NULL,'发布内容6',437,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(7,'帖子标题7',NULL,3,NULL,'发布内容7',483,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(8,'帖子标题8',NULL,2,NULL,'发布内容8',394,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(9,'帖子标题9',NULL,1,NULL,'发布内容9',227,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(10,'帖子标题10',NULL,2,NULL,'发布内容10',170,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(11,'帖子标题11',NULL,2,NULL,'发布内容11',419,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(12,'帖子标题12',NULL,2,NULL,'发布内容12',436,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(13,'帖子标题13',NULL,1,NULL,'发布内容13',353,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42'),(14,'帖子标题14',NULL,1,NULL,'发布内容14',466,1,'2023-04-04 15:57:42','2023-04-04 15:57:42','2023-04-04 15:57:42');

/*Table structure for table `guanliliuy` */

DROP TABLE IF EXISTS `guanliliuy`;

CREATE TABLE `guanliliuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guanliliuy_tiwen` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `guanliliuy_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `keshou_types` int(200) DEFAULT NULL COMMENT '有无咳嗽',
  `wuaichu_types` int(200) DEFAULT NULL COMMENT '有无外出',
  `guanliliuy_didian` varchar(200) DEFAULT NULL COMMENT '外出地点',
  `binghuan_types` int(200) DEFAULT NULL COMMENT '是否接触病患',
  `gaofengxian_types` int(200) DEFAULT NULL COMMENT '是否出入高风险区域',
  `guanliliuy_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='每日体温';

/*Data for the table `guanliliuy` */

insert  into `guanliliuy`(`id`,`yonghu_id`,`guanliliuy_tiwen`,`guanliliuy_photo`,`keshou_types`,`wuaichu_types`,`guanliliuy_didian`,`binghuan_types`,`gaofengxian_types`,`guanliliuy_content`,`insert_time`,`create_time`) values (1,2,'126.14','upload/guanliliuy1.jpg',1,1,'外出地点1',2,1,'备注1','2023-04-04 15:57:42','2023-04-04 15:57:42'),(2,1,'38.75','upload/guanliliuy2.jpg',2,2,'外出地点2',2,1,'备注2','2023-04-04 15:57:42','2023-04-04 15:57:42'),(3,1,'550.58','upload/guanliliuy3.jpg',2,2,'外出地点3',1,2,'备注3','2023-04-04 15:57:42','2023-04-04 15:57:42'),(4,3,'839.87','upload/guanliliuy4.jpg',1,1,'外出地点4',2,2,'备注4','2023-04-04 15:57:42','2023-04-04 15:57:42'),(5,1,'572.17','upload/guanliliuy5.jpg',2,1,'外出地点5',1,1,'备注5','2023-04-04 15:57:42','2023-04-04 15:57:42'),(6,3,'485.67','upload/guanliliuy6.jpg',1,1,'外出地点6',1,2,'备注6','2023-04-04 15:57:42','2023-04-04 15:57:42'),(7,1,'679.29','upload/guanliliuy7.jpg',2,2,'外出地点7',1,2,'备注7','2023-04-04 15:57:42','2023-04-04 15:57:42'),(8,2,'260.96','upload/guanliliuy8.jpg',1,1,'外出地点8',2,1,'备注8','2023-04-04 15:57:42','2023-04-04 15:57:42'),(9,1,'357.72','upload/guanliliuy9.jpg',1,1,'外出地点9',1,2,'备注9','2023-04-04 15:57:42','2023-04-04 15:57:42'),(10,2,'550.51','upload/guanliliuy10.jpg',1,1,'外出地点10',1,1,'备注10','2023-04-04 15:57:42','2023-04-04 15:57:42'),(11,2,'643.92','upload/guanliliuy11.jpg',1,1,'外出地点11',2,1,'备注11','2023-04-04 15:57:42','2023-04-04 15:57:42'),(12,3,'874.76','upload/guanliliuy12.jpg',1,2,'外出地点12',1,1,'备注12','2023-04-04 15:57:42','2023-04-04 15:57:42'),(13,1,'994.77','upload/guanliliuy13.jpg',2,2,'外出地点13',1,1,'备注13','2023-04-04 15:57:42','2023-04-04 15:57:42'),(14,2,'599.30','upload/guanliliuy14.jpg',2,2,'外出地点14',2,2,'备注14','2023-04-04 15:57:42','2023-04-04 15:57:42');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-04-04 15:57:42','公告详情1','2023-04-04 15:57:42'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-04 15:57:42','公告详情2','2023-04-04 15:57:42'),(3,'公告标题3',3,'upload/news3.jpg','2023-04-04 15:57:42','公告详情3','2023-04-04 15:57:42'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-04 15:57:42','公告详情4','2023-04-04 15:57:42'),(5,'公告标题5',3,'upload/news5.jpg','2023-04-04 15:57:42','公告详情5','2023-04-04 15:57:42'),(6,'公告标题6',3,'upload/news6.jpg','2023-04-04 15:57:42','公告详情6','2023-04-04 15:57:42'),(7,'公告标题7',1,'upload/news7.jpg','2023-04-04 15:57:42','公告详情7','2023-04-04 15:57:42'),(8,'公告标题8',2,'upload/news8.jpg','2023-04-04 15:57:42','公告详情8','2023-04-04 15:57:42'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-04 15:57:42','公告详情9','2023-04-04 15:57:42'),(10,'公告标题10',1,'upload/news10.jpg','2023-04-04 15:57:42','公告详情10','2023-04-04 15:57:42'),(11,'公告标题11',1,'upload/news11.jpg','2023-04-04 15:57:42','公告详情11','2023-04-04 15:57:42'),(12,'公告标题12',3,'upload/news12.jpg','2023-04-04 15:57:42','公告详情12','2023-04-04 15:57:42'),(13,'公告标题13',1,'upload/news13.jpg','2023-04-04 15:57:42','公告详情13','2023-04-04 15:57:42'),(14,'公告标题14',3,'upload/news14.jpg','2023-04-04 15:57:42','公告详情14','2023-04-04 15:57:42');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','7ey9y8zebehtse6t7482v1pmf27o757z','2023-04-04 15:59:42','2023-04-04 16:59:42'),(2,1,'a1','yonghu','用户','u9wyeh9nhy3vdz5nkpv15sydn3xn781v','2023-04-04 16:00:04','2023-04-04 17:00:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-04 15:57:32');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生名称 Search111',
  `yisheng_types` int(11) DEFAULT NULL COMMENT '科室 Search111',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111',
  `yisheng_zhichneg` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yisheng_content` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`yisheng_types`,`zhiwei_types`,`yisheng_zhichneg`,`yisheng_photo`,`yisheng_phone`,`yisheng_email`,`yisheng_content`,`create_time`) values (1,'a1','123456','医生名称1',2,2,'职称1','upload/yisheng1.jpg','17703786901','1@qq.com','个人介绍1','2023-04-04 15:57:42'),(2,'a2','123456','医生名称2',2,2,'职称2','upload/yisheng2.jpg','17703786902','2@qq.com','个人介绍2','2023-04-04 15:57:42'),(3,'a3','123456','医生名称3',1,1,'职称3','upload/yisheng3.jpg','17703786903','3@qq.com','个人介绍3','2023-04-04 15:57:42');

/*Table structure for table `yisheng_yuyue` */

DROP TABLE IF EXISTS `yisheng_yuyue`;

CREATE TABLE `yisheng_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yisheng_yuyue_text` longtext COMMENT '预约理由',
  `yisheng_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `yisheng_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `yisheng_yuyue_yesno_text` longtext COMMENT '治疗方案',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='医生报名';

/*Data for the table `yisheng_yuyue` */

insert  into `yisheng_yuyue`(`id`,`yisheng_id`,`yonghu_id`,`yisheng_yuyue_text`,`yisheng_yuyue_time`,`yisheng_yuyue_yesno_types`,`yisheng_yuyue_yesno_text`,`create_time`) values (1,3,1,'预约理由1','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(2,3,1,'预约理由2','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(3,1,1,'预约理由3','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(4,3,2,'预约理由4','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(5,3,1,'预约理由5','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(6,3,1,'预约理由6','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(7,1,2,'预约理由7','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(8,2,2,'预约理由8','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(9,3,1,'预约理由9','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(10,2,2,'预约理由10','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(11,3,3,'预约理由11','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(12,1,3,'预约理由12','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(13,2,1,'预约理由13','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42'),(14,3,2,'预约理由14','2023-04-04 15:57:42',1,NULL,'2023-04-04 15:57:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-04-04 15:57:42','2023-04-04 15:57:42');

/*Table structure for table `zhishi` */

DROP TABLE IF EXISTS `zhishi`;

CREATE TABLE `zhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhishi_name` varchar(200) DEFAULT NULL COMMENT '知识标题  Search111 ',
  `zhishi_photo` varchar(200) DEFAULT NULL COMMENT '知识封面',
  `zhishi_video` varchar(200) DEFAULT NULL COMMENT '知识视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `zhishi_types` int(11) DEFAULT NULL COMMENT '知识类型 Search111',
  `zhishi_clicknum` int(11) DEFAULT NULL COMMENT '知识热度',
  `zhishi_content` longtext COMMENT '知识介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `zhishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健康小知识';

/*Data for the table `zhishi` */

insert  into `zhishi`(`id`,`zhishi_name`,`zhishi_photo`,`zhishi_video`,`zan_number`,`cai_number`,`zhishi_types`,`zhishi_clicknum`,`zhishi_content`,`shangxia_types`,`zhishi_delete`,`insert_time`,`create_time`) values (1,'知识标题1','upload/zhishi1.jpg','upload/video.mp4',353,23,3,334,'知识介绍1',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(2,'知识标题2','upload/zhishi2.jpg','upload/video.mp4',120,293,4,55,'知识介绍2',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(3,'知识标题3','upload/zhishi3.jpg','upload/video.mp4',167,435,3,381,'知识介绍3',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(4,'知识标题4','upload/zhishi4.jpg','upload/video.mp4',140,436,2,428,'知识介绍4',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(5,'知识标题5','upload/zhishi5.jpg','upload/video.mp4',429,50,4,49,'知识介绍5',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(6,'知识标题6','upload/zhishi6.jpg','upload/video.mp4',200,273,1,369,'知识介绍6',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(7,'知识标题7','upload/zhishi7.jpg','upload/video.mp4',233,466,4,477,'知识介绍7',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(8,'知识标题8','upload/zhishi8.jpg','upload/video.mp4',280,3,2,495,'知识介绍8',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(9,'知识标题9','upload/zhishi9.jpg','upload/video.mp4',155,314,4,71,'知识介绍9',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(10,'知识标题10','upload/zhishi10.jpg','upload/video.mp4',178,32,3,228,'知识介绍10',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(11,'知识标题11','upload/zhishi11.jpg','upload/video.mp4',91,355,1,82,'知识介绍11',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(12,'知识标题12','upload/zhishi12.jpg','upload/video.mp4',437,173,4,405,'知识介绍12',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(13,'知识标题13','upload/zhishi13.jpg','upload/video.mp4',471,413,1,502,'知识介绍13',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(14,'知识标题14','upload/zhishi14.jpg','upload/video.mp4',393,59,3,232,'知识介绍14',1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42');

/*Table structure for table `zhishi_collection` */

DROP TABLE IF EXISTS `zhishi_collection`;

CREATE TABLE `zhishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhishi_id` int(11) DEFAULT NULL COMMENT '知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='知识收藏';

/*Data for the table `zhishi_collection` */

insert  into `zhishi_collection`(`id`,`zhishi_id`,`yonghu_id`,`zhishi_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(2,2,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(3,3,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(4,4,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(5,5,2,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(6,6,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(7,7,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(8,8,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(9,9,2,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(10,10,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(11,11,1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(12,12,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(13,13,3,1,'2023-04-04 15:57:42','2023-04-04 15:57:42'),(14,14,1,1,'2023-04-04 15:57:42','2023-04-04 15:57:42');

/*Table structure for table `zhishi_liuyan` */

DROP TABLE IF EXISTS `zhishi_liuyan`;

CREATE TABLE `zhishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhishi_id` int(11) DEFAULT NULL COMMENT '知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhishi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='知识留言';

/*Data for the table `zhishi_liuyan` */

insert  into `zhishi_liuyan`(`id`,`zhishi_id`,`yonghu_id`,`zhishi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-04-04 15:57:42','回复信息1','2023-04-04 15:57:42','2023-04-04 15:57:42'),(2,2,3,'留言内容2','2023-04-04 15:57:42','回复信息2','2023-04-04 15:57:42','2023-04-04 15:57:42'),(3,3,3,'留言内容3','2023-04-04 15:57:42','回复信息3','2023-04-04 15:57:42','2023-04-04 15:57:42'),(4,4,2,'留言内容4','2023-04-04 15:57:42','回复信息4','2023-04-04 15:57:42','2023-04-04 15:57:42'),(5,5,3,'留言内容5','2023-04-04 15:57:42','回复信息5','2023-04-04 15:57:42','2023-04-04 15:57:42'),(6,6,3,'留言内容6','2023-04-04 15:57:42','回复信息6','2023-04-04 15:57:42','2023-04-04 15:57:42'),(7,7,1,'留言内容7','2023-04-04 15:57:42','回复信息7','2023-04-04 15:57:42','2023-04-04 15:57:42'),(8,8,2,'留言内容8','2023-04-04 15:57:42','回复信息8','2023-04-04 15:57:42','2023-04-04 15:57:42'),(9,9,1,'留言内容9','2023-04-04 15:57:42','回复信息9','2023-04-04 15:57:42','2023-04-04 15:57:42'),(10,10,2,'留言内容10','2023-04-04 15:57:42','回复信息10','2023-04-04 15:57:42','2023-04-04 15:57:42'),(11,11,2,'留言内容11','2023-04-04 15:57:42','回复信息11','2023-04-04 15:57:42','2023-04-04 15:57:42'),(12,12,1,'留言内容12','2023-04-04 15:57:42','回复信息12','2023-04-04 15:57:42','2023-04-04 15:57:42'),(13,13,1,'留言内容13','2023-04-04 15:57:42','回复信息13','2023-04-04 15:57:42','2023-04-04 15:57:42'),(14,14,1,'留言内容14','2023-04-04 15:57:42','回复信息14','2023-04-04 15:57:42','2023-04-04 15:57:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
