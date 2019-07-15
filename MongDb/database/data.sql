/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50146
Source Host           : localhost:3306
Source Database       : phpxyesjyw02y5

Target Server Type    : MYSQL
Target Server Version : 50146
File Encoding         : 65001

Date: 2019-04-18 22:31:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dingdanshengcheng`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanshengcheng`;
CREATE TABLE `dingdanshengcheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dingdanhao` varchar(50) DEFAULT NULL,
  `ershouwupinxinxi` varchar(500) DEFAULT NULL,
  `zongjine` varchar(50) DEFAULT NULL,
  `goumairen` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `dizhi` varchar(50) DEFAULT NULL,
  `beizhu` varchar(500) DEFAULT NULL,
  `issh` varchar(10) DEFAULT '否',
  `iszf` varchar(10) DEFAULT '否',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingdanshengcheng
-- ----------------------------
INSERT INTO `dingdanshengcheng` VALUES ('6', '15555975157549', '二手物品编号：003,二手物品名称：自行车,购买数量：1;二手物品编号：002,二手物品名称：乌合之众,购买数量：1;', '350', '003', '13105685685', '杭州', '123', '否', '否', '2019-04-18 22:25:20');

-- ----------------------------
-- Table structure for `ershouwupinfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `ershouwupinfenlei`;
CREATE TABLE `ershouwupinfenlei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ershouwupinfenlei` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ershouwupinfenlei
-- ----------------------------
INSERT INTO `ershouwupinfenlei` VALUES ('8', '二手电器', '2019-04-18 20:28:22');
INSERT INTO `ershouwupinfenlei` VALUES ('9', '二手交通工具', '2019-04-18 20:28:40');
INSERT INTO `ershouwupinfenlei` VALUES ('10', '二手书籍', '2019-04-18 20:28:48');
INSERT INTO `ershouwupinfenlei` VALUES ('11', '二手美容物品', '2019-04-18 20:29:02');
INSERT INTO `ershouwupinfenlei` VALUES ('12', '二手生活用品', '2019-04-18 20:29:17');

-- ----------------------------
-- Table structure for `ershouwupinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `ershouwupinxinxi`;
CREATE TABLE `ershouwupinxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ershouwupinbianhao` varchar(50) DEFAULT NULL,
  `ershouwupinmingcheng` varchar(50) DEFAULT NULL,
  `ershouwupinfenlei` varchar(50) DEFAULT NULL,
  `xiaoshoujiage` varchar(50) DEFAULT NULL,
  `ershouwupinshuliang` varchar(50) DEFAULT NULL,
  `zhaopian` varchar(50) DEFAULT NULL,
  `ershouwupinjianjie` varchar(50) DEFAULT NULL,
  `faburen` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of ershouwupinxinxi
-- ----------------------------
INSERT INTO `ershouwupinxinxi` VALUES ('2', '001', '二手手机', '二手生活用品', '500', '2', 'uploadfile/1555594183rg2b.jpg', '二手手机简介', '001', '2019-04-18 21:29:57');
INSERT INTO `ershouwupinxinxi` VALUES ('3', '002', '乌合之众', '二手书籍', '50', '8', 'uploadfile/15555942312mf2.jpg', '书籍简介', '001', '2019-04-18 21:31:51');
INSERT INTO `ershouwupinxinxi` VALUES ('4', '003', '自行车', '二手交通工具', '300', '1', 'uploadfile/1555594334gyj3.jpg', '自行车简介', '001', '2019-04-18 21:32:54');
INSERT INTO `ershouwupinxinxi` VALUES ('5', '004', '二手笔记本', '二手电器', '1000', '2', 'uploadfile/1555594496lku8.jpg', '二手笔记本简介', '002', '2019-04-18 21:35:09');

-- ----------------------------
-- Table structure for `essinfo`
-- ----------------------------
DROP TABLE IF EXISTS `essinfo`;
CREATE TABLE `essinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `leibie` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of essinfo
-- ----------------------------
INSERT INTO `essinfo` VALUES ('1', '系统简介', '<p>\r\n	sdgsdgsdgsd此处文字您自己修改11333\r\n</p>', '2019-03-13 07:46:56');
INSERT INTO `essinfo` VALUES ('2', '系统公告', '<p>\r\n	欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！\r\n</p>\r\n<p>\r\n	自强不息，海纳百川，努力学习！2214\r\n</p>', '2019-03-13 07:46:56');
INSERT INTO `essinfo` VALUES ('3', '中心介绍', '<p>\r\n	中心介绍 &nbsp;介绍内容请您自己在后台设置即可\r\n</p>\r\n<p>\r\n	<span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可</span>\r\n</p>\r\n<p>\r\n	<span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可</span>\r\n</p>\r\n<p>\r\n	<span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可<span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可</span></span>\r\n</p>\r\n<p>\r\n	<span><span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可<span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可<span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可<span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可</span></span></span></span></span>\r\n</p>\r\n<p>\r\n	<span><span><span><span><span>中心介绍 &nbsp;介绍内容请您自己在后台设置即可</span></span></span></span></span>\r\n</p>', '2019-03-13 07:46:56');
INSERT INTO `essinfo` VALUES ('4', '教学团队', '<table border=\"0\" class=\"ke-zeroborder\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p class=\"STYLE23\">\r\n					<strong>课程负责人 </strong>\r\n				</p>\r\n			</td>\r\n			<td>\r\n				&nbsp;\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span class=\"STYLE47\">袁智敏</span>\r\n			</td>\r\n			<td>\r\n				<span class=\"STYLE50\">副教授</span>\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<img src=\"http://www.hunche0577.com/shiziduiwu/04.jpg\" width=\"200\" height=\"140\" />\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				男，汉族，（1954---），研究生学历，副教授。1982年7月毕业于杭州大学外语系，获文学士学位。2000-2001年浙江大学英语语言文学研究生班结业。2003-2005 年浙江大学高等教育研究生班结业。现为浙江旅游职业学院 学院首批学科带头人，“旅游英语”专业指导委员会副主任。主要从事应用语言学和特殊用途英语研究与英语导游、出境游领队、饭店英语教学工作。学术兼职有浙江省外文学会理事，浙江省大学生科技竞赛高职高专英语口语竞赛委员会成员，浙江省导游、出境游领队资深考评员。已发表学术论文数十篇；主编《领队英语》、《旅游英语》、《星级饭店英语》等专业教材5本；主持省级课题3项、院级课题3项。具有丰富的旅游教学与实践经验，为省内外行业知名“双师型”教师。\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				&nbsp;\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<span class=\"STYLE23\">主讲老师</span>\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span class=\"STYLE47\">王纯</span>\r\n			</td>\r\n			<td>\r\n				<span class=\"STYLE52\">副译审</span>\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<img src=\"http://www.hunche0577.com/shiziduiwu/02.jpg\" width=\"200\" height=\"142\" />\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				男，汉族（1955年―），本科学历，副译审。现为浙江职业学院外语系教师，1982年2月毕业于杭州大学外语系，获文学士学位，任浙江省海外旅游公司英语部经理。1995年评为副译审；1996年获得国家级高级英语导游员资格。自1988年起先后被浙江省及杭州市旅游局聘任为国家级导游（英语、法语、普通话）资格培训师及考评员；浙江省旅游局出国领队资格培训师及考评员；浙江省中级导游员资格考评委员会委员；浙江省专业技术人员中级职称评审委员会委员。在外事活动中多次担任省市主要领导及省旅游局领导的英语口译。2004年调入浙江旅游职业学院担任专业英语课程老师。2007年被评为学院优秀教师，获2007年奖教基金。现任浙江旅游职业学院“导游专业”及“旅游英语”专业指导委员会委员。曾多次担任省市导游大赛评委，为省内外行业知名“双师型”教师。\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<span class=\"STYLE38\"></span>\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span class=\"STYLE47\">王 君</span>\r\n			</td>\r\n			<td>\r\n				<span class=\"STYLE52\">副教授</span>\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<span class=\"STYLE38\"><img src=\"http://www.hunche0577.com/shiziduiwu/worker01.jpg\" width=\"200\" height=\"150\" /></span>\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				女，（1964---）硕士，教授 。1986年毕业于西安外国语大学英语专业，获文学学士学位。2006年10月获浙江大学硕士学位。学院第二批学科带头人，“旅游英语”专业指导委员会委员。主要讲授旅游英语和饭店英语等课程，主编《景区景点实用英语》、高职高专《大学英语》等12部专业教材，主持省旅游局和省教育厅课题2项,主持、参与院级课题3项。已发表《中国审美情趣与旅游》、《旅游英语专业人才培养模式和课程结构的理论与实践研究》等论文20余篇。多次担任各项英语比赛的策划与评委，被浙江省旅游局聘任为出国领队资格考评员，并邀为省内多家知名旅行社和饭店进行专业英语培训。\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<span class=\"STYLE38\"></span>\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span class=\"STYLE47\">余益辉</span>\r\n			</td>\r\n			<td>\r\n				<span class=\"STYLE52\">讲师</span>\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				<img src=\"http://www.hunche0577.com/shiziduiwu/worker02.jpg\" width=\"200\" height=\"135\" />\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				男，（1965――），讲师，中级导游。本科学历。1984年-1988年就读于北京外国语学院英语系，获文学士学位。1988年-2003年在浙江省中国国际旅行社英语中心从事涉外旅游接待与销售工作，多次受到领导、同事和英美旅游者的好评，为浙江省知名英语导游。2003年7月调入浙江旅游职业学院外语系任教。主要从事旅游英语，出境领队英语教学，擅长导游实践教学。 著有论文《浙江省佛教文化旅游市场研究》等数篇，参编教材2本。\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n				&nbsp;\r\n			</td>\r\n			<td class=\"STYLE49\">\r\n				&nbsp;\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2019-03-13 07:46:56');
INSERT INTO `essinfo` VALUES ('5', '联系我们', '&nbsp; &nbsp;欢迎来到xxxxx有限公司<br />\r\n<br />\r\n在您对于我们公司产品购买过程中有任何问题可以通过如下方式和我们进行沟通协商：<br />\r\n<br />\r\n1. 电子邮箱： xxxxx@gmail.com<br />\r\n<br />\r\n2. QQ号码： &nbsp;xxxxxx<br />\r\n<br />\r\n3. 电 &nbsp; &nbsp; 话： &nbsp;020-xxxxx （产品售前咨询、报价）<br />\r\n<br />\r\n020-xxxxxxxxx-815<br />\r\n<br />\r\n4. 传 &nbsp; &nbsp; &nbsp;真： 020-xxxxxx-805<br />\r\n<div>\r\n	<br />\r\n</div>', '2019-03-13 07:46:56');
INSERT INTO `essinfo` VALUES ('6', '关于我们', '关于我们', '2019-03-13 07:46:56');

-- ----------------------------
-- Table structure for `gouwuche`
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ershouwupinbianhao` varchar(50) DEFAULT NULL,
  `ershouwupinmingcheng` varchar(50) DEFAULT NULL,
  `ershouwupinfenlei` varchar(50) DEFAULT NULL,
  `xiaoshoujiage` varchar(50) DEFAULT NULL,
  `ershouwupinshuliang` varchar(50) DEFAULT NULL,
  `goumaishuliang` varchar(50) DEFAULT NULL,
  `goumairen` varchar(50) DEFAULT NULL,
  `zongjine` varchar(50) DEFAULT NULL,
  `beizhu` varchar(500) DEFAULT NULL,
  `issh` varchar(10) DEFAULT '否',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of gouwuche
-- ----------------------------
INSERT INTO `gouwuche` VALUES ('7', '003', '自行车', '二手交通工具', '300', '2', '1', '003', '300', '123', '是', '2019-04-18 22:24:49');
INSERT INTO `gouwuche` VALUES ('8', '002', '乌合之众', '二手书籍', '50', '9', '1', '003', '50', '', '是', '2019-04-18 22:25:04');

-- ----------------------------
-- Table structure for `liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) DEFAULT NULL,
  `zhaopian` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `liuyan` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `huifu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------

-- ----------------------------
-- Table structure for `newsproclaim`
-- ----------------------------
DROP TABLE IF EXISTS `newsproclaim`;
CREATE TABLE `newsproclaim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(500) CHARACTER SET gb2312 DEFAULT NULL,
  `leibie` varchar(50) CHARACTER SET gb2312 DEFAULT NULL,
  `neirong` text CHARACTER SET gb2312,
  `tianjiaren` varchar(50) CHARACTER SET gb2312 DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `shouyetupian` varchar(50) DEFAULT NULL,
  `dianjilv` int(11) DEFAULT '1',
  `zhaiyao` varchar(800) CHARACTER SET gb2312 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of newsproclaim
-- ----------------------------
INSERT INTO `newsproclaim` VALUES ('304', '钱库派出所20名警力进校园 全天候值勤保安全', '校园新闻', '<P>    9月1日，钱库派出所组织20名警力分批开始进驻辖区内的中小学校和幼儿园，以确保学生及幼儿安全。</P>\r\n\r\n<P>    针对今年个别省市发生的杀害学生及幼儿案件，钱库派出所根据市局“五个一律”精神，在辖区内及时采取有力措施，加强校园安保，切实为学生和幼儿创造安全的生活、学习环境。</P><!--advertisement code begin--><!--advertisement code end-->\r\n\r\n<P>    暑假期间，钱库派出所专门组织20多名警力进行了一个多月的校园安保工作培训和体能训练。9月1日，学校开学，该所立即组织20名警力开始分批进驻辖区内的中小学校和幼儿园，每所学校都配备了1?2名警员，全天侯进行值勤。</P>\r\n\r\n<P>    这些警员除了在学生和幼儿上学、放学时进行站岗执勤外，还配合学校进行校园及周边治安环境治理，严禁闲散人员进入校园，并随时处置突发事件。（通讯员 罗宏雷）</P>', 'admin', '2019-04-18 20:16:12', 'uploadfile/1340069838pb96.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('305', '校园安全防范新举措 我县首个驻校警务室成立', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;日前，我县首个驻校警务室在龙港三中挂牌成立，这是龙港警方推进校园安保工作，加强学校安全防范的又一新举措，得到了学校师生和家长们的一致好评。</span> \r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; 为维护辖区校园正常秩序，严防发生校园安全事件，龙港警方采取了一系列校园安全防范工作措施，积极搭建警方与学校共建“平安校园”工作平台，选定龙港三中作为首个驻校警务室共建单位，并逐步予以推广。<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;驻校警务室的主要职责包括：指导和督促学校落实安全制度，建立完善门卫、值班、巡查和监控系统等管理制度；指导、组织学校开展安全日巡查，及时发现和消除安全隐患；指导和协助学校做好对与社会人员交往密切、不服校园管理、有劣迹表现的在校学生的教育感化工作；定期不定期举办法制和安全讲座；依法查处涉校涉生案件，坚决维护师生权益等。（通讯员 薛建贺 郑国震）\r\n</p>', 'admin', '2019-04-18 20:16:12', 'uploadfile/13400699440gw0.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('306', '醒目“考研包过”广告充斥武汉高校校园(图)', '校园新闻', '&nbsp; &nbsp; &nbsp; 2011年研究生(论坛) 考试即将举行，在考生紧张复习的校园内，“考研(论坛) 包过”的小广告也充斥校园，公告栏里、电线杆上甚至垃圾箱上贴的都是。昨日，记者在武汉一些高校内，看到如此“壮观”情景。<br />\r\n记者在武汉大学校园内看到，墙上用红纸黑字写着的“考研包过”广告格外醒目，还特意标明考中（带试卷）保通过。随后，记者以备考学生身份，与对方取得了联系。<br />\r\n一名男子称，他们的操作流程很简单，每一科考试开始后，有人将试卷通过投影传送到考场外。这时，高水平的“枪手”会迅速答题，然后通过防干扰的信号，将答案传送到考生的隐形耳机中。“安全方面绝对放心，我们已经操作过不少了。每门2000元钱，保证通过。”该男子说。<br />\r\n除了武汉大学，在华中科技大学(微博)、湖北大学等高校，记者看到了类似的小广告。对于醒目的“考研包过”小广告，即将参加考试的学生态度如何呢？记者随机采访了武汉高校内的备考大学生，考生均表示不可相信。“我早就在网上知道考研包过的信息了，但从来没有动过这个念头。”武大的刘同学说。湖北大学的张同学则表示，考试要靠平时的积累和学习，考研包过那是自欺欺人。“每年考研前，学校里就会冒出这些扰人的广告。”武大的一名老师告诉记者，过去曾有学生因轻信广告而上当，不仅浪费了金钱，也耽误了学业。考研靠的是平时的努力，以正常的心态迎接考试才是正确的。<br />', 'admin', '2019-04-18 20:16:12', 'uploadfile/155559091862zc.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('307', '钱库小学校园', '校园新闻', '<p>\r\n	苍南县钱库镇第一辅导中心小学，创办于1909年，至今已历97载春秋。她十度变迁，沧海桑田。\r\n</p>\r\n<p>\r\n	现校园占地面积16800m2，建筑面积8504m2，绿化面积1800 m2。有六幢楼：振南楼、求是楼、求知楼、玉成楼、求真楼、教师办公楼。阶梯教室、少先队活动室、图书室、阅览室、教工活动室、档案室、电脑室、仪器室、实验室、体育器材室、医务室、传达室、教研室、发电房等一应俱全。现拥有南北两个操场。体育器材、音乐器材、图书仪器实现省定Ⅰ类标准配备。现有多媒体教室43个、电脑103台，校园网等信息化建设正在进行中。\r\n</p>\r\n<p>\r\n	学校辖六个村，学校现有教学班50个，在校学生2802人。公办教师103人，有本科学历18人，有专科毕业69人，中学高级教师1人，小学高级教师51人，市级教坛新秀3人，市教坛宿将1人，县级教坛新秀10人，县教坛宿将3人。\r\n</p>\r\n<p>\r\n	学校坚持社会主义办学方向，认真贯彻执行党和国家的教育方针，高举素质教育和教育现代化的两面旗帜，实施“科研兴校”，在课题研究方面取得了较大的成绩，曾获苍南县“大读写”先进单位和教育科研先进集体，浙江省“科研兴校”二百强学校等荣誉称号。《小学语文“大量读写，双轨运行”成果推广实验研究》和《小学语文“快速读写”研究》，分别荣获苍南县首届教科研精品课题成果一等奖和三等奖。其中“双轨”教学还荣获温州市基础教育教学成果二等奖和省基础教育教科研优秀成果三等奖。我校的其他课题如《加强小学生口语交际能力培养的实验研究》、《小学数学开放性教学研究》、《小学数学“小组合作学习”教学模式研究》均在市县级评比中获奖。\r\n</p>\r\n<p>\r\n	近几年来学校曾获县文明卫生单位、县行规达优秀学校、县绿色学校、县文明学校、市文明学校等荣誉称号，是“温州市数学家摇篮工程活动基地”。相信21世纪，这所百年老校将会更加灿烂辉煌。\r\n</p>', 'admin', '2019-04-18 20:16:12', 'uploadfile/1555590938k3q6.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('308', '苍南英才职业高中举办首届校园读书节', '校园新闻', '<div>\r\n</div>\r\n<div>\r\n	随着“人之初，性本善。性相近，习相远……” “弟子规，圣人训，首孝悌，次谨信……”的琅琅的诵读声响起，这是近日由苍南英才职业高中举办的首届校园“读书节”。\r\n</div>\r\n<div>\r\n	当天下午，全校300多名师生集中操场，举行了读书节启动仪式。该校校长在会上勉励全校学生养成“爱读书、会读书、读好书”的良好习惯，学以致用，立志成才。并要求每位师生都要以认真的态度完成这次的读书节的活动。随后，操场上响起琅琅的诵读声。\r\n</div>\r\n<div>\r\n	本届读书节学校以国学教育为特色，不仅进一步提高了学生对读书积极性和主动性，还营造校园浓厚的读书氛围，构建有特色的书香校园文化。(张大波<span> </span>黄达发)\r\n</div>', 'admin', '2019-04-18 20:16:12', 'uploadfile/1555590957tnjz.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('309', '县教育系统深化“绿色校园”活动', '校园新闻', '<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/38/99/10389902_072446.jpg\" border=0><BR>&nbsp; \r\n<P></P><!--advertisement code begin--><!--advertisement code end-->\r\n<P></P>\r\n<P align=center><IMG src=\"http://pic2.66wz.com/0/10/38/99/10389901_800116.jpg\" border=0><BR></P>\r\n<P></P>\r\n<CENTER>摄影/王宽 章世平 黄同&nbsp;显著的单位和个人予以表彰。（通讯员 黄同拿）</CENTER></TD></TR></TBODY></TABLE>&nbsp;&nbsp;&nbsp; 3月15日消息：近日，一场以“绿色环境?绿色心灵”为主题的大型植树节护绿养绿主题活动在灵溪镇渎浦小学展开。县教育局机关干部代表、灵溪学区全体干部、县机关幼儿园教师、省市绿色学校校长，以及渎浦小学学生等200人，一起种植了“励学”树，标志着县教育系统“绿色校园”深化活动系列行动拉开帷幕。\r\n<P>&nbsp;&nbsp;&nbsp; “植树活动不应只是植树节里的活动，而应成为我们生活的一部分，成为我们的生活时尚。因此，我们倾情启动深化校园绿色行动，目的就是让我们种下希望，收获未来，把这份礼物送给永恒的春天。”县教育局局长梁峰向全县师生鼓舞道。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 渎浦小学学生代表用稚嫩的声音，向同学发出倡议，让“绿在身边，花在眼前”，开展“我和小树交朋友”，用实际行动做绿色的小天使。把颗颗爱心化作浓浓的绿色，为学校增添靓丽的色彩。</P>\r\n<P>&nbsp;&nbsp;&nbsp; “让绿意舞动起来”签名仪式上，参加植树的师生在树叶上签上自己的姓名，签下早春的承诺，签下盛夏的成长，签下深秋的收获，签下寒冬的呵护，签下绿色环境，绿色心灵，签下了对下一代满腔的爱。签好后在植绿护绿志愿者的引导下贴在一棵棵爱心树上。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 一到植树现场，师生们就拿起植树工具投入到紧张的植树活动中。或挖坑、或扶苗、或培土、或浇水，互帮互助，配合默契，干得十分起劲。每一道工序大家都做得一丝不苟，师生一起忙得不亦乐乎。在大家的齐心协力下，一排排丹桂树就错落有致地落户在渎浦小学校园旁，形成了一道亮丽的风景线。看着一棵棵自己亲手种下的小树就要在校园扎根，师生们脸上露出了开心的笑容。他们希望这些小树快点长大，为家园再添一片绿色，让校园更美更靓。植树者们掏出笔在“励学树、爱心树、成长树、弘毅树、拓新树、诚朴树、敦行树、博学树、笃志树”等树牌上，纷纷写下了自己的名字。看着这劳动成果，植树者们纷纷掏出相机，和亲手栽植的树苗合影留念。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 据悉，县教育系统此次“绿色校园”深化活动形式丰富多彩，既有创意性地发动教师、家长和学生积极地进行“诗意认养”、“宣教活动”、“护绿活动”工作，又有内涵丰富，情趣盎然的“绿色人生，绿色创优”活动。如师生家长为树木编故事、编童谣、写名片等“一棵树，一个故事”活动。县教育局还将进行美丽校园、温馨教室和靓丽办公室评选。对“绿色校园”深化活动中表现突出，成绩显著的单位和个人予以表彰。（通讯员 黄同拿）</P>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('310', '全县首家学校校园电视台在钱库高级中学诞生', '校园新闻', '&nbsp;&nbsp;&nbsp; 嗨，大家好！欢迎乘坐新闻大巴士......”本周六上午。来自该校三位小主持人分别通过配音、串词和打手语等方式，向观众传递最新的校园新闻。霎那间，学校变成了欢乐的海洋，笑声、掌声、喝彩声荡漾在学校的上空，经久不息，全校师生欢聚在见证学校电视台成立并成功首播。据悉，这是全县首家学校校园电视台。 \r\n<DIV><BR>&nbsp;&nbsp;&nbsp; “钱库高级中学电视台的开播将成为引领校园文化、倡导校园文化建设的前沿阵地。让同学们跟着心灵的步伐走入我们的校园之声，享受校园生活每一天！成为校园生活中不可或却的精神食粮，为我们的校园生活增添无穷魅力！”<BR>&nbsp;</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 据钱库高级中学学校负责指导老师高义老师介绍说，这次学校电视台成立为同学们及时介绍最新的校园动态和展现多彩多姿的校园生活，提供广博的知识和丰富的娱乐节目，力争让校园电视台成为我校一道靓丽的风景线，为全校师生带来精彩的文化盛宴。现校园电视台多个岗位亟需具有相关素质、技能，更自愿为大家服务的同学加盟！他还让孩子们了解校内外的各种信息，让参与的学生在活动中得到锻炼；另一方面，观看新闻，也可提高学生们的识字量。（王晟）<BR></DIV>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('311', '校园里忙“春耕”（图）', '校园新闻', '<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/40/69/10406958_357877.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/40/69/10406956_998002.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/40/69/10406957_592377.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<P>&nbsp;&nbsp;&nbsp; 5月5日消息：连日来，马站小学的劳动基地热闹非凡。该校的孩子们挥动小锄头，纷纷在自己班级的小菜园里种下菜苗。他们一边浇水，一边哼着“劳动最光荣”的歌曲。这样的活动，既能培养孩子们的劳动能力，又能让孩子们体验“春耕”带来的乐趣。（林新利/摄）</P>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('312', '校园团购热催生\"帮订族\" 团购网商看好大学生市场', '校园新闻', '&nbsp;<!--mark (  diantou ) parse begin--><B>&nbsp;&nbsp; </B>网购、团购这些既省钱又流行好玩的购物方式备受年轻人喜欢，他们很乐意当团购族、囤囤族。\r\n<P>　　而大学生是其中一个不可忽视的群体，大学生团购也逐渐风靡校园，在校园内应运而生出一群“帮订族”。有业内人士表示，目前团购网的消费群体中大学生占据了不小比例，在条件成熟的情况下，大学生市场将成为团购网商瓜分的下一片阵地。<BR><STRONG><BR>团购逐渐风靡校园</STRONG></P>\r\n<P>　　一边刷牙，一边目不转睛地盯着电脑屏幕，余妍即使在马上要去上早自习的紧张时刻，也不忘争分夺秒看“今日团购”。</P>\r\n<P>　　余妍是浙江传媒学院大二学生，她的电脑里有一个名为“团购”的收藏夹，每天余妍都一遍又一遍不厌其烦地看团购网站，甚至因此耽误了吃饭和睡觉的时间。</P>\r\n<P>　　“宁可少睡一小时，也不错过团购！”余妍大笑着喊出她的团购宣言，继而转身又埋头于浏览各团购网站。</P>\r\n<P>　　“虽然名为‘团购’，其实对我来说还是我一个人买，但是真的便宜超多哦！”余妍指着电脑屏幕，兴奋地跟记者介绍。网络团购其实跟淘宝没什么两样，同样的下单和服务过程，但是“折扣不是一般的大”。</P>\r\n<P>　　和余研一样有着“团购情结”的学生不在少数，浙江传媒学院新闻记者协会民调小组进行了一番调查，“下沙高教区发了100份问卷，从问卷回收的情况看，经常团购的大学生占了57份，知道并偶尔参与的有82份”，协会负责人都力维说。</P>\r\n<P>　　而余研表示，无论是本校的还是外校的同学，都极度热衷于团购，“可以说是团购风靡校园了。”</P>\r\n<P>　<STRONG>　催生校园“帮订族”</STRONG></P>\r\n<P>　　中国计量学院大三女生刘柳从“团购”呱呱坠地之时起，就一直关注，现在已经成为了“帮订族”成员。</P>\r\n<P>　　“团购主要还是优惠不少，比如在糯米网的团购商品中，两岸咖啡原本156元的套餐只要花34元。”刘柳表示，喜欢团购的大学生人数不低于大学“淘宝客”的数量。</P>\r\n<P>　　“但是很多人没有太多时间关注团购网，我就帮他们留意。”刘柳介绍，她每天帮助同学留意一些力度较大的优惠活动，再通知他们，“如果他们需要，我先帮他们订，他们支付我1-3元不等的手续费。”</P>\r\n<P>　　“据我所知，几乎每个学校都有类似的同学，如果每天收到10元手续费，一个月就有300元。”</P>\r\n<P>　　这样的团体很快被学生所认同，并称他们为“帮订族”，浙江财经学院教师李芸芸表示，“帮订族”的出现是受市场发展所趋，“现在，团购在学生的生活中已经占据了不可替代的位置。”</P>\r\n<P>　　而据《2010年中国网络团购调查报告》显示，目前国内团购网站数量高达1215家，已经从“百团大战”升级到“千团大战”。杭州本地一家团购网的工作人员表示，有不少团购网站早已看中学生市场。</P>\r\n<P>　　<STRONG>均看好大学生市场</STRONG></P>\r\n<P>　　事实上，在采访过程中，记者了解到，多数团购大学生以女生为主，“美食和美发商品是最受欢迎的。”浙江传媒学院学生马毓表示，而对于团购网站偶尔推出的瑜伽优惠，也不乏大学生的参与。</P>\r\n<P>　　“男生对于这些都没有太大的兴趣，但是我想如果团购网站更注重大学生市场，应该推出男生关注的一些产品。”浙江财经学院市场营销专业毕业生李威向记者说到自己的观点。</P>\r\n<P>　　针对于李威的想法，一名长期在某团购网站工作的张先生给予认可，“从我了解的情况来看，大学生参与团购的人数比例已经占了团购这个群体总人数的20%-30%。”</P>\r\n<P>　　张先生表示，大学生市场早已被团购网商盯牢，“不出意外，很快大家都会来瓜分这个市场，而且还会出现不少专门为大学生服务的团购网。”（刘子瑜 吴轶颖 南希 范彬 林青帆）</P><!--function: content() parse end  0ms cost! --><!--advertisement code begin-->\r\n<SCRIPT language=javascript src=\"/js/advertise_in_news/adv_3000000.js\" type=text/javascript></SCRIPT>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('313', '守望绿意 低碳生活??钱库学区“绿色校园”启动仪式暨钱库二中植树节活动', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;春回大地，又是一年芳草绿。</span><span style=\"line-height:1.5;\">3</span><span style=\"line-height:1.5;\">月</span><span style=\"line-height:1.5;\">11</span><span style=\"line-height:1.5;\">日下午</span><span style=\"line-height:1.5;\">3</span><span style=\"line-height:1.5;\">点，钱库二中在孔子广场举行钱库学区“绿色校园”深化活动启动仪式。钱库镇徐镇长、钱库学区周主任和李主任出席此次活动。会上，徐镇长向全体师生提出深入开展“绿色苍南，美丽家园”活动。周主任要求我们二中结合自己实际情况开展“绿色校园”深化活动。学生代表黄涛涛在会上宣读了“为校园增绿，给生命添彩”的倡议书，倡议二中全体同学珍爱绿色，宣传环保，倡导低碳，使天更蓝，地更绿，水更清。仪式简短而隆重。</span>\r\n</p>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp; 会后，镇领导、学区领导、钱库二中全体领导班子成员和七年级全体师生挥锹、铲土，在绿色桃李园种上梅花、桃花、李树，预示着钱库二中桃李满天下，梅花争斗艳，迎接春天，迎接钱库二中美好的未来。（文/金春英；摄/夏忠新）\r\n</div>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('314', '中墩小学积极推进书香校园建设', '校园新闻', '&nbsp;&nbsp; &nbsp;4月26日消息：阳春，面朝大海的中墩小学掀起了新一轮读书热。\r\n<P>&nbsp;&nbsp;&nbsp; 该校一是制订了“阅读之星表彰”、“读书等级考核”、“阅读成长评价”等实施细则；二是依托市级课题，“课程、课堂、课题”联动，整体推进师生阅读；三是通过名著推荐、读书会、撰写读后感等途径，引导教师“自研自习，提升素养”；四是设立班级图书角，开设“儿童悦读书社”等。（通讯员 陈顺德）</P>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('315', '马站学区举行“校园十佳歌手”大赛（图文）', '校园新闻', '<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/39/68/10396837_999977.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/39/68/10396838_534629.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/39/68/10396836_545951.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/39/68/10396839_422254.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<P>&nbsp;&nbsp;&nbsp; 3月31日消息：三月末，四月初，春风送暖入屠苏，酒醉人，歌声更似醇酒，陶醉人心。</P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>&nbsp;&nbsp;&nbsp; 近日，在马站小学的操场上，一场精彩的“音乐盛会”让在场的老师、同学以及学生家长都如沐春风。来自马站片区13所中小学的“小歌手”参加此次大赛，本次大赛的规模超过了往年。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 在两位小主持人激昂兴奋的开幕词中，在孩子们热情期待的掌声中，马站学区“校园十佳歌手”大赛正式开始了。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 伴着一段段美妙的旋律，一个个小选手们穿着各式靓丽的独具特色的服饰登上了舞台。小歌手们一展歌喉，或热情奔放，或清脆动人，或低沉婉转，或高亢激昂，更有夹杂着他们的童真童趣，夹杂着他们的且歌且舞，他们竭尽所能地将自己能歌善舞的基本功，也将自己最美的一面展现在大家的面前。随着时间的推移，女生独唱、男生独唱、歌伴舞、多人合唱等演唱形式纷纷亮相，把整个大赛推向了高潮。最有福的当属坐在舞台下的孩子们，在一曲又一曲美妙的音乐声中，得到了视觉和听觉上的双重享受，难怪掌声是如此的热烈。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 下午3时许，本次大赛落下帷幕。最终，马站小学的尤心愉、李新增、陈瑜等，以一首《童年在长大》的最高分摘得了本次大赛的桂冠，来自霞关小学的徐雅静、郭文杭，魁里小学的郭瑭瑭，岱岭初中的林少群、林秋容，马站镇中的范晓获得了本次大赛的“校园十佳歌手”称号。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 本次马站学区“校园十佳歌手”大赛，是该学区开展的艺术节系列活动之一。通过本次活动，给学生提供了一个展示才华的平台，提高了学生的艺术修养，创造了良好的校园文化氛围。（文/陈 华 图林/新利）</P>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('316', '钱库派出所入校园作法制讲座', '校园新闻', '<P>&nbsp;&nbsp;&nbsp; 为进一步提高青少年的法制意识和法制观念，增强法制教育的针对性和实效性，防止未成年人违法犯罪，钱库派出所副所长林继挺与社区民警黄进标于11月2日在钱库二中操场举行法制讲座。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 当天的讲座中林继挺副所长将药家鑫等典型真实案例与抽象的法律知识结合起来，以案说法，教育同学们要知法、懂法、守法，同时，通过案例分析，教育同学们要冷静解决突发事件，以举例的方式介绍了同学们可能遇到的几种突发状况的解决方法，同时让同学们了解了知法懂法的必要性和相关的法律知识，最后教育同学们要注意在发现违法犯罪事件时保护好自己。(黄贤恩)</P>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('317', '开展专项行动，确保校园及周边食品安全', '校园新闻', '<DIV>&nbsp;&nbsp;&nbsp; 2012年新学年开始，各校学生已返校就学，为进一步落实完善学校卫生管理制度和工作机制，切实做好学校食品卫生、饮用水卫生和传染病防控工作，保障广大师生身体健康和饮食安全，根据省市有关文件及苍南县食品安全委员会办公室文件（苍食安委办【2012】1号）精神，结合我所实际，钱库卫生监督所于2012年2月20日开始，在全镇范围内开展校园卫生安全1号行动。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 本次行动对象为辖区内的各类学校（包括托幼机构）。检查内容包括学校食堂及周边餐饮店的餐饮服务许可证、从业人员健康证持证情况、餐饮具消毒情况、原料索证验收台账建立情况、校内饮用水安全以及学生晨检等传染病防控措施。通过检查，要求各个学校要进一步重视校内卫生安全，把学生身体健康放在首位，积极落实相关卫生安全措施，在以往的基础上增设如餐饮具消毒柜、食物保存冰箱等卫生设施和专（兼）职卫生安全防保教师等。</DIV>&nbsp;&nbsp;&nbsp; 学校卫生安全是社会的敏感问题，卫生监督部门也将保障学生校内外卫生安全为己任，积极为学生打造卫生安全的学习、就餐环境，我所也将针对此次检查情况，对辖区内各学校整改落实情况进行跟踪复查。目前，此项工作正在积极深入推进中。【钱库卫生监督所】', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('318', '钱库镇禁毒社工开展禁毒宣传入校园活动', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;新学期伊始，钱库镇禁毒社工开展禁毒宣传入校园活动。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">3</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">月</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">2</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">日</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">，钱库镇禁毒社工在钱库高级中学利用班会课，向学生播放禁毒宣传教育影片。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\"> </span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">通过这次宣传活动，学生深有感触，</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">“</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">以前听说毒品的危害，但不知道究竟有多危害，观看了影片资料才知道毒品的危害程度，我们学生必须要珍爱生命，拒绝毒品，好好学习，回报社会。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">”</span>\r\n</p>', 'admin', '2019-04-18 20:16:12', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('319', '县教育系统深化“绿色校园”活动', '校园新闻', '<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/38/99/10389902_072446.jpg\" border=0><BR>&nbsp; \r\n<P></P><!--advertisement code begin--><!--advertisement code end-->\r\n<P></P>\r\n<P align=center><IMG src=\"http://pic2.66wz.com/0/10/38/99/10389901_800116.jpg\" border=0><BR></P>\r\n<P></P>\r\n<CENTER>摄影/王宽 章世平 黄同&nbsp;显著的单位和个人予以表彰。（通讯员 黄同拿）</CENTER></TD></TR></TBODY></TABLE>&nbsp;&nbsp;&nbsp; 3月15日消息：近日，一场以“绿色环境?绿色心灵”为主题的大型植树节护绿养绿主题活动在灵溪镇渎浦小学展开。县教育局机关干部代表、灵溪学区全体干部、县机关幼儿园教师、省市绿色学校校长，以及渎浦小学学生等200人，一起种植了“励学”树，标志着县教育系统“绿色校园”深化活动系列行动拉开帷幕。\r\n<P>&nbsp;&nbsp;&nbsp; “植树活动不应只是植树节里的活动，而应成为我们生活的一部分，成为我们的生活时尚。因此，我们倾情启动深化校园绿色行动，目的就是让我们种下希望，收获未来，把这份礼物送给永恒的春天。”县教育局局长梁峰向全县师生鼓舞道。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 渎浦小学学生代表用稚嫩的声音，向同学发出倡议，让“绿在身边，花在眼前”，开展“我和小树交朋友”，用实际行动做绿色的小天使。把颗颗爱心化作浓浓的绿色，为学校增添靓丽的色彩。</P>\r\n<P>&nbsp;&nbsp;&nbsp; “让绿意舞动起来”签名仪式上，参加植树的师生在树叶上签上自己的姓名，签下早春的承诺，签下盛夏的成长，签下深秋的收获，签下寒冬的呵护，签下绿色环境，绿色心灵，签下了对下一代满腔的爱。签好后在植绿护绿志愿者的引导下贴在一棵棵爱心树上。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 一到植树现场，师生们就拿起植树工具投入到紧张的植树活动中。或挖坑、或扶苗、或培土、或浇水，互帮互助，配合默契，干得十分起劲。每一道工序大家都做得一丝不苟，师生一起忙得不亦乐乎。在大家的齐心协力下，一排排丹桂树就错落有致地落户在渎浦小学校园旁，形成了一道亮丽的风景线。看着一棵棵自己亲手种下的小树就要在校园扎根，师生们脸上露出了开心的笑容。他们希望这些小树快点长大，为家园再添一片绿色，让校园更美更靓。植树者们掏出笔在“励学树、爱心树、成长树、弘毅树、拓新树、诚朴树、敦行树、博学树、笃志树”等树牌上，纷纷写下了自己的名字。看着这劳动成果，植树者们纷纷掏出相机，和亲手栽植的树苗合影留念。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 据悉，县教育系统此次“绿色校园”深化活动形式丰富多彩，既有创意性地发动教师、家长和学生积极地进行“诗意认养”、“宣教活动”、“护绿活动”工作，又有内涵丰富，情趣盎然的“绿色人生，绿色创优”活动。如师生家长为树木编故事、编童谣、写名片等“一棵树，一个故事”活动。县教育局还将进行美丽校园、温馨教室和靓丽办公室评选。对“绿色校园”深化活动中表现突出，成绩显著的单位和个人予以表彰。（通讯员 黄同拿）</P>', 'admin', '2019-04-18 20:16:18', 'uploadfile/1340069838pb96.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('320', '校园团购热催生\"帮订族\" 团购网商看好大学生市场', '校园新闻', '&nbsp;<!--mark (  diantou ) parse begin--><B>&nbsp;&nbsp; </B>网购、团购这些既省钱又流行好玩的购物方式备受年轻人喜欢，他们很乐意当团购族、囤囤族。\r\n<P>　　而大学生是其中一个不可忽视的群体，大学生团购也逐渐风靡校园，在校园内应运而生出一群“帮订族”。有业内人士表示，目前团购网的消费群体中大学生占据了不小比例，在条件成熟的情况下，大学生市场将成为团购网商瓜分的下一片阵地。<BR><STRONG><BR>团购逐渐风靡校园</STRONG></P>\r\n<P>　　一边刷牙，一边目不转睛地盯着电脑屏幕，余妍即使在马上要去上早自习的紧张时刻，也不忘争分夺秒看“今日团购”。</P>\r\n<P>　　余妍是浙江传媒学院大二学生，她的电脑里有一个名为“团购”的收藏夹，每天余妍都一遍又一遍不厌其烦地看团购网站，甚至因此耽误了吃饭和睡觉的时间。</P>\r\n<P>　　“宁可少睡一小时，也不错过团购！”余妍大笑着喊出她的团购宣言，继而转身又埋头于浏览各团购网站。</P>\r\n<P>　　“虽然名为‘团购’，其实对我来说还是我一个人买，但是真的便宜超多哦！”余妍指着电脑屏幕，兴奋地跟记者介绍。网络团购其实跟淘宝没什么两样，同样的下单和服务过程，但是“折扣不是一般的大”。</P>\r\n<P>　　和余研一样有着“团购情结”的学生不在少数，浙江传媒学院新闻记者协会民调小组进行了一番调查，“下沙高教区发了100份问卷，从问卷回收的情况看，经常团购的大学生占了57份，知道并偶尔参与的有82份”，协会负责人都力维说。</P>\r\n<P>　　而余研表示，无论是本校的还是外校的同学，都极度热衷于团购，“可以说是团购风靡校园了。”</P>\r\n<P>　<STRONG>　催生校园“帮订族”</STRONG></P>\r\n<P>　　中国计量学院大三女生刘柳从“团购”呱呱坠地之时起，就一直关注，现在已经成为了“帮订族”成员。</P>\r\n<P>　　“团购主要还是优惠不少，比如在糯米网的团购商品中，两岸咖啡原本156元的套餐只要花34元。”刘柳表示，喜欢团购的大学生人数不低于大学“淘宝客”的数量。</P>\r\n<P>　　“但是很多人没有太多时间关注团购网，我就帮他们留意。”刘柳介绍，她每天帮助同学留意一些力度较大的优惠活动，再通知他们，“如果他们需要，我先帮他们订，他们支付我1-3元不等的手续费。”</P>\r\n<P>　　“据我所知，几乎每个学校都有类似的同学，如果每天收到10元手续费，一个月就有300元。”</P>\r\n<P>　　这样的团体很快被学生所认同，并称他们为“帮订族”，浙江财经学院教师李芸芸表示，“帮订族”的出现是受市场发展所趋，“现在，团购在学生的生活中已经占据了不可替代的位置。”</P>\r\n<P>　　而据《2010年中国网络团购调查报告》显示，目前国内团购网站数量高达1215家，已经从“百团大战”升级到“千团大战”。杭州本地一家团购网的工作人员表示，有不少团购网站早已看中学生市场。</P>\r\n<P>　　<STRONG>均看好大学生市场</STRONG></P>\r\n<P>　　事实上，在采访过程中，记者了解到，多数团购大学生以女生为主，“美食和美发商品是最受欢迎的。”浙江传媒学院学生马毓表示，而对于团购网站偶尔推出的瑜伽优惠，也不乏大学生的参与。</P>\r\n<P>　　“男生对于这些都没有太大的兴趣，但是我想如果团购网站更注重大学生市场，应该推出男生关注的一些产品。”浙江财经学院市场营销专业毕业生李威向记者说到自己的观点。</P>\r\n<P>　　针对于李威的想法，一名长期在某团购网站工作的张先生给予认可，“从我了解的情况来看，大学生参与团购的人数比例已经占了团购这个群体总人数的20%-30%。”</P>\r\n<P>　　张先生表示，大学生市场早已被团购网商盯牢，“不出意外，很快大家都会来瓜分这个市场，而且还会出现不少专门为大学生服务的团购网。”（刘子瑜 吴轶颖 南希 范彬 林青帆）</P><!--function: content() parse end  0ms cost! --><!--advertisement code begin-->\r\n<SCRIPT language=javascript src=\"/js/advertise_in_news/adv_3000000.js\" type=text/javascript></SCRIPT>', 'admin', '2019-04-18 20:16:18', 'uploadfile/13400699440gw0.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('321', '醒目“考研包过”广告充斥武汉高校校园(图)', '校园新闻', '&nbsp; &nbsp; &nbsp; 2011年研究生(论坛) 考试即将举行，在考生紧张复习的校园内，“考研(论坛) 包过”的小广告也充斥校园，公告栏里、电线杆上甚至垃圾箱上贴的都是。昨日，记者在武汉一些高校内，看到如此“壮观”情景。<br />\r\n&nbsp; &nbsp; &nbsp;记者在武汉大学校园内看到，墙上用红纸黑字写着的“考研包过”广告格外醒目，还特意标明考中（带试卷）保通过。随后，记者以备考学生身份，与对方取得了联系。<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;一名男子称，他们的操作流程很简单，每一科考试开始后，有人将试卷通过投影传送到考场外。这时，高水平的“枪手”会迅速答题，然后通过防干扰的信号，将答案传送到考生的隐形耳机中。“安全方面绝对放心，我们已经操作过不少了。每门2000元钱，保证通过。”该男子说。<br />\r\n&nbsp; &nbsp; &nbsp; 除了武汉大学，在华中科技大学(微博)、湖北大学等高校，记者看到了类似的小广告。对于醒目的“考研包过”小广告，即将参加考试的学生态度如何呢？记者随机采访了武汉高校内的备考大学生，考生均表示不可相信。“我早就在网上知道考研包过的信息了，但从来没有动过这个念头。”武大的刘同学说。湖北大学的张同学则表示，考试要靠平时的积累和学习，考研包过那是自欺欺人。“每年考研前，学校里就会冒出这些扰人的广告。”武大的一名老师告诉记者，过去曾有学生因轻信广告而上当，不仅浪费了金钱，也耽误了学业。考研靠的是平时的努力，以正常的心态迎接考试才是正确的。<br />', 'admin', '2019-04-18 20:16:18', 'uploadfile/1340069970gp0a.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('322', '校园安全防范新举措 我县首个驻校警务室成立', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;日前，我县首个驻校警务室在龙港三中挂牌成立，这是龙港警方推进校园安保工作，加强学校安全防范的又一新举措，得到了学校师生和家长们的一致好评。</span> \r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; 为维护辖区校园正常秩序，严防发生校园安全事件，龙港警方采取了一系列校园安全防范工作措施，积极搭建警方与学校共建“平安校园”工作平台，选定龙港三中作为首个驻校警务室共建单位，并逐步予以推广。<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;驻校警务室的主要职责包括：指导和督促学校落实安全制度，建立完善门卫、值班、巡查和监控系统等管理制度；指导、组织学校开展安全日巡查，及时发现和消除安全隐患；指导和协助学校做好对与社会人员交往密切、不服校园管理、有劣迹表现的在校学生的教育感化工作；定期不定期举办法制和安全讲座；依法查处涉校涉生案件，坚决维护师生权益等。（通讯员 薛建贺 郑国震）\r\n</p>', 'admin', '2019-04-18 20:16:18', 'uploadfile/1340070002x47w.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('323', '钱库派出所20名警力进校园 全天候值勤保安全', '校园新闻', '<P>    9月1日，钱库派出所组织20名警力分批开始进驻辖区内的中小学校和幼儿园，以确保学生及幼儿安全。</P>\r\n\r\n<P>    针对今年个别省市发生的杀害学生及幼儿案件，钱库派出所根据市局“五个一律”精神，在辖区内及时采取有力措施，加强校园安保，切实为学生和幼儿创造安全的生活、学习环境。</P><!--advertisement code begin--><!--advertisement code end-->\r\n\r\n<P>    暑假期间，钱库派出所专门组织20多名警力进行了一个多月的校园安保工作培训和体能训练。9月1日，学校开学，该所立即组织20名警力开始分批进驻辖区内的中小学校和幼儿园，每所学校都配备了1?2名警员，全天侯进行值勤。</P>\r\n\r\n<P>    这些警员除了在学生和幼儿上学、放学时进行站岗执勤外，还配合学校进行校园及周边治安环境治理，严禁闲散人员进入校园，并随时处置突发事件。（通讯员 罗宏雷）</P>', 'admin', '2019-04-18 20:16:18', 'uploadfile/1340070029dc64.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('324', '“健心工程”在校园（图）', '校园新闻', '<P align=center><IMG src=\"http://pic2.66wz.com/0/10/35/91/10359139_436968.jpg\" border=0></P>\r\n<P></P>\r\n<P></P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>&nbsp;&nbsp;&nbsp; 1月4日消息：为总结推广学校心理健康教育同伴互助的工作经验，金乡二中于日前举行心理健康教育公开教学课活动，学校每位已取得心里健康教育上岗证的教师均上了一节面向全校师生的公开课，让心理健康教育真正走进学生心里。 （金讯/摄）</P>', 'admin', '2019-04-18 20:16:18', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('325', '钱库派出所召开校园安保座谈会', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;近期，钱库派出所积极开展“开门评警”大走访工作，全体民警深入社区、村居，走访辖区内的企事业单位、中小学校、重点单位等，全面了解辖区的情况，倾听群众的意见和建议。根据走访情况，派出所发现钱库辖区中小学校的安保工作参差不齐，形同虚设，存在很大安全隐患。为此，该所于2011年2月22日下午15时召开辖区内中小学校、幼儿园负责人参与的安保工作座谈会。</span>\r\n</p>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp; 会上，林继挺副所长通报了2010年度校园安工作取得的成效、成功做法，指出了近期校园安保工作存在的问题，要求全体参会人员高度重视，切实抓好校园安保工作。随后，参会的学校领导就校园安保工作进行了座谈，畅谈了校园的安全及当前需要公安机关帮助解决问题。\r\n</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp;&nbsp;最后，林继挺副所长就下步校园安保工作做了部署：（1）要求各单位成立校园安保工作领导小组，切实抓好安保工作的组织保障。（2）建议校完内安装监控设施，对校园内的情况进行实时录相。（3）健全各中小学校的门卫制度，配备必要的防护器材。（4）各中小学校要积极落实巡查制度，特别是有寄宿条件的学校，对学生宿舍进行全面检查，全面消防方面安全隐患 。（5）该所成立校园安保工作督查组，聘请退居二线的老同志黄吕跳负责，不定期在对学校安保工作的落实情况进行督查，发现问题及时整改。\r\n</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp; 会后，各社区民警还向各中小学校发放了“开门评警”大走访工作征求意见表30份。(钱库派出所)\r\n</div>\r\n<p align=\"center\">\r\n	<br />\r\n</p>', 'admin', '2019-04-18 20:16:18', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('326', '钱库镇组织志愿者开展“禁毒、反邪教知识进校园”宣传活动', '校园新闻', '<p>\r\n	<span style=\"line-height:1.5;\">&nbsp; &nbsp; 为增强广大青少年的法律意识，提升青少年抵制毒品、反对邪教组织的能力，构建平安和谐的校园环境，2011年10月21日上午，钱库镇综治办携手壹加壹志愿者开展了禁毒、反邪教知识宣传教育进校园活动。</span>\r\n</p>\r\n<p>\r\n	<span>&nbsp; &nbsp;&nbsp;本次宣传活动在钱库镇第一中学开展，通过悬挂横幅、设立咨询台、展示图片、散发反邪教和禁毒宣传资料等方式深刻揭示了毒品和邪教对社会的严重危害，呼吁广大学生在日常生活中要崇尚科学、弘扬正气、远离毒品、远离邪教、珍爱生命、共建和谐。在校学生纷纷踊跃的在“拒绝毒品，拒绝邪教”宣传横幅上签名承诺。<br />\r\n&nbsp; &nbsp; 此次宣传教育活动共悬挂宣传横幅4条，展出展板30块，发放宣传资料2000余份，分发小纪念品1000余份，受教育学生达1600余人，增强了广大学校师生及员工识别邪教和毒品的能力,增强了防邪和禁毒的意识，为学校教书育人创造了良好的环境，同时也扩大了反邪教和禁毒队伍的力量。（通讯员 胡兵兵)</span>\r\n</p>', 'admin', '2019-04-18 20:16:18', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('327', '苍南大队教导员走访县教育部门协商“清剿火患”战役校园宣传', '校园新闻', '<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 28pt; LINE-HEIGHT: 28pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 14pt; FONT-FAMILY: 宋体\">为不断推广“清剿火患”消防宣传工作，加强消防宣传教育的深度和广度，体现亲民消防、和谐消防。达到消防安全“深入人心”的目的。<SPAN lang=EN-US>1</SPAN>月<SPAN lang=EN-US>6</SPAN>日下午，大队教导员唐建国走访县教育局，与教育部门领导商讨和交流如何开展好学校消防安全教育作对策。<SPAN lang=EN-US><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 28pt; LINE-HEIGHT: 28pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 14pt; FONT-FAMILY: 宋体\">大队教导员一到县教育局，就与教育局副局长施成书打开话茬。唐教导员从深入开展“消防安全示范学校”创建活动、发动学生开展“查找身边的火灾隐患”活动、开展消防安全知识网络大赛、开展丰富多彩的消防主题活动、开展消防宣传阵地建设等五个方面详细介绍“清剿火患”战役宣传工作内容，其间也提出了自己的一些想法。此次全国范围内开展学校“清剿火患”宣传教育活动的目的是为了提升学校师生员工的消防安全素质，提高学校的消防安全管理水平，进一步创造良好的校园消防安全环境。其间，教导员以深入浅出的方式介绍了当前苍南县的火灾形势以及形成火灾严峻形势的客观原因和主要原因，这其中穿插提到了“弱势群体”的消防安全素质，解释了提高学校师生的消防安全意识的重要性。听完大队教导员的一番介绍，教育部门领导感同身受，表示将全力配合苍南大队开展此类影响力和教育意义并重的公益活动，并且派专人配合苍南大队开展工作。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 28pt; LINE-HEIGHT: 28pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 14pt; FONT-FAMILY: 宋体\">教育局施副局长对大队教导员的到来表示欢迎，也谈到学校消防安全教育一直以来是县教育部门常抓不懈的一项中心工作，为了做好全县校园消防安全工作，县教育部门也下了不少功夫和努力。在此次全市范围内开展消防安全进校园宣传教育活动的大好背景下，县教育部门将借此机会，在县消防大队的专业人员指导下，大力开展校园消防安全隐患排查，宣传教育等工作，彻底消除火灾隐患，营造和谐校园。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 28pt; LINE-HEIGHT: 28pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 14pt; FONT-FAMILY: 宋体\">通过此次的商讨与交流，苍南大队将以学生??家庭??社会这个传播途径全面开展学校消防安全教育工作，在家庭、社会上营造“人人参与消防、人人关心消防”的良好氛围，全力提高全社会的消防安全意识。<SPAN lang=EN-US><o:p></o:p></SPAN></SPAN></P>', 'admin', '2019-04-18 20:16:18', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('328', '钱库派出所入校园作法制讲座', '校园新闻', '<P>&nbsp;&nbsp;&nbsp; 为进一步提高青少年的法制意识和法制观念，增强法制教育的针对性和实效性，防止未成年人违法犯罪，钱库派出所副所长林继挺与社区民警黄进标于11月2日在钱库二中操场举行法制讲座。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 当天的讲座中林继挺副所长将药家鑫等典型真实案例与抽象的法律知识结合起来，以案说法，教育同学们要知法、懂法、守法，同时，通过案例分析，教育同学们要冷静解决突发事件，以举例的方式介绍了同学们可能遇到的几种突发状况的解决方法，同时让同学们了解了知法懂法的必要性和相关的法律知识，最后教育同学们要注意在发现违法犯罪事件时保护好自己。(黄贤恩)</P>', 'admin', '2019-04-18 20:16:18', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('329', '钱库镇禁毒社工开展禁毒宣传入校园活动', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;新学期伊始，钱库镇禁毒社工开展禁毒宣传入校园活动。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">3</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">月</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">2</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">日</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">，钱库镇禁毒社工在钱库高级中学利用班会课，向学生播放禁毒宣传教育影片。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\"> </span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">通过这次宣传活动，学生深有感触，</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">“</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">以前听说毒品的危害，但不知道究竟有多危害，观看了影片资料才知道毒品的危害程度，我们学生必须要珍爱生命，拒绝毒品，好好学习，回报社会。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">”</span>\r\n</p>', 'admin', '2019-04-18 20:16:18', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('330', '图书进校园（图）', '校园新闻', '<P align=center><IMG src=\"http://pic2.66wz.com/0/10/40/35/10403544_957211.jpg\" border=0> </P>\r\n<P></P><!--advertisement code begin--><!--advertisement code end-->\r\n<P></P>\r\n<P>&nbsp;&nbsp;&nbsp; 4月24日消息：近年来，县新华书店扎实开展“图书进校园”活动，鼓励青少年多读书、读好书，丰富了学生们的课余生活。 图为日前县新华书店在苍南县第一实验小学举办“图书进校园”大型淘书乐活动。（李士明/摄）</P>', 'admin', '2019-04-18 20:16:18', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('331', '守望绿意 低碳生活??钱库学区“绿色校园”启动仪式暨钱库二中植树节活动', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;春回大地，又是一年芳草绿。</span><span style=\"line-height:1.5;\">3</span><span style=\"line-height:1.5;\">月</span><span style=\"line-height:1.5;\">11</span><span style=\"line-height:1.5;\">日下午</span><span style=\"line-height:1.5;\">3</span><span style=\"line-height:1.5;\">点，钱库二中在孔子广场举行钱库学区“绿色校园”深化活动启动仪式。钱库镇徐镇长、钱库学区周主任和李主任出席此次活动。会上，徐镇长向全体师生提出深入开展“绿色苍南，美丽家园”活动。周主任要求我们二中结合自己实际情况开展“绿色校园”深化活动。学生代表黄涛涛在会上宣读了“为校园增绿，给生命添彩”的倡议书，倡议二中全体同学珍爱绿色，宣传环保，倡导低碳，使天更蓝，地更绿，水更清。仪式简短而隆重。</span>\r\n</p>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp; 会后，镇领导、学区领导、钱库二中全体领导班子成员和七年级全体师生挥锹、铲土，在绿色桃李园种上梅花、桃花、李树，预示着钱库二中桃李满天下，梅花争斗艳，迎接春天，迎接钱库二中美好的未来。（文/金春英；摄/夏忠新）\r\n</div>', 'admin', '2019-04-18 20:16:19', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('332', '苍南英才职业高中举办首届校园读书节', '校园新闻', '<DIV>&nbsp;</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 随着“人之初，性本善。性相近，习相远……” “弟子规，圣人训，首孝悌，次谨信……”的琅琅的诵读声响起，这是近日由苍南英才职业高中举办的首届校园“读书节”。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 当天下午，全校300多名师生集中操场，举行了读书节启动仪式。该校校长在会上勉励全校学生养成“爱读书、会读书、读好书”的良好习惯，学以致用，立志成才。并要求每位师生都要以认真的态度完成这次的读书节的活动。随后，操场上响起琅琅的诵读声。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 本届读书节学校以国学教育为特色，不仅进一步提高了学生对读书积极性和主动性，还营造校园浓厚的读书氛围，构建有特色的书香校园文化。(张大波<FONT face=\"Times New Roman\"> </FONT>黄达发)</DIV>', 'admin', '2019-04-18 20:16:28', 'uploadfile/13400699440gw0.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('333', '钱库壹加壹走进校园宣传公益理念', '校园新闻', '<FONT face=\"Times New Roman\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10月10日，钱库壹加壹义工分会志愿者走进钱库一中，通过宣传公益理念，让更多的青少年学生了解该分会的发展情况。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当天上午，志愿者们来到学生中间通过交谈的形式，深入了解学生的学习和生活状况，并详细介绍了钱库义工分会的发展情况，得到了全体师生的赞许。据了解，钱库壹加壹义工分会自成立以来，一直本着“我参与、我奉献、我快乐”的口号，继承“奉献爱心、服务社会、帮助他人、完善自我”的光荣传统，发扬“奉献、友爱、互助、进步”的志愿者精神。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随后，志愿者们又将苍南县新梁印业公司赞助的爱心款以勤学金的形式发放给了28名成绩优异的学生手里，鼓励学生不断突破自我、完善自我，成为一个对社会有用的有为青年。(缪克梯)</FONT>', 'admin', '2019-04-18 20:16:28', 'uploadfile/1340069970gp0a.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('334', '钱库小学校园', '校园新闻', '<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;苍南县钱库镇第一辅导中心小学，创办于1909年，至今已历97载春秋。她十度变迁，沧海桑田。&nbsp;</P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 现校园占地面积16800m2，建筑面积8504m2，绿化面积1800 m2。有六幢楼：振南楼、求是楼、求知楼、玉成楼、求真楼、教师办公楼。阶梯教室、少先队活动室、图书室、阅览室、教工活动室、档案室、电脑室、仪器室、实验室、体育器材室、医务室、传达室、教研室、发电房等一应俱全。现拥有南北两个操场。体育器材、音乐器材、图书仪器实现省定Ⅰ类标准配备。现有多媒体教室43个、电脑103台，校园网等信息化建设正在进行中。</P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学校辖六个村，学校现有教学班50个，在校学生2802人。公办教师103人，有本科学历18人，有专科毕业69人，中学高级教师1人，小学高级教师51人，市级教坛新秀3人，市教坛宿将1人，县级教坛新秀10人，县教坛宿将3人。</P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学校坚持社会主义办学方向，认真贯彻执行党和国家的教育方针，高举素质教育和教育现代化的两面旗帜，实施“科研兴校”，在课题研究方面取得了较大的成绩，曾获苍南县“大读写”先进单位和教育科研先进集体，浙江省“科研兴校”二百强学校等荣誉称号。《小学语文“大量读写，双轨运行”成果推广实验研究》和《小学语文“快速读写”研究》，分别荣获苍南县首届教科研精品课题成果一等奖和三等奖。其中“双轨”教学还荣获温州市基础教育教学成果二等奖和省基础教育教科研优秀成果三等奖。我校的其他课题如《加强小学生口语交际能力培养的实验研究》、《小学数学开放性教学研究》、《小学数学“小组合作学习”教学模式研究》均在市县级评比中获奖。</P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 近几年来学校曾获县文明卫生单位、县行规达优秀学校、县绿色学校、县文明学校、市文明学校等荣誉称号，是“温州市数学家摇篮工程活动基地”。相信21世纪，这所百年老校将会更加灿烂辉煌。<BR></P>', 'admin', '2019-04-18 20:16:28', 'uploadfile/1340070002x47w.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('335', '钱库派出所入校园作法制讲座', '校园新闻', '<P>&nbsp;&nbsp;&nbsp; 为进一步提高青少年的法制意识和法制观念，增强法制教育的针对性和实效性，防止未成年人违法犯罪，钱库派出所副所长林继挺与社区民警黄进标于11月2日在钱库二中操场举行法制讲座。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 当天的讲座中林继挺副所长将药家鑫等典型真实案例与抽象的法律知识结合起来，以案说法，教育同学们要知法、懂法、守法，同时，通过案例分析，教育同学们要冷静解决突发事件，以举例的方式介绍了同学们可能遇到的几种突发状况的解决方法，同时让同学们了解了知法懂法的必要性和相关的法律知识，最后教育同学们要注意在发现违法犯罪事件时保护好自己。(黄贤恩)</P>', 'admin', '2019-04-18 20:16:28', 'uploadfile/1340070029dc64.jpg', '1', null);
INSERT INTO `newsproclaim` VALUES ('336', '马站学区举行“校园十佳歌手”大赛（图文）', '校园新闻', '<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/39/68/10396837_999977.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/39/68/10396838_534629.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/39/68/10396836_545951.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/39/68/10396839_422254.jpg\" border=0></TD></TR></TBODY></TABLE>\r\n<P>&nbsp;&nbsp;&nbsp; 3月31日消息：三月末，四月初，春风送暖入屠苏，酒醉人，歌声更似醇酒，陶醉人心。</P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>&nbsp;&nbsp;&nbsp; 近日，在马站小学的操场上，一场精彩的“音乐盛会”让在场的老师、同学以及学生家长都如沐春风。来自马站片区13所中小学的“小歌手”参加此次大赛，本次大赛的规模超过了往年。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 在两位小主持人激昂兴奋的开幕词中，在孩子们热情期待的掌声中，马站学区“校园十佳歌手”大赛正式开始了。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 伴着一段段美妙的旋律，一个个小选手们穿着各式靓丽的独具特色的服饰登上了舞台。小歌手们一展歌喉，或热情奔放，或清脆动人，或低沉婉转，或高亢激昂，更有夹杂着他们的童真童趣，夹杂着他们的且歌且舞，他们竭尽所能地将自己能歌善舞的基本功，也将自己最美的一面展现在大家的面前。随着时间的推移，女生独唱、男生独唱、歌伴舞、多人合唱等演唱形式纷纷亮相，把整个大赛推向了高潮。最有福的当属坐在舞台下的孩子们，在一曲又一曲美妙的音乐声中，得到了视觉和听觉上的双重享受，难怪掌声是如此的热烈。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 下午3时许，本次大赛落下帷幕。最终，马站小学的尤心愉、李新增、陈瑜等，以一首《童年在长大》的最高分摘得了本次大赛的桂冠，来自霞关小学的徐雅静、郭文杭，魁里小学的郭瑭瑭，岱岭初中的林少群、林秋容，马站镇中的范晓获得了本次大赛的“校园十佳歌手”称号。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 本次马站学区“校园十佳歌手”大赛，是该学区开展的艺术节系列活动之一。通过本次活动，给学生提供了一个展示才华的平台，提高了学生的艺术修养，创造了良好的校园文化氛围。（文/陈 华 图林/新利）</P>', 'admin', '2019-04-18 20:16:28', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('337', '金乡二中举办校园科技节', '校园新闻', '&nbsp;&nbsp;&nbsp; 1月4日消息：金乡二中日前举办为期一个月的科技节。本届校园科技节活动项目众多，有橡筋动力模型飞机比赛、电脑“手抄报”制作比赛、低碳生活和科技创新为主题的演讲比赛、鸡蛋撞地球比赛、现场知识抢答赛活动。学生们根据自己的喜好，兴致勃勃地参与各个不同的活动项目。（夏正华）', 'admin', '2019-04-18 20:16:28', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('338', '校园安全防范新举措 我县首个驻校警务室成立', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;日前，我县首个驻校警务室在龙港三中挂牌成立，这是龙港警方推进校园安保工作，加强学校安全防范的又一新举措，得到了学校师生和家长们的一致好评。</span> \r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; 为维护辖区校园正常秩序，严防发生校园安全事件，龙港警方采取了一系列校园安全防范工作措施，积极搭建警方与学校共建“平安校园”工作平台，选定龙港三中作为首个驻校警务室共建单位，并逐步予以推广。<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;驻校警务室的主要职责包括：指导和督促学校落实安全制度，建立完善门卫、值班、巡查和监控系统等管理制度；指导、组织学校开展安全日巡查，及时发现和消除安全隐患；指导和协助学校做好对与社会人员交往密切、不服校园管理、有劣迹表现的在校学生的教育感化工作；定期不定期举办法制和安全讲座；依法查处涉校涉生案件，坚决维护师生权益等。（通讯员 薛建贺 郑国震）\r\n</p>', 'admin', '2019-04-18 20:16:28', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('339', '开展专项行动，确保校园及周边食品安全', '校园新闻', '<DIV>&nbsp;&nbsp;&nbsp; 2012年新学年开始，各校学生已返校就学，为进一步落实完善学校卫生管理制度和工作机制，切实做好学校食品卫生、饮用水卫生和传染病防控工作，保障广大师生身体健康和饮食安全，根据省市有关文件及苍南县食品安全委员会办公室文件（苍食安委办【2012】1号）精神，结合我所实际，钱库卫生监督所于2012年2月20日开始，在全镇范围内开展校园卫生安全1号行动。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 本次行动对象为辖区内的各类学校（包括托幼机构）。检查内容包括学校食堂及周边餐饮店的餐饮服务许可证、从业人员健康证持证情况、餐饮具消毒情况、原料索证验收台账建立情况、校内饮用水安全以及学生晨检等传染病防控措施。通过检查，要求各个学校要进一步重视校内卫生安全，把学生身体健康放在首位，积极落实相关卫生安全措施，在以往的基础上增设如餐饮具消毒柜、食物保存冰箱等卫生设施和专（兼）职卫生安全防保教师等。</DIV>&nbsp;&nbsp;&nbsp; 学校卫生安全是社会的敏感问题，卫生监督部门也将保障学生校内外卫生安全为己任，积极为学生打造卫生安全的学习、就餐环境，我所也将针对此次检查情况，对辖区内各学校整改落实情况进行跟踪复查。目前，此项工作正在积极深入推进中。【钱库卫生监督所】', 'admin', '2019-04-18 20:16:28', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('340', '校园团购热催生\"帮订族\" 团购网商看好大学生市场', '校园新闻', '&nbsp;<!--mark (  diantou ) parse begin--><B>&nbsp;&nbsp; </B>网购、团购这些既省钱又流行好玩的购物方式备受年轻人喜欢，他们很乐意当团购族、囤囤族。\r\n<P>　　而大学生是其中一个不可忽视的群体，大学生团购也逐渐风靡校园，在校园内应运而生出一群“帮订族”。有业内人士表示，目前团购网的消费群体中大学生占据了不小比例，在条件成熟的情况下，大学生市场将成为团购网商瓜分的下一片阵地。<BR><STRONG><BR>团购逐渐风靡校园</STRONG></P>\r\n<P>　　一边刷牙，一边目不转睛地盯着电脑屏幕，余妍即使在马上要去上早自习的紧张时刻，也不忘争分夺秒看“今日团购”。</P>\r\n<P>　　余妍是浙江传媒学院大二学生，她的电脑里有一个名为“团购”的收藏夹，每天余妍都一遍又一遍不厌其烦地看团购网站，甚至因此耽误了吃饭和睡觉的时间。</P>\r\n<P>　　“宁可少睡一小时，也不错过团购！”余妍大笑着喊出她的团购宣言，继而转身又埋头于浏览各团购网站。</P>\r\n<P>　　“虽然名为‘团购’，其实对我来说还是我一个人买，但是真的便宜超多哦！”余妍指着电脑屏幕，兴奋地跟记者介绍。网络团购其实跟淘宝没什么两样，同样的下单和服务过程，但是“折扣不是一般的大”。</P>\r\n<P>　　和余研一样有着“团购情结”的学生不在少数，浙江传媒学院新闻记者协会民调小组进行了一番调查，“下沙高教区发了100份问卷，从问卷回收的情况看，经常团购的大学生占了57份，知道并偶尔参与的有82份”，协会负责人都力维说。</P>\r\n<P>　　而余研表示，无论是本校的还是外校的同学，都极度热衷于团购，“可以说是团购风靡校园了。”</P>\r\n<P>　<STRONG>　催生校园“帮订族”</STRONG></P>\r\n<P>　　中国计量学院大三女生刘柳从“团购”呱呱坠地之时起，就一直关注，现在已经成为了“帮订族”成员。</P>\r\n<P>　　“团购主要还是优惠不少，比如在糯米网的团购商品中，两岸咖啡原本156元的套餐只要花34元。”刘柳表示，喜欢团购的大学生人数不低于大学“淘宝客”的数量。</P>\r\n<P>　　“但是很多人没有太多时间关注团购网，我就帮他们留意。”刘柳介绍，她每天帮助同学留意一些力度较大的优惠活动，再通知他们，“如果他们需要，我先帮他们订，他们支付我1-3元不等的手续费。”</P>\r\n<P>　　“据我所知，几乎每个学校都有类似的同学，如果每天收到10元手续费，一个月就有300元。”</P>\r\n<P>　　这样的团体很快被学生所认同，并称他们为“帮订族”，浙江财经学院教师李芸芸表示，“帮订族”的出现是受市场发展所趋，“现在，团购在学生的生活中已经占据了不可替代的位置。”</P>\r\n<P>　　而据《2010年中国网络团购调查报告》显示，目前国内团购网站数量高达1215家，已经从“百团大战”升级到“千团大战”。杭州本地一家团购网的工作人员表示，有不少团购网站早已看中学生市场。</P>\r\n<P>　　<STRONG>均看好大学生市场</STRONG></P>\r\n<P>　　事实上，在采访过程中，记者了解到，多数团购大学生以女生为主，“美食和美发商品是最受欢迎的。”浙江传媒学院学生马毓表示，而对于团购网站偶尔推出的瑜伽优惠，也不乏大学生的参与。</P>\r\n<P>　　“男生对于这些都没有太大的兴趣，但是我想如果团购网站更注重大学生市场，应该推出男生关注的一些产品。”浙江财经学院市场营销专业毕业生李威向记者说到自己的观点。</P>\r\n<P>　　针对于李威的想法，一名长期在某团购网站工作的张先生给予认可，“从我了解的情况来看，大学生参与团购的人数比例已经占了团购这个群体总人数的20%-30%。”</P>\r\n<P>　　张先生表示，大学生市场早已被团购网商盯牢，“不出意外，很快大家都会来瓜分这个市场，而且还会出现不少专门为大学生服务的团购网。”（刘子瑜 吴轶颖 南希 范彬 林青帆）</P><!--function: content() parse end  0ms cost! --><!--advertisement code begin-->\r\n<SCRIPT language=javascript src=\"/js/advertise_in_news/adv_3000000.js\" type=text/javascript></SCRIPT>', 'admin', '2019-04-18 20:16:28', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('341', '钱库派出所20名警力进校园 全天候值勤保安全', '校园新闻', '<P>    9月1日，钱库派出所组织20名警力分批开始进驻辖区内的中小学校和幼儿园，以确保学生及幼儿安全。</P>\r\n\r\n<P>    针对今年个别省市发生的杀害学生及幼儿案件，钱库派出所根据市局“五个一律”精神，在辖区内及时采取有力措施，加强校园安保，切实为学生和幼儿创造安全的生活、学习环境。</P><!--advertisement code begin--><!--advertisement code end-->\r\n\r\n<P>    暑假期间，钱库派出所专门组织20多名警力进行了一个多月的校园安保工作培训和体能训练。9月1日，学校开学，该所立即组织20名警力开始分批进驻辖区内的中小学校和幼儿园，每所学校都配备了1?2名警员，全天侯进行值勤。</P>\r\n\r\n<P>    这些警员除了在学生和幼儿上学、放学时进行站岗执勤外，还配合学校进行校园及周边治安环境治理，严禁闲散人员进入校园，并随时处置突发事件。（通讯员 罗宏雷）</P>', 'admin', '2019-04-18 20:16:28', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('342', '县教育系统深化“绿色校园”活动', '校园新闻', '<TABLE cellSpacing=20 cellPadding=0 align=center>\r\n<TBODY>\r\n<TR align=middle>\r\n<TD><IMG src=\"http://pic2.66wz.com/0/10/38/99/10389902_072446.jpg\" border=0><BR>&nbsp; \r\n<P></P><!--advertisement code begin--><!--advertisement code end-->\r\n<P></P>\r\n<P align=center><IMG src=\"http://pic2.66wz.com/0/10/38/99/10389901_800116.jpg\" border=0><BR></P>\r\n<P></P>\r\n<CENTER>摄影/王宽 章世平 黄同&nbsp;显著的单位和个人予以表彰。（通讯员 黄同拿）</CENTER></TD></TR></TBODY></TABLE>&nbsp;&nbsp;&nbsp; 3月15日消息：近日，一场以“绿色环境?绿色心灵”为主题的大型植树节护绿养绿主题活动在灵溪镇渎浦小学展开。县教育局机关干部代表、灵溪学区全体干部、县机关幼儿园教师、省市绿色学校校长，以及渎浦小学学生等200人，一起种植了“励学”树，标志着县教育系统“绿色校园”深化活动系列行动拉开帷幕。\r\n<P>&nbsp;&nbsp;&nbsp; “植树活动不应只是植树节里的活动，而应成为我们生活的一部分，成为我们的生活时尚。因此，我们倾情启动深化校园绿色行动，目的就是让我们种下希望，收获未来，把这份礼物送给永恒的春天。”县教育局局长梁峰向全县师生鼓舞道。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 渎浦小学学生代表用稚嫩的声音，向同学发出倡议，让“绿在身边，花在眼前”，开展“我和小树交朋友”，用实际行动做绿色的小天使。把颗颗爱心化作浓浓的绿色，为学校增添靓丽的色彩。</P>\r\n<P>&nbsp;&nbsp;&nbsp; “让绿意舞动起来”签名仪式上，参加植树的师生在树叶上签上自己的姓名，签下早春的承诺，签下盛夏的成长，签下深秋的收获，签下寒冬的呵护，签下绿色环境，绿色心灵，签下了对下一代满腔的爱。签好后在植绿护绿志愿者的引导下贴在一棵棵爱心树上。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 一到植树现场，师生们就拿起植树工具投入到紧张的植树活动中。或挖坑、或扶苗、或培土、或浇水，互帮互助，配合默契，干得十分起劲。每一道工序大家都做得一丝不苟，师生一起忙得不亦乐乎。在大家的齐心协力下，一排排丹桂树就错落有致地落户在渎浦小学校园旁，形成了一道亮丽的风景线。看着一棵棵自己亲手种下的小树就要在校园扎根，师生们脸上露出了开心的笑容。他们希望这些小树快点长大，为家园再添一片绿色，让校园更美更靓。植树者们掏出笔在“励学树、爱心树、成长树、弘毅树、拓新树、诚朴树、敦行树、博学树、笃志树”等树牌上，纷纷写下了自己的名字。看着这劳动成果，植树者们纷纷掏出相机，和亲手栽植的树苗合影留念。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 据悉，县教育系统此次“绿色校园”深化活动形式丰富多彩，既有创意性地发动教师、家长和学生积极地进行“诗意认养”、“宣教活动”、“护绿活动”工作，又有内涵丰富，情趣盎然的“绿色人生，绿色创优”活动。如师生家长为树木编故事、编童谣、写名片等“一棵树，一个故事”活动。县教育局还将进行美丽校园、温馨教室和靓丽办公室评选。对“绿色校园”深化活动中表现突出，成绩显著的单位和个人予以表彰。（通讯员 黄同拿）</P>', 'admin', '2019-04-18 20:16:28', '', '1', null);
INSERT INTO `newsproclaim` VALUES ('343', '钱库镇禁毒社工开展禁毒宣传入校园活动', '校园新闻', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"line-height:1.5;\"> &nbsp; &nbsp; &nbsp;新学期伊始，钱库镇禁毒社工开展禁毒宣传入校园活动。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">3</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">月</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">2</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">日</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">，钱库镇禁毒社工在钱库高级中学利用班会课，向学生播放禁毒宣传教育影片。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\"> </span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">通过这次宣传活动，学生深有感触，</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">“</span><span style=\"font-size:9pt;line-height:1.5;font-family:宋体;\">以前听说毒品的危害，但不知道究竟有多危害，观看了影片资料才知道毒品的危害程度，我们学生必须要珍爱生命，拒绝毒品，好好学习，回报社会。</span><span style=\"font-size:9pt;line-height:1.5;font-family:Calibri;\">”</span>\r\n</p>', 'admin', '2019-04-18 20:16:28', '', '1', null);

-- ----------------------------
-- Table structure for `pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `duixiangID` varchar(255) CHARACTER SET gb2312 DEFAULT NULL,
  `pinglunneirong` varchar(1000) CHARACTER SET gb2312 DEFAULT NULL,
  `pinglunren` varchar(255) CHARACTER SET gb2312 DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `biao` varchar(50) CHARACTER SET gb2312 DEFAULT NULL,
  `pingfen` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('2', '8', 'ok', '002', '2019-04-18 20:47:00', 'ershouwupinxinxi', '3');

-- ----------------------------
-- Table structure for `shoucangjilu`
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET gb2312 DEFAULT NULL,
  `duixiangid` varchar(255) CHARACTER SET gb2312 DEFAULT NULL,
  `biao` varchar(100) CHARACTER SET gb2312 DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ziduan` varchar(255) CHARACTER SET gb2312 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES ('2', '002', '8', 'ershouwupinxinxi', '2019-04-18 20:47:04', '自行车');

-- ----------------------------
-- Table structure for `sysusers`
-- ----------------------------
DROP TABLE IF EXISTS `sysusers`;
CREATE TABLE `sysusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `qx` varchar(50) DEFAULT '普通管理员',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of sysusers
-- ----------------------------
INSERT INTO `sysusers` VALUES ('2', 'admin', 'admin', '管理员', '2019-03-13 07:46:56');

-- ----------------------------
-- Table structure for `yonghuzhuce`
-- ----------------------------
DROP TABLE IF EXISTS `yonghuzhuce`;
CREATE TABLE `yonghuzhuce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `weixin` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `shenfenzheng` varchar(50) DEFAULT NULL,
  `dizhi` varchar(50) DEFAULT NULL,
  `zhaopian` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `issh` varchar(10) DEFAULT '否',
  `beizhu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of yonghuzhuce
-- ----------------------------
INSERT INTO `yonghuzhuce` VALUES ('1', '001', '001', '张广嘉', '男', '13568968958', '13568968958', 'afgfsg@qq.com', '120101198907120859', '上海', 'uploadfile/98907120859.jpg', '2019-03-13 07:46:56', '是', 'fdaf');
INSERT INTO `yonghuzhuce` VALUES ('2', '002', '002', '魏江雨', '女', '13856856856', '856868568', 'rere@sohu.com', '420102197902165428', '北京', 'uploadfile/97902165428.jpg', '2019-03-13 07:46:56', '是', 'fdaf');
INSERT INTO `yonghuzhuce` VALUES ('3', '003', '003', '施晨铭', '男', '13105685685', 'feiuwfi', 'ytuy@163.com', '370102198911159839', '杭州', 'uploadfile/98911159839.jpg', '2019-03-13 07:46:56', '是', 'fdaf');
INSERT INTO `yonghuzhuce` VALUES ('4', '004', '004', '范玟娅', '女', '13325675785', '13325675785', 'jhfjj@qq.com', '330102199508096898', '江苏', 'uploadfile/99508096898.jpg', '2019-03-13 07:46:56', '是', 'fadf');

-- ----------------------------
-- Table structure for `youqinglianjie`
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) DEFAULT NULL,
  `wangzhi` varchar(50) DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('16', '百度', 'http://www.baidu.com', '2019-03-13 07:46:56', 'uploadfile/baidu.gif');
INSERT INTO `youqinglianjie` VALUES ('17', '谷歌', 'http://www.google.cn', '2019-03-13 07:46:56', 'uploadfile/google.png');
INSERT INTO `youqinglianjie` VALUES ('18', '新浪', 'http://www.sina.com', '2019-03-13 07:46:56', 'uploadfile/sina.gif');
INSERT INTO `youqinglianjie` VALUES ('19', 'QQ', 'http://www.qq.com', '2019-03-13 07:46:56', 'uploadfile/qq.jpg');
INSERT INTO `youqinglianjie` VALUES ('20', '网易', 'http://www.163.com', '2019-03-13 07:46:56', 'uploadfile/163.png');
