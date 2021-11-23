DROP TABLE IF EXISTS `favorite`;
DROP TABLE IF EXISTS `comment`;
DROP TABLE IF EXISTS `post`;
DROP TABLE IF EXISTS `topic`;
DROP TABLE IF EXISTS `user`;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `nick_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `register_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zakia', 'n_zakia', '123456', '18255901989', 'zzqandlth@outlook.com', 'male', 'Beijing', '2021-10-06');
INSERT INTO `user` VALUES ('2', 'zakilim', 'n_zakilim', '123456', '13126926133', 'zakilim@qq.com', 'male', 'Huangshan', '2021-10-06');
INSERT INTO `user` VALUES ('3', 'HansZimmer', 'n_HansZimmer', '123456', '12345687901', 'HansZimmer@qq.com', 'male', 'American', '2021-10-06');
INSERT INTO `user` VALUES ('4', 'zhangsan', 'n_zhangsan', '123456', '12345687901', 'zhangsan@qq.com', 'male', 'China', '2021-10-06');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
CREATE TABLE `topic` (
  `topic_id` int NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(30) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '日常交流', '论坛聊天谈论区，不要灌水');
INSERT INTO `topic` VALUES ('2', '综合水区', '请先看版规，无脑水贴统一在这里（交流唠嗑，请去论坛交流区）');
INSERT INTO `topic` VALUES ('3', '精品话题', '日常交流内，好的帖子不至于埋没，在一定时间内（一个月后），会被版主移动过来里');
INSERT INTO `topic` VALUES ('4', 'BUG反馈区', '使用过程中发现的任何BUG可以在这里反馈');

-- ----------------------------
-- Table structure for post
-- ----------------------------
CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `context` text NOT NULL,
  `post_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `view_times` int NOT NULL DEFAULT 0,
  `add_to_fav_times` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`post_id`),
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE,
  FOREIGN KEY (`topic_id`) REFERENCES `topic`(`topic_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '1', '1', '[提建议/意见] 【快速上手】论坛基本功能和积分说明（修改版）', '感谢大家光临，简单写下功能指南（以后慢慢完善）\r\n\r\n方便大家快速的上手论坛\r\n\r\n\r\n首先介绍论坛的三种积分，金币，点币，宠物经验\r\n\r\n金币用于购买徽章，称号，名片装饰，宠物等等，凡是花销的统一货币\r\n\r\n点币用于统计积分，1点币=1积分\r\n\r\n宠物经验，用于宠物蛋孵化宠物，5点经验，孵化1个宠物蛋\r\n\r\n\r\n积分来源\r\n1.每天登录\r\n点币1金币1宠物经验1\r\n\r\n2.发表回复\r\n交流区回复三次，奖励5金币，每日一次，每日任务\r\n\r\n3.发表主题\r\n奖励 点币3 每日一次，每日任务\r\n\r\n4.加精华\r\n金币5 点币5 宠物经验1  每日三次\r\n\r\n5.答题\r\n回答正确，金币5  每天1次 错误不扣，每日一次\r\n\r\n6.签到\r\n前30天，每天1-5点币随机，连续30天后，每天额外5金币，1点币，1宠物经验\r\n\r\n7.摇摇乐\r\n每日1-30点币随机\r\n\r\n打赏\r\n打赏5次金币可获得5个点币，快速升级必做之一，每日任务\r\n\r\n\r\n8.额外方式\r\n求助区有求助系统，新人可以提问，老司机可以帮助新人，来获得金币\r\n可以发资源贴，但是标题党，敏感资源，有问题的资源，会被处理\r\n具有价值，意义的帖子，会被打赏，等级高，只是可以省去验证码的烦恼', '2021-10-06 00:00:00', '10', '1');
INSERT INTO `post` VALUES ('2', '1', '1', 'Topic 1的一个帖子1', '帖子内容2', '2021-10-06 00:00:00', '2', '0');
INSERT INTO `post` VALUES ('3', '4', '1', 'Topic 1的一个帖子2', '帖子内容3','2021-10-06 00:00:00', '1', '0');
INSERT INTO `post` VALUES ('4', '1', '2', 'Topic 2的一个帖子1', '帖子内容4','2021-10-06 00:00:00', '1', '0');
INSERT INTO `post` VALUES ('5', '4', '2', 'Topic 2的一个帖子2', '帖子内容5','2021-10-06 00:00:00', '1', '0');
INSERT INTO `post` VALUES ('6', '1', '3', 'Topic 3的一个帖子1', '帖子内容6','2021-10-06 00:00:00', '1', '0');
INSERT INTO `post` VALUES ('7', '4', '3', 'Topic 3的一个帖子2', '帖子内容7','2021-10-06 00:00:00', '1', '0');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `reply_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `context` text NOT NULL,
  `comment_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  FOREIGN KEY (`post_id`) REFERENCES `post`(`post_id`) ON DELETE CASCADE,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', null, '1', '1', '评论1', '2021-10-07 00:00:00');
INSERT INTO `comment` VALUES ('2', null, '1', '2', '评论2', '2021-10-07 00:00:00');
INSERT INTO `comment` VALUES ('3', '1', '1', '3', '评论1的评论', '2021-10-07 00:00:00');
INSERT INTO `comment` VALUES ('4', '2', '1', '4', '评论2的评论', '2021-10-07 00:00:00');
INSERT INTO `comment` VALUES ('5', '3', '1', '4', '评论1的评论的评论', '2021-10-07 00:00:00');
INSERT INTO `comment` VALUES ('6', null, '1', '4', '评论3', '2021-10-07 00:00:00');

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
CREATE TABLE `favorite` (
  `post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  FOREIGN KEY (`post_id`) REFERENCES `post`(`post_id`) ON DELETE SET NULL,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES ('1', '4');
INSERT INTO `favorite` VALUES ('2', '4');
INSERT INTO `favorite` VALUES ('3', '4');
INSERT INTO `favorite` VALUES ('1', '1');
INSERT INTO `favorite` VALUES ('2', '1');
