/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-04-23 00:10:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `c_name` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `t_id` int(11) NOT NULL COMMENT '教师ID',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '语文', '2');
INSERT INTO `course` VALUES ('2', '数学', '1');
INSERT INTO `course` VALUES ('3', '英语', '3');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `s_id` int(11) NOT NULL COMMENT '学生ID',
  `c_id` int(11) NOT NULL COMMENT '课程ID',
  `s_score` int(3) NOT NULL COMMENT '成绩',
  PRIMARY KEY (`s_id`,`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '1', '80');
INSERT INTO `score` VALUES ('1', '2', '90');
INSERT INTO `score` VALUES ('1', '3', '99');
INSERT INTO `score` VALUES ('2', '1', '70');
INSERT INTO `score` VALUES ('2', '2', '60');
INSERT INTO `score` VALUES ('2', '3', '80');
INSERT INTO `score` VALUES ('3', '1', '80');
INSERT INTO `score` VALUES ('3', '2', '80');
INSERT INTO `score` VALUES ('3', '3', '80');
INSERT INTO `score` VALUES ('4', '1', '50');
INSERT INTO `score` VALUES ('4', '2', '30');
INSERT INTO `score` VALUES ('4', '3', '20');
INSERT INTO `score` VALUES ('5', '1', '76');
INSERT INTO `score` VALUES ('5', '2', '87');
INSERT INTO `score` VALUES ('6', '1', '31');
INSERT INTO `score` VALUES ('6', '3', '34');
INSERT INTO `score` VALUES ('7', '2', '89');
INSERT INTO `score` VALUES ('7', '3', '98');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `s_name` varchar(20) DEFAULT NULL COMMENT '学生姓名',
  `s_birth` date DEFAULT NULL COMMENT '生日',
  `s_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '赵雷', '1990-01-01', '男');
INSERT INTO `student` VALUES ('2', '钱电', '1990-12-21', '男');
INSERT INTO `student` VALUES ('3', '孙风', '1990-05-20', '男');
INSERT INTO `student` VALUES ('4', '李云', '1990-08-06', '男');
INSERT INTO `student` VALUES ('5', '周梅', '1991-12-01', '女');
INSERT INTO `student` VALUES ('6', '吴兰', '1992-03-01', '女');
INSERT INTO `student` VALUES ('7', '郑竹', '1989-07-01', '女');
INSERT INTO `student` VALUES ('8', '王菊', '1990-01-20', '女');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师ID',
  `t_name` varchar(20) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师表';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张三');
INSERT INTO `teacher` VALUES ('2', '李四');
INSERT INTO `teacher` VALUES ('3', '王五');
