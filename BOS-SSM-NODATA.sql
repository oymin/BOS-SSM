/*
Navicat MySQL Data Transfer

Source Server         : DataSource
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : bos_data

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-10-04 21:42:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_archive
-- ----------------------------
DROP TABLE IF EXISTS `t_archive`;
CREATE TABLE `t_archive` (
  `C_ID` int(11) NOT NULL,
  `C_ARCHIVE_NAME` varchar(255) DEFAULT NULL,
  `C_ARCHIVE_NUM` varchar(255) DEFAULT NULL,
  `C_HASCHILD` int(11) DEFAULT NULL,
  `C_OPERATING_COMPANY` varchar(255) DEFAULT NULL,
  `C_OPERATING_TIME` datetime DEFAULT NULL,
  `C_OPERATOR` varchar(255) DEFAULT NULL,
  `C_REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_area
-- ----------------------------
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE `t_area` (
  `C_ID` varchar(255) NOT NULL,
  `C_CITY` varchar(255) DEFAULT NULL,
  `C_CITYCODE` varchar(255) DEFAULT NULL,
  `C_DISTRICT` varchar(255) DEFAULT NULL,
  `C_POSTCODE` varchar(255) DEFAULT NULL,
  `C_PROVINCE` varchar(255) DEFAULT NULL,
  `C_SHORTCODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_courier
-- ----------------------------
DROP TABLE IF EXISTS `t_courier`;
CREATE TABLE `t_courier` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_CHECK_PWD` varchar(255) DEFAULT NULL,
  `C_COMPANY` varchar(255) DEFAULT NULL,
  `C_COURIER_NUM` varchar(255) DEFAULT NULL,
  `C_DELTAG` char(1) DEFAULT NULL,
  `C_NAME` varchar(255) DEFAULT NULL,
  `C_PDA` varchar(255) DEFAULT NULL,
  `C_TELEPHONE` varchar(255) DEFAULT NULL,
  `C_TYPE` varchar(255) DEFAULT NULL,
  `C_VEHICLE_NUM` varchar(255) DEFAULT NULL,
  `C_VEHICLE_TYPE` varchar(255) DEFAULT NULL,
  `C_STANDARD_ID` int(11) DEFAULT NULL,
  `C_TAKETIME_ID` int(11) DEFAULT NULL,
  `C_ASSOCIATION_FIXED` int(11) DEFAULT '0' COMMENT '是否关联定区 0没有，1已关联',
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_courier_taketime
-- ----------------------------
DROP TABLE IF EXISTS `t_courier_taketime`;
CREATE TABLE `t_courier_taketime` (
  `C_COURIER_ID` int(11) NOT NULL,
  `C_TAKETIME_ID` int(11) NOT NULL,
  PRIMARY KEY (`C_TAKETIME_ID`,`C_COURIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `C_USERNAME` varchar(255) DEFAULT NULL COMMENT '用户名',
  `C_PASSWORD` varchar(255) DEFAULT NULL COMMENT '密码',
  `C_TYPE` int(11) DEFAULT NULL COMMENT '类型 设置1 绑定邮箱',
  `C_BRITHDAY` varchar(255) DEFAULT NULL COMMENT '生日',
  `C_SEX` int(255) DEFAULT NULL COMMENT '性别 1男 2女',
  `C_TELEPHONE` varchar(255) DEFAULT NULL COMMENT '手机',
  `C_COMPANY` varchar(255) DEFAULT NULL COMMENT '公司',
  `C_DEPARTMENT` varchar(255) DEFAULT NULL COMMENT '部门',
  `C_POSITION` varchar(255) DEFAULT NULL COMMENT '职位',
  `C_ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  `C_MOBILEPHONE` varchar(255) DEFAULT NULL COMMENT '座机',
  `C_EMAIL` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `C_Fixed_AREA_ID` varchar(255) DEFAULT NULL COMMENT '定区编码',
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_fixedarea_courier
-- ----------------------------
DROP TABLE IF EXISTS `t_fixedarea_courier`;
CREATE TABLE `t_fixedarea_courier` (
  `C_FIXED_AREA_ID` varchar(255) NOT NULL,
  `C_COURIER_ID` int(11) NOT NULL,
  PRIMARY KEY (`C_FIXED_AREA_ID`,`C_COURIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_fixed_area
-- ----------------------------
DROP TABLE IF EXISTS `t_fixed_area`;
CREATE TABLE `t_fixed_area` (
  `C_ID` varchar(255) NOT NULL,
  `C_COMPANY` varchar(255) DEFAULT NULL,
  `C_FIXED_AREA_LEADER` varchar(255) DEFAULT NULL,
  `C_FIXED_AREA_NAME` varchar(255) DEFAULT NULL,
  `C_OPERATING_COMPANY` varchar(255) DEFAULT NULL,
  `C_OPERATING_TIME` datetime DEFAULT NULL,
  `C_OPERATOR` varchar(255) DEFAULT NULL,
  `C_TELEPHONE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `C_ID` int(11) NOT NULL,
  `C_NAME` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `C_PAGE` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `C_PRIORITY` int(11) DEFAULT NULL COMMENT '优先级',
  `C_DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `C_PID` int(11) DEFAULT NULL COMMENT '父菜单id',
  `C_PERMS` varchar(255) DEFAULT NULL,
  `C_TYPE` int(11) DEFAULT NULL,
  `C_ICON` varchar(255) DEFAULT NULL COMMENT '图标',
  `C_ORDER_NUM` int(11) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `C_ORDER_NUM` varchar(255) DEFAULT NULL COMMENT '订单号',
  `C_TELEPHONE` varchar(255) DEFAULT NULL COMMENT '来电号码',
  `C_CUSTOMER_ID` int(11) DEFAULT NULL COMMENT '客户编号',
  `C_SEND_NAME` varchar(255) DEFAULT NULL COMMENT '寄件人姓名',
  `C_SEND_MOBILE` varchar(255) DEFAULT NULL COMMENT '寄件人电话',
  `C_SEND_COMPANY` varchar(255) DEFAULT NULL COMMENT '寄件人公司',
  `C_SEND_AREA_ID` varchar(255) DEFAULT NULL COMMENT '寄件人省市区信息',
  `C_SEND_ADDRESS` varchar(255) DEFAULT NULL COMMENT '寄件人详细地址信息',
  `C_REC_NAME` varchar(255) DEFAULT NULL COMMENT '收件人姓名',
  `C_REC_MOBILE` varchar(255) DEFAULT NULL COMMENT '收件人电话',
  `C_REC_COMPANY` varchar(255) DEFAULT NULL COMMENT '收件人公司',
  `C_REC_AREA_ID` varchar(255) DEFAULT NULL COMMENT '收件人省市区信息',
  `C_REC_ADDRESS` varchar(255) DEFAULT NULL COMMENT '收件人详细地址信息',
  `C_SEND_PRO_NUM` varchar(255) DEFAULT NULL COMMENT '快递产品类型编号：速运当日、速运次日、速运隔日',
  `C_GOODS_TYPE` varchar(255) DEFAULT NULL COMMENT '托寄物类型：文件、衣服 、食品、电子商品',
  `C_PAY_TYPE_NUM` varchar(255) DEFAULT NULL COMMENT '支付类型编号：寄付日结、寄付月结、到付',
  `C_WEIGHT` double(20,2) DEFAULT NULL COMMENT '托寄物重量',
  `C_REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `C_SEND_MOBILE_MSG` varchar(255) DEFAULT NULL COMMENT '给快递员捎话',
  `C_ORDER_TYPE` varchar(255) DEFAULT NULL COMMENT '分单类型 1 自动分单 2 人工分单',
  `C_STATUS` varchar(255) DEFAULT NULL COMMENT '订单状态 1 待取件 2 运输中 3 已签收 4 异常',
  `C_ORDER_TIME` varchar(255) DEFAULT NULL COMMENT '下单时间',
  `C_COURIER_ID` int(11) DEFAULT NULL COMMENT '快递员',
  `C_WAYBILL_ID` int(11) DEFAULT NULL COMMENT '运单',
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `C_ID` int(11) NOT NULL,
  `C_NAME` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `C_KEYWORD` varchar(255) DEFAULT NULL COMMENT '权限关键字，用于权限控制',
  `C_DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `C_ADD_TIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_promotion
-- ----------------------------
DROP TABLE IF EXISTS `t_promotion`;
CREATE TABLE `t_promotion` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_TITLE` varchar(255) DEFAULT NULL COMMENT '宣传概要(标题)',
  `C_TITLE_IMG` varchar(255) DEFAULT NULL COMMENT '宣传图片',
  `C_ACTIVE_SCOPE` varchar(255) DEFAULT NULL COMMENT '活动范围',
  `C_START_DATE` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `C_END_DATE` varchar(255) DEFAULT NULL COMMENT '失效时间',
  `C_UPDATE_TIME` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `C_UPDATE_UNIT` varchar(255) DEFAULT NULL COMMENT '更新单位',
  `C_UPDATE_USER` varchar(255) DEFAULT NULL COMMENT '更新人 后续与后台用户关联',
  `C_STATUS` varchar(255) DEFAULT NULL COMMENT '状态 可取值：1.进行中 2. 已结束',
  `C_DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '宣传内容(活动描述信息)',
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `C_ID` int(11) NOT NULL,
  `C_NAME` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `C_KEYWORD` varchar(255) DEFAULT NULL COMMENT '角色关键字，用于权限控制',
  `C_DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '描述',
  `C_ADD_TIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_ROLE_ID` int(11) DEFAULT NULL,
  `C_MENU_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_ROLE_ID` int(11) DEFAULT NULL,
  `C_PERMISSION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_standard
-- ----------------------------
DROP TABLE IF EXISTS `t_standard`;
CREATE TABLE `t_standard` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_MAX_LENGTH` int(11) DEFAULT NULL,
  `C_MAX_WEIGHT` int(11) DEFAULT NULL,
  `C_MIN_LENGTH` int(11) DEFAULT NULL,
  `C_MIN_WEIGHT` int(11) DEFAULT NULL,
  `C_NAME` varchar(255) DEFAULT NULL,
  `C_OPERATING_COMPANY` varchar(255) DEFAULT NULL,
  `C_OPERATING_TIME` datetime DEFAULT NULL,
  `C_OPERATOR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_sub_archive
-- ----------------------------
DROP TABLE IF EXISTS `t_sub_archive`;
CREATE TABLE `t_sub_archive` (
  `C_ID` int(11) NOT NULL,
  `C_MNEMONIC_CODE` varchar(255) DEFAULT NULL,
  `C_MOTHBALLED` char(1) DEFAULT NULL,
  `C_OPERATING_COMPANY` varchar(255) DEFAULT NULL,
  `C_OPERATING_TIME` datetime DEFAULT NULL,
  `C_OPERATOR` varchar(255) DEFAULT NULL,
  `C_REMARK` varchar(255) DEFAULT NULL,
  `C_SUB_ARCHIVE_NAME` varchar(255) DEFAULT NULL,
  `C_ARCHIVE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_sub_area
-- ----------------------------
DROP TABLE IF EXISTS `t_sub_area`;
CREATE TABLE `t_sub_area` (
  `C_ID` varchar(255) NOT NULL,
  `C_ASSIST_KEY_WORDS` varchar(255) DEFAULT NULL,
  `C_ENDNUM` varchar(255) DEFAULT NULL,
  `C_KEY_WORDS` varchar(255) DEFAULT NULL,
  `C_SINGLE` char(1) DEFAULT NULL,
  `C_START_NUM` varchar(255) DEFAULT NULL,
  `C_AREA_ID` varchar(255) DEFAULT NULL,
  `C_FIXEDAREA_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_take_time
-- ----------------------------
DROP TABLE IF EXISTS `t_take_time`;
CREATE TABLE `t_take_time` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_COMPANY` varchar(255) DEFAULT NULL,
  `C_NAME` varchar(255) DEFAULT NULL,
  `C_NORMAL_DUTY_TIME` varchar(255) DEFAULT NULL,
  `C_NORMAL_WORK_TIME` varchar(255) DEFAULT NULL,
  `C_OPERATING_COMPANY` varchar(255) DEFAULT NULL,
  `C_OPERATING_TIME` datetime DEFAULT NULL,
  `C_OPERATOR` varchar(255) DEFAULT NULL,
  `C_SAT_DUTY_TIME` varchar(255) DEFAULT NULL,
  `C_SAT_WORK_TIME` varchar(255) DEFAULT NULL,
  `C_STATUS` varchar(255) DEFAULT NULL,
  `C_SUN_DUTY_TIME` varchar(255) DEFAULT NULL,
  `C_SUN_WORK_TIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_BIRTHDAY` varchar(255) DEFAULT NULL COMMENT '生日',
  `C_GENDER` varchar(255) DEFAULT NULL COMMENT '性别',
  `C_PASSWORD` varchar(255) DEFAULT NULL COMMENT '密码',
  `C_REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `C_STATION` varchar(255) DEFAULT NULL COMMENT '状态',
  `C_TELEPHONE` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `C_USERNAME` varchar(255) DEFAULT NULL COMMENT '登陆用户名',
  `C_REAL_NAME` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `C_EMAIL` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `C_ADD_TIME` varchar(255) DEFAULT NULL,
  `C_UPDATE_TIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_USER_ID` int(11) DEFAULT NULL,
  `C_ROLE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `t_vehicle`;
CREATE TABLE `t_vehicle` (
  `C_ID` int(11) NOT NULL,
  `C_DRIVER` varchar(255) DEFAULT NULL,
  `C_REMARK` varchar(255) DEFAULT NULL,
  `C_ROUTE_NAME` varchar(255) DEFAULT NULL,
  `C_ROUTE_TYPE` varchar(255) DEFAULT NULL,
  `C_SNIPPER` varchar(255) DEFAULT NULL,
  `C_TELEPHONE` varchar(255) DEFAULT NULL,
  `C_TON` int(11) DEFAULT NULL,
  `C_VEHICLE_NUM` varchar(255) DEFAULT NULL,
  `C_VEHICLE_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_way_bill
-- ----------------------------
DROP TABLE IF EXISTS `t_way_bill`;
CREATE TABLE `t_way_bill` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `C_WAY_BILL_NUM` varchar(255) DEFAULT NULL COMMENT '运单编号',
  `C_ORDER_ID` int(11) DEFAULT NULL COMMENT '订单信息id',
  `C_SEND_NAME` varchar(255) DEFAULT NULL COMMENT '寄件人姓名',
  `C_SEND_MOBILE` varchar(255) DEFAULT NULL COMMENT '寄件人电话',
  `C_SEND_COMPANY` varchar(255) DEFAULT NULL COMMENT '寄件人公司',
  `C_SEND_AREA_ID` varchar(255) DEFAULT NULL COMMENT '寄件人省市区信息',
  `C_SEND_ADDRESS` varchar(255) DEFAULT NULL COMMENT '寄件人详细地址信息',
  `C_REC_NAME` varchar(255) DEFAULT NULL COMMENT '收件人姓名',
  `C_REC_MOBILE` varchar(255) DEFAULT NULL COMMENT '收件人电话',
  `C_REC_COMPANY` varchar(255) DEFAULT NULL COMMENT '收件人公司',
  `C_REC_AREA_ID` varchar(255) DEFAULT NULL COMMENT '收件人省市区信息',
  `C_REC_ADDRESS` varchar(255) DEFAULT NULL COMMENT '收件人详细地址信息',
  `C_SEND_PRO_NUM` varchar(255) DEFAULT NULL COMMENT '快递产品类型编号：速运当日、速运次日、速运隔日',
  `C_GOODS_TYPE` varchar(255) DEFAULT NULL COMMENT '托寄物类型：文件、衣服 、食品、电子商品',
  `C_PAY_TYPE_NUM` varchar(255) DEFAULT NULL COMMENT '支付类型编号：寄付日结、寄付月结、到付',
  `C_WEIGHT` double(20,2) DEFAULT NULL COMMENT '托寄物重量',
  `C_REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `C_NUM` int(11) DEFAULT NULL COMMENT '原件数',
  `C_ARRIVE_CITY` varchar(255) DEFAULT NULL COMMENT '到达地',
  `C_FEEITEMNUM` int(11) DEFAULT NULL COMMENT '实际件数',
  `C_ACTLWEIT` double(20,2) DEFAULT NULL COMMENT '实际重量',
  `C_VOL` varchar(255) DEFAULT NULL COMMENT '体积 输入格式为1*1*1*1，表示长*宽*高*数量',
  `C_FLOADREQR` varchar(255) DEFAULT NULL COMMENT '配载要求 (比如录入1=无，2=禁航，4=禁航空铁路)',
  `C_WAY_BILL_TYPE` varchar(255) DEFAULT NULL COMMENT '运单状态： 1 待发货、 2 派送中、3 已签收、4 异常',
  `C_SIGN_STATUS` int(11) DEFAULT NULL COMMENT '签收状态',
  `C_DELTAG` varchar(255) DEFAULT NULL COMMENT '作废标志',
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_work_bill
-- ----------------------------
DROP TABLE IF EXISTS `t_work_bill`;
CREATE TABLE `t_work_bill` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `C_TYPE` varchar(255) DEFAULT NULL COMMENT '工单类型 新,追,销。新单:没有确认货物状态的 已通知:自动下单下发短信 已确认:接到短信,回复收信确认信息 已取件:已经取件成功,发回确认信息 生成工作单',
  `C_PICKSTATE` varchar(255) DEFAULT NULL COMMENT '取件状态',
  `C_BUILDTIME` varchar(255) DEFAULT NULL COMMENT '工单生成时间',
  `C_ATTACHBILLTIMES` varchar(255) DEFAULT NULL COMMENT '追单次数',
  `C_REMARK` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `C_SMSNUMBER` varchar(255) DEFAULT NULL COMMENT '短信序号',
  `C_COURIER_ID` int(11) DEFAULT NULL COMMENT '快递员id',
  `C_ORDER_ID` int(11) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
