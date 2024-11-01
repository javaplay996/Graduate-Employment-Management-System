/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiuyezhuangkuangguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiuyezhuangkuangguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiuyezhuangkuangguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-17 13:59:26'),(2,'sex_types','性别',2,'女',NULL,'2021-03-17 13:59:26'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-17 13:59:26'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-17 13:59:26'),(5,'xuexiao_types','学校名称',1,'厦门大学',NULL,'2021-03-17 13:59:26'),(6,'xuexiao_types','学校名称',2,'四川大学',NULL,'2021-03-17 13:59:27'),(7,'xuexiao_types','学校名称',3,'武汉大学',NULL,'2021-03-17 13:59:27'),(8,'xuexiao_types','学校名称',4,'北京大学',NULL,'2021-03-17 13:59:27'),(9,'xuexiao_types','学校名称',5,'清华大学',NULL,'2021-03-17 13:59:27'),(10,'xuexiao_types','学校名称',6,'北大大学',NULL,'2021-03-17 13:59:27'),(11,'xueyuan_types','学院名称',1,'数学科学学院',NULL,'2021-03-17 13:59:27'),(12,'xueyuan_types','学院名称',2,'物理学院',NULL,'2021-03-17 13:59:27'),(13,'xueyuan_types','学院名称',3,'生命科学学院',NULL,'2021-03-17 13:59:27'),(14,'xueyuan_types','学院名称',4,'经济学院',NULL,'2021-03-17 13:59:27'),(15,'xueyuan_types','学院名称',5,'基础医学院',NULL,'2021-03-17 13:59:27'),(16,'xueyuan_types','学院名称',6,'药学院',NULL,'2021-03-17 13:59:27'),(17,'xueyuan_types','学院名称',7,'护理学院',NULL,'2021-03-17 13:59:27'),(18,'zhuanye_types','专业名称',1,'财政学',NULL,'2021-03-17 13:59:27'),(19,'zhuanye_types','专业名称',2,'金融学',NULL,'2021-03-17 13:59:27'),(20,'zhuanye_types','专业名称',3,'投资学',NULL,'2021-03-17 13:59:27'),(21,'zhuanye_types','专业名称',4,'法学',NULL,'2021-03-17 13:59:27'),(22,'zhuanye_types','专业名称',5,'知识产权',NULL,'2021-03-17 13:59:27'),(23,'zhuanye_types','专业名称',6,'监狱学',NULL,'2021-03-17 13:59:27'),(24,'zhuanye_types','专业名称',7,'社会学',NULL,'2021-03-17 13:59:27'),(25,'jiuye_types','是否就业',1,'就业',NULL,'2021-03-17 13:59:27'),(26,'jiuye_types','是否就业',2,'未就业',NULL,'2021-03-17 13:59:27'),(27,'bumen_types','部门名称',1,'人事部',NULL,'2021-03-17 13:59:27'),(28,'bumen_types','部门名称',2,'财务部',NULL,'2021-03-17 13:59:27'),(29,'bumen_types','部门名称',3,'工程部',NULL,'2021-03-17 13:59:27'),(30,'bumen_types','部门名称',4,'行政部',NULL,'2021-03-17 13:59:27'),(31,'bumen_types','部门名称',5,'销售部',NULL,'2021-03-17 13:59:27'),(32,'zhiwei_types','职位名称',1,'经理',NULL,'2021-03-17 13:59:27'),(33,'zhiwei_types','职位名称',2,'大组长',NULL,'2021-03-17 13:59:27'),(34,'zhiwei_types','职位名称',3,'小组长',NULL,'2021-03-17 13:59:27'),(35,'zhiwei_types','职位名称',4,'员工',NULL,'2021-03-17 13:59:27'),(36,'diqu_types','地区名称',1,'东北地区',NULL,'2021-03-17 13:59:27'),(37,'diqu_types','地区名称',2,'华东地区',NULL,'2021-03-17 13:59:27'),(38,'diqu_types','地区名称',3,'华北地区',NULL,'2021-03-17 13:59:28'),(39,'diqu_types','地区名称',4,'华中地区',NULL,'2021-03-17 13:59:28'),(40,'diqu_types','地区名称',5,'华南地区',NULL,'2021-03-17 13:59:28'),(41,'diqu_types','地区名称',6,'华南地区',NULL,'2021-03-17 13:59:28'),(42,'diqu_types','地区名称',7,'西北地区',NULL,'2021-03-17 13:59:28');

/*Table structure for table `jigou` */

DROP TABLE IF EXISTS `jigou`;

CREATE TABLE `jigou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jigou_name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别   ',
  `jigou_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jigou_chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `jigou_nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `danwei` varchar(200) DEFAULT NULL COMMENT '工作单位  ',
  `bumen_types` int(11) DEFAULT NULL COMMENT '工作部门',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '担任职位',
  `jigou_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `jigou_phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `jigou_address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `jigou_youzhengbianma` varchar(200) DEFAULT NULL COMMENT '邮政编码',
  `jigou_aihao_content` varchar(200) DEFAULT NULL COMMENT '个人爱好',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='机构人员';

/*Data for the table `jigou` */

insert  into `jigou`(`id`,`username`,`password`,`jigou_name`,`sex_types`,`jigou_photo`,`jigou_chushengriqi`,`jigou_nation`,`politics_types`,`danwei`,`bumen_types`,`zhiwei_types`,`jigou_id_number`,`jigou_phone`,`jigou_address`,`jigou_youzhengbianma`,`jigou_aihao_content`,`create_time`) values (1,'a1','123456','张一',2,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615964095439.jpg','96-9-3','汉',1,'北京天恒恒瑞科技发展有限公司',1,2,'410224199610232011','17703786931','北京耳环','010101','万优秀\r\n','2021-03-17 14:55:59'),(2,'a2','123456','张2',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615964174769.jpg','95-9-1','汉',2,'北京恒天科技有限公司',4,4,'410224199510232012','17703786969','郑州西郊','878787','跑步\r\n','2021-03-17 14:57:28');

/*Table structure for table `jiuye` */

DROP TABLE IF EXISTS `jiuye`;

CREATE TABLE `jiuye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiuye_types` int(11) DEFAULT NULL COMMENT '是否就业',
  `diqu_types` int(11) DEFAULT NULL COMMENT '就业地区   ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '公司名称  ',
  `fuzeren_name` varchar(200) DEFAULT NULL COMMENT '公司负责人姓名',
  `fuzeren_id_number` varchar(200) DEFAULT NULL COMMENT '公司负责人手机号',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '担任职位    ',
  `beizhu_content` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='就业信息';

/*Data for the table `jiuye` */

insert  into `jiuye`(`id`,`yonghu_id`,`jiuye_types`,`diqu_types`,`gongsi_name`,`fuzeren_name`,`fuzeren_id_number`,`zhiwei_types`,`beizhu_content`,`create_time`) values (39,1,1,1,'北京天航科技有限公司1 ','张11的负责人名字1 ','17719786969',1,'啊啊1\r\n','2021-03-17 16:02:09'),(40,2,1,2,'北京天航科技有限公司2 ','张11的负责人名字2 ','17729786969',2,'啊啊2\r\n','2021-03-17 16:02:09'),(41,3,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:58'),(42,4,1,4,'北京天航科技有限公司4 ','张11的负责人名字4 ','17749786969',4,'啊啊4\r\n','2021-03-17 16:02:09'),(43,5,1,5,'北京天航科技有限公司5 ','张11的负责人名字5 ','17759786969',1,'啊啊5\r\n','2021-03-17 16:02:09'),(44,6,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:58'),(45,7,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:58'),(46,8,1,1,'北京天航科技有限公司8 ','张11的负责人名字8 ','17789786969',4,'啊啊8\r\n','2021-03-17 16:02:09'),(47,9,1,2,'北京天航科技有限公司9 ','张11的负责人名字9 ','17799786969',1,'啊啊9\r\n','2021-03-17 16:02:09'),(48,10,1,3,'北京天航科技有限公司10','张11的负责人名字10','17710786969',2,'啊啊10\r\n','2021-03-17 16:02:09'),(49,11,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:58'),(50,12,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:58'),(51,13,1,6,'北京天航科技有限公司13','张11的负责人名字13','17713786969',1,'啊啊13\r\n','2021-03-17 16:02:09'),(52,14,1,7,'北京天航科技有限公司14','张11的负责人名字14','17714786969',2,'啊啊14\r\n','2021-03-17 16:02:09'),(53,15,1,1,'北京天航科技有限公司15','张11的负责人名字15','17715786969',3,'啊啊15\r\n','2021-03-17 16:02:09'),(54,16,1,2,'北京天航科技有限公司16','张11的负责人名字16','17716786969',4,'啊啊16\r\n','2021-03-17 16:02:09'),(55,17,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:58'),(56,18,1,4,'北京天航科技有限公司18','张11的负责人名字18','17718786969',2,'啊啊18\r\n','2021-03-17 16:02:09'),(57,19,1,5,'北京天航科技有限公司19','张11的负责人名字19','17719786969',3,'啊啊19\r\n','2021-03-17 16:02:09'),(58,20,1,6,'北京天航科技有限公司20','张11的负责人名字20','17720786969',4,'啊啊20\r\n','2021-03-17 16:02:09'),(59,21,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:58'),(60,22,1,1,'北京天航科技有限公司22','张11的负责人名字22','17722786969',2,'啊啊22\r\n','2021-03-17 16:02:09'),(61,23,1,2,'北京天航科技有限公司23','张11的负责人名字23','17723786969',3,'啊啊23\r\n','2021-03-17 16:02:09'),(62,24,1,3,'北京天航科技有限公司24','张11的负责人名字24','17724786969',4,'啊啊24\r\n','2021-03-17 16:02:09'),(63,25,1,4,'北京天航科技有限公司25','张11的负责人名字25','17725786969',1,'啊啊25\r\n','2021-03-17 16:02:09'),(64,26,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:59'),(65,27,1,6,'北京天航科技有限公司27','张11的负责人名字27','17727786969',3,'啊啊27\r\n','2021-03-17 16:02:09'),(66,28,1,7,'北京天航科技有限公司28','张11的负责人名字28','17728786969',4,'啊啊28\r\n','2021-03-17 16:02:09'),(67,29,1,1,'北京天航科技有限公司29','张11的负责人名字29','17729786969',1,'啊啊29\r\n','2021-03-17 16:02:09'),(68,30,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:59'),(69,31,1,3,'北京天航科技有限公司31','张11的负责人名字31','17731786969',3,'啊啊31\r\n','2021-03-17 16:02:09'),(70,32,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:59'),(71,33,1,5,'北京天航科技有限公司33','张11的负责人名字33','17733786969',1,'啊啊33\r\n','2021-03-17 16:02:09'),(72,34,2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-17 16:32:59');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','o6do8miounoff7ffi91n0p9eqktbesjr','2021-03-17 09:44:32','2021-03-17 18:35:57'),(2,1,'a1','yonghu','用户','qa2yusr03zl420z6djh5ylv8esuvfu5s','2021-03-17 09:48:24','2021-03-17 17:36:32'),(3,1,'a1','jigou','机构','v1w40d1dijeis6t1m9b5uh5syq0m2vmi','2021-03-17 15:44:55','2021-03-17 18:12:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别   ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `xuexiao_types` int(11) DEFAULT NULL COMMENT '学校    ',
  `xueyuan_types` int(11) DEFAULT NULL COMMENT '学院',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `youzhengbianma` varchar(200) DEFAULT NULL COMMENT '邮政编码',
  `aihao_content` varchar(200) DEFAULT NULL COMMENT '个人爱好',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`sex_types`,`yonghu_photo`,`chushengriqi`,`nation`,`politics_types`,`xuexiao_types`,`xueyuan_types`,`zhuanye_types`,`banji`,`xuehao`,`id_number`,`phone`,`address`,`youxiang`,`youzhengbianma`,`aihao_content`,`create_time`) values (1,'a11','123456','张11',2,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963759399.jpg','1996-10-13','汉',2,5,6,5,'一班','010','410224199610232011','17703789911','北京朝阳区朝阳街道','22@qq.com','022222','打篮球\r\n','2021-03-17 14:50:06'),(2,'a22','123456','张22',2,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963915377.jpg','1996-9-13','汉',1,6,6,7,'一班','202','410224199610232022','17703789922','北京三环','22@qq.com','010101','看书\r\n','2021-03-17 14:52:50'),(3,'a33','123456','张三三',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,5,6,7,'一班','0215','410224199610232033','17703789933','北京二环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(4,'a44','123456','张思思',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,2,2,7,'一班','0215','410224199610232033','17703789933','北京二环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(5,'a55','123456','张99',2,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615964592584.jpg','1996-9-13','汉',2,6,7,7,'一班','098','410224199610232999','17703798878','郑州东郊','22@qq.com','989898','喝酒\r\n','2021-03-17 15:04:29'),(6,'a66','123456','张思思6',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',1,1,1,1,'一班','0215','410224199610232033','17703789933','北京1环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(7,'a77','123456','张思思7',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-10-23','维吾尔族',1,2,2,2,'一班','0215','410224199610232033','17703789933','北京2环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(8,'a88','123456','张思思8',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',2,3,3,3,'一班','0215','410224199610232033','17703789933','北京3环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(9,'a99','123456','张思思9',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,4,4,4,'一班','0215','410224199610232033','17703789933','北京4环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(10,'a111','123456','张思思10',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,5,5,5,'一班','0215','410224199610232033','17703789933','北京5环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(11,'a222','123456','张思思11',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',2,6,6,6,'一班','0215','410224199610232033','17703789933','北京6环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(12,'a333','123456','张思思12',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,1,1,7,'一班','0215','410224199610232033','17703789933','北京7环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(13,'a444','123456','张思思13',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',2,2,2,1,'一班','0215','410224199610232033','17703789933','北京8环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(14,'a555','123456','张思思14',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',2,3,3,2,'一班','0215','410224199610232033','17703789933','北京9环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(15,'a666','123456','张思思15',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,4,4,3,'一班','0215','410224199610232033','17703789933','北京1环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(16,'a777','123456','张思思16',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',2,5,5,4,'一班','0215','410224199610232033','17703789933','北京2环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(17,'a888','123456','张思思17',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,6,6,5,'一班','0215','410224199610232033','17703789933','北京3环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(18,'a999','123456','张思思18',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,1,1,1,'一班','0215','410224199610232033','17703789933','北京4环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(19,'a1111','123456','张思思19',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,2,2,2,'一班','0215','410224199610232033','17703789933','北京5环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(20,'a1111','123456','张思思20',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,3,3,3,'一班','0215','410224199610232033','17703789933','北京6环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(21,'a2222','123456','张思思21',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',2,4,4,4,'一班','0215','410224199610232033','17703789933','北京7环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(22,'a3333','123456','张思思22',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,5,5,5,'一班','0215','410224199610232033','17703789933','北京8环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(23,'a4444','123456','张思思23',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,6,6,1,'一班','0215','410224199610232033','17703789933','北京9环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(24,'a5555','123456','张思思24',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',2,1,1,2,'一班','0215','410224199610232033','17703789933','北京1环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(25,'a6666','123456','张思思25',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,2,2,3,'一班','0215','410224199610232033','17703789933','北京2环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(26,'a7777','123456','张思思26',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,3,3,4,'一班','0215','410224199610232033','17703789933','北京3环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(27,'a8888','123456','张思思27',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',1,4,4,1,'一班','0215','410224199610232033','17703789933','北京4环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(28,'a9999','123456','张思思28',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,5,5,2,'一班','0215','410224199610232033','17703789933','北京5环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(29,'a11111','123456','张思思29',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,6,6,3,'一班','0215','410224199610232033','17703789933','北京6环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(30,'a22522','123456','张思思30',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',2,1,1,4,'一班','0215','410224199610232033','17703789933','北京7环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(31,'a22222','123456','张思思31',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,2,2,5,'一班','0215','410224199610232033','17703789933','北京8环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(32,'a33333','123456','张思思32',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',2,3,3,6,'一班','0215','410224199610232033','17703789933','北京9环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(33,'a44444','123456','张思思33',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','苗族',1,4,4,7,'一班','0215','410224199610232033','17703789933','北京1环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17'),(34,'a55555','123456','张思思34',1,'http://localhost:8080/jiuyezhuangkuangguanli/file/download?fileName=1615963989710.jpg','1996-9-13','维吾尔族',1,5,5,1,'一班','0215','410224199610232033','17703789933','北京2环','33@qq.com','010101','打游戏\r\n','2021-03-17 14:54:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
