/*
Navicat MySQL Data Transfer

Source Server         : DataSource
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : bos_data

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-10-04 21:41:07
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
-- Records of t_archive
-- ----------------------------

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
-- Records of t_area
-- ----------------------------
INSERT INTO `t_area` VALUES ('110101', '北京市', 'beijing', '东城区', '900433', '北京市', 'BJBJDC');
INSERT INTO `t_area` VALUES ('110102', '北京市', 'beijing', '西城区', '900434', '北京市', 'BJBJXC');
INSERT INTO `t_area` VALUES ('110105', '北京市', 'beijing', '朝阳区', '900435', '北京市', 'BJBJCY');
INSERT INTO `t_area` VALUES ('110106', '北京市', 'beijing', '丰台区', '900436', '北京市', 'BJBJFT');
INSERT INTO `t_area` VALUES ('110107', '北京市', 'beijing', '石景山区', '900437', '北京市', 'BJBJSJS');
INSERT INTO `t_area` VALUES ('110108', '北京市', 'beijing', '海淀区', '900438', '北京市', 'BJBJHD');
INSERT INTO `t_area` VALUES ('110109', '北京市', 'beijing', '门头沟区', '900439', '北京市', 'BJBJMTG');
INSERT INTO `t_area` VALUES ('110111', '北京市', 'beijing', '房山区', '900440', '北京市', 'BJBJFS');
INSERT INTO `t_area` VALUES ('110112', '北京市', 'beijing', '通州区', '900441', '北京市', 'BJBJTZ');
INSERT INTO `t_area` VALUES ('110113', '北京市', 'beijing', '顺义区', '900442', '北京市', 'BJBJSY');
INSERT INTO `t_area` VALUES ('110114', '北京市', 'beijing', '昌平区', '900443', '北京市', 'BJBJCP');
INSERT INTO `t_area` VALUES ('110115', '北京市', 'beijing', '大兴区', '900444', '北京市', 'BJBJDX');
INSERT INTO `t_area` VALUES ('110116', '北京市', 'beijing', '怀柔区', '900445', '北京市', 'BJBJHR');
INSERT INTO `t_area` VALUES ('110117', '北京市', 'beijing', '平谷区', '900446', '北京市', 'BJBJPG');
INSERT INTO `t_area` VALUES ('110228', '北京市', 'beijing', '密云县', '900447', '北京市', 'BJBJMY');
INSERT INTO `t_area` VALUES ('110229', '北京市', 'beijing', '延庆县', '900448', '北京市', 'BJBJYQ');
INSERT INTO `t_area` VALUES ('120101', '天津市', 'tianjin', '和平区', '901330', '天津市', 'TJTJHP');
INSERT INTO `t_area` VALUES ('120102', '天津市', 'tianjin', '河东区', '901331', '天津市', 'TJTJHD');
INSERT INTO `t_area` VALUES ('120103', '天津市', 'tianjin', '河西区', '901332', '天津市', 'TJTJHX');
INSERT INTO `t_area` VALUES ('120104', '天津市', 'tianjin', '南开区', '901333', '天津市', 'TJTJNK');
INSERT INTO `t_area` VALUES ('120105', '天津市', 'tianjin', '河北区', '901334', '天津市', 'TJTJHB');
INSERT INTO `t_area` VALUES ('120106', '天津市', 'tianjin', '红桥区', '901335', '天津市', 'TJTJHQ');
INSERT INTO `t_area` VALUES ('120110', '天津市', 'tianjin', '东丽区', '901336', '天津市', 'TJTJDL');
INSERT INTO `t_area` VALUES ('120111', '天津市', 'tianjin', '西青区', '901337', '天津市', 'TJTJXQ');
INSERT INTO `t_area` VALUES ('120112', '天津市', 'tianjin', '津南区', '901338', '天津市', 'TJTJJN');
INSERT INTO `t_area` VALUES ('120113', '天津市', 'tianjin', '北辰区', '901339', '天津市', 'TJTJBC');
INSERT INTO `t_area` VALUES ('120114', '天津市', 'tianjin', '武清区', '901340', '天津市', 'TJTJWQ');
INSERT INTO `t_area` VALUES ('120115', '天津市', 'tianjin', '宝坻区', '901341', '天津市', 'TJTJBC');
INSERT INTO `t_area` VALUES ('120116', '天津市', 'tianjin', '滨海新区', '901342', '天津市', 'TJTJBHX');
INSERT INTO `t_area` VALUES ('120221', '天津市', 'tianjin', '宁河县', '901343', '天津市', 'TJTJNH');
INSERT INTO `t_area` VALUES ('120223', '天津市', 'tianjin', '静海县', '901344', '天津市', 'TJTJJH');
INSERT INTO `t_area` VALUES ('120225', '天津市', 'tianjin', '蓟县', '901345', '天津市', 'TJTJJ');
INSERT INTO `t_area` VALUES ('130102', '石家庄市', 'shijiazhuang', '长安区', '900866', '河北省', 'SJZSJZZA');
INSERT INTO `t_area` VALUES ('130104', '石家庄市', 'shijiazhuang', '桥西区', '900867', '河北省', 'SJZSJZQX');
INSERT INTO `t_area` VALUES ('130105', '石家庄市', 'shijiazhuang', '新华区', '900868', '河北省', 'SJZSJZXH');
INSERT INTO `t_area` VALUES ('130107', '石家庄市', 'shijiazhuang', '井陉矿区', '900869', '河北省', 'SJZSJZJXK');
INSERT INTO `t_area` VALUES ('130108', '石家庄市', 'shijiazhuang', '裕华区', '900870', '河北省', 'SJZSJZYH');
INSERT INTO `t_area` VALUES ('130109', '石家庄市', 'shijiazhuang', '藁城区', '900871', '河北省', 'SJZSJZGC');
INSERT INTO `t_area` VALUES ('130110', '石家庄市', 'shijiazhuang', '鹿泉区', '900872', '河北省', 'SJZSJZLQ');
INSERT INTO `t_area` VALUES ('130111', '石家庄市', 'shijiazhuang', '栾城区', '900873', '河北省', 'SJZSJZLC');
INSERT INTO `t_area` VALUES ('130121', '石家庄市', 'shijiazhuang', '井陉县', '900874', '河北省', 'SJZSJZJX');
INSERT INTO `t_area` VALUES ('130123', '石家庄市', 'shijiazhuang', '正定县', '900875', '河北省', 'SJZSJZZD');
INSERT INTO `t_area` VALUES ('130125', '石家庄市', 'shijiazhuang', '行唐县', '900876', '河北省', 'SJZSJZXT');
INSERT INTO `t_area` VALUES ('130126', '石家庄市', 'shijiazhuang', '灵寿县', '900877', '河北省', 'SJZSJZLS');
INSERT INTO `t_area` VALUES ('130127', '石家庄市', 'shijiazhuang', '高邑县', '900878', '河北省', 'SJZSJZGY');
INSERT INTO `t_area` VALUES ('130128', '石家庄市', 'shijiazhuang', '深泽县', '900879', '河北省', 'SJZSJZSZ');
INSERT INTO `t_area` VALUES ('130129', '石家庄市', 'shijiazhuang', '赞皇县', '900880', '河北省', 'SJZSJZZH');
INSERT INTO `t_area` VALUES ('130130', '石家庄市', 'shijiazhuang', '无极县', '900881', '河北省', 'SJZSJZWJ');
INSERT INTO `t_area` VALUES ('130131', '石家庄市', 'shijiazhuang', '平山县', '900882', '河北省', 'SJZSJZPS');
INSERT INTO `t_area` VALUES ('130132', '石家庄市', 'shijiazhuang', '元氏县', '900883', '河北省', 'SJZSJZYS');
INSERT INTO `t_area` VALUES ('130133', '石家庄市', 'shijiazhuang', '赵县', '900884', '河北省', 'SJZSJZZ');
INSERT INTO `t_area` VALUES ('130181', '石家庄市', 'shijiazhuang', '辛集市', '900885', '河北省', 'SJZSJZXJ');
INSERT INTO `t_area` VALUES ('130183', '石家庄市', 'shijiazhuang', '晋州市', '900886', '河北省', 'SJZSJZJZ');
INSERT INTO `t_area` VALUES ('130184', '石家庄市', 'shijiazhuang', '新乐市', '900887', '河北省', 'SJZSJZXL');
INSERT INTO `t_area` VALUES ('130202', '唐山市', 'tangshan', '路南区', '900899', '河北省', 'TSTSLN');
INSERT INTO `t_area` VALUES ('130203', '唐山市', 'tangshan', '路北区', '900900', '河北省', 'TSTSLB');
INSERT INTO `t_area` VALUES ('130204', '唐山市', 'tangshan', '古冶区', '900901', '河北省', 'TSTSGY');
INSERT INTO `t_area` VALUES ('130205', '唐山市', 'tangshan', '开平区', '900902', '河北省', 'TSTSKP');
INSERT INTO `t_area` VALUES ('130207', '唐山市', 'tangshan', '丰南区', '900903', '河北省', 'TSTSFN');
INSERT INTO `t_area` VALUES ('130208', '唐山市', 'tangshan', '丰润区', '900904', '河北省', 'TSTSFR');
INSERT INTO `t_area` VALUES ('130209', '唐山市', 'tangshan', '曹妃甸区', '900905', '河北省', 'TSTSCFD');
INSERT INTO `t_area` VALUES ('130223', '唐山市', 'tangshan', '滦县', '900906', '河北省', 'TSTSL');
INSERT INTO `t_area` VALUES ('130224', '唐山市', 'tangshan', '滦南县', '900907', '河北省', 'TSTSLN');
INSERT INTO `t_area` VALUES ('130225', '唐山市', 'tangshan', '乐亭县', '900908', '河北省', 'TSTSLT');
INSERT INTO `t_area` VALUES ('130227', '唐山市', 'tangshan', '迁西县', '900909', '河北省', 'TSTSQX');
INSERT INTO `t_area` VALUES ('130229', '唐山市', 'tangshan', '玉田县', '900910', '河北省', 'TSTSYT');
INSERT INTO `t_area` VALUES ('130281', '唐山市', 'tangshan', '遵化市', '900911', '河北省', 'TSTSZH');
INSERT INTO `t_area` VALUES ('130283', '唐山市', 'tangshan', '迁安市', '900912', '河北省', 'TSTSQA');
INSERT INTO `t_area` VALUES ('130302', '秦皇岛市', 'qinhuangdao', '海港区', '900924', '河北省', 'QHDQHDHG');
INSERT INTO `t_area` VALUES ('130303', '秦皇岛市', 'qinhuangdao', '山海关区', '900925', '河北省', 'QHDQHDSHG');
INSERT INTO `t_area` VALUES ('130304', '秦皇岛市', 'qinhuangdao', '北戴河区', '900926', '河北省', 'QHDQHDBDH');
INSERT INTO `t_area` VALUES ('130321', '秦皇岛市', 'qinhuangdao', '青龙满族自治县', '900927', '河北省', 'QHDQHDQLMZZZ');
INSERT INTO `t_area` VALUES ('130322', '秦皇岛市', 'qinhuangdao', '昌黎县', '900928', '河北省', 'QHDQHDCL');
INSERT INTO `t_area` VALUES ('130323', '秦皇岛市', 'qinhuangdao', '抚宁县', '900929', '河北省', 'QHDQHDFN');
INSERT INTO `t_area` VALUES ('130324', '秦皇岛市', 'qinhuangdao', '卢龙县', '900930', '河北省', 'QHDQHDLL');
INSERT INTO `t_area` VALUES ('130402', '邯郸市', 'handan', '邯山区', '900847', '河北省', 'HDHDHS');
INSERT INTO `t_area` VALUES ('130403', '邯郸市', 'handan', '丛台区', '900848', '河北省', 'HDHDCT');
INSERT INTO `t_area` VALUES ('130404', '邯郸市', 'handan', '复兴区', '900849', '河北省', 'HDHDFX');
INSERT INTO `t_area` VALUES ('130406', '邯郸市', 'handan', '峰峰矿区', '900850', '河北省', 'HDHDFFK');
INSERT INTO `t_area` VALUES ('130421', '邯郸市', 'handan', '邯郸县', '900851', '河北省', 'HDHDHD');
INSERT INTO `t_area` VALUES ('130423', '邯郸市', 'handan', '临漳县', '900852', '河北省', 'HDHDLZ');
INSERT INTO `t_area` VALUES ('130424', '邯郸市', 'handan', '成安县', '900853', '河北省', 'HDHDCA');
INSERT INTO `t_area` VALUES ('130425', '邯郸市', 'handan', '大名县', '900854', '河北省', 'HDHDDM');
INSERT INTO `t_area` VALUES ('130426', '邯郸市', 'handan', '涉县', '900855', '河北省', 'HDHDS');
INSERT INTO `t_area` VALUES ('130427', '邯郸市', 'handan', '磁县', '900856', '河北省', 'HDHDC');
INSERT INTO `t_area` VALUES ('130428', '邯郸市', 'handan', '肥乡县', '900857', '河北省', 'HDHDFX');
INSERT INTO `t_area` VALUES ('130429', '邯郸市', 'handan', '永年县', '900858', '河北省', 'HDHDYN');
INSERT INTO `t_area` VALUES ('130430', '邯郸市', 'handan', '邱县', '900859', '河北省', 'HDHDQ');
INSERT INTO `t_area` VALUES ('130431', '邯郸市', 'handan', '鸡泽县', '900860', '河北省', 'HDHDJZ');
INSERT INTO `t_area` VALUES ('130432', '邯郸市', 'handan', '广平县', '900861', '河北省', 'HDHDGP');
INSERT INTO `t_area` VALUES ('130433', '邯郸市', 'handan', '馆陶县', '900862', '河北省', 'HDHDGT');
INSERT INTO `t_area` VALUES ('130434', '邯郸市', 'handan', '魏县', '900863', '河北省', 'HDHDW');
INSERT INTO `t_area` VALUES ('130435', '邯郸市', 'handan', '曲周县', '900864', '河北省', 'HDHDQZ');
INSERT INTO `t_area` VALUES ('130481', '邯郸市', 'handan', '武安市', '900865', '河北省', 'HDHDWA');
INSERT INTO `t_area` VALUES ('130502', '邢台市', 'xingtai', '桥东区', '900958', '河北省', 'XTXTQD');
INSERT INTO `t_area` VALUES ('130503', '邢台市', 'xingtai', '桥西区', '900959', '河北省', 'XTXTQX');
INSERT INTO `t_area` VALUES ('130521', '邢台市', 'xingtai', '邢台县', '900960', '河北省', 'XTXTXT');
INSERT INTO `t_area` VALUES ('130522', '邢台市', 'xingtai', '临城县', '900961', '河北省', 'XTXTLC');
INSERT INTO `t_area` VALUES ('130523', '邢台市', 'xingtai', '内丘县', '900962', '河北省', 'XTXTNQ');
INSERT INTO `t_area` VALUES ('130524', '邢台市', 'xingtai', '柏乡县', '900963', '河北省', 'XTXTBX');
INSERT INTO `t_area` VALUES ('130525', '邢台市', 'xingtai', '隆尧县', '900964', '河北省', 'XTXTLY');
INSERT INTO `t_area` VALUES ('130526', '邢台市', 'xingtai', '任县', '900965', '河北省', 'XTXTR');
INSERT INTO `t_area` VALUES ('130527', '邢台市', 'xingtai', '南和县', '900966', '河北省', 'XTXTNH');
INSERT INTO `t_area` VALUES ('130528', '邢台市', 'xingtai', '宁晋县', '900967', '河北省', 'XTXTNJ');
INSERT INTO `t_area` VALUES ('130529', '邢台市', 'xingtai', '巨鹿县', '900968', '河北省', 'XTXTJL');
INSERT INTO `t_area` VALUES ('130530', '邢台市', 'xingtai', '新河县', '900969', '河北省', 'XTXTXH');
INSERT INTO `t_area` VALUES ('130531', '邢台市', 'xingtai', '广宗县', '900970', '河北省', 'XTXTGZ');
INSERT INTO `t_area` VALUES ('130532', '邢台市', 'xingtai', '平乡县', '900971', '河北省', 'XTXTPX');
INSERT INTO `t_area` VALUES ('130533', '邢台市', 'xingtai', '威县', '900972', '河北省', 'XTXTW');
INSERT INTO `t_area` VALUES ('130534', '邢台市', 'xingtai', '清河县', '900973', '河北省', 'XTXTQH');
INSERT INTO `t_area` VALUES ('130535', '邢台市', 'xingtai', '临西县', '900974', '河北省', 'XTXTLX');
INSERT INTO `t_area` VALUES ('130581', '邢台市', 'xingtai', '南宫市', '900975', '河北省', 'XTXTNG');
INSERT INTO `t_area` VALUES ('130582', '邢台市', 'xingtai', '沙河市', '900976', '河北省', 'XTXTSH');
INSERT INTO `t_area` VALUES ('130602', '保定市', 'baoding', '竞秀区', '900823', '河北省', 'BDBDJX');
INSERT INTO `t_area` VALUES ('130603', '保定市', 'baoding', '莲池区', '900824', '河北省', 'BDBDLC');
INSERT INTO `t_area` VALUES ('130621', '保定市', 'baoding', '满城区', '900825', '河北省', 'BDBDMC');
INSERT INTO `t_area` VALUES ('130622', '保定市', 'baoding', '清苑区', '900826', '河北省', 'BDBDQY');
INSERT INTO `t_area` VALUES ('130623', '保定市', 'baoding', '涞水县', '900827', '河北省', 'BDBDLS');
INSERT INTO `t_area` VALUES ('130624', '保定市', 'baoding', '阜平县', '900828', '河北省', 'BDBDFP');
INSERT INTO `t_area` VALUES ('130625', '保定市', 'baoding', '徐水区', '900829', '河北省', 'BDBDXS');
INSERT INTO `t_area` VALUES ('130626', '保定市', 'baoding', '定兴县', '900830', '河北省', 'BDBDDX');
INSERT INTO `t_area` VALUES ('130627', '保定市', 'baoding', '唐县', '900831', '河北省', 'BDBDT');
INSERT INTO `t_area` VALUES ('130628', '保定市', 'baoding', '高阳县', '900832', '河北省', 'BDBDGY');
INSERT INTO `t_area` VALUES ('130629', '保定市', 'baoding', '容城县', '900833', '河北省', 'BDBDRC');
INSERT INTO `t_area` VALUES ('130630', '保定市', 'baoding', '涞源县', '900834', '河北省', 'BDBDLY');
INSERT INTO `t_area` VALUES ('130631', '保定市', 'baoding', '望都县', '900835', '河北省', 'BDBDWD');
INSERT INTO `t_area` VALUES ('130632', '保定市', 'baoding', '安新县', '900836', '河北省', 'BDBDAX');
INSERT INTO `t_area` VALUES ('130633', '保定市', 'baoding', '易县', '900837', '河北省', 'BDBDY');
INSERT INTO `t_area` VALUES ('130634', '保定市', 'baoding', '曲阳县', '900838', '河北省', 'BDBDQY');
INSERT INTO `t_area` VALUES ('130635', '保定市', 'baoding', '蠡县', '900839', '河北省', 'BDBDL');
INSERT INTO `t_area` VALUES ('130636', '保定市', 'baoding', '顺平县', '900840', '河北省', 'BDBDSP');
INSERT INTO `t_area` VALUES ('130637', '保定市', 'baoding', '博野县', '900841', '河北省', 'BDBDBY');
INSERT INTO `t_area` VALUES ('130638', '保定市', 'baoding', '雄县', '900842', '河北省', 'BDBDX');
INSERT INTO `t_area` VALUES ('130681', '保定市', 'baoding', '涿州市', '900843', '河北省', 'BDBDZZ');
INSERT INTO `t_area` VALUES ('130682', '保定市', 'baoding', '定州市', '900844', '河北省', 'BDBDDZ');
INSERT INTO `t_area` VALUES ('130683', '保定市', 'baoding', '安国市', '900845', '河北省', 'BDBDAG');
INSERT INTO `t_area` VALUES ('130684', '保定市', 'baoding', '高碑店市', '900846', '河北省', 'BDBDGBD');
INSERT INTO `t_area` VALUES ('130702', '张家口市', 'zhangjiakou', '桥东区', '900941', '河北省', 'ZJKZJKQD');
INSERT INTO `t_area` VALUES ('130703', '张家口市', 'zhangjiakou', '桥西区', '900942', '河北省', 'ZJKZJKQX');
INSERT INTO `t_area` VALUES ('130705', '张家口市', 'zhangjiakou', '宣化区', '900943', '河北省', 'ZJKZJKXH');
INSERT INTO `t_area` VALUES ('130706', '张家口市', 'zhangjiakou', '下花园区', '900944', '河北省', 'ZJKZJKXHY');
INSERT INTO `t_area` VALUES ('130721', '张家口市', 'zhangjiakou', '宣化县', '900945', '河北省', 'ZJKZJKXH');
INSERT INTO `t_area` VALUES ('130722', '张家口市', 'zhangjiakou', '张北县', '900946', '河北省', 'ZJKZJKZB');
INSERT INTO `t_area` VALUES ('130723', '张家口市', 'zhangjiakou', '康保县', '900947', '河北省', 'ZJKZJKKB');
INSERT INTO `t_area` VALUES ('130724', '张家口市', 'zhangjiakou', '沽源县', '900948', '河北省', 'ZJKZJKGY');
INSERT INTO `t_area` VALUES ('130725', '张家口市', 'zhangjiakou', '尚义县', '900949', '河北省', 'ZJKZJKSY');
INSERT INTO `t_area` VALUES ('130726', '张家口市', 'zhangjiakou', '蔚县', '900950', '河北省', 'ZJKZJKY');
INSERT INTO `t_area` VALUES ('130727', '张家口市', 'zhangjiakou', '阳原县', '900951', '河北省', 'ZJKZJKYY');
INSERT INTO `t_area` VALUES ('130728', '张家口市', 'zhangjiakou', '怀安县', '900952', '河北省', 'ZJKZJKHA');
INSERT INTO `t_area` VALUES ('130729', '张家口市', 'zhangjiakou', '万全县', '900953', '河北省', 'ZJKZJKWQ');
INSERT INTO `t_area` VALUES ('130730', '张家口市', 'zhangjiakou', '怀来县', '900954', '河北省', 'ZJKZJKHL');
INSERT INTO `t_area` VALUES ('130731', '张家口市', 'zhangjiakou', '涿鹿县', '900955', '河北省', 'ZJKZJKZL');
INSERT INTO `t_area` VALUES ('130732', '张家口市', 'zhangjiakou', '赤城县', '900956', '河北省', 'ZJKZJKCC');
INSERT INTO `t_area` VALUES ('130733', '张家口市', 'zhangjiakou', '崇礼县', '900957', '河北省', 'ZJKZJKCL');
INSERT INTO `t_area` VALUES ('130802', '承德市', 'chengde', '双桥区', '900888', '河北省', 'CDCDSQ');
INSERT INTO `t_area` VALUES ('130803', '承德市', 'chengde', '双滦区', '900889', '河北省', 'CDCDSL');
INSERT INTO `t_area` VALUES ('130804', '承德市', 'chengde', '鹰手营子矿区', '900890', '河北省', 'CDCDYSYZK');
INSERT INTO `t_area` VALUES ('130821', '承德市', 'chengde', '承德县', '900891', '河北省', 'CDCDCD');
INSERT INTO `t_area` VALUES ('130822', '承德市', 'chengde', '兴隆县', '900892', '河北省', 'CDCDXL');
INSERT INTO `t_area` VALUES ('130823', '承德市', 'chengde', '平泉县', '900893', '河北省', 'CDCDPQ');
INSERT INTO `t_area` VALUES ('130824', '承德市', 'chengde', '滦平县', '900894', '河北省', 'CDCDLP');
INSERT INTO `t_area` VALUES ('130825', '承德市', 'chengde', '隆化县', '900895', '河北省', 'CDCDLH');
INSERT INTO `t_area` VALUES ('130826', '承德市', 'chengde', '丰宁满族自治县', '900896', '河北省', 'CDCDFNMZZZ');
INSERT INTO `t_area` VALUES ('130827', '承德市', 'chengde', '宽城满族自治县', '900897', '河北省', 'CDCDKCMZZZ');
INSERT INTO `t_area` VALUES ('130828', '承德市', 'chengde', '围场满族蒙古族自治县', '900898', '河北省', 'CDCDWCMZMGZZZ');
INSERT INTO `t_area` VALUES ('130902', '沧州市', 'cangzhou', '新华区', '900807', '河北省', 'CZCZXH');
INSERT INTO `t_area` VALUES ('130903', '沧州市', 'cangzhou', '运河区', '900808', '河北省', 'CZCZYH');
INSERT INTO `t_area` VALUES ('130921', '沧州市', 'cangzhou', '沧县', '900809', '河北省', 'CZCZC');
INSERT INTO `t_area` VALUES ('130922', '沧州市', 'cangzhou', '青县', '900810', '河北省', 'CZCZQ');
INSERT INTO `t_area` VALUES ('130923', '沧州市', 'cangzhou', '东光县', '900811', '河北省', 'CZCZDG');
INSERT INTO `t_area` VALUES ('130924', '沧州市', 'cangzhou', '海兴县', '900812', '河北省', 'CZCZHX');
INSERT INTO `t_area` VALUES ('130925', '沧州市', 'cangzhou', '盐山县', '900813', '河北省', 'CZCZYS');
INSERT INTO `t_area` VALUES ('130926', '沧州市', 'cangzhou', '肃宁县', '900814', '河北省', 'CZCZSN');
INSERT INTO `t_area` VALUES ('130927', '沧州市', 'cangzhou', '南皮县', '900815', '河北省', 'CZCZNP');
INSERT INTO `t_area` VALUES ('130928', '沧州市', 'cangzhou', '吴桥县', '900816', '河北省', 'CZCZWQ');
INSERT INTO `t_area` VALUES ('130929', '沧州市', 'cangzhou', '献县', '900817', '河北省', 'CZCZX');
INSERT INTO `t_area` VALUES ('130930', '沧州市', 'cangzhou', '孟村回族自治县', '900818', '河北省', 'CZCZMCHZZZ');
INSERT INTO `t_area` VALUES ('130981', '沧州市', 'cangzhou', '泊头市', '900819', '河北省', 'CZCZBT');
INSERT INTO `t_area` VALUES ('130982', '沧州市', 'cangzhou', '任丘市', '900820', '河北省', 'CZCZRQ');
INSERT INTO `t_area` VALUES ('130983', '沧州市', 'cangzhou', '黄骅市', '900821', '河北省', 'CZCZHH');
INSERT INTO `t_area` VALUES ('130984', '沧州市', 'cangzhou', '河间市', '900822', '河北省', 'CZCZHJ');
INSERT INTO `t_area` VALUES ('131002', '廊坊市', 'langfang', '安次区', '900931', '河北省', 'LFLFAC');
INSERT INTO `t_area` VALUES ('131003', '廊坊市', 'langfang', '广阳区', '900932', '河北省', 'LFLFGY');
INSERT INTO `t_area` VALUES ('131022', '廊坊市', 'langfang', '固安县', '900933', '河北省', 'LFLFGA');
INSERT INTO `t_area` VALUES ('131023', '廊坊市', 'langfang', '永清县', '900934', '河北省', 'LFLFYQ');
INSERT INTO `t_area` VALUES ('131024', '廊坊市', 'langfang', '香河县', '900935', '河北省', 'LFLFXH');
INSERT INTO `t_area` VALUES ('131025', '廊坊市', 'langfang', '大城县', '900936', '河北省', 'LFLFDC');
INSERT INTO `t_area` VALUES ('131026', '廊坊市', 'langfang', '文安县', '900937', '河北省', 'LFLFWA');
INSERT INTO `t_area` VALUES ('131028', '廊坊市', 'langfang', '大厂回族自治县', '900938', '河北省', 'LFLFDCHZZZ');
INSERT INTO `t_area` VALUES ('131081', '廊坊市', 'langfang', '霸州市', '900939', '河北省', 'LFLFBZ');
INSERT INTO `t_area` VALUES ('131082', '廊坊市', 'langfang', '三河市', '900940', '河北省', 'LFLFSH');
INSERT INTO `t_area` VALUES ('131102', '衡水市', 'hengshui', '桃城区', '900913', '河北省', 'HSHSTC');
INSERT INTO `t_area` VALUES ('131121', '衡水市', 'hengshui', '枣强县', '900914', '河北省', 'HSHSZQ');
INSERT INTO `t_area` VALUES ('131122', '衡水市', 'hengshui', '武邑县', '900915', '河北省', 'HSHSWY');
INSERT INTO `t_area` VALUES ('131123', '衡水市', 'hengshui', '武强县', '900916', '河北省', 'HSHSWQ');
INSERT INTO `t_area` VALUES ('131124', '衡水市', 'hengshui', '饶阳县', '900917', '河北省', 'HSHSRY');
INSERT INTO `t_area` VALUES ('131125', '衡水市', 'hengshui', '安平县', '900918', '河北省', 'HSHSAP');
INSERT INTO `t_area` VALUES ('131126', '衡水市', 'hengshui', '故城县', '900919', '河北省', 'HSHSGC');
INSERT INTO `t_area` VALUES ('131127', '衡水市', 'hengshui', '景县', '900920', '河北省', 'HSHSJ');
INSERT INTO `t_area` VALUES ('131128', '衡水市', 'hengshui', '阜城县', '900921', '河北省', 'HSHSFC');
INSERT INTO `t_area` VALUES ('131181', '衡水市', 'hengshui', '冀州市', '900922', '河北省', 'HSHSJZ');
INSERT INTO `t_area` VALUES ('131182', '衡水市', 'hengshui', '深州市', '900923', '河北省', 'HSHSSZ');
INSERT INTO `t_area` VALUES ('140105', '太原市', 'taiyuan', '小店区', '900765', '山西省', 'TYTYXD');
INSERT INTO `t_area` VALUES ('140106', '太原市', 'taiyuan', '迎泽区', '900766', '山西省', 'TYTYYZ');
INSERT INTO `t_area` VALUES ('140107', '太原市', 'taiyuan', '杏花岭区', '900767', '山西省', 'TYTYXHL');
INSERT INTO `t_area` VALUES ('140108', '太原市', 'taiyuan', '尖草坪区', '900768', '山西省', 'TYTYJCP');
INSERT INTO `t_area` VALUES ('140109', '太原市', 'taiyuan', '万柏林区', '900769', '山西省', 'TYTYWBL');
INSERT INTO `t_area` VALUES ('140110', '太原市', 'taiyuan', '晋源区', '900770', '山西省', 'TYTYJY');
INSERT INTO `t_area` VALUES ('140121', '太原市', 'taiyuan', '清徐县', '900771', '山西省', 'TYTYQX');
INSERT INTO `t_area` VALUES ('140122', '太原市', 'taiyuan', '阳曲县', '900772', '山西省', 'TYTYYQ');
INSERT INTO `t_area` VALUES ('140123', '太原市', 'taiyuan', '娄烦县', '900773', '山西省', 'TYTYLF');
INSERT INTO `t_area` VALUES ('140181', '太原市', 'taiyuan', '古交市', '900774', '山西省', 'TYTYGJ');
INSERT INTO `t_area` VALUES ('140202', '大同市', 'datong', '城区', '900735', '山西省', 'DTDTC');
INSERT INTO `t_area` VALUES ('140203', '大同市', 'datong', '矿区', '900736', '山西省', 'DTDTK');
INSERT INTO `t_area` VALUES ('140211', '大同市', 'datong', '南郊区', '900737', '山西省', 'DTDTNJ');
INSERT INTO `t_area` VALUES ('140212', '大同市', 'datong', '新荣区', '900738', '山西省', 'DTDTXR');
INSERT INTO `t_area` VALUES ('140221', '大同市', 'datong', '阳高县', '900739', '山西省', 'DTDTYG');
INSERT INTO `t_area` VALUES ('140222', '大同市', 'datong', '天镇县', '900740', '山西省', 'DTDTTZ');
INSERT INTO `t_area` VALUES ('140223', '大同市', 'datong', '广灵县', '900741', '山西省', 'DTDTGL');
INSERT INTO `t_area` VALUES ('140224', '大同市', 'datong', '灵丘县', '900742', '山西省', 'DTDTLQ');
INSERT INTO `t_area` VALUES ('140225', '大同市', 'datong', '浑源县', '900743', '山西省', 'DTDTHY');
INSERT INTO `t_area` VALUES ('140226', '大同市', 'datong', '左云县', '900744', '山西省', 'DTDTZY');
INSERT INTO `t_area` VALUES ('140227', '大同市', 'datong', '大同县', '900745', '山西省', 'DTDTDT');
INSERT INTO `t_area` VALUES ('140302', '阳泉市', 'yangquan', '城区', '900760', '山西省', 'YQYQC');
INSERT INTO `t_area` VALUES ('140303', '阳泉市', 'yangquan', '矿区', '900761', '山西省', 'YQYQK');
INSERT INTO `t_area` VALUES ('140311', '阳泉市', 'yangquan', '郊区', '900762', '山西省', 'YQYQJ');
INSERT INTO `t_area` VALUES ('140321', '阳泉市', 'yangquan', '平定县', '900763', '山西省', 'YQYQPD');
INSERT INTO `t_area` VALUES ('140322', '阳泉市', 'yangquan', '盂县', '900764', '山西省', 'YQYQY');
INSERT INTO `t_area` VALUES ('140402', '长治市', 'zhangzhi', '城区', '900716', '山西省', 'ZZZZC');
INSERT INTO `t_area` VALUES ('140411', '长治市', 'zhangzhi', '郊区', '900717', '山西省', 'ZZZZJ');
INSERT INTO `t_area` VALUES ('140421', '长治市', 'zhangzhi', '长治县', '900718', '山西省', 'ZZZZZZ');
INSERT INTO `t_area` VALUES ('140423', '长治市', 'zhangzhi', '襄垣县', '900719', '山西省', 'ZZZZXY');
INSERT INTO `t_area` VALUES ('140424', '长治市', 'zhangzhi', '屯留县', '900720', '山西省', 'ZZZZTL');
INSERT INTO `t_area` VALUES ('140425', '长治市', 'zhangzhi', '平顺县', '900721', '山西省', 'ZZZZPS');
INSERT INTO `t_area` VALUES ('140426', '长治市', 'zhangzhi', '黎城县', '900722', '山西省', 'ZZZZLC');
INSERT INTO `t_area` VALUES ('140427', '长治市', 'zhangzhi', '壶关县', '900723', '山西省', 'ZZZZHG');
INSERT INTO `t_area` VALUES ('140428', '长治市', 'zhangzhi', '长子县', '900724', '山西省', 'ZZZZZZ');
INSERT INTO `t_area` VALUES ('140429', '长治市', 'zhangzhi', '武乡县', '900725', '山西省', 'ZZZZWX');
INSERT INTO `t_area` VALUES ('140430', '长治市', 'zhangzhi', '沁县', '900726', '山西省', 'ZZZZQ');
INSERT INTO `t_area` VALUES ('140431', '长治市', 'zhangzhi', '沁源县', '900727', '山西省', 'ZZZZQY');
INSERT INTO `t_area` VALUES ('140481', '长治市', 'zhangzhi', '潞城市', '900728', '山西省', 'ZZZZLC');
INSERT INTO `t_area` VALUES ('140502', '晋城市', 'jincheng', '城区', '900775', '山西省', 'JCJCC');
INSERT INTO `t_area` VALUES ('140521', '晋城市', 'jincheng', '沁水县', '900776', '山西省', 'JCJCQS');
INSERT INTO `t_area` VALUES ('140522', '晋城市', 'jincheng', '阳城县', '900777', '山西省', 'JCJCYC');
INSERT INTO `t_area` VALUES ('140524', '晋城市', 'jincheng', '陵川县', '900778', '山西省', 'JCJCLC');
INSERT INTO `t_area` VALUES ('140525', '晋城市', 'jincheng', '泽州县', '900779', '山西省', 'JCJCZZ');
INSERT INTO `t_area` VALUES ('140581', '晋城市', 'jincheng', '高平市', '900780', '山西省', 'JCJCGP');
INSERT INTO `t_area` VALUES ('140602', '朔州市', 'shuozhou', '朔城区', '900729', '山西省', 'SZSZSC');
INSERT INTO `t_area` VALUES ('140603', '朔州市', 'shuozhou', '平鲁区', '900730', '山西省', 'SZSZPL');
INSERT INTO `t_area` VALUES ('140621', '朔州市', 'shuozhou', '山阴县', '900731', '山西省', 'SZSZSY');
INSERT INTO `t_area` VALUES ('140622', '朔州市', 'shuozhou', '应县', '900732', '山西省', 'SZSZY');
INSERT INTO `t_area` VALUES ('140623', '朔州市', 'shuozhou', '右玉县', '900733', '山西省', 'SZSZYY');
INSERT INTO `t_area` VALUES ('140624', '朔州市', 'shuozhou', '怀仁县', '900734', '山西省', 'SZSZHR');
INSERT INTO `t_area` VALUES ('140702', '晋中市', 'jinzhong', '榆次区', '900705', '山西省', 'JZJZYC');
INSERT INTO `t_area` VALUES ('140721', '晋中市', 'jinzhong', '榆社县', '900706', '山西省', 'JZJZYS');
INSERT INTO `t_area` VALUES ('140722', '晋中市', 'jinzhong', '左权县', '900707', '山西省', 'JZJZZQ');
INSERT INTO `t_area` VALUES ('140723', '晋中市', 'jinzhong', '和顺县', '900708', '山西省', 'JZJZHS');
INSERT INTO `t_area` VALUES ('140724', '晋中市', 'jinzhong', '昔阳县', '900709', '山西省', 'JZJZXY');
INSERT INTO `t_area` VALUES ('140725', '晋中市', 'jinzhong', '寿阳县', '900710', '山西省', 'JZJZSY');
INSERT INTO `t_area` VALUES ('140726', '晋中市', 'jinzhong', '太谷县', '900711', '山西省', 'JZJZTG');
INSERT INTO `t_area` VALUES ('140727', '晋中市', 'jinzhong', '祁县', '900712', '山西省', 'JZJZQ');
INSERT INTO `t_area` VALUES ('140728', '晋中市', 'jinzhong', '平遥县', '900713', '山西省', 'JZJZPY');
INSERT INTO `t_area` VALUES ('140729', '晋中市', 'jinzhong', '灵石县', '900714', '山西省', 'JZJZLS');
INSERT INTO `t_area` VALUES ('140781', '晋中市', 'jinzhong', '介休市', '900715', '山西省', 'JZJZJX');
INSERT INTO `t_area` VALUES ('140802', '运城市', 'yuncheng', '盐湖区', '900794', '山西省', 'YCYCYH');
INSERT INTO `t_area` VALUES ('140821', '运城市', 'yuncheng', '临猗县', '900795', '山西省', 'YCYCLY');
INSERT INTO `t_area` VALUES ('140822', '运城市', 'yuncheng', '万荣县', '900796', '山西省', 'YCYCWR');
INSERT INTO `t_area` VALUES ('140823', '运城市', 'yuncheng', '闻喜县', '900797', '山西省', 'YCYCWX');
INSERT INTO `t_area` VALUES ('140824', '运城市', 'yuncheng', '稷山县', '900798', '山西省', 'YCYCJS');
INSERT INTO `t_area` VALUES ('140825', '运城市', 'yuncheng', '新绛县', '900799', '山西省', 'YCYCXJ');
INSERT INTO `t_area` VALUES ('140826', '运城市', 'yuncheng', '绛县', '900800', '山西省', 'YCYCJ');
INSERT INTO `t_area` VALUES ('140827', '运城市', 'yuncheng', '垣曲县', '900801', '山西省', 'YCYCYQ');
INSERT INTO `t_area` VALUES ('140828', '运城市', 'yuncheng', '夏县', '900802', '山西省', 'YCYCX');
INSERT INTO `t_area` VALUES ('140829', '运城市', 'yuncheng', '平陆县', '900803', '山西省', 'YCYCPL');
INSERT INTO `t_area` VALUES ('140830', '运城市', 'yuncheng', '芮城县', '900804', '山西省', 'YCYCRC');
INSERT INTO `t_area` VALUES ('140881', '运城市', 'yuncheng', '永济市', '900805', '山西省', 'YCYCYJ');
INSERT INTO `t_area` VALUES ('140882', '运城市', 'yuncheng', '河津市', '900806', '山西省', 'YCYCHJ');
INSERT INTO `t_area` VALUES ('140902', '忻州市', 'xinzhou', '忻府区', '900746', '山西省', 'XZXZXF');
INSERT INTO `t_area` VALUES ('140921', '忻州市', 'xinzhou', '定襄县', '900747', '山西省', 'XZXZDX');
INSERT INTO `t_area` VALUES ('140922', '忻州市', 'xinzhou', '五台县', '900748', '山西省', 'XZXZWT');
INSERT INTO `t_area` VALUES ('140923', '忻州市', 'xinzhou', '代县', '900749', '山西省', 'XZXZD');
INSERT INTO `t_area` VALUES ('140924', '忻州市', 'xinzhou', '繁峙县', '900750', '山西省', 'XZXZFZ');
INSERT INTO `t_area` VALUES ('140925', '忻州市', 'xinzhou', '宁武县', '900751', '山西省', 'XZXZNW');
INSERT INTO `t_area` VALUES ('140926', '忻州市', 'xinzhou', '静乐县', '900752', '山西省', 'XZXZJL');
INSERT INTO `t_area` VALUES ('140927', '忻州市', 'xinzhou', '神池县', '900753', '山西省', 'XZXZSC');
INSERT INTO `t_area` VALUES ('140928', '忻州市', 'xinzhou', '五寨县', '900754', '山西省', 'XZXZWZ');
INSERT INTO `t_area` VALUES ('140929', '忻州市', 'xinzhou', '岢岚县', '900755', '山西省', 'XZXZKL');
INSERT INTO `t_area` VALUES ('140930', '忻州市', 'xinzhou', '河曲县', '900756', '山西省', 'XZXZHQ');
INSERT INTO `t_area` VALUES ('140931', '忻州市', 'xinzhou', '保德县', '900757', '山西省', 'XZXZBD');
INSERT INTO `t_area` VALUES ('140932', '忻州市', 'xinzhou', '偏关县', '900758', '山西省', 'XZXZPG');
INSERT INTO `t_area` VALUES ('140981', '忻州市', 'xinzhou', '原平市', '900759', '山西省', 'XZXZYP');
INSERT INTO `t_area` VALUES ('141002', '临汾市', 'linfen', '尧都区', '900688', '山西省', 'LFLFYD');
INSERT INTO `t_area` VALUES ('141021', '临汾市', 'linfen', '曲沃县', '900689', '山西省', 'LFLFQW');
INSERT INTO `t_area` VALUES ('141022', '临汾市', 'linfen', '翼城县', '900690', '山西省', 'LFLFYC');
INSERT INTO `t_area` VALUES ('141023', '临汾市', 'linfen', '襄汾县', '900691', '山西省', 'LFLFXF');
INSERT INTO `t_area` VALUES ('141024', '临汾市', 'linfen', '洪洞县', '900692', '山西省', 'LFLFHD');
INSERT INTO `t_area` VALUES ('141025', '临汾市', 'linfen', '古县', '900693', '山西省', 'LFLFG');
INSERT INTO `t_area` VALUES ('141026', '临汾市', 'linfen', '安泽县', '900694', '山西省', 'LFLFAZ');
INSERT INTO `t_area` VALUES ('141027', '临汾市', 'linfen', '浮山县', '900695', '山西省', 'LFLFFS');
INSERT INTO `t_area` VALUES ('141028', '临汾市', 'linfen', '吉县', '900696', '山西省', 'LFLFJ');
INSERT INTO `t_area` VALUES ('141029', '临汾市', 'linfen', '乡宁县', '900697', '山西省', 'LFLFXN');
INSERT INTO `t_area` VALUES ('141030', '临汾市', 'linfen', '大宁县', '900698', '山西省', 'LFLFDN');
INSERT INTO `t_area` VALUES ('141031', '临汾市', 'linfen', '隰县', '900699', '山西省', 'LFLFX');
INSERT INTO `t_area` VALUES ('141032', '临汾市', 'linfen', '永和县', '900700', '山西省', 'LFLFYH');
INSERT INTO `t_area` VALUES ('141033', '临汾市', 'linfen', '蒲县', '900701', '山西省', 'LFLFP');
INSERT INTO `t_area` VALUES ('141034', '临汾市', 'linfen', '汾西县', '900702', '山西省', 'LFLFFX');
INSERT INTO `t_area` VALUES ('141081', '临汾市', 'linfen', '侯马市', '900703', '山西省', 'LFLFHM');
INSERT INTO `t_area` VALUES ('141082', '临汾市', 'linfen', '霍州市', '900704', '山西省', 'LFLFHZ');
INSERT INTO `t_area` VALUES ('141102', '吕梁市', 'lu:liang', '离石区', '900781', '山西省', 'LLLLLS');
INSERT INTO `t_area` VALUES ('141121', '吕梁市', 'lu:liang', '文水县', '900782', '山西省', 'LLLLWS');
INSERT INTO `t_area` VALUES ('141122', '吕梁市', 'lu:liang', '交城县', '900783', '山西省', 'LLLLJC');
INSERT INTO `t_area` VALUES ('141123', '吕梁市', 'lu:liang', '兴县', '900784', '山西省', 'LLLLX');
INSERT INTO `t_area` VALUES ('141124', '吕梁市', 'lu:liang', '临县', '900785', '山西省', 'LLLLL');
INSERT INTO `t_area` VALUES ('141125', '吕梁市', 'lu:liang', '柳林县', '900786', '山西省', 'LLLLLL');
INSERT INTO `t_area` VALUES ('141126', '吕梁市', 'lu:liang', '石楼县', '900787', '山西省', 'LLLLSL');
INSERT INTO `t_area` VALUES ('141127', '吕梁市', 'lu:liang', '岚县', '900788', '山西省', 'LLLLL');
INSERT INTO `t_area` VALUES ('141128', '吕梁市', 'lu:liang', '方山县', '900789', '山西省', 'LLLLFS');
INSERT INTO `t_area` VALUES ('141129', '吕梁市', 'lu:liang', '中阳县', '900790', '山西省', 'LLLLZY');
INSERT INTO `t_area` VALUES ('141130', '吕梁市', 'lu:liang', '交口县', '900791', '山西省', 'LLLLJK');
INSERT INTO `t_area` VALUES ('141181', '吕梁市', 'lu:liang', '孝义市', '900792', '山西省', 'LLLLXY');
INSERT INTO `t_area` VALUES ('141182', '吕梁市', 'lu:liang', '汾阳市', '900793', '山西省', 'LLLLFY');
INSERT INTO `t_area` VALUES ('150102', '呼和浩特市', 'huhehaote', '新城区', '900507', '内蒙古自治区', 'HHHTHHHTXC');
INSERT INTO `t_area` VALUES ('150103', '呼和浩特市', 'huhehaote', '回民区', '900508', '内蒙古自治区', 'HHHTHHHTHM');
INSERT INTO `t_area` VALUES ('150104', '呼和浩特市', 'huhehaote', '玉泉区', '900509', '内蒙古自治区', 'HHHTHHHTYQ');
INSERT INTO `t_area` VALUES ('150105', '呼和浩特市', 'huhehaote', '赛罕区', '900510', '内蒙古自治区', 'HHHTHHHTSH');
INSERT INTO `t_area` VALUES ('150121', '呼和浩特市', 'huhehaote', '土默特左旗', '900511', '内蒙古自治区', 'HHHTHHHTTMTZ');
INSERT INTO `t_area` VALUES ('150122', '呼和浩特市', 'huhehaote', '托克托县', '900512', '内蒙古自治区', 'HHHTHHHTTKT');
INSERT INTO `t_area` VALUES ('150123', '呼和浩特市', 'huhehaote', '和林格尔县', '900513', '内蒙古自治区', 'HHHTHHHTHLGE');
INSERT INTO `t_area` VALUES ('150124', '呼和浩特市', 'huhehaote', '清水河县', '900514', '内蒙古自治区', 'HHHTHHHTQSH');
INSERT INTO `t_area` VALUES ('150125', '呼和浩特市', 'huhehaote', '武川县', '900515', '内蒙古自治区', 'HHHTHHHTWC');
INSERT INTO `t_area` VALUES ('150202', '包头市', 'baotou', '东河区', '900530', '内蒙古自治区', 'BTBTDH');
INSERT INTO `t_area` VALUES ('150203', '包头市', 'baotou', '昆都仑区', '900531', '内蒙古自治区', 'BTBTKDL');
INSERT INTO `t_area` VALUES ('150204', '包头市', 'baotou', '青山区', '900532', '内蒙古自治区', 'BTBTQS');
INSERT INTO `t_area` VALUES ('150205', '包头市', 'baotou', '石拐区', '900533', '内蒙古自治区', 'BTBTSG');
INSERT INTO `t_area` VALUES ('150206', '包头市', 'baotou', '白云鄂博矿区', '900534', '内蒙古自治区', 'BTBTBYEBK');
INSERT INTO `t_area` VALUES ('150207', '包头市', 'baotou', '九原区', '900535', '内蒙古自治区', 'BTBTJY');
INSERT INTO `t_area` VALUES ('150221', '包头市', 'baotou', '土默特右旗', '900536', '内蒙古自治区', 'BTBTTMTY');
INSERT INTO `t_area` VALUES ('150222', '包头市', 'baotou', '固阳县', '900537', '内蒙古自治区', 'BTBTGY');
INSERT INTO `t_area` VALUES ('150223', '包头市', 'baotou', '达尔罕茂明安联合旗', '900538', '内蒙古自治区', 'BTBTDEHMMALH');
INSERT INTO `t_area` VALUES ('150302', '乌海市', 'wuhai', '海勃湾区', '900486', '内蒙古自治区', 'WHWHHBW');
INSERT INTO `t_area` VALUES ('150303', '乌海市', 'wuhai', '海南区', '900487', '内蒙古自治区', 'WHWHHN');
INSERT INTO `t_area` VALUES ('150304', '乌海市', 'wuhai', '乌达区', '900488', '内蒙古自治区', 'WHWHWD');
INSERT INTO `t_area` VALUES ('150402', '赤峰市', 'chifeng', '红山区', '900495', '内蒙古自治区', 'CFCFHS');
INSERT INTO `t_area` VALUES ('150403', '赤峰市', 'chifeng', '元宝山区', '900496', '内蒙古自治区', 'CFCFYBS');
INSERT INTO `t_area` VALUES ('150404', '赤峰市', 'chifeng', '松山区', '900497', '内蒙古自治区', 'CFCFSS');
INSERT INTO `t_area` VALUES ('150421', '赤峰市', 'chifeng', '阿鲁科尔沁旗', '900498', '内蒙古自治区', 'CFCFALKEQ');
INSERT INTO `t_area` VALUES ('150422', '赤峰市', 'chifeng', '巴林左旗', '900499', '内蒙古自治区', 'CFCFBLZ');
INSERT INTO `t_area` VALUES ('150423', '赤峰市', 'chifeng', '巴林右旗', '900500', '内蒙古自治区', 'CFCFBLY');
INSERT INTO `t_area` VALUES ('150424', '赤峰市', 'chifeng', '林西县', '900501', '内蒙古自治区', 'CFCFLX');
INSERT INTO `t_area` VALUES ('150425', '赤峰市', 'chifeng', '克什克腾旗', '900502', '内蒙古自治区', 'CFCFKSKT');
INSERT INTO `t_area` VALUES ('150426', '赤峰市', 'chifeng', '翁牛特旗', '900503', '内蒙古自治区', 'CFCFWNT');
INSERT INTO `t_area` VALUES ('150428', '赤峰市', 'chifeng', '喀喇沁旗', '900504', '内蒙古自治区', 'CFCFKLQ');
INSERT INTO `t_area` VALUES ('150429', '赤峰市', 'chifeng', '宁城县', '900505', '内蒙古自治区', 'CFCFNC');
INSERT INTO `t_area` VALUES ('150430', '赤峰市', 'chifeng', '敖汉旗', '900506', '内蒙古自治区', 'CFCFAH');
INSERT INTO `t_area` VALUES ('150502', '通辽市', 'tongliao', '科尔沁区', '900464', '内蒙古自治区', 'TLTLKEQ');
INSERT INTO `t_area` VALUES ('150521', '通辽市', 'tongliao', '科尔沁左翼中旗', '900465', '内蒙古自治区', 'TLTLKEQZYZ');
INSERT INTO `t_area` VALUES ('150522', '通辽市', 'tongliao', '科尔沁左翼后旗', '900466', '内蒙古自治区', 'TLTLKEQZYH');
INSERT INTO `t_area` VALUES ('150523', '通辽市', 'tongliao', '开鲁县', '900467', '内蒙古自治区', 'TLTLKL');
INSERT INTO `t_area` VALUES ('150524', '通辽市', 'tongliao', '库伦旗', '900468', '内蒙古自治区', 'TLTLKL');
INSERT INTO `t_area` VALUES ('150525', '通辽市', 'tongliao', '奈曼旗', '900469', '内蒙古自治区', 'TLTLNM');
INSERT INTO `t_area` VALUES ('150526', '通辽市', 'tongliao', '扎鲁特旗', '900470', '内蒙古自治区', 'TLTLZLT');
INSERT INTO `t_area` VALUES ('150581', '通辽市', 'tongliao', '霍林郭勒市', '900471', '内蒙古自治区', 'TLTLHLGL');
INSERT INTO `t_area` VALUES ('150602', '鄂尔多斯市', 'eerduosi', '东胜区', '900456', '内蒙古自治区', 'EEDSEEDSDS');
INSERT INTO `t_area` VALUES ('150621', '鄂尔多斯市', 'eerduosi', '达拉特旗', '900457', '内蒙古自治区', 'EEDSEEDSDLT');
INSERT INTO `t_area` VALUES ('150622', '鄂尔多斯市', 'eerduosi', '准格尔旗', '900458', '内蒙古自治区', 'EEDSEEDSZGE');
INSERT INTO `t_area` VALUES ('150623', '鄂尔多斯市', 'eerduosi', '鄂托克前旗', '900459', '内蒙古自治区', 'EEDSEEDSETKQ');
INSERT INTO `t_area` VALUES ('150624', '鄂尔多斯市', 'eerduosi', '鄂托克旗', '900460', '内蒙古自治区', 'EEDSEEDSETK');
INSERT INTO `t_area` VALUES ('150625', '鄂尔多斯市', 'eerduosi', '杭锦旗', '900461', '内蒙古自治区', 'EEDSEEDSHJ');
INSERT INTO `t_area` VALUES ('150626', '鄂尔多斯市', 'eerduosi', '乌审旗', '900462', '内蒙古自治区', 'EEDSEEDSWS');
INSERT INTO `t_area` VALUES ('150627', '鄂尔多斯市', 'eerduosi', '伊金霍洛旗', '900463', '内蒙古自治区', 'EEDSEEDSYJHL');
INSERT INTO `t_area` VALUES ('150702', '呼伦贝尔市', 'hulunbeier', '海拉尔区', '900516', '内蒙古自治区', 'HLBEHLBEHLE');
INSERT INTO `t_area` VALUES ('150703', '呼伦贝尔市', 'hulunbeier', '扎赉诺尔区', '900517', '内蒙古自治区', 'HLBEHLBEZLNE');
INSERT INTO `t_area` VALUES ('150721', '呼伦贝尔市', 'hulunbeier', '阿荣旗', '900518', '内蒙古自治区', 'HLBEHLBEAR');
INSERT INTO `t_area` VALUES ('150722', '呼伦贝尔市', 'hulunbeier', '莫力达瓦达斡尔族自治旗', '900519', '内蒙古自治区', 'HLBEHLBEMLDWDWEZZZ');
INSERT INTO `t_area` VALUES ('150723', '呼伦贝尔市', 'hulunbeier', '鄂伦春自治旗', '900520', '内蒙古自治区', 'HLBEHLBEELCZZ');
INSERT INTO `t_area` VALUES ('150724', '呼伦贝尔市', 'hulunbeier', '鄂温克族自治旗', '900521', '内蒙古自治区', 'HLBEHLBEEWKZZZ');
INSERT INTO `t_area` VALUES ('150725', '呼伦贝尔市', 'hulunbeier', '陈巴尔虎旗', '900522', '内蒙古自治区', 'HLBEHLBECBEH');
INSERT INTO `t_area` VALUES ('150726', '呼伦贝尔市', 'hulunbeier', '新巴尔虎左旗', '900523', '内蒙古自治区', 'HLBEHLBEXBEHZ');
INSERT INTO `t_area` VALUES ('150727', '呼伦贝尔市', 'hulunbeier', '新巴尔虎右旗', '900524', '内蒙古自治区', 'HLBEHLBEXBEHY');
INSERT INTO `t_area` VALUES ('150781', '呼伦贝尔市', 'hulunbeier', '满洲里市', '900525', '内蒙古自治区', 'HLBEHLBEMZL');
INSERT INTO `t_area` VALUES ('150782', '呼伦贝尔市', 'hulunbeier', '牙克石市', '900526', '内蒙古自治区', 'HLBEHLBEYKS');
INSERT INTO `t_area` VALUES ('150783', '呼伦贝尔市', 'hulunbeier', '扎兰屯市', '900527', '内蒙古自治区', 'HLBEHLBEZLT');
INSERT INTO `t_area` VALUES ('150784', '呼伦贝尔市', 'hulunbeier', '额尔古纳市', '900528', '内蒙古自治区', 'HLBEHLBEEEGN');
INSERT INTO `t_area` VALUES ('150785', '呼伦贝尔市', 'hulunbeier', '根河市', '900529', '内蒙古自治区', 'HLBEHLBEGH');
INSERT INTO `t_area` VALUES ('150802', '巴彦淖尔市', 'bayannaoer', '临河区', '900449', '内蒙古自治区', 'BYNEBYNELH');
INSERT INTO `t_area` VALUES ('150821', '巴彦淖尔市', 'bayannaoer', '五原县', '900450', '内蒙古自治区', 'BYNEBYNEWY');
INSERT INTO `t_area` VALUES ('150822', '巴彦淖尔市', 'bayannaoer', '磴口县', '900451', '内蒙古自治区', 'BYNEBYNEDK');
INSERT INTO `t_area` VALUES ('150823', '巴彦淖尔市', 'bayannaoer', '乌拉特前旗', '900452', '内蒙古自治区', 'BYNEBYNEWLTQ');
INSERT INTO `t_area` VALUES ('150824', '巴彦淖尔市', 'bayannaoer', '乌拉特中旗', '900453', '内蒙古自治区', 'BYNEBYNEWLTZ');
INSERT INTO `t_area` VALUES ('150825', '巴彦淖尔市', 'bayannaoer', '乌拉特后旗', '900454', '内蒙古自治区', 'BYNEBYNEWLTH');
INSERT INTO `t_area` VALUES ('150826', '巴彦淖尔市', 'bayannaoer', '杭锦后旗', '900455', '内蒙古自治区', 'BYNEBYNEHJH');
INSERT INTO `t_area` VALUES ('150902', '乌兰察布市', 'wulanchabu', '集宁区', '900475', '内蒙古自治区', 'WLCBWLCBJN');
INSERT INTO `t_area` VALUES ('150921', '乌兰察布市', 'wulanchabu', '卓资县', '900476', '内蒙古自治区', 'WLCBWLCBZZ');
INSERT INTO `t_area` VALUES ('150922', '乌兰察布市', 'wulanchabu', '化德县', '900477', '内蒙古自治区', 'WLCBWLCBHD');
INSERT INTO `t_area` VALUES ('150923', '乌兰察布市', 'wulanchabu', '商都县', '900478', '内蒙古自治区', 'WLCBWLCBSD');
INSERT INTO `t_area` VALUES ('150924', '乌兰察布市', 'wulanchabu', '兴和县', '900479', '内蒙古自治区', 'WLCBWLCBXH');
INSERT INTO `t_area` VALUES ('150925', '乌兰察布市', 'wulanchabu', '凉城县', '900480', '内蒙古自治区', 'WLCBWLCBLC');
INSERT INTO `t_area` VALUES ('150926', '乌兰察布市', 'wulanchabu', '察哈尔右翼前旗', '900481', '内蒙古自治区', 'WLCBWLCBCHEYYQ');
INSERT INTO `t_area` VALUES ('150927', '乌兰察布市', 'wulanchabu', '察哈尔右翼中旗', '900482', '内蒙古自治区', 'WLCBWLCBCHEYYZ');
INSERT INTO `t_area` VALUES ('150928', '乌兰察布市', 'wulanchabu', '察哈尔右翼后旗', '900483', '内蒙古自治区', 'WLCBWLCBCHEYYH');
INSERT INTO `t_area` VALUES ('150929', '乌兰察布市', 'wulanchabu', '四子王旗', '900484', '内蒙古自治区', 'WLCBWLCBSZW');
INSERT INTO `t_area` VALUES ('150981', '乌兰察布市', 'wulanchabu', '丰镇市', '900485', '内蒙古自治区', 'WLCBWLCBFZ');
INSERT INTO `t_area` VALUES ('152201', '兴安盟', 'xingan', '乌兰浩特市', '900489', '内蒙古自治区', 'XAXAWLHT');
INSERT INTO `t_area` VALUES ('152202', '兴安盟', 'xingan', '阿尔山市', '900490', '内蒙古自治区', 'XAXAAES');
INSERT INTO `t_area` VALUES ('152221', '兴安盟', 'xingan', '科尔沁右翼前旗', '900491', '内蒙古自治区', 'XAXAKEQYYQ');
INSERT INTO `t_area` VALUES ('152222', '兴安盟', 'xingan', '科尔沁右翼中旗', '900492', '内蒙古自治区', 'XAXAKEQYYZ');
INSERT INTO `t_area` VALUES ('152223', '兴安盟', 'xingan', '扎赉特旗', '900493', '内蒙古自治区', 'XAXAZLT');
INSERT INTO `t_area` VALUES ('152224', '兴安盟', 'xingan', '突泉县', '900494', '内蒙古自治区', 'XAXATQ');
INSERT INTO `t_area` VALUES ('152501', '锡林郭勒盟', 'xilinguole', '二连浩特市', '900539', '内蒙古自治区', 'XLGLXLGLELHT');
INSERT INTO `t_area` VALUES ('152502', '锡林郭勒盟', 'xilinguole', '锡林浩特市', '900540', '内蒙古自治区', 'XLGLXLGLXLHT');
INSERT INTO `t_area` VALUES ('152522', '锡林郭勒盟', 'xilinguole', '阿巴嘎旗', '900541', '内蒙古自治区', 'XLGLXLGLABG');
INSERT INTO `t_area` VALUES ('152523', '锡林郭勒盟', 'xilinguole', '苏尼特左旗', '900542', '内蒙古自治区', 'XLGLXLGLSNTZ');
INSERT INTO `t_area` VALUES ('152524', '锡林郭勒盟', 'xilinguole', '苏尼特右旗', '900543', '内蒙古自治区', 'XLGLXLGLSNTY');
INSERT INTO `t_area` VALUES ('152525', '锡林郭勒盟', 'xilinguole', '东乌珠穆沁旗', '900544', '内蒙古自治区', 'XLGLXLGLDWZMQ');
INSERT INTO `t_area` VALUES ('152526', '锡林郭勒盟', 'xilinguole', '西乌珠穆沁旗', '900545', '内蒙古自治区', 'XLGLXLGLXWZMQ');
INSERT INTO `t_area` VALUES ('152527', '锡林郭勒盟', 'xilinguole', '太仆寺旗', '900546', '内蒙古自治区', 'XLGLXLGLTPS');
INSERT INTO `t_area` VALUES ('152528', '锡林郭勒盟', 'xilinguole', '镶黄旗', '900547', '内蒙古自治区', 'XLGLXLGLXH');
INSERT INTO `t_area` VALUES ('152529', '锡林郭勒盟', 'xilinguole', '正镶白旗', '900548', '内蒙古自治区', 'XLGLXLGLZXB');
INSERT INTO `t_area` VALUES ('152530', '锡林郭勒盟', 'xilinguole', '正蓝旗', '900549', '内蒙古自治区', 'XLGLXLGLZL');
INSERT INTO `t_area` VALUES ('152531', '锡林郭勒盟', 'xilinguole', '多伦县', '900550', '内蒙古自治区', 'XLGLXLGLDL');
INSERT INTO `t_area` VALUES ('152921', '阿拉善盟', 'alashan', '阿拉善左旗', '900472', '内蒙古自治区', 'ALSALSALSZ');
INSERT INTO `t_area` VALUES ('152922', '阿拉善盟', 'alashan', '阿拉善右旗', '900473', '内蒙古自治区', 'ALSALSALSY');
INSERT INTO `t_area` VALUES ('152923', '阿拉善盟', 'alashan', '额济纳旗', '900474', '内蒙古自治区', 'ALSALSEJN');
INSERT INTO `t_area` VALUES ('210102', '沈阳市', 'shenyang', '和平区', '900141', '辽宁省', 'SYSYHP');
INSERT INTO `t_area` VALUES ('210103', '沈阳市', 'shenyang', '沈河区', '900142', '辽宁省', 'SYSYSH');
INSERT INTO `t_area` VALUES ('210104', '沈阳市', 'shenyang', '大东区', '900143', '辽宁省', 'SYSYDD');
INSERT INTO `t_area` VALUES ('210105', '沈阳市', 'shenyang', '皇姑区', '900144', '辽宁省', 'SYSYHG');
INSERT INTO `t_area` VALUES ('210106', '沈阳市', 'shenyang', '铁西区', '900145', '辽宁省', 'SYSYTX');
INSERT INTO `t_area` VALUES ('210111', '沈阳市', 'shenyang', '苏家屯区', '900146', '辽宁省', 'SYSYSJT');
INSERT INTO `t_area` VALUES ('210112', '沈阳市', 'shenyang', '浑南区', '900147', '辽宁省', 'SYSYHN');
INSERT INTO `t_area` VALUES ('210113', '沈阳市', 'shenyang', '沈北新区', '900148', '辽宁省', 'SYSYSBX');
INSERT INTO `t_area` VALUES ('210114', '沈阳市', 'shenyang', '于洪区', '900149', '辽宁省', 'SYSYYH');
INSERT INTO `t_area` VALUES ('210122', '沈阳市', 'shenyang', '辽中县', '900150', '辽宁省', 'SYSYLZ');
INSERT INTO `t_area` VALUES ('210123', '沈阳市', 'shenyang', '康平县', '900151', '辽宁省', 'SYSYKP');
INSERT INTO `t_area` VALUES ('210124', '沈阳市', 'shenyang', '法库县', '900152', '辽宁省', 'SYSYFK');
INSERT INTO `t_area` VALUES ('210181', '沈阳市', 'shenyang', '新民市', '900153', '辽宁省', 'SYSYXM');
INSERT INTO `t_area` VALUES ('210202', '大连市', 'dalian', '中山区', '900219', '辽宁省', 'DLDLZS');
INSERT INTO `t_area` VALUES ('210203', '大连市', 'dalian', '西岗区', '900220', '辽宁省', 'DLDLXG');
INSERT INTO `t_area` VALUES ('210204', '大连市', 'dalian', '沙河口区', '900221', '辽宁省', 'DLDLSHK');
INSERT INTO `t_area` VALUES ('210211', '大连市', 'dalian', '甘井子区', '900222', '辽宁省', 'DLDLGJZ');
INSERT INTO `t_area` VALUES ('210212', '大连市', 'dalian', '旅顺口区', '900223', '辽宁省', 'DLDLLSK');
INSERT INTO `t_area` VALUES ('210213', '大连市', 'dalian', '金州区', '900224', '辽宁省', 'DLDLJZ');
INSERT INTO `t_area` VALUES ('210224', '大连市', 'dalian', '长海县', '900225', '辽宁省', 'DLDLZH');
INSERT INTO `t_area` VALUES ('210281', '大连市', 'dalian', '瓦房店市', '900226', '辽宁省', 'DLDLWFD');
INSERT INTO `t_area` VALUES ('210282', '大连市', 'dalian', '普兰店市', '900227', '辽宁省', 'DLDLPLD');
INSERT INTO `t_area` VALUES ('210283', '大连市', 'dalian', '庄河市', '900228', '辽宁省', 'DLDLZH');
INSERT INTO `t_area` VALUES ('210302', '鞍山市', 'anshan', '铁东区', '900154', '辽宁省', 'ASASTD');
INSERT INTO `t_area` VALUES ('210303', '鞍山市', 'anshan', '铁西区', '900155', '辽宁省', 'ASASTX');
INSERT INTO `t_area` VALUES ('210304', '鞍山市', 'anshan', '立山区', '900156', '辽宁省', 'ASASLS');
INSERT INTO `t_area` VALUES ('210311', '鞍山市', 'anshan', '千山区', '900157', '辽宁省', 'ASASQS');
INSERT INTO `t_area` VALUES ('210321', '鞍山市', 'anshan', '台安县', '900158', '辽宁省', 'ASASTA');
INSERT INTO `t_area` VALUES ('210323', '鞍山市', 'anshan', '岫岩满族自治县', '900159', '辽宁省', 'ASASXYMZZZ');
INSERT INTO `t_area` VALUES ('210381', '鞍山市', 'anshan', '海城市', '900160', '辽宁省', 'ASASHC');
INSERT INTO `t_area` VALUES ('210402', '抚顺市', 'fushun', '新抚区', '900161', '辽宁省', 'FSFSXF');
INSERT INTO `t_area` VALUES ('210403', '抚顺市', 'fushun', '东洲区', '900162', '辽宁省', 'FSFSDZ');
INSERT INTO `t_area` VALUES ('210404', '抚顺市', 'fushun', '望花区', '900163', '辽宁省', 'FSFSWH');
INSERT INTO `t_area` VALUES ('210411', '抚顺市', 'fushun', '顺城区', '900164', '辽宁省', 'FSFSSC');
INSERT INTO `t_area` VALUES ('210421', '抚顺市', 'fushun', '抚顺县', '900165', '辽宁省', 'FSFSFS');
INSERT INTO `t_area` VALUES ('210422', '抚顺市', 'fushun', '新宾满族自治县', '900166', '辽宁省', 'FSFSXBMZZZ');
INSERT INTO `t_area` VALUES ('210423', '抚顺市', 'fushun', '清原满族自治县', '900167', '辽宁省', 'FSFSQYMZZZ');
INSERT INTO `t_area` VALUES ('210502', '本溪市', 'benxi', '平山区', '900192', '辽宁省', 'BXBXPS');
INSERT INTO `t_area` VALUES ('210503', '本溪市', 'benxi', '溪湖区', '900193', '辽宁省', 'BXBXXH');
INSERT INTO `t_area` VALUES ('210504', '本溪市', 'benxi', '明山区', '900194', '辽宁省', 'BXBXMS');
INSERT INTO `t_area` VALUES ('210505', '本溪市', 'benxi', '南芬区', '900195', '辽宁省', 'BXBXNF');
INSERT INTO `t_area` VALUES ('210521', '本溪市', 'benxi', '本溪满族自治县', '900196', '辽宁省', 'BXBXBXMZZZ');
INSERT INTO `t_area` VALUES ('210522', '本溪市', 'benxi', '桓仁满族自治县', '900197', '辽宁省', 'BXBXHRMZZZ');
INSERT INTO `t_area` VALUES ('210602', '丹东市', 'dandong', '元宝区', '900235', '辽宁省', 'DDDDYB');
INSERT INTO `t_area` VALUES ('210603', '丹东市', 'dandong', '振兴区', '900236', '辽宁省', 'DDDDZX');
INSERT INTO `t_area` VALUES ('210604', '丹东市', 'dandong', '振安区', '900237', '辽宁省', 'DDDDZA');
INSERT INTO `t_area` VALUES ('210624', '丹东市', 'dandong', '宽甸满族自治县', '900238', '辽宁省', 'DDDDKDMZZZ');
INSERT INTO `t_area` VALUES ('210681', '丹东市', 'dandong', '东港市', '900239', '辽宁省', 'DDDDDG');
INSERT INTO `t_area` VALUES ('210682', '丹东市', 'dandong', '凤城市', '900240', '辽宁省', 'DDDDFC');
INSERT INTO `t_area` VALUES ('210702', '锦州市', 'jinzhou', '古塔区', '900205', '辽宁省', 'JZJZGT');
INSERT INTO `t_area` VALUES ('210703', '锦州市', 'jinzhou', '凌河区', '900206', '辽宁省', 'JZJZLH');
INSERT INTO `t_area` VALUES ('210711', '锦州市', 'jinzhou', '太和区', '900207', '辽宁省', 'JZJZTH');
INSERT INTO `t_area` VALUES ('210726', '锦州市', 'jinzhou', '黑山县', '900208', '辽宁省', 'JZJZHS');
INSERT INTO `t_area` VALUES ('210727', '锦州市', 'jinzhou', '义县', '900209', '辽宁省', 'JZJZY');
INSERT INTO `t_area` VALUES ('210781', '锦州市', 'jinzhou', '凌海市', '900210', '辽宁省', 'JZJZLH');
INSERT INTO `t_area` VALUES ('210782', '锦州市', 'jinzhou', '北镇市', '900211', '辽宁省', 'JZJZBZ');
INSERT INTO `t_area` VALUES ('210802', '营口市', 'yingkou', '站前区', '900186', '辽宁省', 'YKYKZQ');
INSERT INTO `t_area` VALUES ('210803', '营口市', 'yingkou', '西市区', '900187', '辽宁省', 'YKYKXS');
INSERT INTO `t_area` VALUES ('210804', '营口市', 'yingkou', '鲅鱼圈区', '900188', '辽宁省', 'YKYKBYQ');
INSERT INTO `t_area` VALUES ('210811', '营口市', 'yingkou', '老边区', '900189', '辽宁省', 'YKYKLB');
INSERT INTO `t_area` VALUES ('210881', '营口市', 'yingkou', '盖州市', '900190', '辽宁省', 'YKYKGZ');
INSERT INTO `t_area` VALUES ('210882', '营口市', 'yingkou', '大石桥市', '900191', '辽宁省', 'YKYKDSQ');
INSERT INTO `t_area` VALUES ('210902', '阜新市', 'fuxin', '海州区', '900198', '辽宁省', 'FXFXHZ');
INSERT INTO `t_area` VALUES ('210903', '阜新市', 'fuxin', '新邱区', '900199', '辽宁省', 'FXFXXQ');
INSERT INTO `t_area` VALUES ('210904', '阜新市', 'fuxin', '太平区', '900200', '辽宁省', 'FXFXTP');
INSERT INTO `t_area` VALUES ('210905', '阜新市', 'fuxin', '清河门区', '900201', '辽宁省', 'FXFXQHM');
INSERT INTO `t_area` VALUES ('210911', '阜新市', 'fuxin', '细河区', '900202', '辽宁省', 'FXFXXH');
INSERT INTO `t_area` VALUES ('210921', '阜新市', 'fuxin', '阜新蒙古族自治县', '900203', '辽宁省', 'FXFXFXMGZZZ');
INSERT INTO `t_area` VALUES ('210922', '阜新市', 'fuxin', '彰武县', '900204', '辽宁省', 'FXFXZW');
INSERT INTO `t_area` VALUES ('211002', '辽阳市', 'liaoyang', '白塔区', '900212', '辽宁省', 'LYLYBT');
INSERT INTO `t_area` VALUES ('211003', '辽阳市', 'liaoyang', '文圣区', '900213', '辽宁省', 'LYLYWS');
INSERT INTO `t_area` VALUES ('211004', '辽阳市', 'liaoyang', '宏伟区', '900214', '辽宁省', 'LYLYHW');
INSERT INTO `t_area` VALUES ('211005', '辽阳市', 'liaoyang', '弓长岭区', '900215', '辽宁省', 'LYLYGZL');
INSERT INTO `t_area` VALUES ('211011', '辽阳市', 'liaoyang', '太子河区', '900216', '辽宁省', 'LYLYTZH');
INSERT INTO `t_area` VALUES ('211021', '辽阳市', 'liaoyang', '辽阳县', '900217', '辽宁省', 'LYLYLY');
INSERT INTO `t_area` VALUES ('211081', '辽阳市', 'liaoyang', '灯塔市', '900218', '辽宁省', 'LYLYDT');
INSERT INTO `t_area` VALUES ('211102', '盘锦市', 'panjin', '双台子区', '900182', '辽宁省', 'PJPJSTZ');
INSERT INTO `t_area` VALUES ('211103', '盘锦市', 'panjin', '兴隆台区', '900183', '辽宁省', 'PJPJXLT');
INSERT INTO `t_area` VALUES ('211121', '盘锦市', 'panjin', '大洼县', '900184', '辽宁省', 'PJPJDW');
INSERT INTO `t_area` VALUES ('211122', '盘锦市', 'panjin', '盘山县', '900185', '辽宁省', 'PJPJPS');
INSERT INTO `t_area` VALUES ('211202', '铁岭市', 'tieling', '银州区', '900175', '辽宁省', 'TLTLYZ');
INSERT INTO `t_area` VALUES ('211204', '铁岭市', 'tieling', '清河区', '900176', '辽宁省', 'TLTLQH');
INSERT INTO `t_area` VALUES ('211221', '铁岭市', 'tieling', '铁岭县', '900177', '辽宁省', 'TLTLTL');
INSERT INTO `t_area` VALUES ('211223', '铁岭市', 'tieling', '西丰县', '900178', '辽宁省', 'TLTLXF');
INSERT INTO `t_area` VALUES ('211224', '铁岭市', 'tieling', '昌图县', '900179', '辽宁省', 'TLTLCT');
INSERT INTO `t_area` VALUES ('211281', '铁岭市', 'tieling', '调兵山市', '900180', '辽宁省', 'TLTLDBS');
INSERT INTO `t_area` VALUES ('211282', '铁岭市', 'tieling', '开原市', '900181', '辽宁省', 'TLTLKY');
INSERT INTO `t_area` VALUES ('211302', '朝阳市', 'chaoyang', '双塔区', '900168', '辽宁省', 'CYCYST');
INSERT INTO `t_area` VALUES ('211303', '朝阳市', 'chaoyang', '龙城区', '900169', '辽宁省', 'CYCYLC');
INSERT INTO `t_area` VALUES ('211321', '朝阳市', 'chaoyang', '朝阳县', '900170', '辽宁省', 'CYCYCY');
INSERT INTO `t_area` VALUES ('211322', '朝阳市', 'chaoyang', '建平县', '900171', '辽宁省', 'CYCYJP');
INSERT INTO `t_area` VALUES ('211324', '朝阳市', 'chaoyang', '喀喇沁左翼蒙古族自治县', '900172', '辽宁省', 'CYCYKLQZYMGZZZ');
INSERT INTO `t_area` VALUES ('211381', '朝阳市', 'chaoyang', '北票市', '900173', '辽宁省', 'CYCYBP');
INSERT INTO `t_area` VALUES ('211382', '朝阳市', 'chaoyang', '凌源市', '900174', '辽宁省', 'CYCYLY');
INSERT INTO `t_area` VALUES ('211402', '葫芦岛市', 'huludao', '连山区', '900229', '辽宁省', 'HLDHLDLS');
INSERT INTO `t_area` VALUES ('211403', '葫芦岛市', 'huludao', '龙港区', '900230', '辽宁省', 'HLDHLDLG');
INSERT INTO `t_area` VALUES ('211404', '葫芦岛市', 'huludao', '南票区', '900231', '辽宁省', 'HLDHLDNP');
INSERT INTO `t_area` VALUES ('211421', '葫芦岛市', 'huludao', '绥中县', '900232', '辽宁省', 'HLDHLDSZ');
INSERT INTO `t_area` VALUES ('211422', '葫芦岛市', 'huludao', '建昌县', '900233', '辽宁省', 'HLDHLDJC');
INSERT INTO `t_area` VALUES ('211481', '葫芦岛市', 'huludao', '兴城市', '900234', '辽宁省', 'HLDHLDXC');
INSERT INTO `t_area` VALUES ('220102', '长春市', 'zhangchun', '南关区', '900401', '吉林省', 'ZCZCNG');
INSERT INTO `t_area` VALUES ('220103', '长春市', 'zhangchun', '宽城区', '900402', '吉林省', 'ZCZCKC');
INSERT INTO `t_area` VALUES ('220104', '长春市', 'zhangchun', '朝阳区', '900403', '吉林省', 'ZCZCCY');
INSERT INTO `t_area` VALUES ('220105', '长春市', 'zhangchun', '二道区', '900404', '吉林省', 'ZCZCED');
INSERT INTO `t_area` VALUES ('220106', '长春市', 'zhangchun', '绿园区', '900405', '吉林省', 'ZCZCLY');
INSERT INTO `t_area` VALUES ('220112', '长春市', 'zhangchun', '双阳区', '900406', '吉林省', 'ZCZCSY');
INSERT INTO `t_area` VALUES ('220113', '长春市', 'zhangchun', '九台区', '900407', '吉林省', 'ZCZCJT');
INSERT INTO `t_area` VALUES ('220122', '长春市', 'zhangchun', '农安县', '900408', '吉林省', 'ZCZCNA');
INSERT INTO `t_area` VALUES ('220182', '长春市', 'zhangchun', '榆树市', '900409', '吉林省', 'ZCZCYS');
INSERT INTO `t_area` VALUES ('220183', '长春市', 'zhangchun', '德惠市', '900410', '吉林省', 'ZCZCDH');
INSERT INTO `t_area` VALUES ('220202', '吉林市', 'jilin', '昌邑区', '900411', '吉林省', 'JLJLCY');
INSERT INTO `t_area` VALUES ('220203', '吉林市', 'jilin', '龙潭区', '900412', '吉林省', 'JLJLLT');
INSERT INTO `t_area` VALUES ('220204', '吉林市', 'jilin', '船营区', '900413', '吉林省', 'JLJLCY');
INSERT INTO `t_area` VALUES ('220211', '吉林市', 'jilin', '丰满区', '900414', '吉林省', 'JLJLFM');
INSERT INTO `t_area` VALUES ('220221', '吉林市', 'jilin', '永吉县', '900415', '吉林省', 'JLJLYJ');
INSERT INTO `t_area` VALUES ('220281', '吉林市', 'jilin', '蛟河市', '900416', '吉林省', 'JLJLJH');
INSERT INTO `t_area` VALUES ('220282', '吉林市', 'jilin', '桦甸市', '900417', '吉林省', 'JLJLHD');
INSERT INTO `t_area` VALUES ('220283', '吉林市', 'jilin', '舒兰市', '900418', '吉林省', 'JLJLSL');
INSERT INTO `t_area` VALUES ('220284', '吉林市', 'jilin', '磐石市', '900419', '吉林省', 'JLJLPS');
INSERT INTO `t_area` VALUES ('220302', '四平市', 'siping', '铁西区', '900384', '吉林省', 'SPSPTX');
INSERT INTO `t_area` VALUES ('220303', '四平市', 'siping', '铁东区', '900385', '吉林省', 'SPSPTD');
INSERT INTO `t_area` VALUES ('220322', '四平市', 'siping', '梨树县', '900386', '吉林省', 'SPSPLS');
INSERT INTO `t_area` VALUES ('220323', '四平市', 'siping', '伊通满族自治县', '900387', '吉林省', 'SPSPYTMZZZ');
INSERT INTO `t_area` VALUES ('220381', '四平市', 'siping', '公主岭市', '900388', '吉林省', 'SPSPGZL');
INSERT INTO `t_area` VALUES ('220382', '四平市', 'siping', '双辽市', '900389', '吉林省', 'SPSPSL');
INSERT INTO `t_area` VALUES ('220402', '辽源市', 'liaoyuan', '龙山区', '900397', '吉林省', 'LYLYLS');
INSERT INTO `t_area` VALUES ('220403', '辽源市', 'liaoyuan', '西安区', '900398', '吉林省', 'LYLYXA');
INSERT INTO `t_area` VALUES ('220421', '辽源市', 'liaoyuan', '东丰县', '900399', '吉林省', 'LYLYDF');
INSERT INTO `t_area` VALUES ('220422', '辽源市', 'liaoyuan', '东辽县', '900400', '吉林省', 'LYLYDL');
INSERT INTO `t_area` VALUES ('220502', '通化市', 'tonghua', '东昌区', '900390', '吉林省', 'THTHDC');
INSERT INTO `t_area` VALUES ('220503', '通化市', 'tonghua', '二道江区', '900391', '吉林省', 'THTHEDJ');
INSERT INTO `t_area` VALUES ('220521', '通化市', 'tonghua', '通化县', '900392', '吉林省', 'THTHTH');
INSERT INTO `t_area` VALUES ('220523', '通化市', 'tonghua', '辉南县', '900393', '吉林省', 'THTHHN');
INSERT INTO `t_area` VALUES ('220524', '通化市', 'tonghua', '柳河县', '900394', '吉林省', 'THTHLH');
INSERT INTO `t_area` VALUES ('220581', '通化市', 'tonghua', '梅河口市', '900395', '吉林省', 'THTHMHK');
INSERT INTO `t_area` VALUES ('220582', '通化市', 'tonghua', '集安市', '900396', '吉林省', 'THTHJA');
INSERT INTO `t_area` VALUES ('220602', '白山市', 'baishan', '浑江区', '900378', '吉林省', 'BSBSHJ');
INSERT INTO `t_area` VALUES ('220605', '白山市', 'baishan', '江源区', '900379', '吉林省', 'BSBSJY');
INSERT INTO `t_area` VALUES ('220621', '白山市', 'baishan', '抚松县', '900380', '吉林省', 'BSBSFS');
INSERT INTO `t_area` VALUES ('220622', '白山市', 'baishan', '靖宇县', '900381', '吉林省', 'BSBSJY');
INSERT INTO `t_area` VALUES ('220623', '白山市', 'baishan', '长白朝鲜族自治县', '900382', '吉林省', 'BSBSZBCXZZZ');
INSERT INTO `t_area` VALUES ('220681', '白山市', 'baishan', '临江市', '900383', '吉林省', 'BSBSLJ');
INSERT INTO `t_area` VALUES ('220702', '松原市', 'songyuan', '宁江区', '900428', '吉林省', 'SYSYNJ');
INSERT INTO `t_area` VALUES ('220721', '松原市', 'songyuan', '前郭尔罗斯蒙古族自治县', '900429', '吉林省', 'SYSYQGELSMGZZZ');
INSERT INTO `t_area` VALUES ('220722', '松原市', 'songyuan', '长岭县', '900430', '吉林省', 'SYSYZL');
INSERT INTO `t_area` VALUES ('220723', '松原市', 'songyuan', '乾安县', '900431', '吉林省', 'SYSYQA');
INSERT INTO `t_area` VALUES ('220781', '松原市', 'songyuan', '扶余市', '900432', '吉林省', 'SYSYFY');
INSERT INTO `t_area` VALUES ('220802', '白城市', 'baicheng', '洮北区', '900373', '吉林省', 'BCBCTB');
INSERT INTO `t_area` VALUES ('220821', '白城市', 'baicheng', '镇赉县', '900374', '吉林省', 'BCBCZL');
INSERT INTO `t_area` VALUES ('220822', '白城市', 'baicheng', '通榆县', '900375', '吉林省', 'BCBCTY');
INSERT INTO `t_area` VALUES ('220881', '白城市', 'baicheng', '洮南市', '900376', '吉林省', 'BCBCTN');
INSERT INTO `t_area` VALUES ('220882', '白城市', 'baicheng', '大安市', '900377', '吉林省', 'BCBCDA');
INSERT INTO `t_area` VALUES ('222401', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhi', '延吉市', '900420', '吉林省', 'YBCXZZZYBCXZZZYJ');
INSERT INTO `t_area` VALUES ('222402', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhi', '图们市', '900421', '吉林省', 'YBCXZZZYBCXZZZTM');
INSERT INTO `t_area` VALUES ('222403', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhi', '敦化市', '900422', '吉林省', 'YBCXZZZYBCXZZZDH');
INSERT INTO `t_area` VALUES ('222404', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhi', '珲春市', '900423', '吉林省', 'YBCXZZZYBCXZZZHC');
INSERT INTO `t_area` VALUES ('222405', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhi', '龙井市', '900424', '吉林省', 'YBCXZZZYBCXZZZLJ');
INSERT INTO `t_area` VALUES ('222406', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhi', '和龙市', '900425', '吉林省', 'YBCXZZZYBCXZZZHL');
INSERT INTO `t_area` VALUES ('222424', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhi', '汪清县', '900426', '吉林省', 'YBCXZZZYBCXZZZWQ');
INSERT INTO `t_area` VALUES ('222426', '延边朝鲜族自治州', 'yanbianchaoxianzuzizhi', '安图县', '900427', '吉林省', 'YBCXZZZYBCXZZZAT');
INSERT INTO `t_area` VALUES ('230102', '哈尔滨市', 'haerbin', '道里区', '901548', '黑龙江省', 'HEBHEBDL');
INSERT INTO `t_area` VALUES ('230103', '哈尔滨市', 'haerbin', '南岗区', '901549', '黑龙江省', 'HEBHEBNG');
INSERT INTO `t_area` VALUES ('230104', '哈尔滨市', 'haerbin', '道外区', '901550', '黑龙江省', 'HEBHEBDW');
INSERT INTO `t_area` VALUES ('230108', '哈尔滨市', 'haerbin', '平房区', '901551', '黑龙江省', 'HEBHEBPF');
INSERT INTO `t_area` VALUES ('230109', '哈尔滨市', 'haerbin', '松北区', '901552', '黑龙江省', 'HEBHEBSB');
INSERT INTO `t_area` VALUES ('230110', '哈尔滨市', 'haerbin', '香坊区', '901553', '黑龙江省', 'HEBHEBXF');
INSERT INTO `t_area` VALUES ('230111', '哈尔滨市', 'haerbin', '呼兰区', '901554', '黑龙江省', 'HEBHEBHL');
INSERT INTO `t_area` VALUES ('230112', '哈尔滨市', 'haerbin', '阿城区', '901555', '黑龙江省', 'HEBHEBAC');
INSERT INTO `t_area` VALUES ('230113', '哈尔滨市', 'haerbin', '双城区', '901556', '黑龙江省', 'HEBHEBSC');
INSERT INTO `t_area` VALUES ('230123', '哈尔滨市', 'haerbin', '依兰县', '901557', '黑龙江省', 'HEBHEBYL');
INSERT INTO `t_area` VALUES ('230124', '哈尔滨市', 'haerbin', '方正县', '901558', '黑龙江省', 'HEBHEBFZ');
INSERT INTO `t_area` VALUES ('230125', '哈尔滨市', 'haerbin', '宾县', '901559', '黑龙江省', 'HEBHEBB');
INSERT INTO `t_area` VALUES ('230126', '哈尔滨市', 'haerbin', '巴彦县', '901560', '黑龙江省', 'HEBHEBBY');
INSERT INTO `t_area` VALUES ('230127', '哈尔滨市', 'haerbin', '木兰县', '901561', '黑龙江省', 'HEBHEBML');
INSERT INTO `t_area` VALUES ('230128', '哈尔滨市', 'haerbin', '通河县', '901562', '黑龙江省', 'HEBHEBTH');
INSERT INTO `t_area` VALUES ('230129', '哈尔滨市', 'haerbin', '延寿县', '901563', '黑龙江省', 'HEBHEBYS');
INSERT INTO `t_area` VALUES ('230183', '哈尔滨市', 'haerbin', '尚志市', '901564', '黑龙江省', 'HEBHEBSZ');
INSERT INTO `t_area` VALUES ('230184', '哈尔滨市', 'haerbin', '五常市', '901565', '黑龙江省', 'HEBHEBWC');
INSERT INTO `t_area` VALUES ('230202', '齐齐哈尔市', 'qiqihaer', '龙沙区', '901522', '黑龙江省', 'QQHEQQHELS');
INSERT INTO `t_area` VALUES ('230203', '齐齐哈尔市', 'qiqihaer', '建华区', '901523', '黑龙江省', 'QQHEQQHEJH');
INSERT INTO `t_area` VALUES ('230204', '齐齐哈尔市', 'qiqihaer', '铁锋区', '901524', '黑龙江省', 'QQHEQQHETF');
INSERT INTO `t_area` VALUES ('230205', '齐齐哈尔市', 'qiqihaer', '昂昂溪区', '901525', '黑龙江省', 'QQHEQQHEAAX');
INSERT INTO `t_area` VALUES ('230206', '齐齐哈尔市', 'qiqihaer', '富拉尔基区', '901526', '黑龙江省', 'QQHEQQHEFLEJ');
INSERT INTO `t_area` VALUES ('230207', '齐齐哈尔市', 'qiqihaer', '碾子山区', '901527', '黑龙江省', 'QQHEQQHENZS');
INSERT INTO `t_area` VALUES ('230208', '齐齐哈尔市', 'qiqihaer', '梅里斯达斡尔族区', '901528', '黑龙江省', 'QQHEQQHEMLSDWEZ');
INSERT INTO `t_area` VALUES ('230221', '齐齐哈尔市', 'qiqihaer', '龙江县', '901529', '黑龙江省', 'QQHEQQHELJ');
INSERT INTO `t_area` VALUES ('230223', '齐齐哈尔市', 'qiqihaer', '依安县', '901530', '黑龙江省', 'QQHEQQHEYA');
INSERT INTO `t_area` VALUES ('230224', '齐齐哈尔市', 'qiqihaer', '泰来县', '901531', '黑龙江省', 'QQHEQQHETL');
INSERT INTO `t_area` VALUES ('230225', '齐齐哈尔市', 'qiqihaer', '甘南县', '901532', '黑龙江省', 'QQHEQQHEGN');
INSERT INTO `t_area` VALUES ('230227', '齐齐哈尔市', 'qiqihaer', '富裕县', '901533', '黑龙江省', 'QQHEQQHEFY');
INSERT INTO `t_area` VALUES ('230229', '齐齐哈尔市', 'qiqihaer', '克山县', '901534', '黑龙江省', 'QQHEQQHEKS');
INSERT INTO `t_area` VALUES ('230230', '齐齐哈尔市', 'qiqihaer', '克东县', '901535', '黑龙江省', 'QQHEQQHEKD');
INSERT INTO `t_area` VALUES ('230231', '齐齐哈尔市', 'qiqihaer', '拜泉县', '901536', '黑龙江省', 'QQHEQQHEBQ');
INSERT INTO `t_area` VALUES ('230281', '齐齐哈尔市', 'qiqihaer', '讷河市', '901537', '黑龙江省', 'QQHEQQHENH');
INSERT INTO `t_area` VALUES ('230302', '鸡西市', 'jixi', '鸡冠区', '901467', '黑龙江省', 'JXJXJG');
INSERT INTO `t_area` VALUES ('230303', '鸡西市', 'jixi', '恒山区', '901468', '黑龙江省', 'JXJXHS');
INSERT INTO `t_area` VALUES ('230304', '鸡西市', 'jixi', '滴道区', '901469', '黑龙江省', 'JXJXDD');
INSERT INTO `t_area` VALUES ('230305', '鸡西市', 'jixi', '梨树区', '901470', '黑龙江省', 'JXJXLS');
INSERT INTO `t_area` VALUES ('230306', '鸡西市', 'jixi', '城子河区', '901471', '黑龙江省', 'JXJXCZH');
INSERT INTO `t_area` VALUES ('230307', '鸡西市', 'jixi', '麻山区', '901472', '黑龙江省', 'JXJXMS');
INSERT INTO `t_area` VALUES ('230321', '鸡西市', 'jixi', '鸡东县', '901473', '黑龙江省', 'JXJXJD');
INSERT INTO `t_area` VALUES ('230381', '鸡西市', 'jixi', '虎林市', '901474', '黑龙江省', 'JXJXHL');
INSERT INTO `t_area` VALUES ('230382', '鸡西市', 'jixi', '密山市', '901475', '黑龙江省', 'JXJXMS');
INSERT INTO `t_area` VALUES ('230402', '鹤岗市', 'hegang', '向阳区', '901476', '黑龙江省', 'HGHGXY');
INSERT INTO `t_area` VALUES ('230403', '鹤岗市', 'hegang', '工农区', '901477', '黑龙江省', 'HGHGGN');
INSERT INTO `t_area` VALUES ('230404', '鹤岗市', 'hegang', '南山区', '901478', '黑龙江省', 'HGHGNS');
INSERT INTO `t_area` VALUES ('230405', '鹤岗市', 'hegang', '兴安区', '901479', '黑龙江省', 'HGHGXA');
INSERT INTO `t_area` VALUES ('230406', '鹤岗市', 'hegang', '东山区', '901480', '黑龙江省', 'HGHGDS');
INSERT INTO `t_area` VALUES ('230407', '鹤岗市', 'hegang', '兴山区', '901481', '黑龙江省', 'HGHGXS');
INSERT INTO `t_area` VALUES ('230421', '鹤岗市', 'hegang', '萝北县', '901482', '黑龙江省', 'HGHGLB');
INSERT INTO `t_area` VALUES ('230422', '鹤岗市', 'hegang', '绥滨县', '901483', '黑龙江省', 'HGHGSB');
INSERT INTO `t_area` VALUES ('230502', '双鸭山市', 'shuangyashan', '尖山区', '901514', '黑龙江省', 'SYSSYSJS');
INSERT INTO `t_area` VALUES ('230503', '双鸭山市', 'shuangyashan', '岭东区', '901515', '黑龙江省', 'SYSSYSLD');
INSERT INTO `t_area` VALUES ('230505', '双鸭山市', 'shuangyashan', '四方台区', '901516', '黑龙江省', 'SYSSYSSFT');
INSERT INTO `t_area` VALUES ('230506', '双鸭山市', 'shuangyashan', '宝山区', '901517', '黑龙江省', 'SYSSYSBS');
INSERT INTO `t_area` VALUES ('230521', '双鸭山市', 'shuangyashan', '集贤县', '901518', '黑龙江省', 'SYSSYSJX');
INSERT INTO `t_area` VALUES ('230522', '双鸭山市', 'shuangyashan', '友谊县', '901519', '黑龙江省', 'SYSSYSYY');
INSERT INTO `t_area` VALUES ('230523', '双鸭山市', 'shuangyashan', '宝清县', '901520', '黑龙江省', 'SYSSYSBQ');
INSERT INTO `t_area` VALUES ('230524', '双鸭山市', 'shuangyashan', '饶河县', '901521', '黑龙江省', 'SYSSYSRH');
INSERT INTO `t_area` VALUES ('230602', '大庆市', 'daqing', '萨尔图区', '901458', '黑龙江省', 'DQDQSET');
INSERT INTO `t_area` VALUES ('230603', '大庆市', 'daqing', '龙凤区', '901459', '黑龙江省', 'DQDQLF');
INSERT INTO `t_area` VALUES ('230604', '大庆市', 'daqing', '让胡路区', '901460', '黑龙江省', 'DQDQRHL');
INSERT INTO `t_area` VALUES ('230605', '大庆市', 'daqing', '红岗区', '901461', '黑龙江省', 'DQDQHG');
INSERT INTO `t_area` VALUES ('230606', '大庆市', 'daqing', '大同区', '901462', '黑龙江省', 'DQDQDT');
INSERT INTO `t_area` VALUES ('230621', '大庆市', 'daqing', '肇州县', '901463', '黑龙江省', 'DQDQZZ');
INSERT INTO `t_area` VALUES ('230622', '大庆市', 'daqing', '肇源县', '901464', '黑龙江省', 'DQDQZY');
INSERT INTO `t_area` VALUES ('230623', '大庆市', 'daqing', '林甸县', '901465', '黑龙江省', 'DQDQLD');
INSERT INTO `t_area` VALUES ('230624', '大庆市', 'daqing', '杜尔伯特蒙古族自治县', '901466', '黑龙江省', 'DQDQDEBTMGZZZ');
INSERT INTO `t_area` VALUES ('230702', '伊春市', 'yichun', '伊春区', '901566', '黑龙江省', 'YCYCYC');
INSERT INTO `t_area` VALUES ('230703', '伊春市', 'yichun', '南岔区', '901567', '黑龙江省', 'YCYCNC');
INSERT INTO `t_area` VALUES ('230704', '伊春市', 'yichun', '友好区', '901568', '黑龙江省', 'YCYCYH');
INSERT INTO `t_area` VALUES ('230705', '伊春市', 'yichun', '西林区', '901569', '黑龙江省', 'YCYCXL');
INSERT INTO `t_area` VALUES ('230706', '伊春市', 'yichun', '翠峦区', '901570', '黑龙江省', 'YCYCCL');
INSERT INTO `t_area` VALUES ('230707', '伊春市', 'yichun', '新青区', '901571', '黑龙江省', 'YCYCXQ');
INSERT INTO `t_area` VALUES ('230708', '伊春市', 'yichun', '美溪区', '901572', '黑龙江省', 'YCYCMX');
INSERT INTO `t_area` VALUES ('230709', '伊春市', 'yichun', '金山屯区', '901573', '黑龙江省', 'YCYCJST');
INSERT INTO `t_area` VALUES ('230710', '伊春市', 'yichun', '五营区', '901574', '黑龙江省', 'YCYCWY');
INSERT INTO `t_area` VALUES ('230711', '伊春市', 'yichun', '乌马河区', '901575', '黑龙江省', 'YCYCWMH');
INSERT INTO `t_area` VALUES ('230712', '伊春市', 'yichun', '汤旺河区', '901576', '黑龙江省', 'YCYCTWH');
INSERT INTO `t_area` VALUES ('230713', '伊春市', 'yichun', '带岭区', '901577', '黑龙江省', 'YCYCDL');
INSERT INTO `t_area` VALUES ('230714', '伊春市', 'yichun', '乌伊岭区', '901578', '黑龙江省', 'YCYCWYL');
INSERT INTO `t_area` VALUES ('230715', '伊春市', 'yichun', '红星区', '901579', '黑龙江省', 'YCYCHX');
INSERT INTO `t_area` VALUES ('230716', '伊春市', 'yichun', '上甘岭区', '901580', '黑龙江省', 'YCYCSGL');
INSERT INTO `t_area` VALUES ('230722', '伊春市', 'yichun', '嘉荫县', '901581', '黑龙江省', 'YCYCJY');
INSERT INTO `t_area` VALUES ('230781', '伊春市', 'yichun', '铁力市', '901582', '黑龙江省', 'YCYCTL');
INSERT INTO `t_area` VALUES ('230803', '佳木斯市', 'jiamusi', '向阳区', '901484', '黑龙江省', 'JMSJMSXY');
INSERT INTO `t_area` VALUES ('230804', '佳木斯市', 'jiamusi', '前进区', '901485', '黑龙江省', 'JMSJMSQJ');
INSERT INTO `t_area` VALUES ('230805', '佳木斯市', 'jiamusi', '东风区', '901486', '黑龙江省', 'JMSJMSDF');
INSERT INTO `t_area` VALUES ('230811', '佳木斯市', 'jiamusi', '郊区', '901487', '黑龙江省', 'JMSJMSJ');
INSERT INTO `t_area` VALUES ('230822', '佳木斯市', 'jiamusi', '桦南县', '901488', '黑龙江省', 'JMSJMSHN');
INSERT INTO `t_area` VALUES ('230826', '佳木斯市', 'jiamusi', '桦川县', '901489', '黑龙江省', 'JMSJMSHC');
INSERT INTO `t_area` VALUES ('230828', '佳木斯市', 'jiamusi', '汤原县', '901490', '黑龙江省', 'JMSJMSTY');
INSERT INTO `t_area` VALUES ('230833', '佳木斯市', 'jiamusi', '抚远县', '901491', '黑龙江省', 'JMSJMSFY');
INSERT INTO `t_area` VALUES ('230881', '佳木斯市', 'jiamusi', '同江市', '901492', '黑龙江省', 'JMSJMSTJ');
INSERT INTO `t_area` VALUES ('230882', '佳木斯市', 'jiamusi', '富锦市', '901493', '黑龙江省', 'JMSJMSFJ');
INSERT INTO `t_area` VALUES ('230902', '七台河市', 'qitaihe', '新兴区', '901494', '黑龙江省', 'QTHQTHXX');
INSERT INTO `t_area` VALUES ('230903', '七台河市', 'qitaihe', '桃山区', '901495', '黑龙江省', 'QTHQTHTS');
INSERT INTO `t_area` VALUES ('230904', '七台河市', 'qitaihe', '茄子河区', '901496', '黑龙江省', 'QTHQTHQZH');
INSERT INTO `t_area` VALUES ('230921', '七台河市', 'qitaihe', '勃利县', '901497', '黑龙江省', 'QTHQTHBL');
INSERT INTO `t_area` VALUES ('231002', '牡丹江市', 'mudanjiang', '东安区', '901498', '黑龙江省', 'MDJMDJDA');
INSERT INTO `t_area` VALUES ('231003', '牡丹江市', 'mudanjiang', '阳明区', '901499', '黑龙江省', 'MDJMDJYM');
INSERT INTO `t_area` VALUES ('231004', '牡丹江市', 'mudanjiang', '爱民区', '901500', '黑龙江省', 'MDJMDJAM');
INSERT INTO `t_area` VALUES ('231005', '牡丹江市', 'mudanjiang', '西安区', '901501', '黑龙江省', 'MDJMDJXA');
INSERT INTO `t_area` VALUES ('231024', '牡丹江市', 'mudanjiang', '东宁县', '901502', '黑龙江省', 'MDJMDJDN');
INSERT INTO `t_area` VALUES ('231025', '牡丹江市', 'mudanjiang', '林口县', '901503', '黑龙江省', 'MDJMDJLK');
INSERT INTO `t_area` VALUES ('231081', '牡丹江市', 'mudanjiang', '绥芬河市', '901504', '黑龙江省', 'MDJMDJSFH');
INSERT INTO `t_area` VALUES ('231083', '牡丹江市', 'mudanjiang', '海林市', '901505', '黑龙江省', 'MDJMDJHL');
INSERT INTO `t_area` VALUES ('231084', '牡丹江市', 'mudanjiang', '宁安市', '901506', '黑龙江省', 'MDJMDJNA');
INSERT INTO `t_area` VALUES ('231085', '牡丹江市', 'mudanjiang', '穆棱市', '901507', '黑龙江省', 'MDJMDJML');
INSERT INTO `t_area` VALUES ('231102', '黑河市', 'heihe', '爱辉区', '901508', '黑龙江省', 'HHHHAH');
INSERT INTO `t_area` VALUES ('231121', '黑河市', 'heihe', '嫩江县', '901509', '黑龙江省', 'HHHHNJ');
INSERT INTO `t_area` VALUES ('231123', '黑河市', 'heihe', '逊克县', '901510', '黑龙江省', 'HHHHXK');
INSERT INTO `t_area` VALUES ('231124', '黑河市', 'heihe', '孙吴县', '901511', '黑龙江省', 'HHHHSW');
INSERT INTO `t_area` VALUES ('231181', '黑河市', 'heihe', '北安市', '901512', '黑龙江省', 'HHHHBA');
INSERT INTO `t_area` VALUES ('231182', '黑河市', 'heihe', '五大连池市', '901513', '黑龙江省', 'HHHHWDLC');
INSERT INTO `t_area` VALUES ('231202', '绥化市', 'suihua', '北林区', '901538', '黑龙江省', 'SHSHBL');
INSERT INTO `t_area` VALUES ('231221', '绥化市', 'suihua', '望奎县', '901539', '黑龙江省', 'SHSHWK');
INSERT INTO `t_area` VALUES ('231222', '绥化市', 'suihua', '兰西县', '901540', '黑龙江省', 'SHSHLX');
INSERT INTO `t_area` VALUES ('231223', '绥化市', 'suihua', '青冈县', '901541', '黑龙江省', 'SHSHQG');
INSERT INTO `t_area` VALUES ('231224', '绥化市', 'suihua', '庆安县', '901542', '黑龙江省', 'SHSHQA');
INSERT INTO `t_area` VALUES ('231225', '绥化市', 'suihua', '明水县', '901543', '黑龙江省', 'SHSHMS');
INSERT INTO `t_area` VALUES ('231226', '绥化市', 'suihua', '绥棱县', '901544', '黑龙江省', 'SHSHSL');
INSERT INTO `t_area` VALUES ('231281', '绥化市', 'suihua', '安达市', '901545', '黑龙江省', 'SHSHAD');
INSERT INTO `t_area` VALUES ('231282', '绥化市', 'suihua', '肇东市', '901546', '黑龙江省', 'SHSHZD');
INSERT INTO `t_area` VALUES ('231283', '绥化市', 'suihua', '海伦市', '901547', '黑龙江省', 'SHSHHL');
INSERT INTO `t_area` VALUES ('232701', '大兴安岭地区', 'daxinganlingdi', '加格达奇区', '901583', '黑龙江省', 'DXALDDXALDJGDQ');
INSERT INTO `t_area` VALUES ('232721', '大兴安岭地区', 'daxinganlingdi', '呼玛县', '901584', '黑龙江省', 'DXALDDXALDHM');
INSERT INTO `t_area` VALUES ('232722', '大兴安岭地区', 'daxinganlingdi', '塔河县', '901585', '黑龙江省', 'DXALDDXALDTH');
INSERT INTO `t_area` VALUES ('232723', '大兴安岭地区', 'daxinganlingdi', '漠河县', '901586', '黑龙江省', 'DXALDDXALDMH');
INSERT INTO `t_area` VALUES ('310101', '上海市', 'shanghai', '黄浦区', '900977', '上海市', 'SHSHHP');
INSERT INTO `t_area` VALUES ('310104', '上海市', 'shanghai', '徐汇区', '900978', '上海市', 'SHSHXH');
INSERT INTO `t_area` VALUES ('310105', '上海市', 'shanghai', '长宁区', '900979', '上海市', 'SHSHZN');
INSERT INTO `t_area` VALUES ('310106', '上海市', 'shanghai', '静安区', '900980', '上海市', 'SHSHJA');
INSERT INTO `t_area` VALUES ('310107', '上海市', 'shanghai', '普陀区', '900981', '上海市', 'SHSHPT');
INSERT INTO `t_area` VALUES ('310108', '上海市', 'shanghai', '闸北区', '900982', '上海市', 'SHSHZB');
INSERT INTO `t_area` VALUES ('310109', '上海市', 'shanghai', '虹口区', '900983', '上海市', 'SHSHHK');
INSERT INTO `t_area` VALUES ('310110', '上海市', 'shanghai', '杨浦区', '900984', '上海市', 'SHSHYP');
INSERT INTO `t_area` VALUES ('310112', '上海市', 'shanghai', '闵行区', '900985', '上海市', 'SHSHMX');
INSERT INTO `t_area` VALUES ('310113', '上海市', 'shanghai', '宝山区', '900986', '上海市', 'SHSHBS');
INSERT INTO `t_area` VALUES ('310114', '上海市', 'shanghai', '嘉定区', '900987', '上海市', 'SHSHJD');
INSERT INTO `t_area` VALUES ('310115', '上海市', 'shanghai', '浦东新区', '900988', '上海市', 'SHSHPDX');
INSERT INTO `t_area` VALUES ('310116', '上海市', 'shanghai', '金山区', '900989', '上海市', 'SHSHJS');
INSERT INTO `t_area` VALUES ('310117', '上海市', 'shanghai', '松江区', '900990', '上海市', 'SHSHSJ');
INSERT INTO `t_area` VALUES ('310118', '上海市', 'shanghai', '青浦区', '900991', '上海市', 'SHSHQP');
INSERT INTO `t_area` VALUES ('310120', '上海市', 'shanghai', '奉贤区', '900992', '上海市', 'SHSHFX');
INSERT INTO `t_area` VALUES ('310230', '上海市', 'shanghai', '崇明县', '900993', '上海市', 'SHSHCM');
INSERT INTO `t_area` VALUES ('320102', '南京市', 'nanjing', '玄武区', '901599', '江苏省', 'NJNJXW');
INSERT INTO `t_area` VALUES ('320104', '南京市', 'nanjing', '秦淮区', '901600', '江苏省', 'NJNJQH');
INSERT INTO `t_area` VALUES ('320105', '南京市', 'nanjing', '建邺区', '901601', '江苏省', 'NJNJJY');
INSERT INTO `t_area` VALUES ('320106', '南京市', 'nanjing', '鼓楼区', '901602', '江苏省', 'NJNJGL');
INSERT INTO `t_area` VALUES ('320111', '南京市', 'nanjing', '浦口区', '901603', '江苏省', 'NJNJPK');
INSERT INTO `t_area` VALUES ('320113', '南京市', 'nanjing', '栖霞区', '901604', '江苏省', 'NJNJQX');
INSERT INTO `t_area` VALUES ('320114', '南京市', 'nanjing', '雨花台区', '901605', '江苏省', 'NJNJYHT');
INSERT INTO `t_area` VALUES ('320115', '南京市', 'nanjing', '江宁区', '901606', '江苏省', 'NJNJJN');
INSERT INTO `t_area` VALUES ('320116', '南京市', 'nanjing', '六合区', '901607', '江苏省', 'NJNJLH');
INSERT INTO `t_area` VALUES ('320117', '南京市', 'nanjing', '溧水区', '901608', '江苏省', 'NJNJLS');
INSERT INTO `t_area` VALUES ('320118', '南京市', 'nanjing', '高淳区', '901609', '江苏省', 'NJNJGC');
INSERT INTO `t_area` VALUES ('320202', '无锡市', 'wuxi', '崇安区', '901616', '江苏省', 'WXWXCA');
INSERT INTO `t_area` VALUES ('320203', '无锡市', 'wuxi', '南长区', '901617', '江苏省', 'WXWXNZ');
INSERT INTO `t_area` VALUES ('320204', '无锡市', 'wuxi', '北塘区', '901618', '江苏省', 'WXWXBT');
INSERT INTO `t_area` VALUES ('320205', '无锡市', 'wuxi', '锡山区', '901619', '江苏省', 'WXWXXS');
INSERT INTO `t_area` VALUES ('320206', '无锡市', 'wuxi', '惠山区', '901620', '江苏省', 'WXWXHS');
INSERT INTO `t_area` VALUES ('320211', '无锡市', 'wuxi', '滨湖区', '901621', '江苏省', 'WXWXBH');
INSERT INTO `t_area` VALUES ('320281', '无锡市', 'wuxi', '江阴市', '901622', '江苏省', 'WXWXJY');
INSERT INTO `t_area` VALUES ('320282', '无锡市', 'wuxi', '宜兴市', '901623', '江苏省', 'WXWXYX');
INSERT INTO `t_area` VALUES ('320302', '徐州市', 'xuzhou', '鼓楼区', '901669', '江苏省', 'XZXZGL');
INSERT INTO `t_area` VALUES ('320303', '徐州市', 'xuzhou', '云龙区', '901670', '江苏省', 'XZXZYL');
INSERT INTO `t_area` VALUES ('320305', '徐州市', 'xuzhou', '贾汪区', '901671', '江苏省', 'XZXZJW');
INSERT INTO `t_area` VALUES ('320311', '徐州市', 'xuzhou', '泉山区', '901672', '江苏省', 'XZXZQS');
INSERT INTO `t_area` VALUES ('320312', '徐州市', 'xuzhou', '铜山区', '901673', '江苏省', 'XZXZTS');
INSERT INTO `t_area` VALUES ('320321', '徐州市', 'xuzhou', '丰县', '901674', '江苏省', 'XZXZF');
INSERT INTO `t_area` VALUES ('320322', '徐州市', 'xuzhou', '沛县', '901675', '江苏省', 'XZXZP');
INSERT INTO `t_area` VALUES ('320324', '徐州市', 'xuzhou', '睢宁县', '901676', '江苏省', 'XZXZSN');
INSERT INTO `t_area` VALUES ('320381', '徐州市', 'xuzhou', '新沂市', '901677', '江苏省', 'XZXZXY');
INSERT INTO `t_area` VALUES ('320382', '徐州市', 'xuzhou', '邳州市', '901678', '江苏省', 'XZXZPZ');
INSERT INTO `t_area` VALUES ('320402', '常州市', 'changzhou', '天宁区', '901679', '江苏省', 'CZCZTN');
INSERT INTO `t_area` VALUES ('320404', '常州市', 'changzhou', '钟楼区', '901680', '江苏省', 'CZCZZL');
INSERT INTO `t_area` VALUES ('320411', '常州市', 'changzhou', '新北区', '901681', '江苏省', 'CZCZXB');
INSERT INTO `t_area` VALUES ('320412', '常州市', 'changzhou', '武进区', '901682', '江苏省', 'CZCZWJ');
INSERT INTO `t_area` VALUES ('320481', '常州市', 'changzhou', '溧阳市', '901683', '江苏省', 'CZCZLY');
INSERT INTO `t_area` VALUES ('320482', '常州市', 'changzhou', '金坛区', '901684', '江苏省', 'CZCZJT');
INSERT INTO `t_area` VALUES ('320505', '苏州市', 'suzhou', '虎丘区', '901654', '江苏省', 'SZSZHQ');
INSERT INTO `t_area` VALUES ('320506', '苏州市', 'suzhou', '吴中区', '901655', '江苏省', 'SZSZWZ');
INSERT INTO `t_area` VALUES ('320507', '苏州市', 'suzhou', '相城区', '901656', '江苏省', 'SZSZXC');
INSERT INTO `t_area` VALUES ('320508', '苏州市', 'suzhou', '姑苏区', '901657', '江苏省', 'SZSZGS');
INSERT INTO `t_area` VALUES ('320509', '苏州市', 'suzhou', '吴江区', '901658', '江苏省', 'SZSZWJ');
INSERT INTO `t_area` VALUES ('320581', '苏州市', 'suzhou', '常熟市', '901659', '江苏省', 'SZSZCS');
INSERT INTO `t_area` VALUES ('320582', '苏州市', 'suzhou', '张家港市', '901660', '江苏省', 'SZSZZJG');
INSERT INTO `t_area` VALUES ('320583', '苏州市', 'suzhou', '昆山市', '901661', '江苏省', 'SZSZKS');
INSERT INTO `t_area` VALUES ('320585', '苏州市', 'suzhou', '太仓市', '901662', '江苏省', 'SZSZTC');
INSERT INTO `t_area` VALUES ('320602', '南通市', 'nantong', '崇川区', '901624', '江苏省', 'NTNTCC');
INSERT INTO `t_area` VALUES ('320611', '南通市', 'nantong', '港闸区', '901625', '江苏省', 'NTNTGZ');
INSERT INTO `t_area` VALUES ('320612', '南通市', 'nantong', '通州区', '901626', '江苏省', 'NTNTTZ');
INSERT INTO `t_area` VALUES ('320621', '南通市', 'nantong', '海安县', '901627', '江苏省', 'NTNTHA');
INSERT INTO `t_area` VALUES ('320623', '南通市', 'nantong', '如东县', '901628', '江苏省', 'NTNTRD');
INSERT INTO `t_area` VALUES ('320681', '南通市', 'nantong', '启东市', '901629', '江苏省', 'NTNTQD');
INSERT INTO `t_area` VALUES ('320682', '南通市', 'nantong', '如皋市', '901630', '江苏省', 'NTNTRG');
INSERT INTO `t_area` VALUES ('320684', '南通市', 'nantong', '海门市', '901631', '江苏省', 'NTNTHM');
INSERT INTO `t_area` VALUES ('320703', '连云港市', 'lianyungang', '连云区', '901663', '江苏省', 'LYGLYGLY');
INSERT INTO `t_area` VALUES ('320706', '连云港市', 'lianyungang', '海州区', '901664', '江苏省', 'LYGLYGHZ');
INSERT INTO `t_area` VALUES ('320707', '连云港市', 'lianyungang', '赣榆区', '901665', '江苏省', 'LYGLYGGY');
INSERT INTO `t_area` VALUES ('320722', '连云港市', 'lianyungang', '东海县', '901666', '江苏省', 'LYGLYGDH');
INSERT INTO `t_area` VALUES ('320723', '连云港市', 'lianyungang', '灌云县', '901667', '江苏省', 'LYGLYGGY');
INSERT INTO `t_area` VALUES ('320724', '连云港市', 'lianyungang', '灌南县', '901668', '江苏省', 'LYGLYGGN');
INSERT INTO `t_area` VALUES ('320802', '淮安市', 'huaian', '清河区', '901637', '江苏省', 'HAHAQH');
INSERT INTO `t_area` VALUES ('320803', '淮安市', 'huaian', '淮安区', '901638', '江苏省', 'HAHAHA');
INSERT INTO `t_area` VALUES ('320804', '淮安市', 'huaian', '淮阴区', '901639', '江苏省', 'HAHAHY');
INSERT INTO `t_area` VALUES ('320811', '淮安市', 'huaian', '清浦区', '901640', '江苏省', 'HAHAQP');
INSERT INTO `t_area` VALUES ('320826', '淮安市', 'huaian', '涟水县', '901641', '江苏省', 'HAHALS');
INSERT INTO `t_area` VALUES ('320829', '淮安市', 'huaian', '洪泽县', '901642', '江苏省', 'HAHAHZ');
INSERT INTO `t_area` VALUES ('320830', '淮安市', 'huaian', '盱眙县', '901643', '江苏省', 'HAHAXY');
INSERT INTO `t_area` VALUES ('320831', '淮安市', 'huaian', '金湖县', '901644', '江苏???', 'HAHAJH');
INSERT INTO `t_area` VALUES ('320902', '盐城市', 'yancheng', '亭湖区', '901645', '江苏省', 'YCYCTH');
INSERT INTO `t_area` VALUES ('320903', '盐城市', 'yancheng', '盐都区', '901646', '江苏省', 'YCYCYD');
INSERT INTO `t_area` VALUES ('320921', '盐城市', 'yancheng', '响水县', '901647', '江苏省', 'YCYCXS');
INSERT INTO `t_area` VALUES ('320922', '盐城市', 'yancheng', '滨海县', '901648', '江苏省', 'YCYCBH');
INSERT INTO `t_area` VALUES ('320923', '盐城市', 'yancheng', '阜宁县', '901649', '江苏省', 'YCYCFN');
INSERT INTO `t_area` VALUES ('320924', '盐城市', 'yancheng', '射阳县', '901650', '江苏省', 'YCYCSY');
INSERT INTO `t_area` VALUES ('320925', '盐城市', 'yancheng', '建湖县', '901651', '江苏省', 'YCYCJH');
INSERT INTO `t_area` VALUES ('320981', '盐城市', 'yancheng', '东台市', '901652', '江苏省', 'YCYCDT');
INSERT INTO `t_area` VALUES ('320982', '盐城市', 'yancheng', '大丰市', '901653', '江苏省', 'YCYCDF');
INSERT INTO `t_area` VALUES ('321002', '扬州市', 'yangzhou', '广陵区', '901593', '江苏省', 'YZYZGL');
INSERT INTO `t_area` VALUES ('321003', '扬州市', 'yangzhou', '邗江区', '901594', '江苏省', 'YZYZHJ');
INSERT INTO `t_area` VALUES ('321012', '扬州市', 'yangzhou', '江都区', '901595', '江苏省', 'YZYZJD');
INSERT INTO `t_area` VALUES ('321023', '扬州市', 'yangzhou', '宝应县', '901596', '江苏省', 'YZYZBY');
INSERT INTO `t_area` VALUES ('321081', '扬州市', 'yangzhou', '仪征市', '901597', '江苏省', 'YZYZYZ');
INSERT INTO `t_area` VALUES ('321084', '扬州市', 'yangzhou', '高邮市', '901598', '江苏省', 'YZYZGY');
INSERT INTO `t_area` VALUES ('321102', '镇江市', 'zhenjiang', '京口区', '901610', '江苏省', 'ZJZJJK');
INSERT INTO `t_area` VALUES ('321111', '镇江市', 'zhenjiang', '润州区', '901611', '江苏省', 'ZJZJRZ');
INSERT INTO `t_area` VALUES ('321112', '镇江市', 'zhenjiang', '丹徒区', '901612', '江苏省', 'ZJZJDT');
INSERT INTO `t_area` VALUES ('321181', '镇江市', 'zhenjiang', '丹阳市', '901613', '江苏省', 'ZJZJDY');
INSERT INTO `t_area` VALUES ('321182', '镇江市', 'zhenjiang', '扬中市', '901614', '江苏省', 'ZJZJYZ');
INSERT INTO `t_area` VALUES ('321183', '镇江市', 'zhenjiang', '句容市', '901615', '江苏省', 'ZJZJJR');
INSERT INTO `t_area` VALUES ('321202', '泰州市', 'taizhou', '海陵区', '901587', '江苏省', 'TZTZHL');
INSERT INTO `t_area` VALUES ('321203', '泰州市', 'taizhou', '高港区', '901588', '江苏省', 'TZTZGG');
INSERT INTO `t_area` VALUES ('321204', '泰州市', 'taizhou', '姜堰区', '901589', '江苏省', 'TZTZJY');
INSERT INTO `t_area` VALUES ('321281', '泰州市', 'taizhou', '兴化市', '901590', '江苏省', 'TZTZXH');
INSERT INTO `t_area` VALUES ('321282', '泰州市', 'taizhou', '靖江市', '901591', '江苏省', 'TZTZJJ');
INSERT INTO `t_area` VALUES ('321283', '泰州市', 'taizhou', '泰兴市', '901592', '江苏省', 'TZTZTX');
INSERT INTO `t_area` VALUES ('321302', '宿迁市', 'suqian', '宿城区', '901632', '江苏省', 'SQSQSC');
INSERT INTO `t_area` VALUES ('321311', '宿迁市', 'suqian', '宿豫区', '901633', '江苏省', 'SQSQSY');
INSERT INTO `t_area` VALUES ('321322', '宿迁市', 'suqian', '沭阳县', '901634', '江苏省', 'SQSQSY');
INSERT INTO `t_area` VALUES ('321323', '宿迁市', 'suqian', '泗阳县', '901635', '江苏省', 'SQSQSY');
INSERT INTO `t_area` VALUES ('321324', '宿迁市', 'suqian', '泗洪县', '901636', '江苏省', 'SQSQSH');
INSERT INTO `t_area` VALUES ('330102', '杭州市', 'hangzhou', '上城区', '900998', '浙江省', 'HZHZSC');
INSERT INTO `t_area` VALUES ('330103', '杭州市', 'hangzhou', '下城区', '900999', '浙江省', 'HZHZXC');
INSERT INTO `t_area` VALUES ('330104', '杭州市', 'hangzhou', '江干区', '901000', '浙江省', 'HZHZJG');
INSERT INTO `t_area` VALUES ('330105', '杭州市', 'hangzhou', '拱墅区', '901001', '浙江省', 'HZHZGS');
INSERT INTO `t_area` VALUES ('330106', '杭州市', 'hangzhou', '西湖区', '901002', '浙江省', 'HZHZXH');
INSERT INTO `t_area` VALUES ('330108', '杭州市', 'hangzhou', '滨江区', '901003', '浙江省', 'HZHZBJ');
INSERT INTO `t_area` VALUES ('330109', '杭州市', 'hangzhou', '萧山区', '901004', '浙江省', 'HZHZXS');
INSERT INTO `t_area` VALUES ('330110', '杭州市', 'hangzhou', '余杭区', '901005', '浙江省', 'HZHZYH');
INSERT INTO `t_area` VALUES ('330111', '杭州市', 'hangzhou', '富阳区', '901006', '浙江省', 'HZHZFY');
INSERT INTO `t_area` VALUES ('330122', '杭州市', 'hangzhou', '桐庐县', '901007', '浙江省', 'HZHZTL');
INSERT INTO `t_area` VALUES ('330127', '杭州市', 'hangzhou', '淳安县', '901008', '浙江省', 'HZHZCA');
INSERT INTO `t_area` VALUES ('330182', '杭州市', 'hangzhou', '建德市', '901009', '浙江省', 'HZHZJD');
INSERT INTO `t_area` VALUES ('330185', '杭州市', 'hangzhou', '临安市', '901010', '浙江省', 'HZHZLA');
INSERT INTO `t_area` VALUES ('330203', '宁波市', 'ningbo', '海曙区', '901073', '浙江省', 'NBNBHS');
INSERT INTO `t_area` VALUES ('330204', '宁波市', 'ningbo', '江东区', '901074', '浙江省', 'NBNBJD');
INSERT INTO `t_area` VALUES ('330205', '宁波市', 'ningbo', '江北区', '901075', '浙江省', 'NBNBJB');
INSERT INTO `t_area` VALUES ('330206', '宁波市', 'ningbo', '北仑区', '901076', '浙江省', 'NBNBBL');
INSERT INTO `t_area` VALUES ('330211', '宁波市', 'ningbo', '镇海区', '901077', '浙江省', 'NBNBZH');
INSERT INTO `t_area` VALUES ('330212', '宁波市', 'ningbo', '鄞州区', '901078', '浙江省', 'NBNBYZ');
INSERT INTO `t_area` VALUES ('330225', '宁波市', 'ningbo', '象山县', '901079', '浙江省', 'NBNBXS');
INSERT INTO `t_area` VALUES ('330226', '宁波市', 'ningbo', '宁海县', '901080', '浙江省', 'NBNBNH');
INSERT INTO `t_area` VALUES ('330281', '宁波市', 'ningbo', '余姚市', '901081', '浙江省', 'NBNBYY');
INSERT INTO `t_area` VALUES ('330282', '宁波市', 'ningbo', '慈溪市', '901082', '浙江省', 'NBNBCX');
INSERT INTO `t_area` VALUES ('330283', '宁波市', 'ningbo', '奉化市', '901083', '浙江省', 'NBNBFH');
INSERT INTO `t_area` VALUES ('330302', '温州市', 'wenzhou', '鹿城区', '901053', '浙江省', 'WZWZLC');
INSERT INTO `t_area` VALUES ('330303', '温州市', 'wenzhou', '龙湾区', '901054', '浙江省', 'WZWZLW');
INSERT INTO `t_area` VALUES ('330304', '温州市', 'wenzhou', '瓯海区', '901055', '浙江省', 'WZWZOH');
INSERT INTO `t_area` VALUES ('330322', '温州市', 'wenzhou', '洞头县', '901056', '浙江省', 'WZWZDT');
INSERT INTO `t_area` VALUES ('330324', '温州市', 'wenzhou', '永嘉县', '901057', '浙江省', 'WZWZYJ');
INSERT INTO `t_area` VALUES ('330326', '温州市', 'wenzhou', '平阳县', '901058', '浙江省', 'WZWZPY');
INSERT INTO `t_area` VALUES ('330327', '温州市', 'wenzhou', '苍南县', '901059', '浙江省', 'WZWZCN');
INSERT INTO `t_area` VALUES ('330328', '温州市', 'wenzhou', '文成县', '901060', '浙江省', 'WZWZWC');
INSERT INTO `t_area` VALUES ('330329', '温州市', 'wenzhou', '泰顺县', '901061', '浙江省', 'WZWZTS');
INSERT INTO `t_area` VALUES ('330381', '温州市', 'wenzhou', '瑞安市', '901062', '浙江省', 'WZWZRA');
INSERT INTO `t_area` VALUES ('330382', '温州市', 'wenzhou', '乐清市', '901063', '浙江省', 'WZWZLQ');
INSERT INTO `t_area` VALUES ('330402', '嘉兴市', 'jiaxing', '南湖区', '901011', '浙江省', 'JXJXNH');
INSERT INTO `t_area` VALUES ('330411', '嘉兴市', 'jiaxing', '秀洲区', '901012', '浙江省', 'JXJXXZ');
INSERT INTO `t_area` VALUES ('330421', '嘉兴市', 'jiaxing', '嘉善县', '901013', '浙江省', 'JXJXJS');
INSERT INTO `t_area` VALUES ('330424', '嘉兴市', 'jiaxing', '海盐县', '901014', '浙江省', 'JXJXHY');
INSERT INTO `t_area` VALUES ('330481', '嘉兴市', 'jiaxing', '海宁市', '901015', '浙江省', 'JXJXHN');
INSERT INTO `t_area` VALUES ('330482', '嘉兴市', 'jiaxing', '平湖市', '901016', '浙江省', 'JXJXPH');
INSERT INTO `t_area` VALUES ('330483', '嘉兴市', 'jiaxing', '桐乡市', '901017', '浙江省', 'JXJXTX');
INSERT INTO `t_area` VALUES ('330502', '湖州市', 'huzhou', '吴兴区', '901039', '浙江省', 'HZHZWX');
INSERT INTO `t_area` VALUES ('330503', '湖州市', 'huzhou', '南浔区', '901040', '浙江省', 'HZHZNX');
INSERT INTO `t_area` VALUES ('330521', '湖州市', 'huzhou', '德清县', '901041', '浙江省', 'HZHZDQ');
INSERT INTO `t_area` VALUES ('330522', '湖州市', 'huzhou', '长兴县', '901042', '浙江省', 'HZHZZX');
INSERT INTO `t_area` VALUES ('330523', '湖州市', 'huzhou', '安吉县', '901043', '浙江省', 'HZHZAJ');
INSERT INTO `t_area` VALUES ('330602', '绍兴市', 'shaoxing', '越城区', '901033', '浙江省', 'SXSXYC');
INSERT INTO `t_area` VALUES ('330603', '绍兴市', 'shaoxing', '柯桥区', '901034', '浙江省', 'SXSXKQ');
INSERT INTO `t_area` VALUES ('330604', '绍兴市', 'shaoxing', '上虞区', '901035', '浙江省', 'SXSXSY');
INSERT INTO `t_area` VALUES ('330624', '绍兴市', 'shaoxing', '新昌县', '901036', '浙江省', 'SXSXXC');
INSERT INTO `t_area` VALUES ('330681', '绍兴市', 'shaoxing', '诸暨市', '901037', '浙江省', 'SXSXZJ');
INSERT INTO `t_area` VALUES ('330683', '绍兴市', 'shaoxing', '嵊州市', '901038', '浙江省', 'SXSXSZ');
INSERT INTO `t_area` VALUES ('330702', '金华市', 'jinhua', '婺城区', '901044', '浙江省', 'JHJHWC');
INSERT INTO `t_area` VALUES ('330703', '金华市', 'jinhua', '金东区', '901045', '浙江省', 'JHJHJD');
INSERT INTO `t_area` VALUES ('330723', '金华市', 'jinhua', '武义县', '901046', '浙江省', 'JHJHWY');
INSERT INTO `t_area` VALUES ('330726', '金华市', 'jinhua', '浦江县', '901047', '浙江省', 'JHJHPJ');
INSERT INTO `t_area` VALUES ('330727', '金华市', 'jinhua', '磐安县', '901048', '浙江省', 'JHJHPA');
INSERT INTO `t_area` VALUES ('330781', '金华市', 'jinhua', '兰溪市', '901049', '浙江省', 'JHJHLX');
INSERT INTO `t_area` VALUES ('330782', '金华市', 'jinhua', '义乌市', '901050', '浙江省', 'JHJHYW');
INSERT INTO `t_area` VALUES ('330783', '金华市', 'jinhua', '东阳市', '901051', '浙江省', 'JHJHDY');
INSERT INTO `t_area` VALUES ('330784', '金华市', 'jinhua', '永康市', '901052', '浙江省', 'JHJHYK');
INSERT INTO `t_area` VALUES ('330802', '衢州市', 'quzhou', '柯城区', '901018', '浙江省', 'QZQZKC');
INSERT INTO `t_area` VALUES ('330803', '衢州市', 'quzhou', '衢江区', '901019', '浙江省', 'QZQZQJ');
INSERT INTO `t_area` VALUES ('330822', '衢州市', 'quzhou', '常山县', '901020', '浙江省', 'QZQZCS');
INSERT INTO `t_area` VALUES ('330824', '衢州市', 'quzhou', '开化县', '901021', '浙江省', 'QZQZKH');
INSERT INTO `t_area` VALUES ('330825', '衢州市', 'quzhou', '龙游县', '901022', '浙江省', 'QZQZLY');
INSERT INTO `t_area` VALUES ('330881', '衢州市', 'quzhou', '江山市', '901023', '浙江省', 'QZQZJS');
INSERT INTO `t_area` VALUES ('330902', '舟山市', 'zhoushan', '定海区', '900994', '浙江省', 'ZSZSDH');
INSERT INTO `t_area` VALUES ('330903', '舟山市', 'zhoushan', '普陀区', '900995', '浙江省', 'ZSZSPT');
INSERT INTO `t_area` VALUES ('330921', '舟山市', 'zhoushan', '岱山县', '900996', '浙江省', 'ZSZSDS');
INSERT INTO `t_area` VALUES ('330922', '舟山市', 'zhoushan', '嵊泗县', '900997', '浙江省', 'ZSZSSS');
INSERT INTO `t_area` VALUES ('331002', '台州市', 'taizhou', '椒江区', '901064', '浙江省', 'TZTZJJ');
INSERT INTO `t_area` VALUES ('331003', '台州市', 'taizhou', '黄岩区', '901065', '浙江省', 'TZTZHY');
INSERT INTO `t_area` VALUES ('331004', '台州市', 'taizhou', '路桥区', '901066', '浙江省', 'TZTZLQ');
INSERT INTO `t_area` VALUES ('331021', '台州市', 'taizhou', '玉环县', '901067', '浙江省', 'TZTZYH');
INSERT INTO `t_area` VALUES ('331022', '台州市', 'taizhou', '三门县', '901068', '浙江省', 'TZTZSM');
INSERT INTO `t_area` VALUES ('331023', '台州市', 'taizhou', '天台县', '901069', '浙江省', 'TZTZTT');
INSERT INTO `t_area` VALUES ('331024', '台州市', 'taizhou', '仙居县', '901070', '浙江省', 'TZTZXJ');
INSERT INTO `t_area` VALUES ('331081', '台州市', 'taizhou', '温岭市', '901071', '浙江省', 'TZTZWL');
INSERT INTO `t_area` VALUES ('331082', '台州市', 'taizhou', '临海市', '901072', '浙江省', 'TZTZLH');
INSERT INTO `t_area` VALUES ('331102', '丽水市', 'lishui', '莲都区', '901024', '浙江省', 'LSLSLD');
INSERT INTO `t_area` VALUES ('331121', '丽水市', 'lishui', '青田县', '901025', '浙江省', 'LSLSQT');
INSERT INTO `t_area` VALUES ('331122', '丽水市', 'lishui', '缙云县', '901026', '浙江省', 'LSLSJY');
INSERT INTO `t_area` VALUES ('331123', '丽水市', 'lishui', '遂昌县', '901027', '浙江省', 'LSLSSC');
INSERT INTO `t_area` VALUES ('331124', '丽水市', 'lishui', '松阳县', '901028', '浙江省', 'LSLSSY');
INSERT INTO `t_area` VALUES ('331125', '丽水市', 'lishui', '云和县', '901029', '浙江省', 'LSLSYH');
INSERT INTO `t_area` VALUES ('331126', '丽水市', 'lishui', '庆元县', '901030', '浙江省', 'LSLSQY');
INSERT INTO `t_area` VALUES ('331127', '丽水市', 'lishui', '景宁畲族自治县', '901031', '浙江省', 'LSLSJNSZZZ');
INSERT INTO `t_area` VALUES ('331181', '丽水市', 'lishui', '龙泉市', '901032', '浙江省', 'LSLSLQ');
INSERT INTO `t_area` VALUES ('340102', '合肥市', 'hefei', '瑶海区', '901788', '安徽省', 'HFHFYH');
INSERT INTO `t_area` VALUES ('340103', '合肥市', 'hefei', '庐阳区', '901789', '安徽省', 'HFHFLY');
INSERT INTO `t_area` VALUES ('340104', '合肥市', 'hefei', '蜀山区', '901790', '安徽省', 'HFHFSS');
INSERT INTO `t_area` VALUES ('340111', '合肥市', 'hefei', '包河区', '901791', '安徽省', 'HFHFBH');
INSERT INTO `t_area` VALUES ('340121', '合肥市', 'hefei', '长丰县', '901792', '安徽省', 'HFHFZF');
INSERT INTO `t_area` VALUES ('340122', '合肥市', 'hefei', '肥东县', '901793', '安徽省', 'HFHFFD');
INSERT INTO `t_area` VALUES ('340123', '合肥市', 'hefei', '肥西县', '901794', '安徽省', 'HFHFFX');
INSERT INTO `t_area` VALUES ('340124', '合肥市', 'hefei', '庐江县', '901795', '安徽省', 'HFHFLJ');
INSERT INTO `t_area` VALUES ('340181', '合肥市', 'hefei', '巢湖市', '901796', '安徽省', 'HFHFCH');
INSERT INTO `t_area` VALUES ('340202', '芜湖市', 'wuhu', '镜湖区', '901851', '安徽省', 'WHWHJH');
INSERT INTO `t_area` VALUES ('340203', '芜湖市', 'wuhu', '弋江区', '901852', '安徽省', 'WHWHYJ');
INSERT INTO `t_area` VALUES ('340207', '芜湖市', 'wuhu', '鸠江区', '901853', '安徽省', 'WHWHJJ');
INSERT INTO `t_area` VALUES ('340208', '芜湖市', 'wuhu', '三山区', '901854', '安徽省', 'WHWHSS');
INSERT INTO `t_area` VALUES ('340221', '芜湖市', 'wuhu', '芜湖县', '901855', '安徽省', 'WHWHWH');
INSERT INTO `t_area` VALUES ('340222', '芜湖市', 'wuhu', '繁昌县', '901856', '安徽省', 'WHWHFC');
INSERT INTO `t_area` VALUES ('340223', '芜湖市', 'wuhu', '南陵县', '901857', '安徽省', 'WHWHNL');
INSERT INTO `t_area` VALUES ('340225', '芜湖市', 'wuhu', '无为县', '901858', '安徽省', 'WHWHWW');
INSERT INTO `t_area` VALUES ('340302', '蚌埠市', 'bangbu', '龙子湖区', '901763', '安徽省', 'BBBBLZH');
INSERT INTO `t_area` VALUES ('340303', '蚌埠市', 'bangbu', '蚌山区', '901764', '安徽省', 'BBBBBS');
INSERT INTO `t_area` VALUES ('340304', '蚌埠市', 'bangbu', '禹会区', '901765', '安徽省', 'BBBBYH');
INSERT INTO `t_area` VALUES ('340311', '蚌埠市', 'bangbu', '淮上区', '901766', '安徽省', 'BBBBHS');
INSERT INTO `t_area` VALUES ('340321', '蚌埠市', 'bangbu', '怀远县', '901767', '安徽省', 'BBBBHY');
INSERT INTO `t_area` VALUES ('340322', '蚌埠市', 'bangbu', '五河县', '901768', '安徽省', 'BBBBWH');
INSERT INTO `t_area` VALUES ('340323', '蚌埠市', 'bangbu', '固镇县', '901769', '安徽省', 'BBBBGZ');
INSERT INTO `t_area` VALUES ('340402', '淮南市', 'huainan', '大通区', '901809', '安徽省', 'HNHNDT');
INSERT INTO `t_area` VALUES ('340403', '淮南市', 'huainan', '田家庵区', '901810', '安徽省', 'HNHNTJA');
INSERT INTO `t_area` VALUES ('340404', '淮南市', 'huainan', '谢家集区', '901811', '安徽省', 'HNHNXJJ');
INSERT INTO `t_area` VALUES ('340405', '淮南市', 'huainan', '八公山区', '901812', '安徽省', 'HNHNBGS');
INSERT INTO `t_area` VALUES ('340406', '淮南市', 'huainan', '潘集区', '901813', '安徽省', 'HNHNPJ');
INSERT INTO `t_area` VALUES ('340421', '淮南市', 'huainan', '凤台县', '901814', '安徽省', 'HNHNFT');
INSERT INTO `t_area` VALUES ('340503', '马鞍山市', 'maanshan', '花山区', '901837', '安徽省', 'MASMASHS');
INSERT INTO `t_area` VALUES ('340504', '马鞍山市', 'maanshan', '雨山区', '901838', '安徽省', 'MASMASYS');
INSERT INTO `t_area` VALUES ('340506', '马鞍山市', 'maanshan', '博望区', '901839', '安徽省', 'MASMASBW');
INSERT INTO `t_area` VALUES ('340521', '马鞍山市', 'maanshan', '当涂县', '901840', '安徽省', 'MASMASDT');
INSERT INTO `t_area` VALUES ('340522', '马鞍山市', 'maanshan', '含山县', '901841', '安徽省', 'MASMASHS');
INSERT INTO `t_area` VALUES ('340523', '马鞍山市', 'maanshan', '???县', '901842', '安徽省', 'MASMAS???');
INSERT INTO `t_area` VALUES ('340602', '淮北市', 'huaibei', '杜集区', '901815', '安徽省', 'HBHBDJ');
INSERT INTO `t_area` VALUES ('340603', '淮北市', 'huaibei', '相山区', '901816', '安徽省', 'HBHBXS');
INSERT INTO `t_area` VALUES ('340604', '淮北市', 'huaibei', '烈山区', '901817', '安徽省', 'HBHBLS');
INSERT INTO `t_area` VALUES ('340621', '淮北市', 'huaibei', '濉溪县', '901818', '安徽省', 'HBHBSX');
INSERT INTO `t_area` VALUES ('340702', '铜陵市', 'tongling', '铜官山区', '901805', '安徽省', 'TLTLTGS');
INSERT INTO `t_area` VALUES ('340703', '铜陵市', 'tongling', '狮子山区', '901806', '安徽省', 'TLTLSZS');
INSERT INTO `t_area` VALUES ('340711', '铜陵市', 'tongling', '郊区', '901807', '安徽省', 'TLTLJ');
INSERT INTO `t_area` VALUES ('340721', '铜陵市', 'tongling', '铜陵县', '901808', '安徽省', 'TLTLTL');
INSERT INTO `t_area` VALUES ('340802', '安庆市', 'anqing', '迎江区', '901819', '安徽省', 'AQAQYJ');
INSERT INTO `t_area` VALUES ('340803', '安庆市', 'anqing', '大观区', '901820', '安徽省', 'AQAQDG');
INSERT INTO `t_area` VALUES ('340811', '安庆市', 'anqing', '宜秀区', '901821', '安徽省', 'AQAQYX');
INSERT INTO `t_area` VALUES ('340822', '安庆市', 'anqing', '怀宁县', '901822', '安徽省', 'AQAQHN');
INSERT INTO `t_area` VALUES ('340823', '安庆市', 'anqing', '枞阳县', '901823', '安徽省', 'AQAQZY');
INSERT INTO `t_area` VALUES ('340824', '安庆市', 'anqing', '潜山县', '901824', '安徽省', 'AQAQQS');
INSERT INTO `t_area` VALUES ('340825', '安庆市', 'anqing', '太湖县', '901825', '安徽省', 'AQAQTH');
INSERT INTO `t_area` VALUES ('340826', '安庆市', 'anqing', '宿松县', '901826', '安徽省', 'AQAQSS');
INSERT INTO `t_area` VALUES ('340827', '安庆市', 'anqing', '望江县', '901827', '安徽省', 'AQAQWJ');
INSERT INTO `t_area` VALUES ('340828', '安庆市', 'anqing', '岳西县', '901828', '安徽省', 'AQAQYX');
INSERT INTO `t_area` VALUES ('340881', '安庆市', 'anqing', '桐城市', '901829', '安徽省', 'AQAQTC');
INSERT INTO `t_area` VALUES ('341002', '黄山市', 'huangshan', '屯溪区', '901830', '安徽省', 'HSHSTX');
INSERT INTO `t_area` VALUES ('341003', '黄山市', 'huangshan', '黄山区', '901831', '安徽省', 'HSHSHS');
INSERT INTO `t_area` VALUES ('341004', '黄山市', 'huangshan', '徽州区', '901832', '安徽省', 'HSHSHZ');
INSERT INTO `t_area` VALUES ('341021', '黄山市', 'huangshan', '歙县', '901833', '安徽省', 'HSHSS');
INSERT INTO `t_area` VALUES ('341022', '黄山市', 'huangshan', '休宁县', '901834', '安徽省', 'HSHSXN');
INSERT INTO `t_area` VALUES ('341023', '黄山市', 'huangshan', '黟县', '901835', '安徽省', 'HSHSY');
INSERT INTO `t_area` VALUES ('341024', '黄山市', 'huangshan', '祁门县', '901836', '安徽省', 'HSHSQM');
INSERT INTO `t_area` VALUES ('341102', '滁州市', 'chuzhou', '琅琊区', '901843', '安徽省', 'CZCZLY');
INSERT INTO `t_area` VALUES ('341103', '滁州市', 'chuzhou', '南谯区', '901844', '安徽省', 'CZCZNQ');
INSERT INTO `t_area` VALUES ('341122', '滁州市', 'chuzhou', '来安县', '901845', '安徽省', 'CZCZLA');
INSERT INTO `t_area` VALUES ('341124', '滁州市', 'chuzhou', '全椒县', '901846', '安徽省', 'CZCZQJ');
INSERT INTO `t_area` VALUES ('341125', '滁州市', 'chuzhou', '定远县', '901847', '安徽省', 'CZCZDY');
INSERT INTO `t_area` VALUES ('341126', '滁州市', 'chuzhou', '凤阳县', '901848', '安徽省', 'CZCZFY');
INSERT INTO `t_area` VALUES ('341181', '滁州市', 'chuzhou', '天长市', '901849', '安徽省', 'CZCZTZ');
INSERT INTO `t_area` VALUES ('341182', '滁州市', 'chuzhou', '明光市', '901850', '安徽省', 'CZCZMG');
INSERT INTO `t_area` VALUES ('341202', '阜阳市', 'fuyang', '颍州区', '901797', '安徽省', 'FYFYYZ');
INSERT INTO `t_area` VALUES ('341203', '阜阳市', 'fuyang', '颍东区', '901798', '安徽省', 'FYFYYD');
INSERT INTO `t_area` VALUES ('341204', '阜阳市', 'fuyang', '颍泉区', '901799', '安徽省', 'FYFYYQ');
INSERT INTO `t_area` VALUES ('341221', '阜阳市', 'fuyang', '临泉县', '901800', '安徽省', 'FYFYLQ');
INSERT INTO `t_area` VALUES ('341222', '阜阳市', 'fuyang', '太和县', '901801', '安徽省', 'FYFYTH');
INSERT INTO `t_area` VALUES ('341225', '阜阳市', 'fuyang', '阜南县', '901802', '安徽省', 'FYFYFN');
INSERT INTO `t_area` VALUES ('341226', '阜阳市', 'fuyang', '颍上县', '901803', '安徽省', 'FYFYYS');
INSERT INTO `t_area` VALUES ('341282', '阜阳市', 'fuyang', '界首市', '901804', '安徽省', 'FYFYJS');
INSERT INTO `t_area` VALUES ('341302', '宿州市', 'suzhou', '埇桥区', '901859', '安徽省', 'SZSZYQ');
INSERT INTO `t_area` VALUES ('341321', '宿州市', 'suzhou', '砀山县', '901860', '安徽省', 'SZSZDS');
INSERT INTO `t_area` VALUES ('341322', '宿州市', 'suzhou', '萧县', '901861', '安徽省', 'SZSZX');
INSERT INTO `t_area` VALUES ('341323', '宿州市', 'suzhou', '灵璧县', '901862', '安徽省', 'SZSZLB');
INSERT INTO `t_area` VALUES ('341324', '宿州市', 'suzhou', '泗县', '901863', '安徽省', 'SZSZS');
INSERT INTO `t_area` VALUES ('341502', '六安市', 'liuan', '金安区', '901770', '安徽省', 'LALAJA');
INSERT INTO `t_area` VALUES ('341503', '六安市', 'liuan', '裕安区', '901771', '安徽省', 'LALAYA');
INSERT INTO `t_area` VALUES ('341521', '六安市', 'liuan', '寿县', '901772', '安徽省', 'LALAS');
INSERT INTO `t_area` VALUES ('341522', '六安市', 'liuan', '霍邱县', '901773', '安徽省', 'LALAHQ');
INSERT INTO `t_area` VALUES ('341523', '六安市', 'liuan', '舒城县', '901774', '安徽省', 'LALASC');
INSERT INTO `t_area` VALUES ('341524', '六安市', 'liuan', '金寨县', '901775', '安徽省', 'LALAJZ');
INSERT INTO `t_area` VALUES ('341525', '六安市', 'liuan', '霍山县', '901776', '安徽省', 'LALAHS');
INSERT INTO `t_area` VALUES ('341602', '亳州市', 'bozhou', '谯城区', '901759', '安徽省', 'BZBZQC');
INSERT INTO `t_area` VALUES ('341621', '亳州市', 'bozhou', '涡阳县', '901760', '安徽省', 'BZBZWY');
INSERT INTO `t_area` VALUES ('341622', '亳州市', 'bozhou', '蒙城县', '901761', '安徽省', 'BZBZMC');
INSERT INTO `t_area` VALUES ('341623', '亳州市', 'bozhou', '利辛县', '901762', '安徽省', 'BZBZLX');
INSERT INTO `t_area` VALUES ('341702', '池州市', 'chizhou', '贵池区', '901777', '安徽省', 'CZCZGC');
INSERT INTO `t_area` VALUES ('341721', '池州市', 'chizhou', '东至县', '901778', '安徽省', 'CZCZDZ');
INSERT INTO `t_area` VALUES ('341722', '池州市', 'chizhou', '石台县', '901779', '安徽省', 'CZCZST');
INSERT INTO `t_area` VALUES ('341723', '池州市', 'chizhou', '青阳县', '901780', '安徽省', 'CZCZQY');
INSERT INTO `t_area` VALUES ('341802', '宣城市', 'xuancheng', '宣州区', '901781', '安徽省', 'XCXCXZ');
INSERT INTO `t_area` VALUES ('341821', '宣城市', 'xuancheng', '郎溪县', '901782', '安徽省', 'XCXCLX');
INSERT INTO `t_area` VALUES ('341822', '宣城市', 'xuancheng', '广德县', '901783', '安徽省', 'XCXCGD');
INSERT INTO `t_area` VALUES ('341823', '宣城市', 'xuancheng', '泾县', '901784', '安徽省', 'XCXCJ');
INSERT INTO `t_area` VALUES ('341824', '宣城市', 'xuancheng', '绩溪县', '901785', '安徽省', 'XCXCJX');
INSERT INTO `t_area` VALUES ('341825', '宣城市', 'xuancheng', '旌德县', '901786', '安徽省', 'XCXCJD');
INSERT INTO `t_area` VALUES ('341881', '宣城市', 'xuancheng', '宁国市', '901787', '安徽省', 'XCXCNG');
INSERT INTO `t_area` VALUES ('350102', '福州市', 'fuzhou', '鼓楼区', '902059', '福建省', 'FZFZGL');
INSERT INTO `t_area` VALUES ('350103', '福州市', 'fuzhou', '台江区', '902060', '福建省', 'FZFZTJ');
INSERT INTO `t_area` VALUES ('350104', '福州市', 'fuzhou', '仓山区', '902061', '福建省', 'FZFZCS');
INSERT INTO `t_area` VALUES ('350105', '福州市', 'fuzhou', '马尾区', '902062', '福建省', 'FZFZMW');
INSERT INTO `t_area` VALUES ('350111', '福州市', 'fuzhou', '晋安区', '902063', '福建省', 'FZFZJA');
INSERT INTO `t_area` VALUES ('350121', '福州市', 'fuzhou', '闽侯县', '902064', '福建省', 'FZFZMH');
INSERT INTO `t_area` VALUES ('350122', '福州市', 'fuzhou', '连江县', '902065', '福建省', 'FZFZLJ');
INSERT INTO `t_area` VALUES ('350123', '福州市', 'fuzhou', '罗源县', '902066', '福建省', 'FZFZLY');
INSERT INTO `t_area` VALUES ('350124', '福州市', 'fuzhou', '闽清县', '902067', '福建省', 'FZFZMQ');
INSERT INTO `t_area` VALUES ('350125', '福州市', 'fuzhou', '永泰县', '902068', '福建省', 'FZFZYT');
INSERT INTO `t_area` VALUES ('350128', '福州市', 'fuzhou', '平潭县', '902069', '福建省', 'FZFZPT');
INSERT INTO `t_area` VALUES ('350181', '福州市', 'fuzhou', '福清市', '902070', '福建省', 'FZFZFQ');
INSERT INTO `t_area` VALUES ('350182', '福州市', 'fuzhou', '长乐市', '902071', '福建省', 'FZFZZL');
INSERT INTO `t_area` VALUES ('350203', '厦门市', 'shamen', '思明区', '902084', '福建省', 'SMSMSM');
INSERT INTO `t_area` VALUES ('350205', '厦门市', 'shamen', '海沧区', '902085', '福建省', 'SMSMHC');
INSERT INTO `t_area` VALUES ('350206', '厦门市', 'shamen', '湖里区', '902086', '福建省', 'SMSMHL');
INSERT INTO `t_area` VALUES ('350211', '厦门市', 'shamen', '集美区', '902087', '福建省', 'SMSMJM');
INSERT INTO `t_area` VALUES ('350212', '厦门市', 'shamen', '同安区', '902088', '福建省', 'SMSMTA');
INSERT INTO `t_area` VALUES ('350213', '厦门市', 'shamen', '翔安区', '902089', '福建省', 'SMSMXA');
INSERT INTO `t_area` VALUES ('350302', '莆田市', 'putian', '城厢区', '902139', '福建省', 'PTPTCX');
INSERT INTO `t_area` VALUES ('350303', '莆田市', 'putian', '涵江区', '902140', '福建省', 'PTPTHJ');
INSERT INTO `t_area` VALUES ('350304', '莆田市', 'putian', '荔城区', '902141', '福建省', 'PTPTLC');
INSERT INTO `t_area` VALUES ('350305', '莆田市', 'putian', '秀屿区', '902142', '福建省', 'PTPTXY');
INSERT INTO `t_area` VALUES ('350322', '莆田市', 'putian', '仙游县', '902143', '福建省', 'PTPTXY');
INSERT INTO `t_area` VALUES ('350402', '三明市', 'sanming', '梅列区', '902072', '福建省', 'SMSMML');
INSERT INTO `t_area` VALUES ('350403', '三明市', 'sanming', '三元区', '902073', '福建省', 'SMSMSY');
INSERT INTO `t_area` VALUES ('350421', '三明市', 'sanming', '明溪县', '902074', '福建省', 'SMSMMX');
INSERT INTO `t_area` VALUES ('350423', '三明市', 'sanming', '清流县', '902075', '福建省', 'SMSMQL');
INSERT INTO `t_area` VALUES ('350424', '三明市', 'sanming', '宁化县', '902076', '福建省', 'SMSMNH');
INSERT INTO `t_area` VALUES ('350425', '三明市', 'sanming', '大田县', '902077', '福建省', 'SMSMDT');
INSERT INTO `t_area` VALUES ('350426', '三明市', 'sanming', '尤溪县', '902078', '福建省', 'SMSMYX');
INSERT INTO `t_area` VALUES ('350427', '三明市', 'sanming', '沙县', '902079', '福建省', 'SMSMS');
INSERT INTO `t_area` VALUES ('350428', '三明市', 'sanming', '将乐县', '902080', '福建省', 'SMSMJL');
INSERT INTO `t_area` VALUES ('350429', '三明市', 'sanming', '泰宁县', '902081', '福建省', 'SMSMTN');
INSERT INTO `t_area` VALUES ('350430', '三明市', 'sanming', '建宁县', '902082', '福建省', 'SMSMJN');
INSERT INTO `t_area` VALUES ('350481', '三明市', 'sanming', '永安市', '902083', '福建省', 'SMSMYA');
INSERT INTO `t_area` VALUES ('350502', '泉州市', 'quanzhou', '鲤城区', '902109', '福建省', 'QZQZLC');
INSERT INTO `t_area` VALUES ('350503', '泉州市', 'quanzhou', '丰泽区', '902110', '福建省', 'QZQZFZ');
INSERT INTO `t_area` VALUES ('350504', '泉州市', 'quanzhou', '洛江区', '902111', '福建省', 'QZQZLJ');
INSERT INTO `t_area` VALUES ('350505', '泉州市', 'quanzhou', '泉港区', '902112', '福建省', 'QZQZQG');
INSERT INTO `t_area` VALUES ('350521', '泉州市', 'quanzhou', '惠安县', '902113', '福建省', 'QZQZHA');
INSERT INTO `t_area` VALUES ('350524', '泉州市', 'quanzhou', '安溪县', '902114', '福建省', 'QZQZAX');
INSERT INTO `t_area` VALUES ('350525', '泉州市', 'quanzhou', '永春县', '902115', '福建省', 'QZQZYC');
INSERT INTO `t_area` VALUES ('350526', '泉州市', 'quanzhou', '德化县', '902116', '福建省', 'QZQZDH');
INSERT INTO `t_area` VALUES ('350527', '泉州市', 'quanzhou', '金门县', '902117', '福建省', 'QZQZJM');
INSERT INTO `t_area` VALUES ('350581', '泉州市', 'quanzhou', '石狮市', '902118', '福建省', 'QZQZSS');
INSERT INTO `t_area` VALUES ('350582', '泉州市', 'quanzhou', '晋江市', '902119', '福建省', 'QZQZJJ');
INSERT INTO `t_area` VALUES ('350583', '泉州市', 'quanzhou', '南安市', '902120', '福建省', 'QZQZNA');
INSERT INTO `t_area` VALUES ('350602', '漳州市', 'zhangzhou', '芗城区', '902121', '福建省', 'ZZZZXC');
INSERT INTO `t_area` VALUES ('350603', '漳州市', 'zhangzhou', '龙文区', '902122', '福建省', 'ZZZZLW');
INSERT INTO `t_area` VALUES ('350622', '漳州市', 'zhangzhou', '云霄县', '902123', '福建省', 'ZZZZYX');
INSERT INTO `t_area` VALUES ('350623', '漳州市', 'zhangzhou', '漳浦县', '902124', '福建省', 'ZZZZZP');
INSERT INTO `t_area` VALUES ('350624', '漳州市', 'zhangzhou', '诏安县', '902125', '福建省', 'ZZZZZA');
INSERT INTO `t_area` VALUES ('350625', '漳州市', 'zhangzhou', '长泰县', '902126', '福建省', 'ZZZZZT');
INSERT INTO `t_area` VALUES ('350626', '漳州市', 'zhangzhou', '东山县', '902127', '福建省', 'ZZZZDS');
INSERT INTO `t_area` VALUES ('350627', '漳州市', 'zhangzhou', '南靖县', '902128', '福建省', 'ZZZZNJ');
INSERT INTO `t_area` VALUES ('350628', '漳州市', 'zhangzhou', '平和县', '902129', '福建省', 'ZZZZPH');
INSERT INTO `t_area` VALUES ('350629', '漳州市', 'zhangzhou', '华安县', '902130', '福建省', 'ZZZZHA');
INSERT INTO `t_area` VALUES ('350681', '漳州市', 'zhangzhou', '龙海市', '902131', '福建省', 'ZZZZLH');
INSERT INTO `t_area` VALUES ('350702', '南平市', 'nanping', '延平区', '902090', '福建省', 'NPNPYP');
INSERT INTO `t_area` VALUES ('350703', '南平市', 'nanping', '建阳区', '902091', '福建省', 'NPNPJY');
INSERT INTO `t_area` VALUES ('350721', '南平市', 'nanping', '顺昌县', '902092', '福建省', 'NPNPSC');
INSERT INTO `t_area` VALUES ('350722', '南平市', 'nanping', '浦城县', '902093', '福建省', 'NPNPPC');
INSERT INTO `t_area` VALUES ('350723', '南平市', 'nanping', '光泽县', '902094', '福建省', 'NPNPGZ');
INSERT INTO `t_area` VALUES ('350724', '南平市', 'nanping', '松溪县', '902095', '福建省', 'NPNPSX');
INSERT INTO `t_area` VALUES ('350725', '南平市', 'nanping', '政和县', '902096', '福建省', 'NPNPZH');
INSERT INTO `t_area` VALUES ('350781', '南平市', 'nanping', '邵武市', '902097', '福建省', 'NPNPSW');
INSERT INTO `t_area` VALUES ('350782', '南平市', 'nanping', '武夷山市', '902098', '福建省', 'NPNPWYS');
INSERT INTO `t_area` VALUES ('350783', '南平市', 'nanping', '建瓯市', '902099', '福建省', 'NPNPJO');
INSERT INTO `t_area` VALUES ('350802', '龙岩市', 'longyan', '新罗区', '902132', '福建省', 'LYLYXL');
INSERT INTO `t_area` VALUES ('350803', '龙岩市', 'longyan', '永定区', '902133', '福建省', 'LYLYYD');
INSERT INTO `t_area` VALUES ('350821', '龙岩市', 'longyan', '长汀县', '902134', '福建省', 'LYLYZT');
INSERT INTO `t_area` VALUES ('350823', '龙岩市', 'longyan', '上杭县', '902135', '福建省', 'LYLYSH');
INSERT INTO `t_area` VALUES ('350824', '龙岩市', 'longyan', '武平县', '902136', '福建省', 'LYLYWP');
INSERT INTO `t_area` VALUES ('350825', '龙岩市', 'longyan', '连城县', '902137', '福建省', 'LYLYLC');
INSERT INTO `t_area` VALUES ('350881', '龙岩市', 'longyan', '漳平市', '902138', '福建省', 'LYLYZP');
INSERT INTO `t_area` VALUES ('350902', '宁德市', 'ningde', '蕉城区', '902100', '福建省', 'NDNDJC');
INSERT INTO `t_area` VALUES ('350921', '宁德市', 'ningde', '霞浦县', '902101', '福建省', 'NDNDXP');
INSERT INTO `t_area` VALUES ('350922', '宁德市', 'ningde', '古田县', '902102', '福建省', 'NDNDGT');
INSERT INTO `t_area` VALUES ('350923', '宁德市', 'ningde', '屏南县', '902103', '福建省', 'NDNDPN');
INSERT INTO `t_area` VALUES ('350924', '宁德市', 'ningde', '寿宁县', '902104', '福建省', 'NDNDSN');
INSERT INTO `t_area` VALUES ('350925', '宁德市', 'ningde', '周宁县', '902105', '福建省', 'NDNDZN');
INSERT INTO `t_area` VALUES ('350926', '宁德市', 'ningde', '柘荣县', '902106', '福建省', 'NDNDZR');
INSERT INTO `t_area` VALUES ('350981', '宁德市', 'ningde', '福安市', '902107', '福建省', 'NDNDFA');
INSERT INTO `t_area` VALUES ('350982', '宁德市', 'ningde', '福鼎市', '902108', '福建省', 'NDNDFD');
INSERT INTO `t_area` VALUES ('360102', '南昌市', 'nanchang', '东湖区', '901394', '江西省', 'NCNCDH');
INSERT INTO `t_area` VALUES ('360103', '南昌市', 'nanchang', '西湖区', '901395', '江西省', 'NCNCXH');
INSERT INTO `t_area` VALUES ('360104', '南昌市', 'nanchang', '青云谱区', '901396', '江西省', 'NCNCQYP');
INSERT INTO `t_area` VALUES ('360105', '南昌市', 'nanchang', '湾里区', '901397', '江西省', 'NCNCWL');
INSERT INTO `t_area` VALUES ('360111', '南昌市', 'nanchang', '青山湖区', '901398', '江西省', 'NCNCQSH');
INSERT INTO `t_area` VALUES ('360121', '南昌市', 'nanchang', '南昌县', '901399', '江西省', 'NCNCNC');
INSERT INTO `t_area` VALUES ('360122', '南昌市', 'nanchang', '新建县', '901400', '江西省', 'NCNCXJ');
INSERT INTO `t_area` VALUES ('360123', '南昌市', 'nanchang', '安义县', '901401', '江西省', 'NCNCAY');
INSERT INTO `t_area` VALUES ('360124', '南昌市', 'nanchang', '进贤县', '901402', '江西省', 'NCNCJX');
INSERT INTO `t_area` VALUES ('360202', '景德镇市', 'jingdezhen', '昌江区', '901443', '江西省', 'JDZJDZCJ');
INSERT INTO `t_area` VALUES ('360203', '景德镇市', 'jingdezhen', '珠山区', '901444', '江西省', 'JDZJDZZS');
INSERT INTO `t_area` VALUES ('360222', '景德镇市', 'jingdezhen', '浮梁县', '901445', '江西省', 'JDZJDZFL');
INSERT INTO `t_area` VALUES ('360281', '景德镇市', 'jingdezhen', '乐平市', '901446', '江西省', 'JDZJDZLP');
INSERT INTO `t_area` VALUES ('360302', '萍乡市', 'pingxiang', '安源区', '901438', '江西省', 'PXPXAY');
INSERT INTO `t_area` VALUES ('360313', '萍乡市', 'pingxiang', '湘东区', '901439', '江西省', 'PXPXXD');
INSERT INTO `t_area` VALUES ('360321', '萍乡市', 'pingxiang', '莲花县', '901440', '江西省', 'PXPXLH');
INSERT INTO `t_area` VALUES ('360322', '萍乡市', 'pingxiang', '上栗县', '901441', '江西省', 'PXPXSL');
INSERT INTO `t_area` VALUES ('360323', '萍乡市', 'pingxiang', '芦溪县', '901442', '江西省', 'PXPXLX');
INSERT INTO `t_area` VALUES ('360402', '九江市', 'jiujiang', '庐山区', '901379', '江西省', 'JJJJLS');
INSERT INTO `t_area` VALUES ('360403', '九江市', 'jiujiang', '浔阳区', '901380', '江西省', 'JJJJXY');
INSERT INTO `t_area` VALUES ('360421', '九江市', 'jiujiang', '九江县', '901381', '江西省', 'JJJJJJ');
INSERT INTO `t_area` VALUES ('360423', '九江市', 'jiujiang', '武宁县', '901382', '江西省', 'JJJJWN');
INSERT INTO `t_area` VALUES ('360424', '九江市', 'jiujiang', '修水县', '901383', '江西省', 'JJJJXS');
INSERT INTO `t_area` VALUES ('360425', '九江市', 'jiujiang', '永修县', '901384', '江西省', 'JJJJYX');
INSERT INTO `t_area` VALUES ('360426', '九江市', 'jiujiang', '德安县', '901385', '江西省', 'JJJJDA');
INSERT INTO `t_area` VALUES ('360427', '九江市', 'jiujiang', '星子县', '901386', '江西省', 'JJJJXZ');
INSERT INTO `t_area` VALUES ('360428', '九江市', 'jiujiang', '都昌县', '901387', '江西省', 'JJJJDC');
INSERT INTO `t_area` VALUES ('360429', '九江市', 'jiujiang', '湖口县', '901388', '江西省', 'JJJJHK');
INSERT INTO `t_area` VALUES ('360430', '九江市', 'jiujiang', '彭泽县', '901389', '江西省', 'JJJJPZ');
INSERT INTO `t_area` VALUES ('360481', '九江市', 'jiujiang', '瑞昌市', '901390', '江西省', 'JJJJRC');
INSERT INTO `t_area` VALUES ('360482', '九江市', 'jiujiang', '共青城市', '901391', '江西省', 'JJJJGQC');
INSERT INTO `t_area` VALUES ('360502', '新余市', 'xinyu', '渝水区', '901392', '江西省', 'XYXYYS');
INSERT INTO `t_area` VALUES ('360521', '新余市', 'xinyu', '分宜县', '901393', '江西省', 'XYXYFY');
INSERT INTO `t_area` VALUES ('360602', '鹰潭市', 'yingtan', '月湖区', '901376', '江西省', 'YTYTYH');
INSERT INTO `t_area` VALUES ('360622', '鹰潭市', 'yingtan', '余江县', '901377', '江西省', 'YTYTYJ');
INSERT INTO `t_area` VALUES ('360681', '鹰潭市', 'yingtan', '贵溪市', '901378', '江西省', 'YTYTGX');
INSERT INTO `t_area` VALUES ('360702', '赣州市', 'ganzhou', '章贡区', '901358', '江西省', 'GZGZZG');
INSERT INTO `t_area` VALUES ('360703', '赣州市', 'ganzhou', '南康区', '901359', '江西省', 'GZGZNK');
INSERT INTO `t_area` VALUES ('360721', '赣州市', 'ganzhou', '赣县', '901360', '江西省', 'GZGZG');
INSERT INTO `t_area` VALUES ('360722', '赣州市', 'ganzhou', '信丰县', '901361', '江西省', 'GZGZXF');
INSERT INTO `t_area` VALUES ('360723', '赣州市', 'ganzhou', '大余县', '901362', '江西省', 'GZGZDY');
INSERT INTO `t_area` VALUES ('360724', '赣州市', 'ganzhou', '上犹县', '901363', '江西省', 'GZGZSY');
INSERT INTO `t_area` VALUES ('360725', '赣州市', 'ganzhou', '崇义县', '901364', '江西省', 'GZGZCY');
INSERT INTO `t_area` VALUES ('360726', '赣州市', 'ganzhou', '安远县', '901365', '江西省', 'GZGZAY');
INSERT INTO `t_area` VALUES ('360727', '赣州市', 'ganzhou', '龙南县', '901366', '江西省', 'GZGZLN');
INSERT INTO `t_area` VALUES ('360728', '赣州市', 'ganzhou', '定南县', '901367', '江西省', 'GZGZDN');
INSERT INTO `t_area` VALUES ('360729', '赣州市', 'ganzhou', '全南县', '901368', '江西省', 'GZGZQN');
INSERT INTO `t_area` VALUES ('360730', '赣州市', 'ganzhou', '宁都县', '901369', '江西省', 'GZGZND');
INSERT INTO `t_area` VALUES ('360731', '赣州市', 'ganzhou', '于都县', '901370', '江西省', 'GZGZYD');
INSERT INTO `t_area` VALUES ('360732', '赣州市', 'ganzhou', '兴国县', '901371', '江西省', 'GZGZXG');
INSERT INTO `t_area` VALUES ('360733', '赣州市', 'ganzhou', '会昌县', '901372', '江西省', 'GZGZHC');
INSERT INTO `t_area` VALUES ('360734', '赣州市', 'ganzhou', '寻乌县', '901373', '江西省', 'GZGZXW');
INSERT INTO `t_area` VALUES ('360735', '赣州市', 'ganzhou', '石城县', '901374', '江西省', 'GZGZSC');
INSERT INTO `t_area` VALUES ('360781', '赣州市', 'ganzhou', '瑞金市', '901375', '江西省', 'GZGZRJ');
INSERT INTO `t_area` VALUES ('360802', '吉安市', 'jian', '吉州区', '901413', '江西省', 'JAJAJZ');
INSERT INTO `t_area` VALUES ('360803', '吉安市', 'jian', '青原区', '901414', '江西省', 'JAJAQY');
INSERT INTO `t_area` VALUES ('360821', '吉安市', 'jian', '吉安县', '901415', '江西省', 'JAJAJA');
INSERT INTO `t_area` VALUES ('360822', '吉安市', 'jian', '吉水县', '901416', '江西省', 'JAJAJS');
INSERT INTO `t_area` VALUES ('360823', '吉安市', 'jian', '峡江县', '901417', '江西省', 'JAJAXJ');
INSERT INTO `t_area` VALUES ('360824', '吉安市', 'jian', '新干县', '901418', '江西省', 'JAJAXG');
INSERT INTO `t_area` VALUES ('360825', '吉安市', 'jian', '永丰县', '901419', '江西省', 'JAJAYF');
INSERT INTO `t_area` VALUES ('360826', '吉安市', 'jian', '泰和县', '901420', '江西省', 'JAJATH');
INSERT INTO `t_area` VALUES ('360827', '吉安市', 'jian', '遂川县', '901421', '江西省', 'JAJASC');
INSERT INTO `t_area` VALUES ('360828', '吉安市', 'jian', '万安县', '901422', '江西省', 'JAJAWA');
INSERT INTO `t_area` VALUES ('360829', '吉安市', 'jian', '安福县', '901423', '江西省', 'JAJAAF');
INSERT INTO `t_area` VALUES ('360830', '吉安市', 'jian', '永新县', '901424', '江西省', 'JAJAYX');
INSERT INTO `t_area` VALUES ('360881', '吉安市', 'jian', '井冈山市', '901425', '江西省', 'JAJAJGS');
INSERT INTO `t_area` VALUES ('360902', '宜春市', 'yichun', '袁州区', '901403', '江西省', 'YCYCYZ');
INSERT INTO `t_area` VALUES ('360921', '宜春市', 'yichun', '奉新县', '901404', '江西省', 'YCYCFX');
INSERT INTO `t_area` VALUES ('360922', '宜春市', 'yichun', '万载县', '901405', '江西省', 'YCYCWZ');
INSERT INTO `t_area` VALUES ('360923', '宜春市', 'yichun', '上高县', '901406', '江西省', 'YCYCSG');
INSERT INTO `t_area` VALUES ('360924', '宜春市', 'yichun', '宜丰县', '901407', '江西省', 'YCYCYF');
INSERT INTO `t_area` VALUES ('360925', '宜春市', 'yichun', '靖安县', '901408', '江西省', 'YCYCJA');
INSERT INTO `t_area` VALUES ('360926', '宜春市', 'yichun', '铜鼓县', '901409', '江西省', 'YCYCTG');
INSERT INTO `t_area` VALUES ('360981', '宜春市', 'yichun', '丰城市', '901410', '江西省', 'YCYCFC');
INSERT INTO `t_area` VALUES ('360982', '宜春市', 'yichun', '樟树市', '901411', '江西省', 'YCYCZS');
INSERT INTO `t_area` VALUES ('360983', '宜春市', 'yichun', '高安市', '901412', '江西省', 'YCYCGA');
INSERT INTO `t_area` VALUES ('361002', '抚州市', 'fuzhou', '临川区', '901447', '江西省', 'FZFZLC');
INSERT INTO `t_area` VALUES ('361021', '抚州市', 'fuzhou', '??城县', '901448', '江西省', 'FZFZ??C');
INSERT INTO `t_area` VALUES ('361022', '抚州市', 'fuzhou', '黎川县', '901449', '江西省', 'FZFZLC');
INSERT INTO `t_area` VALUES ('361023', '抚州市', 'fuzhou', '南丰县', '901450', '江西省', 'FZFZNF');
INSERT INTO `t_area` VALUES ('361024', '抚州市', 'fuzhou', '崇仁县', '901451', '江西省', 'FZFZCR');
INSERT INTO `t_area` VALUES ('361025', '抚州市', 'fuzhou', '乐安县', '901452', '江西省', 'FZFZLA');
INSERT INTO `t_area` VALUES ('361026', '抚州市', 'fuzhou', '宜黄县', '901453', '江西省', 'FZFZYH');
INSERT INTO `t_area` VALUES ('361027', '抚州市', 'fuzhou', '金溪县', '901454', '江西省', 'FZFZJX');
INSERT INTO `t_area` VALUES ('361028', '抚州市', 'fuzhou', '资溪县', '901455', '江西省', 'FZFZZX');
INSERT INTO `t_area` VALUES ('361029', '抚州市', 'fuzhou', '东乡县', '901456', '江西省', 'FZFZDX');
INSERT INTO `t_area` VALUES ('361030', '抚州市', 'fuzhou', '广昌县', '901457', '江西省', 'FZFZGC');
INSERT INTO `t_area` VALUES ('361102', '上饶市', 'shangrao', '信州区', '901426', '江西省', 'SRSRXZ');
INSERT INTO `t_area` VALUES ('361103', '上饶市', 'shangrao', '广丰区', '901427', '江西省', 'SRSRGF');
INSERT INTO `t_area` VALUES ('361121', '上饶市', 'shangrao', '上饶县', '901428', '江西省', 'SRSRSR');
INSERT INTO `t_area` VALUES ('361123', '上饶市', 'shangrao', '玉山县', '901429', '江西省', 'SRSRYS');
INSERT INTO `t_area` VALUES ('361124', '上饶市', 'shangrao', '铅山县', '901430', '江西省', 'SRSRQS');
INSERT INTO `t_area` VALUES ('361125', '上饶市', 'shangrao', '横峰县', '901431', '江西省', 'SRSRHF');
INSERT INTO `t_area` VALUES ('361126', '上饶市', 'shangrao', '弋阳县', '901432', '江西省', 'SRSRYY');
INSERT INTO `t_area` VALUES ('361127', '上饶市', 'shangrao', '余干县', '901433', '江西省', 'SRSRYG');
INSERT INTO `t_area` VALUES ('361128', '上饶市', 'shangrao', '鄱阳县', '901434', '江西省', 'SRSRPY');
INSERT INTO `t_area` VALUES ('361129', '上饶市', 'shangrao', '万年县', '901435', '江西省', 'SRSRWN');
INSERT INTO `t_area` VALUES ('361130', '上饶市', 'shangrao', '婺源县', '901436', '江西省', 'SRSRWY');
INSERT INTO `t_area` VALUES ('361181', '上饶市', 'shangrao', '德兴市', '901437', '江西省', 'SRSRDX');
INSERT INTO `t_area` VALUES ('370102', '济南市', 'jinan', '历下区', '900617', '山东省', 'JNJNLX');
INSERT INTO `t_area` VALUES ('370103', '济南市', 'jinan', '市中区', '900618', '山东省', 'JNJNSZ');
INSERT INTO `t_area` VALUES ('370104', '济南市', 'jinan', '槐荫区', '900619', '山东省', 'JNJNHY');
INSERT INTO `t_area` VALUES ('370105', '济南市', 'jinan', '天桥区', '900620', '山东省', 'JNJNTQ');
INSERT INTO `t_area` VALUES ('370112', '济南市', 'jinan', '历城区', '900621', '山东省', 'JNJNLC');
INSERT INTO `t_area` VALUES ('370113', '济南市', 'jinan', '长清区', '900622', '山东省', 'JNJNZQ');
INSERT INTO `t_area` VALUES ('370124', '济南市', 'jinan', '平阴县', '900623', '山东省', 'JNJNPY');
INSERT INTO `t_area` VALUES ('370125', '济南市', 'jinan', '济阳县', '900624', '山东省', 'JNJNJY');
INSERT INTO `t_area` VALUES ('370126', '济南市', 'jinan', '商河县', '900625', '山东省', 'JNJNSH');
INSERT INTO `t_area` VALUES ('370181', '济南市', 'jinan', '章丘市', '900626', '山东省', 'JNJNZQ');
INSERT INTO `t_area` VALUES ('370202', '青岛市', 'qingdao', '市南区', '900661', '山东省', 'QDQDSN');
INSERT INTO `t_area` VALUES ('370203', '青岛市', 'qingdao', '市北区', '900662', '山东省', 'QDQDSB');
INSERT INTO `t_area` VALUES ('370211', '青岛市', 'qingdao', '黄岛区', '900663', '山东省', 'QDQDHD');
INSERT INTO `t_area` VALUES ('370212', '青岛市', 'qingdao', '崂山区', '900664', '山东省', 'QDQDLS');
INSERT INTO `t_area` VALUES ('370213', '青岛市', 'qingdao', '李沧区', '900665', '山东省', 'QDQDLC');
INSERT INTO `t_area` VALUES ('370214', '青岛市', 'qingdao', '城阳区', '900666', '山东省', 'QDQDCY');
INSERT INTO `t_area` VALUES ('370281', '青岛市', 'qingdao', '胶州市', '900667', '山东省', 'QDQDJZ');
INSERT INTO `t_area` VALUES ('370282', '青岛市', 'qingdao', '即墨市', '900668', '山东省', 'QDQDJM');
INSERT INTO `t_area` VALUES ('370283', '青岛市', 'qingdao', '平度市', '900669', '山东省', 'QDQDPD');
INSERT INTO `t_area` VALUES ('370285', '青岛市', 'qingdao', '莱西市', '900670', '山东省', 'QDQDLX');
INSERT INTO `t_area` VALUES ('370302', '淄博市', 'zibo', '淄川区', '900671', '山东省', 'ZBZBZC');
INSERT INTO `t_area` VALUES ('370303', '淄博市', 'zibo', '张店区', '900672', '山东省', 'ZBZBZD');
INSERT INTO `t_area` VALUES ('370304', '淄博市', 'zibo', '博山区', '900673', '山东省', 'ZBZBBS');
INSERT INTO `t_area` VALUES ('370305', '淄博市', 'zibo', '临淄区', '900674', '山东省', 'ZBZBLZ');
INSERT INTO `t_area` VALUES ('370306', '淄博市', 'zibo', '周村区', '900675', '山东省', 'ZBZBZC');
INSERT INTO `t_area` VALUES ('370321', '淄博市', 'zibo', '桓台县', '900676', '山东省', 'ZBZBHT');
INSERT INTO `t_area` VALUES ('370322', '淄博市', 'zibo', '高青县', '900677', '山东省', 'ZBZBGQ');
INSERT INTO `t_area` VALUES ('370323', '淄博市', 'zibo', '沂源县', '900678', '山东省', 'ZBZBYY');
INSERT INTO `t_area` VALUES ('370402', '枣庄市', 'zaozhuang', '市中区', '900627', '山东省', 'ZZZZSZ');
INSERT INTO `t_area` VALUES ('370403', '枣庄市', 'zaozhuang', '薛城区', '900628', '山东省', 'ZZZZXC');
INSERT INTO `t_area` VALUES ('370404', '枣庄市', 'zaozhuang', '峄城区', '900629', '山东省', 'ZZZZYC');
INSERT INTO `t_area` VALUES ('370405', '枣庄市', 'zaozhuang', '台儿庄区', '900630', '山东省', 'ZZZZTEZ');
INSERT INTO `t_area` VALUES ('370406', '枣庄市', 'zaozhuang', '山亭区', '900631', '山东省', 'ZZZZST');
INSERT INTO `t_area` VALUES ('370481', '枣庄市', 'zaozhuang', '滕州市', '900632', '山东省', 'ZZZZTZ');
INSERT INTO `t_area` VALUES ('370502', '东营市', 'dongying', '东营区', '900679', '山东省', 'DYDYDY');
INSERT INTO `t_area` VALUES ('370503', '东营市', 'dongying', '河口区', '900680', '山东省', 'DYDYHK');
INSERT INTO `t_area` VALUES ('370521', '东营市', 'dongying', '垦利县', '900681', '山东省', 'DYDYKL');
INSERT INTO `t_area` VALUES ('370522', '东营市', 'dongying', '利津县', '900682', '山东省', 'DYDYLJ');
INSERT INTO `t_area` VALUES ('370523', '东营市', 'dongying', '广饶县', '900683', '山东省', 'DYDYGR');
INSERT INTO `t_area` VALUES ('370602', '烟台市', 'yantai', '芝罘区', '900633', '山东省', 'YTYTZF');
INSERT INTO `t_area` VALUES ('370611', '烟台市', 'yantai', '福山区', '900634', '山东省', 'YTYTFS');
INSERT INTO `t_area` VALUES ('370612', '烟台市', 'yantai', '牟平区', '900635', '山东省', 'YTYTMP');
INSERT INTO `t_area` VALUES ('370613', '烟台市', 'yantai', '莱山区', '900636', '山东省', 'YTYTLS');
INSERT INTO `t_area` VALUES ('370634', '烟台市', 'yantai', '长岛县', '900637', '山东省', 'YTYTZD');
INSERT INTO `t_area` VALUES ('370681', '烟台市', 'yantai', '龙口市', '900638', '山东省', 'YTYTLK');
INSERT INTO `t_area` VALUES ('370682', '烟台市', 'yantai', '莱阳市', '900639', '山东省', 'YTYTLY');
INSERT INTO `t_area` VALUES ('370683', '烟台市', 'yantai', '莱州市', '900640', '山东省', 'YTYTLZ');
INSERT INTO `t_area` VALUES ('370684', '烟台市', 'yantai', '蓬莱市', '900641', '山东省', 'YTYTPL');
INSERT INTO `t_area` VALUES ('370685', '烟台市', 'yantai', '招远市', '900642', '山东省', 'YTYTZY');
INSERT INTO `t_area` VALUES ('370686', '烟台市', 'yantai', '栖霞市', '900643', '山东省', 'YTYTQX');
INSERT INTO `t_area` VALUES ('370687', '烟台市', 'yantai', '海阳市', '900644', '山东省', 'YTYTHY');
INSERT INTO `t_area` VALUES ('370702', '潍坊市', 'weifang', '潍城区', '900555', '山东省', 'WFWFWC');
INSERT INTO `t_area` VALUES ('370703', '潍坊市', 'weifang', '寒亭区', '900556', '山东省', 'WFWFHT');
INSERT INTO `t_area` VALUES ('370704', '潍坊市', 'weifang', '坊子区', '900557', '山东省', 'WFWFFZ');
INSERT INTO `t_area` VALUES ('370705', '潍坊市', 'weifang', '奎文区', '900558', '山东省', 'WFWFKW');
INSERT INTO `t_area` VALUES ('370724', '潍坊市', 'weifang', '临朐县', '900559', '山东省', 'WFWFLQ');
INSERT INTO `t_area` VALUES ('370725', '潍坊市', 'weifang', '昌乐县', '900560', '山东省', 'WFWFCL');
INSERT INTO `t_area` VALUES ('370781', '潍坊市', 'weifang', '青州市', '900561', '山东省', 'WFWFQZ');
INSERT INTO `t_area` VALUES ('370782', '潍坊市', 'weifang', '诸城市', '900562', '山东省', 'WFWFZC');
INSERT INTO `t_area` VALUES ('370783', '潍坊市', 'weifang', '寿光市', '900563', '山东省', 'WFWFSG');
INSERT INTO `t_area` VALUES ('370784', '潍坊市', 'weifang', '安丘市', '900564', '山东省', 'WFWFAQ');
INSERT INTO `t_area` VALUES ('370785', '潍坊市', 'weifang', '高密市', '900565', '山东省', 'WFWFGM');
INSERT INTO `t_area` VALUES ('370786', '潍坊市', 'weifang', '昌邑市', '900566', '山东省', 'WFWFCY');
INSERT INTO `t_area` VALUES ('370811', '济宁市', 'jining', '任城区', '900599', '山东省', 'JNJNRC');
INSERT INTO `t_area` VALUES ('370812', '济宁市', 'jining', '兖州区', '900600', '山东省', 'JNJNYZ');
INSERT INTO `t_area` VALUES ('370826', '济宁市', 'jining', '微山县', '900601', '山东省', 'JNJNWS');
INSERT INTO `t_area` VALUES ('370827', '济宁市', 'jining', '鱼台县', '900602', '山东省', 'JNJNYT');
INSERT INTO `t_area` VALUES ('370828', '济宁市', 'jining', '金乡县', '900603', '山东省', 'JNJNJX');
INSERT INTO `t_area` VALUES ('370829', '济宁市', 'jining', '嘉祥县', '900604', '山东省', 'JNJNJX');
INSERT INTO `t_area` VALUES ('370830', '济宁市', 'jining', '汶上县', '900605', '山东省', 'JNJNWS');
INSERT INTO `t_area` VALUES ('370831', '济宁市', 'jining', '泗水县', '900606', '山东省', 'JNJNSS');
INSERT INTO `t_area` VALUES ('370832', '济宁市', 'jining', '梁山县', '900607', '山东省', 'JNJNLS');
INSERT INTO `t_area` VALUES ('370881', '济宁市', 'jining', '曲阜市', '900608', '山东省', 'JNJNQF');
INSERT INTO `t_area` VALUES ('370883', '济宁市', 'jining', '邹城市', '900609', '山东省', 'JNJNZC');
INSERT INTO `t_area` VALUES ('370902', '泰安市', 'taian', '泰山区', '900645', '山东省', 'TATATS');
INSERT INTO `t_area` VALUES ('370911', '泰安市', 'taian', '岱岳区', '900646', '山东省', 'TATADY');
INSERT INTO `t_area` VALUES ('370921', '泰安市', 'taian', '宁阳县', '900647', '山东省', 'TATANY');
INSERT INTO `t_area` VALUES ('370923', '泰安市', 'taian', '东平县', '900648', '山东省', 'TATADP');
INSERT INTO `t_area` VALUES ('370982', '泰安市', 'taian', '新泰市', '900649', '山东省', 'TATAXT');
INSERT INTO `t_area` VALUES ('370983', '泰安市', 'taian', '肥城市', '900650', '山东省', 'TATAFC');
INSERT INTO `t_area` VALUES ('371002', '威海市', 'weihai', '环翠区', '900684', '山东省', 'WHWHHC');
INSERT INTO `t_area` VALUES ('371003', '威海市', 'weihai', '文登区', '900685', '山东省', 'WHWHWD');
INSERT INTO `t_area` VALUES ('371082', '威海市', 'weihai', '荣成市', '900686', '山东省', 'WHWHRC');
INSERT INTO `t_area` VALUES ('371083', '威海市', 'weihai', '乳山市', '900687', '山东省', 'WHWHRS');
INSERT INTO `t_area` VALUES ('371102', '日照市', 'rizhao', '东港区', '900551', '山东省', 'RZRZDG');
INSERT INTO `t_area` VALUES ('371103', '日照市', 'rizhao', '岚山区', '900552', '山东省', 'RZRZLS');
INSERT INTO `t_area` VALUES ('371121', '日照市', 'rizhao', '五莲县', '900553', '山东省', 'RZRZWL');
INSERT INTO `t_area` VALUES ('371122', '日照市', 'rizhao', '莒县', '900554', '山东省', 'RZRZJ');
INSERT INTO `t_area` VALUES ('371202', '莱芜市', 'laiwu', '莱城区', '900659', '山东省', 'LWLWLC');
INSERT INTO `t_area` VALUES ('371203', '莱芜市', 'laiwu', '钢城区', '900660', '山东省', 'LWLWGC');
INSERT INTO `t_area` VALUES ('371302', '临沂市', 'linyi', '兰山区', '900567', '山东省', 'LYLYLS');
INSERT INTO `t_area` VALUES ('371311', '临沂市', 'linyi', '罗庄区', '900568', '山东省', 'LYLYLZ');
INSERT INTO `t_area` VALUES ('371312', '临沂市', 'linyi', '河东区', '900569', '山东省', 'LYLYHD');
INSERT INTO `t_area` VALUES ('371321', '临沂市', 'linyi', '沂南县', '900570', '山东省', 'LYLYYN');
INSERT INTO `t_area` VALUES ('371322', '临沂市', 'linyi', '郯城县', '900571', '山东省', 'LYLYTC');
INSERT INTO `t_area` VALUES ('371323', '临沂市', 'linyi', '沂水县', '900572', '山东省', 'LYLYYS');
INSERT INTO `t_area` VALUES ('371324', '临沂市', 'linyi', '兰陵县', '900573', '山东省', 'LYLYLL');
INSERT INTO `t_area` VALUES ('371325', '临沂市', 'linyi', '费县', '900574', '山东省', 'LYLYF');
INSERT INTO `t_area` VALUES ('371326', '临沂市', 'linyi', '平邑县', '900575', '山东省', 'LYLYPY');
INSERT INTO `t_area` VALUES ('371327', '临沂市', 'linyi', '莒南县', '900576', '山东省', 'LYLYJN');
INSERT INTO `t_area` VALUES ('371328', '临沂市', 'linyi', '蒙阴县', '900577', '山东省', 'LYLYMY');
INSERT INTO `t_area` VALUES ('371329', '临沂市', 'linyi', '临沭县', '900578', '山东省', 'LYLYLS');
INSERT INTO `t_area` VALUES ('371402', '德州市', 'dezhou', '德城区', '900579', '山东省', 'DZDZDC');
INSERT INTO `t_area` VALUES ('371403', '德州市', 'dezhou', '陵城区', '900580', '山东省', 'DZDZLC');
INSERT INTO `t_area` VALUES ('371422', '德州市', 'dezhou', '宁津县', '900581', '山东省', 'DZDZNJ');
INSERT INTO `t_area` VALUES ('371423', '德州市', 'dezhou', '庆云县', '900582', '山东省', 'DZDZQY');
INSERT INTO `t_area` VALUES ('371424', '德州市', 'dezhou', '临邑县', '900583', '山东省', 'DZDZLY');
INSERT INTO `t_area` VALUES ('371425', '德州市', 'dezhou', '齐河县', '900584', '山东省', 'DZDZQH');
INSERT INTO `t_area` VALUES ('371426', '德州市', 'dezhou', '平原县', '900585', '山东省', 'DZDZPY');
INSERT INTO `t_area` VALUES ('371427', '德州市', 'dezhou', '夏津县', '900586', '山东省', 'DZDZXJ');
INSERT INTO `t_area` VALUES ('371428', '德州市', 'dezhou', '武城县', '900587', '山东省', 'DZDZWC');
INSERT INTO `t_area` VALUES ('371481', '德州市', 'dezhou', '乐陵市', '900588', '山东省', 'DZDZLL');
INSERT INTO `t_area` VALUES ('371482', '德州市', 'dezhou', '禹城市', '900589', '山东省', 'DZDZYC');
INSERT INTO `t_area` VALUES ('371502', '聊城市', 'liaocheng', '东昌府区', '900651', '山东省', 'LCLCDCF');
INSERT INTO `t_area` VALUES ('371521', '聊城市', 'liaocheng', '阳谷县', '900652', '山东省', 'LCLCYG');
INSERT INTO `t_area` VALUES ('371522', '聊城市', 'liaocheng', '莘县', '900653', '山东省', 'LCLCX');
INSERT INTO `t_area` VALUES ('371523', '聊城市', 'liaocheng', '茌平县', '900654', '山东省', 'LCLCCP');
INSERT INTO `t_area` VALUES ('371524', '聊城市', 'liaocheng', '东阿县', '900655', '山东省', 'LCLCDA');
INSERT INTO `t_area` VALUES ('371525', '聊城市', 'liaocheng', '冠县', '900656', '山东省', 'LCLCG');
INSERT INTO `t_area` VALUES ('371526', '聊城市', 'liaocheng', '高唐县', '900657', '山东省', 'LCLCGT');
INSERT INTO `t_area` VALUES ('371581', '聊城市', 'liaocheng', '临清市', '900658', '山东省', 'LCLCLQ');
INSERT INTO `t_area` VALUES ('371602', '滨州市', 'binzhou', '滨城区', '900610', '山东省', 'BZBZBC');
INSERT INTO `t_area` VALUES ('371603', '滨州市', 'binzhou', '沾化区', '900611', '山东省', 'BZBZZH');
INSERT INTO `t_area` VALUES ('371621', '滨州市', 'binzhou', '惠民县', '900612', '山东省', 'BZBZHM');
INSERT INTO `t_area` VALUES ('371622', '滨州市', 'binzhou', '阳信县', '900613', '山东省', 'BZBZYX');
INSERT INTO `t_area` VALUES ('371623', '滨州市', 'binzhou', '无棣县', '900614', '山东省', 'BZBZWD');
INSERT INTO `t_area` VALUES ('371625', '滨州市', 'binzhou', '博兴县', '900615', '山东省', 'BZBZBX');
INSERT INTO `t_area` VALUES ('371626', '滨州市', 'binzhou', '邹平县', '900616', '山东省', 'BZBZZP');
INSERT INTO `t_area` VALUES ('371702', '菏泽市', 'heze', '牡丹区', '900590', '山东省', 'HZHZMD');
INSERT INTO `t_area` VALUES ('371721', '菏泽市', 'heze', '曹县', '900591', '山东省', 'HZHZC');
INSERT INTO `t_area` VALUES ('371722', '菏泽市', 'heze', '单县', '900592', '山东省', 'HZHZD');
INSERT INTO `t_area` VALUES ('371723', '菏泽市', 'heze', '成武县', '900593', '山东省', 'HZHZCW');
INSERT INTO `t_area` VALUES ('371724', '菏泽市', 'heze', '巨野县', '900594', '山东省', 'HZHZJY');
INSERT INTO `t_area` VALUES ('371725', '菏泽市', 'heze', '郓城县', '900595', '山东省', 'HZHZYC');
INSERT INTO `t_area` VALUES ('371726', '菏泽市', 'heze', '鄄城县', '900596', '山东省', 'HZHZJC');
INSERT INTO `t_area` VALUES ('371727', '菏泽市', 'heze', '定陶县', '900597', '山东省', 'HZHZDT');
INSERT INTO `t_area` VALUES ('371728', '菏泽市', 'heze', '东明县', '900598', '山东省', 'HZHZDM');
INSERT INTO `t_area` VALUES ('410102', '郑州市', 'zhengzhou', '中原区', '902241', '河南省', 'ZZZZZY');
INSERT INTO `t_area` VALUES ('410103', '郑州市', 'zhengzhou', '二七区', '902242', '河南省', 'ZZZZEQ');
INSERT INTO `t_area` VALUES ('410104', '郑州市', 'zhengzhou', '管城回族区', '902243', '河南省', 'ZZZZGCHZ');
INSERT INTO `t_area` VALUES ('410105', '郑州市', 'zhengzhou', '金水区', '902244', '河南省', 'ZZZZJS');
INSERT INTO `t_area` VALUES ('410106', '郑州市', 'zhengzhou', '上街区', '902245', '河南省', 'ZZZZSJ');
INSERT INTO `t_area` VALUES ('410108', '郑州市', 'zhengzhou', '惠济区', '902246', '河南省', 'ZZZZHJ');
INSERT INTO `t_area` VALUES ('410122', '郑州市', 'zhengzhou', '中牟县', '902247', '河南省', 'ZZZZZM');
INSERT INTO `t_area` VALUES ('410181', '郑州市', 'zhengzhou', '巩义市', '902248', '河南省', 'ZZZZGY');
INSERT INTO `t_area` VALUES ('410182', '郑州市', 'zhengzhou', '荥阳市', '902249', '河南省', 'ZZZZYY');
INSERT INTO `t_area` VALUES ('410183', '郑州市', 'zhengzhou', '新密市', '902250', '河南省', 'ZZZZXM');
INSERT INTO `t_area` VALUES ('410184', '郑州市', 'zhengzhou', '新郑市', '902251', '河南省', 'ZZZZXZ');
INSERT INTO `t_area` VALUES ('410185', '郑州市', 'zhengzhou', '登封市', '902252', '河南省', 'ZZZZDF');
INSERT INTO `t_area` VALUES ('410202', '开封市', 'kaifeng', '龙亭区', '902292', '河南省', 'KFKFLT');
INSERT INTO `t_area` VALUES ('410203', '开封市', 'kaifeng', '顺河回族区', '902293', '河南省', 'KFKFSHHZ');
INSERT INTO `t_area` VALUES ('410204', '开封市', 'kaifeng', '鼓楼区', '902294', '河南省', 'KFKFGL');
INSERT INTO `t_area` VALUES ('410205', '开封市', 'kaifeng', '禹王台区', '902295', '河南省', 'KFKFYWT');
INSERT INTO `t_area` VALUES ('410212', '开封市', 'kaifeng', '祥符区', '902296', '河南省', 'KFKFXF');
INSERT INTO `t_area` VALUES ('410221', '开封市', 'kaifeng', '杞县', '902297', '河南省', 'KFKFQ');
INSERT INTO `t_area` VALUES ('410222', '开封市', 'kaifeng', '通许县', '902298', '河南省', 'KFKFTX');
INSERT INTO `t_area` VALUES ('410223', '开封市', 'kaifeng', '尉氏县', '902299', '河南省', 'KFKFWS');
INSERT INTO `t_area` VALUES ('410225', '开封市', 'kaifeng', '兰考县', '902300', '河南省', 'KFKFLK');
INSERT INTO `t_area` VALUES ('410302', '洛阳市', 'luoyang', '老城区', '902259', '河南省', 'LYLYLC');
INSERT INTO `t_area` VALUES ('410303', '洛阳市', 'luoyang', '西工区', '902260', '河南省', 'LYLYXG');
INSERT INTO `t_area` VALUES ('410304', '洛阳市', 'luoyang', '瀍河回族区', '902261', '河南省', 'LYLYCHHZ');
INSERT INTO `t_area` VALUES ('410305', '洛阳市', 'luoyang', '涧西区', '902262', '河南省', 'LYLYJX');
INSERT INTO `t_area` VALUES ('410306', '洛阳市', 'luoyang', '吉利区', '902263', '河南省', 'LYLYJL');
INSERT INTO `t_area` VALUES ('410311', '洛阳市', 'luoyang', '洛龙区', '902264', '河南省', 'LYLYLL');
INSERT INTO `t_area` VALUES ('410322', '洛阳市', 'luoyang', '孟津县', '902265', '河南省', 'LYLYMJ');
INSERT INTO `t_area` VALUES ('410323', '洛阳市', 'luoyang', '新安县', '902266', '河南省', 'LYLYXA');
INSERT INTO `t_area` VALUES ('410324', '洛阳市', 'luoyang', '栾川县', '902267', '河南省', 'LYLYLC');
INSERT INTO `t_area` VALUES ('410325', '洛阳市', 'luoyang', '嵩县', '902268', '河南省', 'LYLYS');
INSERT INTO `t_area` VALUES ('410326', '洛阳市', 'luoyang', '汝阳县', '902269', '河南省', 'LYLYRY');
INSERT INTO `t_area` VALUES ('410327', '洛阳市', 'luoyang', '宜阳县', '902270', '河南省', 'LYLYYY');
INSERT INTO `t_area` VALUES ('410328', '洛阳市', 'luoyang', '洛宁县', '902271', '河南省', 'LYLYLN');
INSERT INTO `t_area` VALUES ('410329', '洛阳市', 'luoyang', '伊川县', '902272', '河南省', 'LYLYYC');
INSERT INTO `t_area` VALUES ('410381', '洛阳市', 'luoyang', '偃师市', '902273', '河南省', 'LYLYYS');
INSERT INTO `t_area` VALUES ('410402', '平顶山市', 'pingdingshan', '新华区', '902180', '河南省', 'PDSPDSXH');
INSERT INTO `t_area` VALUES ('410403', '平顶山市', 'pingdingshan', '卫东区', '902181', '河南省', 'PDSPDSWD');
INSERT INTO `t_area` VALUES ('410404', '平顶山市', 'pingdingshan', '石龙区', '902182', '河南省', 'PDSPDSSL');
INSERT INTO `t_area` VALUES ('410411', '平顶山市', 'pingdingshan', '湛河区', '902183', '河南省', 'PDSPDSZH');
INSERT INTO `t_area` VALUES ('410421', '平顶山市', 'pingdingshan', '宝丰县', '902184', '河南省', 'PDSPDSBF');
INSERT INTO `t_area` VALUES ('410422', '平顶山市', 'pingdingshan', '叶县', '902185', '河南省', 'PDSPDSY');
INSERT INTO `t_area` VALUES ('410423', '平顶山市', 'pingdingshan', '鲁山县', '902186', '河南省', 'PDSPDSLS');
INSERT INTO `t_area` VALUES ('410425', '平顶山市', 'pingdingshan', '郏县', '902187', '河南省', 'PDSPDSJ');
INSERT INTO `t_area` VALUES ('410481', '平顶山市', 'pingdingshan', '舞钢市', '902188', '河南省', 'PDSPDSWG');
INSERT INTO `t_area` VALUES ('410482', '平顶山市', 'pingdingshan', '汝州市', '902189', '河南省', 'PDSPDSRZ');
INSERT INTO `t_area` VALUES ('410502', '安阳市', 'anyang', '文峰区', '902200', '河南省', 'AYAYWF');
INSERT INTO `t_area` VALUES ('410503', '安阳市', 'anyang', '北关区', '902201', '河南省', 'AYAYBG');
INSERT INTO `t_area` VALUES ('410505', '安阳市', 'anyang', '殷都区', '902202', '河南省', 'AYAYYD');
INSERT INTO `t_area` VALUES ('410506', '安阳市', 'anyang', '龙安区', '902203', '河南省', 'AYAYLA');
INSERT INTO `t_area` VALUES ('410522', '安阳市', 'anyang', '安阳县', '902204', '河南省', 'AYAYAY');
INSERT INTO `t_area` VALUES ('410523', '安阳市', 'anyang', '汤阴县', '902205', '河南省', 'AYAYTY');
INSERT INTO `t_area` VALUES ('410526', '安阳市', 'anyang', '滑县', '902206', '河南省', 'AYAYH');
INSERT INTO `t_area` VALUES ('410527', '安阳市', 'anyang', '内黄县', '902207', '河南省', 'AYAYNH');
INSERT INTO `t_area` VALUES ('410581', '安阳市', 'anyang', '林州市', '902208', '河南省', 'AYAYLZ');
INSERT INTO `t_area` VALUES ('410602', '鹤壁市', 'hebi', '鹤山区', '902144', '河南省', 'HBHBHS');
INSERT INTO `t_area` VALUES ('410603', '鹤壁市', 'hebi', '山城区', '902145', '河南省', 'HBHBSC');
INSERT INTO `t_area` VALUES ('410611', '鹤壁市', 'hebi', '淇滨区', '902146', '河南省', 'HBHBQB');
INSERT INTO `t_area` VALUES ('410621', '鹤壁市', 'hebi', '浚县', '902147', '河南省', 'HBHBJ');
INSERT INTO `t_area` VALUES ('410622', '鹤壁市', 'hebi', '淇县', '902148', '河南省', 'HBHBQ');
INSERT INTO `t_area` VALUES ('410702', '新乡市', 'xinxiang', '红旗区', '902159', '河南省', 'XXXXHQ');
INSERT INTO `t_area` VALUES ('410703', '新乡市', 'xinxiang', '卫滨区', '902160', '河南省', 'XXXXWB');
INSERT INTO `t_area` VALUES ('410704', '新乡市', 'xinxiang', '凤泉区', '902161', '河南省', 'XXXXFQ');
INSERT INTO `t_area` VALUES ('410711', '新乡市', 'xinxiang', '牧野区', '902162', '河南省', 'XXXXMY');
INSERT INTO `t_area` VALUES ('410721', '新乡市', 'xinxiang', '新乡县', '902163', '河南省', 'XXXXXX');
INSERT INTO `t_area` VALUES ('410724', '新乡市', 'xinxiang', '获嘉县', '902164', '河南省', 'XXXXHJ');
INSERT INTO `t_area` VALUES ('410725', '新乡市', 'xinxiang', '原阳县', '902165', '河南省', 'XXXXYY');
INSERT INTO `t_area` VALUES ('410726', '新乡市', 'xinxiang', '延津县', '902166', '河南省', 'XXXXYJ');
INSERT INTO `t_area` VALUES ('410727', '新乡市', 'xinxiang', '封丘县', '902167', '河南省', 'XXXXFQ');
INSERT INTO `t_area` VALUES ('410728', '新乡市', 'xinxiang', '长垣县', '902168', '河南省', 'XXXXZY');
INSERT INTO `t_area` VALUES ('410781', '新乡市', 'xinxiang', '卫辉市', '902169', '河南省', 'XXXXWH');
INSERT INTO `t_area` VALUES ('410782', '新乡市', 'xinxiang', '辉县市', '902170', '河南省', 'XXXXHX');
INSERT INTO `t_area` VALUES ('410802', '焦作市', 'jiaozuo', '解放区', '902149', '河南省', 'JZJZJF');
INSERT INTO `t_area` VALUES ('410803', '焦作市', 'jiaozuo', '中站区', '902150', '河南省', 'JZJZZZ');
INSERT INTO `t_area` VALUES ('410804', '焦作市', 'jiaozuo', '马村区', '902151', '河南省', 'JZJZMC');
INSERT INTO `t_area` VALUES ('410811', '焦作市', 'jiaozuo', '山阳区', '902152', '河南省', 'JZJZSY');
INSERT INTO `t_area` VALUES ('410821', '焦作市', 'jiaozuo', '修武县', '902153', '河南省', 'JZJZXW');
INSERT INTO `t_area` VALUES ('410822', '焦作市', 'jiaozuo', '博爱县', '902154', '河南省', 'JZJZBA');
INSERT INTO `t_area` VALUES ('410823', '焦作市', 'jiaozuo', '武陟县', '902155', '河南省', 'JZJZWZ');
INSERT INTO `t_area` VALUES ('410825', '焦作市', 'jiaozuo', '温县', '902156', '河南省', 'JZJZW');
INSERT INTO `t_area` VALUES ('410882', '焦作市', 'jiaozuo', '沁阳市', '902157', '河南省', 'JZJZQY');
INSERT INTO `t_area` VALUES ('410883', '焦作市', 'jiaozuo', '孟州市', '902158', '河南省', 'JZJZMZ');
INSERT INTO `t_area` VALUES ('410902', '濮阳市', 'puyang', '华龙区', '902225', '河南省', 'PYPYHL');
INSERT INTO `t_area` VALUES ('410922', '濮阳市', 'puyang', '清丰县', '902226', '河南省', 'PYPYQF');
INSERT INTO `t_area` VALUES ('410923', '濮阳市', 'puyang', '南乐县', '902227', '河南省', 'PYPYNL');
INSERT INTO `t_area` VALUES ('410926', '濮阳市', 'puyang', '范县', '902228', '河南省', 'PYPYF');
INSERT INTO `t_area` VALUES ('410927', '濮阳市', 'puyang', '台前县', '902229', '河南省', 'PYPYTQ');
INSERT INTO `t_area` VALUES ('410928', '濮阳市', 'puyang', '濮阳县', '902230', '河南省', 'PYPYPY');
INSERT INTO `t_area` VALUES ('411002', '许昌市', 'xuchang', '魏都区', '902253', '河南省', 'XCXCWD');
INSERT INTO `t_area` VALUES ('411023', '许昌市', 'xuchang', '许昌县', '902254', '河南省', 'XCXCXC');
INSERT INTO `t_area` VALUES ('411024', '许昌市', 'xuchang', '鄢陵县', '902255', '河南省', 'XCXCYL');
INSERT INTO `t_area` VALUES ('411025', '许昌市', 'xuchang', '襄城县', '902256', '河南省', 'XCXCXC');
INSERT INTO `t_area` VALUES ('411081', '许昌市', 'xuchang', '禹州市', '902257', '河南省', 'XCXCYZ');
INSERT INTO `t_area` VALUES ('411082', '许昌市', 'xuchang', '长葛市', '902258', '河南省', 'XCXCZG');
INSERT INTO `t_area` VALUES ('411102', '漯河市', 'luohe', '源汇区', '902287', '河南省', 'LHLHYH');
INSERT INTO `t_area` VALUES ('411103', '漯河市', 'luohe', '郾城区', '902288', '河南省', 'LHLHYC');
INSERT INTO `t_area` VALUES ('411104', '漯河市', 'luohe', '召陵区', '902289', '河南省', 'LHLHZL');
INSERT INTO `t_area` VALUES ('411121', '漯河市', 'luohe', '舞阳县', '902290', '河南省', 'LHLHWY');
INSERT INTO `t_area` VALUES ('411122', '漯河市', 'luohe', '临颍县', '902291', '河南省', 'LHLHLY');
INSERT INTO `t_area` VALUES ('411202', '三门峡市', 'sanmenxia', '湖滨区', '902209', '河南省', 'SMXSMXHB');
INSERT INTO `t_area` VALUES ('411203', '三门峡市', 'sanmenxia', '陕州区', '902210', '河南省', 'SMXSMXSZ');
INSERT INTO `t_area` VALUES ('411221', '三门峡市', 'sanmenxia', '渑池县', '902211', '河南省', 'SMXSMXMC');
INSERT INTO `t_area` VALUES ('411224', '三门峡市', 'sanmenxia', '卢氏县', '902212', '河南省', 'SMXSMXLS');
INSERT INTO `t_area` VALUES ('411281', '三门峡市', 'sanmenxia', '义马市', '902213', '河南省', 'SMXSMXYM');
INSERT INTO `t_area` VALUES ('411282', '三门峡市', 'sanmenxia', '灵宝市', '902214', '河南省', 'SMXSMXLB');
INSERT INTO `t_area` VALUES ('411302', '南阳市', 'nanyang', '宛城区', '902274', '河南省', 'NYNYWC');
INSERT INTO `t_area` VALUES ('411303', '南阳市', 'nanyang', '卧龙区', '902275', '河南省', 'NYNYWL');
INSERT INTO `t_area` VALUES ('411321', '南阳市', 'nanyang', '南召县', '902276', '河南省', 'NYNYNZ');
INSERT INTO `t_area` VALUES ('411322', '南阳市', 'nanyang', '方城县', '902277', '河南省', 'NYNYFC');
INSERT INTO `t_area` VALUES ('411323', '南阳市', 'nanyang', '西峡县', '902278', '河南省', 'NYNYXX');
INSERT INTO `t_area` VALUES ('411324', '南阳市', 'nanyang', '镇平县', '902279', '河南省', 'NYNYZP');
INSERT INTO `t_area` VALUES ('411325', '南阳市', 'nanyang', '内乡县', '902280', '河南省', 'NYNYNX');
INSERT INTO `t_area` VALUES ('411326', '南阳市', 'nanyang', '淅川县', '902281', '河南省', 'NYNYXC');
INSERT INTO `t_area` VALUES ('411327', '南阳市', 'nanyang', '社旗县', '902282', '河南省', 'NYNYSQ');
INSERT INTO `t_area` VALUES ('411328', '南阳市', 'nanyang', '唐河县', '902283', '河南省', 'NYNYTH');
INSERT INTO `t_area` VALUES ('411329', '南阳市', 'nanyang', '新野县', '902284', '河南省', 'NYNYXY');
INSERT INTO `t_area` VALUES ('411330', '南阳市', 'nanyang', '桐柏县', '902285', '河南省', 'NYNYTB');
INSERT INTO `t_area` VALUES ('411381', '南阳市', 'nanyang', '邓州市', '902286', '河南省', 'NYNYDZ');
INSERT INTO `t_area` VALUES ('411402', '商丘市', 'shangqiu', '梁园区', '902171', '河南省', 'SQSQLY');
INSERT INTO `t_area` VALUES ('411403', '商丘市', 'shangqiu', '睢阳区', '902172', '河南省', 'SQSQSY');
INSERT INTO `t_area` VALUES ('411421', '商丘市', 'shangqiu', '民权县', '902173', '河南省', 'SQSQMQ');
INSERT INTO `t_area` VALUES ('411422', '商丘市', 'shangqiu', '睢县', '902174', '河南省', 'SQSQS');
INSERT INTO `t_area` VALUES ('411423', '商丘市', 'shangqiu', '宁陵县', '902175', '河南省', 'SQSQNL');
INSERT INTO `t_area` VALUES ('411424', '商丘市', 'shangqiu', '柘城县', '902176', '河南省', 'SQSQZC');
INSERT INTO `t_area` VALUES ('411425', '商丘市', 'shangqiu', '虞城县', '902177', '河南省', 'SQSQYC');
INSERT INTO `t_area` VALUES ('411426', '商丘市', 'shangqiu', '夏邑县', '902178', '河南省', 'SQSQXY');
INSERT INTO `t_area` VALUES ('411481', '商丘市', 'shangqiu', '永城市', '902179', '河南省', 'SQSQYC');
INSERT INTO `t_area` VALUES ('411502', '信阳市', 'xinyang', '浉河区', '902215', '河南省', 'XYXYSH');
INSERT INTO `t_area` VALUES ('411503', '信阳市', 'xinyang', '平桥区', '902216', '河南省', 'XYXYPQ');
INSERT INTO `t_area` VALUES ('411521', '信阳市', 'xinyang', '罗山县', '902217', '河南省', 'XYXYLS');
INSERT INTO `t_area` VALUES ('411522', '信阳市', 'xinyang', '光山县', '902218', '河南省', 'XYXYGS');
INSERT INTO `t_area` VALUES ('411523', '信阳市', 'xinyang', '新县', '902219', '河南省', 'XYXYX');
INSERT INTO `t_area` VALUES ('411524', '信阳市', 'xinyang', '商城县', '902220', '河南省', 'XYXYSC');
INSERT INTO `t_area` VALUES ('411525', '信阳市', 'xinyang', '固始县', '902221', '河南省', 'XYXYGS');
INSERT INTO `t_area` VALUES ('411526', '信阳市', 'xinyang', '潢川县', '902222', '河南省', 'XYXYHC');
INSERT INTO `t_area` VALUES ('411527', '信阳市', 'xinyang', '淮滨县', '902223', '河南省', 'XYXYHB');
INSERT INTO `t_area` VALUES ('411528', '信阳市', 'xinyang', '息县', '902224', '河南省', 'XYXYX');
INSERT INTO `t_area` VALUES ('411602', '周口市', 'zhoukou', '川汇区', '902231', '河南省', 'ZKZKCH');
INSERT INTO `t_area` VALUES ('411621', '周口市', 'zhoukou', '扶沟县', '902232', '河南省', 'ZKZKFG');
INSERT INTO `t_area` VALUES ('411622', '周口市', 'zhoukou', '西华县', '902233', '河南省', 'ZKZKXH');
INSERT INTO `t_area` VALUES ('411623', '周口市', 'zhoukou', '商水县', '902234', '河南省', 'ZKZKSS');
INSERT INTO `t_area` VALUES ('411624', '周口市', 'zhoukou', '沈丘县', '902235', '河南省', 'ZKZKSQ');
INSERT INTO `t_area` VALUES ('411625', '周口市', 'zhoukou', '郸城县', '902236', '河南省', 'ZKZKDC');
INSERT INTO `t_area` VALUES ('411626', '周口市', 'zhoukou', '淮阳县', '902237', '河南省', 'ZKZKHY');
INSERT INTO `t_area` VALUES ('411627', '周口市', 'zhoukou', '太康县', '902238', '河南省', 'ZKZKTK');
INSERT INTO `t_area` VALUES ('411628', '周口市', 'zhoukou', '鹿邑县', '902239', '河南省', 'ZKZKLY');
INSERT INTO `t_area` VALUES ('411681', '周口市', 'zhoukou', '项城市', '902240', '河南省', 'ZKZKXC');
INSERT INTO `t_area` VALUES ('411702', '驻马店市', 'zhumadian', '驿城区', '902190', '河南省', 'ZMDZMDYC');
INSERT INTO `t_area` VALUES ('411721', '驻马店市', 'zhumadian', '西平县', '902191', '河南省', 'ZMDZMDXP');
INSERT INTO `t_area` VALUES ('411722', '驻马店市', 'zhumadian', '上蔡县', '902192', '河南省', 'ZMDZMDSC');
INSERT INTO `t_area` VALUES ('411723', '驻马店市', 'zhumadian', '平舆县', '902193', '河南省', 'ZMDZMDPY');
INSERT INTO `t_area` VALUES ('411724', '驻马店市', 'zhumadian', '正阳县', '902194', '河南省', 'ZMDZMDZY');
INSERT INTO `t_area` VALUES ('411725', '驻马店市', 'zhumadian', '确山县', '902195', '河南省', 'ZMDZMDQS');
INSERT INTO `t_area` VALUES ('411726', '驻马店市', 'zhumadian', '泌阳县', '902196', '河南省', 'ZMDZMDMY');
INSERT INTO `t_area` VALUES ('411727', '驻马店市', 'zhumadian', '汝南县', '902197', '河南省', 'ZMDZMDRN');
INSERT INTO `t_area` VALUES ('411728', '驻马店市', 'zhumadian', '遂平县', '902198', '河南省', 'ZMDZMDSP');
INSERT INTO `t_area` VALUES ('411729', '驻马店市', 'zhumadian', '新蔡县', '902199', '河南省', 'ZMDZMDXC');
INSERT INTO `t_area` VALUES ('420102', '武汉市', 'wuhan', '江岸区', '902356', '湖北省', 'WHWHJA');
INSERT INTO `t_area` VALUES ('420103', '武汉市', 'wuhan', '江汉区', '902357', '湖北省', 'WHWHJH');
INSERT INTO `t_area` VALUES ('420104', '武汉市', 'wuhan', '硚口区', '902358', '湖北省', 'WHWHQK');
INSERT INTO `t_area` VALUES ('420105', '武汉市', 'wuhan', '汉阳区', '902359', '湖北省', 'WHWHHY');
INSERT INTO `t_area` VALUES ('420106', '武汉市', 'wuhan', '武昌区', '902360', '湖北省', 'WHWHWC');
INSERT INTO `t_area` VALUES ('420107', '武汉市', 'wuhan', '青山区', '902361', '湖北省', 'WHWHQS');
INSERT INTO `t_area` VALUES ('420111', '武汉市', 'wuhan', '洪山区', '902362', '湖北省', 'WHWHHS');
INSERT INTO `t_area` VALUES ('420112', '武汉市', 'wuhan', '东西湖区', '902363', '湖北省', 'WHWHDXH');
INSERT INTO `t_area` VALUES ('420113', '武汉市', 'wuhan', '汉南区', '902364', '湖北省', 'WHWHHN');
INSERT INTO `t_area` VALUES ('420114', '武汉市', 'wuhan', '蔡甸区', '902365', '湖北省', 'WHWHCD');
INSERT INTO `t_area` VALUES ('420115', '武汉市', 'wuhan', '江夏区', '902366', '湖北省', 'WHWHJX');
INSERT INTO `t_area` VALUES ('420116', '武汉市', 'wuhan', '黄陂区', '902367', '湖北省', 'WHWHHP');
INSERT INTO `t_area` VALUES ('420117', '武汉市', 'wuhan', '新洲区', '902368', '湖北省', 'WHWHXZ');
INSERT INTO `t_area` VALUES ('420202', '黄石市', 'huangshi', '黄石港区', '902374', '湖北省', 'HSHSHSG');
INSERT INTO `t_area` VALUES ('420203', '黄石市', 'huangshi', '西塞山区', '902375', '湖北省', 'HSHSXSS');
INSERT INTO `t_area` VALUES ('420204', '黄石市', 'huangshi', '下陆区', '902376', '湖北省', 'HSHSXL');
INSERT INTO `t_area` VALUES ('420205', '黄石市', 'huangshi', '铁山区', '902377', '湖北省', 'HSHSTS');
INSERT INTO `t_area` VALUES ('420222', '黄石市', 'huangshi', '阳新县', '902378', '湖北省', 'HSHSYX');
INSERT INTO `t_area` VALUES ('420281', '黄石市', 'huangshi', '大冶市', '902379', '湖北省', 'HSHSDY');
INSERT INTO `t_area` VALUES ('420302', '十堰市', 'shiyan', '茅箭区', '902304', '湖北省', 'SYSYMJ');
INSERT INTO `t_area` VALUES ('420303', '十堰市', 'shiyan', '张湾区', '902305', '湖北省', 'SYSYZW');
INSERT INTO `t_area` VALUES ('420304', '十堰市', 'shiyan', '郧阳区', '902306', '湖北省', 'SYSYYY');
INSERT INTO `t_area` VALUES ('420322', '十堰市', 'shiyan', '郧西县', '902307', '湖北省', 'SYSYYX');
INSERT INTO `t_area` VALUES ('420323', '十堰市', 'shiyan', '竹山县', '902308', '湖北省', 'SYSYZS');
INSERT INTO `t_area` VALUES ('420324', '十堰市', 'shiyan', '竹溪县', '902309', '湖北省', 'SYSYZX');
INSERT INTO `t_area` VALUES ('420325', '十堰市', 'shiyan', '房县', '902310', '湖北省', 'SYSYF');
INSERT INTO `t_area` VALUES ('420381', '十堰市', 'shiyan', '丹江口市', '902311', '湖北省', 'SYSYDJK');
INSERT INTO `t_area` VALUES ('420502', '宜昌市', 'yichang', '西陵区', '902326', '湖北省', 'YCYCXL');
INSERT INTO `t_area` VALUES ('420503', '宜昌市', 'yichang', '伍家岗区', '902327', '湖北省', 'YCYCWJG');
INSERT INTO `t_area` VALUES ('420504', '宜昌市', 'yichang', '点军区', '902328', '湖北省', 'YCYCDJ');
INSERT INTO `t_area` VALUES ('420505', '宜昌市', 'yichang', '猇亭区', '902329', '湖北省', 'YCYCYT');
INSERT INTO `t_area` VALUES ('420506', '宜昌市', 'yichang', '夷陵区', '902330', '湖北省', 'YCYCYL');
INSERT INTO `t_area` VALUES ('420525', '宜昌市', 'yichang', '远安县', '902331', '湖北省', 'YCYCYA');
INSERT INTO `t_area` VALUES ('420526', '宜昌市', 'yichang', '兴山县', '902332', '湖北省', 'YCYCXS');
INSERT INTO `t_area` VALUES ('420527', '宜昌市', 'yichang', '秭归县', '902333', '湖北省', 'YCYCZG');
INSERT INTO `t_area` VALUES ('420528', '宜昌市', 'yichang', '长阳土家族自治县', '902334', '湖北省', 'YCYCZYTJZZZ');
INSERT INTO `t_area` VALUES ('420529', '宜昌市', 'yichang', '五峰土家族自治县', '902335', '湖北省', 'YCYCWFTJZZZ');
INSERT INTO `t_area` VALUES ('420581', '宜昌市', 'yichang', '宜都市', '902336', '湖北省', 'YCYCYD');
INSERT INTO `t_area` VALUES ('420582', '宜昌市', 'yichang', '当阳市', '902337', '湖北省', 'YCYCDY');
INSERT INTO `t_area` VALUES ('420583', '宜昌市', 'yichang', '枝江市', '902338', '湖北省', 'YCYCZJ');
INSERT INTO `t_area` VALUES ('420602', '襄阳市', 'xiangyang', '襄城区', '902339', '湖北省', 'XYXYXC');
INSERT INTO `t_area` VALUES ('420606', '襄阳市', 'xiangyang', '樊城区', '902340', '湖北省', 'XYXYFC');
INSERT INTO `t_area` VALUES ('420607', '襄阳市', 'xiangyang', '襄州区', '902341', '湖北省', 'XYXYXZ');
INSERT INTO `t_area` VALUES ('420624', '襄阳市', 'xiangyang', '南漳县', '902342', '湖北省', 'XYXYNZ');
INSERT INTO `t_area` VALUES ('420625', '襄阳市', 'xiangyang', '谷城县', '902343', '湖北省', 'XYXYGC');
INSERT INTO `t_area` VALUES ('420626', '襄阳市', 'xiangyang', '保康县', '902344', '湖北省', 'XYXYBK');
INSERT INTO `t_area` VALUES ('420682', '襄阳市', 'xiangyang', '老河口市', '902345', '湖北省', 'XYXYLHK');
INSERT INTO `t_area` VALUES ('420683', '襄阳市', 'xiangyang', '枣阳市', '902346', '湖北省', 'XYXYZY');
INSERT INTO `t_area` VALUES ('420684', '襄阳市', 'xiangyang', '宜城市', '902347', '湖北省', 'XYXYYC');
INSERT INTO `t_area` VALUES ('420702', '鄂州市', 'ezhou', '梁子湖区', '902301', '湖北省', 'EZEZLZH');
INSERT INTO `t_area` VALUES ('420703', '鄂州市', 'ezhou', '华容区', '902302', '湖北省', 'EZEZHR');
INSERT INTO `t_area` VALUES ('420704', '鄂州市', 'ezhou', '鄂城区', '902303', '湖北省', 'EZEZEC');
INSERT INTO `t_area` VALUES ('420802', '荆门市', 'jingmen', '东宝区', '902369', '湖北省', 'JMJMDB');
INSERT INTO `t_area` VALUES ('420804', '荆门市', 'jingmen', '掇刀区', '902370', '湖北省', 'JMJMDD');
INSERT INTO `t_area` VALUES ('420821', '荆门市', 'jingmen', '京山县', '902371', '湖北省', 'JMJMJS');
INSERT INTO `t_area` VALUES ('420822', '荆门市', 'jingmen', '沙洋县', '902372', '湖北省', 'JMJMSY');
INSERT INTO `t_area` VALUES ('420881', '荆门市', 'jingmen', '钟祥市', '902373', '湖北省', 'JMJMZX');
INSERT INTO `t_area` VALUES ('420902', '孝感市', 'xiaogan', '孝南区', '902380', '湖北省', 'XGXGXN');
INSERT INTO `t_area` VALUES ('420921', '孝感市', 'xiaogan', '孝昌县', '902381', '湖北省', 'XGXGXC');
INSERT INTO `t_area` VALUES ('420922', '孝感市', 'xiaogan', '大悟县', '902382', '湖北省', 'XGXGDW');
INSERT INTO `t_area` VALUES ('420923', '孝感市', 'xiaogan', '云梦县', '902383', '湖北省', 'XGXGYM');
INSERT INTO `t_area` VALUES ('420981', '孝感市', 'xiaogan', '应城市', '902384', '湖北省', 'XGXGYC');
INSERT INTO `t_area` VALUES ('420982', '孝感市', 'xiaogan', '安陆市', '902385', '湖北省', 'XGXGAL');
INSERT INTO `t_area` VALUES ('420984', '孝感市', 'xiaogan', '汉川市', '902386', '湖北省', 'XGXGHC');
INSERT INTO `t_area` VALUES ('421002', '荆州市', 'jingzhou', '沙市区', '902348', '湖北省', 'JZJZSS');
INSERT INTO `t_area` VALUES ('421003', '荆州市', 'jingzhou', '荆州区', '902349', '湖北省', 'JZJZJZ');
INSERT INTO `t_area` VALUES ('421022', '荆州市', 'jingzhou', '公安县', '902350', '湖北省', 'JZJZGA');
INSERT INTO `t_area` VALUES ('421023', '荆州市', 'jingzhou', '监利县', '902351', '湖北省', 'JZJZJL');
INSERT INTO `t_area` VALUES ('421024', '荆州市', 'jingzhou', '江陵县', '902352', '湖北省', 'JZJZJL');
INSERT INTO `t_area` VALUES ('421081', '荆州市', 'jingzhou', '石首市', '902353', '湖北省', 'JZJZSS');
INSERT INTO `t_area` VALUES ('421083', '荆州市', 'jingzhou', '洪湖市', '902354', '湖北省', 'JZJZHH');
INSERT INTO `t_area` VALUES ('421087', '荆州市', 'jingzhou', '松滋市', '902355', '湖北省', 'JZJZSZ');
INSERT INTO `t_area` VALUES ('421102', '黄冈市', 'huanggang', '黄州区', '902387', '湖北省', 'HGHGHZ');
INSERT INTO `t_area` VALUES ('421121', '黄冈市', 'huanggang', '团风县', '902388', '湖北省', 'HGHGTF');
INSERT INTO `t_area` VALUES ('421122', '黄冈市', 'huanggang', '红安县', '902389', '湖北省', 'HGHGHA');
INSERT INTO `t_area` VALUES ('421123', '黄冈市', 'huanggang', '罗田县', '902390', '湖北省', 'HGHGLT');
INSERT INTO `t_area` VALUES ('421124', '黄冈市', 'huanggang', '英山县', '902391', '湖北省', 'HGHGYS');
INSERT INTO `t_area` VALUES ('421125', '黄冈市', 'huanggang', '浠水县', '902392', '湖北省', 'HGHGXS');
INSERT INTO `t_area` VALUES ('421126', '黄冈市', 'huanggang', '蕲春县', '902393', '湖北省', 'HGHGQC');
INSERT INTO `t_area` VALUES ('421127', '黄冈市', 'huanggang', '黄梅县', '902394', '湖北省', 'HGHGHM');
INSERT INTO `t_area` VALUES ('421181', '黄冈市', 'huanggang', '麻城市', '902395', '湖北省', 'HGHGMC');
INSERT INTO `t_area` VALUES ('421182', '黄冈市', 'huanggang', '武穴市', '902396', '湖北省', 'HGHGWX');
INSERT INTO `t_area` VALUES ('421202', '咸宁市', 'xianning', '咸安区', '902312', '湖北省', 'XNXNXA');
INSERT INTO `t_area` VALUES ('421221', '咸宁市', 'xianning', '嘉鱼县', '902313', '湖北省', 'XNXNJY');
INSERT INTO `t_area` VALUES ('421222', '咸宁市', 'xianning', '通城县', '902314', '湖北省', 'XNXNTC');
INSERT INTO `t_area` VALUES ('421223', '咸宁市', 'xianning', '崇阳县', '902315', '湖北省', 'XNXNCY');
INSERT INTO `t_area` VALUES ('421224', '咸宁市', 'xianning', '通山县', '902316', '湖北省', 'XNXNTS');
INSERT INTO `t_area` VALUES ('421281', '咸宁市', 'xianning', '赤壁市', '902317', '湖北省', 'XNXNCB');
INSERT INTO `t_area` VALUES ('421303', '随州市', 'suizhou', '曾都区', '902397', '湖北省', 'SZSZCD');
INSERT INTO `t_area` VALUES ('421321', '随州市', 'suizhou', '随县', '902398', '湖北省', 'SZSZS');
INSERT INTO `t_area` VALUES ('421381', '随州市', 'suizhou', '广水市', '902399', '湖北省', 'SZSZGS');
INSERT INTO `t_area` VALUES ('422801', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhi', '恩施市', '902318', '湖北省', 'ESTJZMZZZESTJZMZZZES');
INSERT INTO `t_area` VALUES ('422802', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhi', '利川市', '902319', '湖北省', 'ESTJZMZZZESTJZMZZZLC');
INSERT INTO `t_area` VALUES ('422822', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhi', '建始县', '902320', '湖北省', 'ESTJZMZZZESTJZMZZZJS');
INSERT INTO `t_area` VALUES ('422823', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhi', '巴东县', '902321', '湖北省', 'ESTJZMZZZESTJZMZZZBD');
INSERT INTO `t_area` VALUES ('422825', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhi', '宣恩县', '902322', '湖北省', 'ESTJZMZZZESTJZMZZZXE');
INSERT INTO `t_area` VALUES ('422826', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhi', '咸丰县', '902323', '湖北省', 'ESTJZMZZZESTJZMZZZXF');
INSERT INTO `t_area` VALUES ('422827', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhi', '来凤县', '902324', '湖北省', 'ESTJZMZZZESTJZMZZZLF');
INSERT INTO `t_area` VALUES ('422828', '恩施土家族苗族自治州', 'enshitujiazumiaozuzizhi', '鹤峰县', '902325', '湖北省', 'ESTJZMZZZESTJZMZZZHF');
INSERT INTO `t_area` VALUES ('430102', '长沙市', 'zhangsha', '芙蓉区', '901264', '湖南省', 'ZSZSFR');
INSERT INTO `t_area` VALUES ('430103', '长沙市', 'zhangsha', '天心区', '901265', '湖南省', 'ZSZSTX');
INSERT INTO `t_area` VALUES ('430104', '长沙市', 'zhangsha', '岳麓区', '901266', '湖南省', 'ZSZSYL');
INSERT INTO `t_area` VALUES ('430105', '长沙市', 'zhangsha', '开福区', '901267', '湖南省', 'ZSZSKF');
INSERT INTO `t_area` VALUES ('430111', '长沙市', 'zhangsha', '雨花区', '901268', '湖南省', 'ZSZSYH');
INSERT INTO `t_area` VALUES ('430112', '长沙市', 'zhangsha', '望城区', '901269', '湖南省', 'ZSZSWC');
INSERT INTO `t_area` VALUES ('430121', '长沙市', 'zhangsha', '长沙县', '901270', '湖南省', 'ZSZSZS');
INSERT INTO `t_area` VALUES ('430124', '长沙市', 'zhangsha', '宁乡县', '901271', '湖南省', 'ZSZSNX');
INSERT INTO `t_area` VALUES ('430181', '长沙市', 'zhangsha', '浏阳市', '901272', '湖南省', 'ZSZSLY');
INSERT INTO `t_area` VALUES ('430202', '株洲市', 'zhuzhou', '荷塘区', '901208', '湖南省', 'ZZZZHT');
INSERT INTO `t_area` VALUES ('430203', '株洲市', 'zhuzhou', '芦淞区', '901209', '湖南省', 'ZZZZLS');
INSERT INTO `t_area` VALUES ('430204', '株洲市', 'zhuzhou', '石峰区', '901210', '湖南省', 'ZZZZSF');
INSERT INTO `t_area` VALUES ('430211', '株洲市', 'zhuzhou', '天元区', '901211', '湖南省', 'ZZZZTY');
INSERT INTO `t_area` VALUES ('430221', '株洲市', 'zhuzhou', '株洲县', '901212', '湖南省', 'ZZZZZZ');
INSERT INTO `t_area` VALUES ('430223', '株洲市', 'zhuzhou', '攸县', '901213', '湖南省', 'ZZZZY');
INSERT INTO `t_area` VALUES ('430224', '株洲市', 'zhuzhou', '茶陵县', '901214', '湖南省', 'ZZZZCL');
INSERT INTO `t_area` VALUES ('430225', '株洲市', 'zhuzhou', '炎陵县', '901215', '湖南省', 'ZZZZYL');
INSERT INTO `t_area` VALUES ('430281', '株洲市', 'zhuzhou', '醴陵市', '901216', '湖南省', 'ZZZZLL');
INSERT INTO `t_area` VALUES ('430302', '湘潭市', 'xiangtan', '雨湖区', '901217', '湖南省', 'XTXTYH');
INSERT INTO `t_area` VALUES ('430304', '湘潭市', 'xiangtan', '岳塘区', '901218', '湖南省', 'XTXTYT');
INSERT INTO `t_area` VALUES ('430321', '湘潭市', 'xiangtan', '湘潭县', '901219', '湖南省', 'XTXTXT');
INSERT INTO `t_area` VALUES ('430381', '湘潭市', 'xiangtan', '湘乡市', '901220', '湖南省', 'XTXTXX');
INSERT INTO `t_area` VALUES ('430382', '湘潭市', 'xiangtan', '韶山市', '901221', '湖南省', 'XTXTSS');
INSERT INTO `t_area` VALUES ('430405', '衡阳市', 'hengyang', '珠晖区', '901238', '湖南省', 'HYHYZH');
INSERT INTO `t_area` VALUES ('430406', '衡阳市', 'hengyang', '雁峰区', '901239', '湖南省', 'HYHYYF');
INSERT INTO `t_area` VALUES ('430407', '衡阳市', 'hengyang', '石鼓区', '901240', '湖南省', 'HYHYSG');
INSERT INTO `t_area` VALUES ('430408', '衡阳市', 'hengyang', '蒸湘区', '901241', '湖南省', 'HYHYZX');
INSERT INTO `t_area` VALUES ('430412', '衡阳市', 'hengyang', '南岳区', '901242', '湖南省', 'HYHYNY');
INSERT INTO `t_area` VALUES ('430421', '衡阳市', 'hengyang', '衡阳县', '901243', '湖南省', 'HYHYHY');
INSERT INTO `t_area` VALUES ('430422', '衡阳市', 'hengyang', '衡南县', '901244', '湖南省', 'HYHYHN');
INSERT INTO `t_area` VALUES ('430423', '衡阳市', 'hengyang', '衡山县', '901245', '湖南省', 'HYHYHS');
INSERT INTO `t_area` VALUES ('430424', '衡阳市', 'hengyang', '衡东县', '901246', '湖南省', 'HYHYHD');
INSERT INTO `t_area` VALUES ('430426', '衡阳市', 'hengyang', '祁东县', '901247', '湖南省', 'HYHYQD');
INSERT INTO `t_area` VALUES ('430481', '衡阳市', 'hengyang', '耒阳市', '901248', '湖南省', 'HYHYLY');
INSERT INTO `t_area` VALUES ('430482', '衡阳市', 'hengyang', '常宁市', '901249', '湖南省', 'HYHYCN');
INSERT INTO `t_area` VALUES ('430502', '邵阳市', 'shaoyang', '双清区', '901226', '湖南省', 'SYSYSQ');
INSERT INTO `t_area` VALUES ('430503', '邵阳市', 'shaoyang', '大祥区', '901227', '湖南省', 'SYSYDX');
INSERT INTO `t_area` VALUES ('430511', '邵阳市', 'shaoyang', '北塔区', '901228', '湖南省', 'SYSYBT');
INSERT INTO `t_area` VALUES ('430521', '邵阳市', 'shaoyang', '邵东县', '901229', '湖南省', 'SYSYSD');
INSERT INTO `t_area` VALUES ('430522', '邵阳市', 'shaoyang', '新邵县', '901230', '湖南省', 'SYSYXS');
INSERT INTO `t_area` VALUES ('430523', '邵阳市', 'shaoyang', '邵阳县', '901231', '湖南省', 'SYSYSY');
INSERT INTO `t_area` VALUES ('430524', '邵阳市', 'shaoyang', '隆回县', '901232', '湖南省', 'SYSYLH');
INSERT INTO `t_area` VALUES ('430525', '邵阳市', 'shaoyang', '洞口县', '901233', '湖南省', 'SYSYDK');
INSERT INTO `t_area` VALUES ('430527', '邵阳市', 'shaoyang', '绥宁县', '901234', '湖南省', 'SYSYSN');
INSERT INTO `t_area` VALUES ('430528', '邵阳市', 'shaoyang', '新宁县', '901235', '湖南省', 'SYSYXN');
INSERT INTO `t_area` VALUES ('430529', '邵阳市', 'shaoyang', '城步苗族自治县', '901236', '湖南省', 'SYSYCBMZZZ');
INSERT INTO `t_area` VALUES ('430581', '邵阳市', 'shaoyang', '武冈市', '901237', '湖南省', 'SYSYWG');
INSERT INTO `t_area` VALUES ('430602', '岳阳市', 'yueyang', '岳阳楼区', '901284', '湖南省', 'YYYYYYL');
INSERT INTO `t_area` VALUES ('430603', '岳阳市', 'yueyang', '云溪区', '901285', '湖南省', 'YYYYYX');
INSERT INTO `t_area` VALUES ('430611', '岳阳市', 'yueyang', '君山区', '901286', '湖南省', 'YYYYJS');
INSERT INTO `t_area` VALUES ('430621', '岳阳市', 'yueyang', '岳阳县', '901287', '湖南省', 'YYYYYY');
INSERT INTO `t_area` VALUES ('430623', '岳阳市', 'yueyang', '华容县', '901288', '湖南省', 'YYYYHR');
INSERT INTO `t_area` VALUES ('430624', '岳阳市', 'yueyang', '湘阴县', '901289', '湖南省', 'YYYYXY');
INSERT INTO `t_area` VALUES ('430626', '岳阳市', 'yueyang', '平江县', '901290', '湖南省', 'YYYYPJ');
INSERT INTO `t_area` VALUES ('430681', '岳阳市', 'yueyang', '汨罗市', '901291', '湖南省', 'YYYYML');
INSERT INTO `t_area` VALUES ('430682', '岳阳市', 'yueyang', '临湘市', '901292', '湖南省', 'YYYYLX');
INSERT INTO `t_area` VALUES ('430702', '常德市', 'changde', '武陵区', '901321', '湖南省', 'CDCDWL');
INSERT INTO `t_area` VALUES ('430703', '常德市', 'changde', '鼎城区', '901322', '湖南省', 'CDCDDC');
INSERT INTO `t_area` VALUES ('430721', '常德市', 'changde', '安乡县', '901323', '湖南省', 'CDCDAX');
INSERT INTO `t_area` VALUES ('430722', '常德市', 'changde', '汉寿县', '901324', '湖南省', 'CDCDHS');
INSERT INTO `t_area` VALUES ('430723', '常德市', 'changde', '澧县', '901325', '湖南省', 'CDCDL');
INSERT INTO `t_area` VALUES ('430724', '常德市', 'changde', '临澧县', '901326', '湖南省', 'CDCDLL');
INSERT INTO `t_area` VALUES ('430725', '常德市', 'changde', '桃源县', '901327', '湖南省', 'CDCDTY');
INSERT INTO `t_area` VALUES ('430726', '常德市', 'changde', '石门县', '901328', '湖南省', 'CDCDSM');
INSERT INTO `t_area` VALUES ('430781', '常德市', 'changde', '津市市', '901329', '湖南省', 'CDCDJS');
INSERT INTO `t_area` VALUES ('430802', '张家界市', 'zhangjiajie', '永定区', '901222', '湖南省', 'ZJJZJJYD');
INSERT INTO `t_area` VALUES ('430811', '张家界市', 'zhangjiajie', '武陵源区', '901223', '湖南省', 'ZJJZJJWLY');
INSERT INTO `t_area` VALUES ('430821', '张家界市', 'zhangjiajie', '慈利县', '901224', '湖南省', 'ZJJZJJCL');
INSERT INTO `t_area` VALUES ('430822', '张家界市', 'zhangjiajie', '桑植县', '901225', '湖南省', 'ZJJZJJSZ');
INSERT INTO `t_area` VALUES ('430902', '益阳市', 'yiyang', '资阳区', '901250', '湖南省', 'YYYYZY');
INSERT INTO `t_area` VALUES ('430903', '益阳市', 'yiyang', '赫山区', '901251', '湖南省', 'YYYYHS');
INSERT INTO `t_area` VALUES ('430921', '益阳市', 'yiyang', '南县', '901252', '湖南省', 'YYYYN');
INSERT INTO `t_area` VALUES ('430922', '益阳市', 'yiyang', '桃江县', '901253', '湖南省', 'YYYYTJ');
INSERT INTO `t_area` VALUES ('430923', '益阳市', 'yiyang', '安化县', '901254', '湖南省', 'YYYYAH');
INSERT INTO `t_area` VALUES ('430981', '益阳市', 'yiyang', '沅江市', '901255', '湖南省', 'YYYYYJ');
INSERT INTO `t_area` VALUES ('431002', '郴州市', 'chenzhou', '北湖区', '901273', '湖南省', 'CZCZBH');
INSERT INTO `t_area` VALUES ('431003', '郴州市', 'chenzhou', '苏仙区', '901274', '湖南省', 'CZCZSX');
INSERT INTO `t_area` VALUES ('431021', '郴州市', 'chenzhou', '桂阳县', '901275', '湖南省', 'CZCZGY');
INSERT INTO `t_area` VALUES ('431022', '郴州市', 'chenzhou', '宜章县', '901276', '湖南省', 'CZCZYZ');
INSERT INTO `t_area` VALUES ('431023', '郴州市', 'chenzhou', '永兴县', '901277', '湖南省', 'CZCZYX');
INSERT INTO `t_area` VALUES ('431024', '郴州市', 'chenzhou', '嘉禾县', '901278', '湖南省', 'CZCZJH');
INSERT INTO `t_area` VALUES ('431025', '郴州市', 'chenzhou', '临武县', '901279', '湖南省', 'CZCZLW');
INSERT INTO `t_area` VALUES ('431026', '郴州市', 'chenzhou', '汝城县', '901280', '湖南省', 'CZCZRC');
INSERT INTO `t_area` VALUES ('431027', '郴州市', 'chenzhou', '桂东县', '901281', '湖南省', 'CZCZGD');
INSERT INTO `t_area` VALUES ('431028', '郴州市', 'chenzhou', '安仁县', '901282', '湖南省', 'CZCZAR');
INSERT INTO `t_area` VALUES ('431081', '郴州市', 'chenzhou', '资兴市', '901283', '湖南省', 'CZCZZX');
INSERT INTO `t_area` VALUES ('431102', '永州市', 'yongzhou', '零陵区', '901293', '湖南省', 'YZYZLL');
INSERT INTO `t_area` VALUES ('431103', '永州市', 'yongzhou', '冷水滩区', '901294', '湖南省', 'YZYZLST');
INSERT INTO `t_area` VALUES ('431121', '永州市', 'yongzhou', '祁阳县', '901295', '湖南省', 'YZYZQY');
INSERT INTO `t_area` VALUES ('431122', '永州市', 'yongzhou', '东安县', '901296', '湖南省', 'YZYZDA');
INSERT INTO `t_area` VALUES ('431123', '永州市', 'yongzhou', '双牌县', '901297', '湖南省', 'YZYZSP');
INSERT INTO `t_area` VALUES ('431124', '永州市', 'yongzhou', '道县', '901298', '湖南省', 'YZYZD');
INSERT INTO `t_area` VALUES ('431125', '永州市', 'yongzhou', '江永县', '901299', '湖南省', 'YZYZJY');
INSERT INTO `t_area` VALUES ('431126', '永州市', 'yongzhou', '宁远县', '901300', '湖南省', 'YZYZNY');
INSERT INTO `t_area` VALUES ('431127', '永州市', 'yongzhou', '蓝山县', '901301', '湖南省', 'YZYZLS');
INSERT INTO `t_area` VALUES ('431128', '永州市', 'yongzhou', '新田县', '901302', '湖南省', 'YZYZXT');
INSERT INTO `t_area` VALUES ('431129', '永州市', 'yongzhou', '江华瑶族自治县', '901303', '湖南省', 'YZYZJHYZZZ');
INSERT INTO `t_area` VALUES ('431202', '怀化市', 'huaihua', '鹤城区', '901304', '湖南省', 'HHHHHC');
INSERT INTO `t_area` VALUES ('431221', '怀化市', 'huaihua', '中方县', '901305', '湖南省', 'HHHHZF');
INSERT INTO `t_area` VALUES ('431222', '怀化市', 'huaihua', '沅陵县', '901306', '湖南省', 'HHHHYL');
INSERT INTO `t_area` VALUES ('431223', '怀化市', 'huaihua', '辰溪县', '901307', '湖南省', 'HHHHCX');
INSERT INTO `t_area` VALUES ('431224', '怀化市', 'huaihua', '溆浦县', '901308', '湖南省', 'HHHHXP');
INSERT INTO `t_area` VALUES ('431225', '怀化市', 'huaihua', '会同县', '901309', '湖南省', 'HHHHHT');
INSERT INTO `t_area` VALUES ('431226', '怀化市', 'huaihua', '麻阳苗族自治县', '901310', '湖南省', 'HHHHMYMZZZ');
INSERT INTO `t_area` VALUES ('431227', '怀化市', 'huaihua', '新晃侗族自治县', '901311', '湖南省', 'HHHHXHDZZZ');
INSERT INTO `t_area` VALUES ('431228', '怀化市', 'huaihua', '芷江侗族自治县', '901312', '湖南省', 'HHHHZJDZZZ');
INSERT INTO `t_area` VALUES ('431229', '怀化市', 'huaihua', '靖州苗族侗族自治县', '901313', '湖南省', 'HHHHJZMZDZZZ');
INSERT INTO `t_area` VALUES ('431230', '怀化市', 'huaihua', '通道侗族自治县', '901314', '湖南省', 'HHHHTDDZZZ');
INSERT INTO `t_area` VALUES ('431281', '怀化市', 'huaihua', '洪江市', '901315', '湖南省', 'HHHHHJ');
INSERT INTO `t_area` VALUES ('431302', '娄底市', 'loudi', '娄星区', '901316', '湖南省', 'LDLDLX');
INSERT INTO `t_area` VALUES ('431321', '娄底市', 'loudi', '双峰县', '901317', '湖南省', 'LDLDSF');
INSERT INTO `t_area` VALUES ('431322', '娄底市', 'loudi', '新化县', '901318', '湖南省', 'LDLDXH');
INSERT INTO `t_area` VALUES ('431381', '娄底市', 'loudi', '冷水江市', '901319', '湖南省', 'LDLDLSJ');
INSERT INTO `t_area` VALUES ('431382', '娄底市', 'loudi', '涟源市', '901320', '湖南省', 'LDLDLY');
INSERT INTO `t_area` VALUES ('433101', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhi', '吉首市', '901256', '湖南省', 'XXTJZMZZZXXTJZMZZZJS');
INSERT INTO `t_area` VALUES ('433122', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhi', '泸溪县', '901257', '湖南省', 'XXTJZMZZZXXTJZMZZZLX');
INSERT INTO `t_area` VALUES ('433123', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhi', '凤凰县', '901258', '湖南省', 'XXTJZMZZZXXTJZMZZZFH');
INSERT INTO `t_area` VALUES ('433124', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhi', '花垣县', '901259', '湖南省', 'XXTJZMZZZXXTJZMZZZHY');
INSERT INTO `t_area` VALUES ('433125', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhi', '保靖县', '901260', '湖南省', 'XXTJZMZZZXXTJZMZZZBJ');
INSERT INTO `t_area` VALUES ('433126', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhi', '古丈县', '901261', '湖南省', 'XXTJZMZZZXXTJZMZZZGZ');
INSERT INTO `t_area` VALUES ('433127', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhi', '永顺县', '901262', '湖南省', 'XXTJZMZZZXXTJZMZZZYS');
INSERT INTO `t_area` VALUES ('433130', '湘西土家族苗族自治州', 'xiangxitujiazumiaozuzizhi', '龙山县', '901263', '湖南省', 'XXTJZMZZZXXTJZMZZZLS');
INSERT INTO `t_area` VALUES ('440103', '广州市', 'guangzhou', '荔湾区', '902733', '广东省', 'GZGZLW');
INSERT INTO `t_area` VALUES ('440104', '广州市', 'guangzhou', '越秀区', '902734', '广东省', 'GZGZYX');
INSERT INTO `t_area` VALUES ('440105', '广州市', 'guangzhou', '海珠区', '902735', '广东省', 'GZGZHZ');
INSERT INTO `t_area` VALUES ('440106', '广州市', 'guangzhou', '天河区', '902736', '广东省', 'GZGZTH');
INSERT INTO `t_area` VALUES ('440111', '广州市', 'guangzhou', '白云区', '902737', '广东省', 'GZGZBY');
INSERT INTO `t_area` VALUES ('440112', '广州市', 'guangzhou', '黄埔区', '902738', '广东省', 'GZGZHP');
INSERT INTO `t_area` VALUES ('440113', '广州市', 'guangzhou', '番禺区', '902739', '广东省', 'GZGZFY');
INSERT INTO `t_area` VALUES ('440114', '广州市', 'guangzhou', '花都区', '902740', '广东省', 'GZGZHD');
INSERT INTO `t_area` VALUES ('440115', '广州市', 'guangzhou', '南沙区', '902741', '广东省', 'GZGZNS');
INSERT INTO `t_area` VALUES ('440117', '广州市', 'guangzhou', '从化区', '902742', '广东省', 'GZGZCH');
INSERT INTO `t_area` VALUES ('440118', '广州市', 'guangzhou', '增城区', '902743', '广东省', 'GZGZZC');
INSERT INTO `t_area` VALUES ('440203', '韶关市', 'shaoguan', '武江区', '902812', '广东省', 'SGSGWJ');
INSERT INTO `t_area` VALUES ('440204', '韶关市', 'shaoguan', '浈江区', '902813', '广东省', 'SGSGZJ');
INSERT INTO `t_area` VALUES ('440205', '韶关市', 'shaoguan', '曲江区', '902814', '广东省', 'SGSGQJ');
INSERT INTO `t_area` VALUES ('440222', '韶关市', 'shaoguan', '始兴县', '902815', '广东省', 'SGSGSX');
INSERT INTO `t_area` VALUES ('440224', '韶关市', 'shaoguan', '仁化县', '902816', '广东省', 'SGSGRH');
INSERT INTO `t_area` VALUES ('440229', '韶关市', 'shaoguan', '翁源县', '902817', '广东省', 'SGSGWY');
INSERT INTO `t_area` VALUES ('440232', '韶关市', 'shaoguan', '乳源瑶族自治县', '902818', '广东省', 'SGSGRYYZZZ');
INSERT INTO `t_area` VALUES ('440233', '韶关市', 'shaoguan', '新丰县', '902819', '广东省', 'SGSGXF');
INSERT INTO `t_area` VALUES ('440281', '韶关市', 'shaoguan', '乐昌市', '902820', '广东省', 'SGSGLC');
INSERT INTO `t_area` VALUES ('440282', '韶关市', 'shaoguan', '南雄市', '902821', '广东省', 'SGSGNX');
INSERT INTO `t_area` VALUES ('440303', '深圳市', 'shenzhen', '罗湖区', '902756', '广东省', 'SZSZLH');
INSERT INTO `t_area` VALUES ('440304', '深圳市', 'shenzhen', '福田区', '902757', '广东省', 'SZSZFT');
INSERT INTO `t_area` VALUES ('440305', '深圳市', 'shenzhen', '南山区', '902758', '广东省', 'SZSZNS');
INSERT INTO `t_area` VALUES ('440306', '深圳市', 'shenzhen', '宝安区', '902759', '广东省', 'SZSZBA');
INSERT INTO `t_area` VALUES ('440307', '深圳市', 'shenzhen', '龙岗区', '902760', '广东省', 'SZSZLG');
INSERT INTO `t_area` VALUES ('440308', '深圳市', 'shenzhen', '盐田区', '902761', '广东省', 'SZSZYT');
INSERT INTO `t_area` VALUES ('440402', '珠海市', 'zhuhai', '香洲区', '902744', '广东省', 'ZHZHXZ');
INSERT INTO `t_area` VALUES ('440403', '珠海市', 'zhuhai', '斗门区', '902745', '广东省', 'ZHZHDM');
INSERT INTO `t_area` VALUES ('440404', '珠海市', 'zhuhai', '金湾区', '902746', '广东省', 'ZHZHJW');
INSERT INTO `t_area` VALUES ('440507', '汕头市', 'shantou', '龙湖区', '902775', '广东省', 'STSTLH');
INSERT INTO `t_area` VALUES ('440511', '汕头市', 'shantou', '金平区', '902776', '广东省', 'STSTJP');
INSERT INTO `t_area` VALUES ('440512', '汕头市', 'shantou', '濠江区', '902777', '广东省', 'STSTHJ');
INSERT INTO `t_area` VALUES ('440513', '汕头市', 'shantou', '潮阳区', '902778', '广东省', 'STSTCY');
INSERT INTO `t_area` VALUES ('440514', '汕头市', 'shantou', '潮南区', '902779', '广东省', 'STSTCN');
INSERT INTO `t_area` VALUES ('440515', '汕头市', 'shantou', '澄海区', '902780', '广东省', 'STSTCH');
INSERT INTO `t_area` VALUES ('440523', '汕头市', 'shantou', '南澳县', '902781', '广东省', 'STSTNA');
INSERT INTO `t_area` VALUES ('440604', '佛山市', 'foshan', '禅城区', '902712', '广东省', 'FSFSSC');
INSERT INTO `t_area` VALUES ('440605', '佛山市', 'foshan', '南海区', '902713', '广东省', 'FSFSNH');
INSERT INTO `t_area` VALUES ('440606', '佛山市', 'foshan', '顺德区', '902714', '广东省', 'FSFSSD');
INSERT INTO `t_area` VALUES ('440607', '佛山市', 'foshan', '三水区', '902715', '广东省', 'FSFSSS');
INSERT INTO `t_area` VALUES ('440608', '佛山市', 'foshan', '高明区', '902716', '广东省', 'FSFSGM');
INSERT INTO `t_area` VALUES ('440703', '江门市', 'jiangmen', '蓬江区', '902726', '广东省', 'JMJMPJ');
INSERT INTO `t_area` VALUES ('440704', '江门市', 'jiangmen', '江海区', '902727', '广东省', 'JMJMJH');
INSERT INTO `t_area` VALUES ('440705', '江门市', 'jiangmen', '新会区', '902728', '广东省', 'JMJMXH');
INSERT INTO `t_area` VALUES ('440781', '江门市', 'jiangmen', '台山市', '902729', '广东省', 'JMJMTS');
INSERT INTO `t_area` VALUES ('440783', '江门市', 'jiangmen', '开平市', '902730', '广东省', 'JMJMKP');
INSERT INTO `t_area` VALUES ('440784', '江门市', 'jiangmen', '鹤山市', '902731', '广东省', 'JMJMHS');
INSERT INTO `t_area` VALUES ('440785', '江门市', 'jiangmen', '恩平市', '902732', '广东省', 'JMJMEP');
INSERT INTO `t_area` VALUES ('440802', '湛江市', 'zhanjiang', '赤坎区', '902747', '广东省', 'ZJZJCK');
INSERT INTO `t_area` VALUES ('440803', '湛江市', 'zhanjiang', '霞山区', '902748', '广东省', 'ZJZJXS');
INSERT INTO `t_area` VALUES ('440804', '湛江市', 'zhanjiang', '坡头区', '902749', '广东省', 'ZJZJPT');
INSERT INTO `t_area` VALUES ('440811', '湛江市', 'zhanjiang', '麻章区', '902750', '广东省', 'ZJZJMZ');
INSERT INTO `t_area` VALUES ('440823', '湛江市', 'zhanjiang', '遂溪县', '902751', '广东省', 'ZJZJSX');
INSERT INTO `t_area` VALUES ('440825', '湛江市', 'zhanjiang', '徐闻县', '902752', '广东省', 'ZJZJXW');
INSERT INTO `t_area` VALUES ('440881', '湛江市', 'zhanjiang', '廉江市', '902753', '广东省', 'ZJZJLJ');
INSERT INTO `t_area` VALUES ('440882', '湛江市', 'zhanjiang', '雷州市', '902754', '广东省', 'ZJZJLZ');
INSERT INTO `t_area` VALUES ('440883', '湛江市', 'zhanjiang', '吴川市', '902755', '广东省', 'ZJZJWC');
INSERT INTO `t_area` VALUES ('440902', '茂名市', 'maoming', '茂南区', '902807', '广东省', 'MMMMMN');
INSERT INTO `t_area` VALUES ('440904', '茂名市', 'maoming', '电白区', '902808', '广东省', 'MMMMDB');
INSERT INTO `t_area` VALUES ('440981', '茂名市', 'maoming', '高州市', '902809', '广东省', 'MMMMGZ');
INSERT INTO `t_area` VALUES ('440982', '茂名市', 'maoming', '化州市', '902810', '广东省', 'MMMMHZ');
INSERT INTO `t_area` VALUES ('440983', '茂名市', 'maoming', '信宜市', '902811', '广东省', 'MMMMXY');
INSERT INTO `t_area` VALUES ('441202', '肇庆市', 'zhaoqing', '端州区', '902762', '广东省', 'ZQZQDZ');
INSERT INTO `t_area` VALUES ('441203', '肇庆市', 'zhaoqing', '鼎湖区', '902763', '广东省', 'ZQZQDH');
INSERT INTO `t_area` VALUES ('441223', '肇庆市', 'zhaoqing', '广宁县', '902764', '广东省', 'ZQZQGN');
INSERT INTO `t_area` VALUES ('441224', '肇庆市', 'zhaoqing', '怀集县', '902765', '广东省', 'ZQZQHJ');
INSERT INTO `t_area` VALUES ('441225', '肇庆市', 'zhaoqing', '封开县', '902766', '广东省', 'ZQZQFK');
INSERT INTO `t_area` VALUES ('441226', '肇庆市', 'zhaoqing', '德庆县', '902767', '广东省', 'ZQZQDQ');
INSERT INTO `t_area` VALUES ('441283', '肇庆市', 'zhaoqing', '高要区', '902768', '广东省', 'ZQZQGY');
INSERT INTO `t_area` VALUES ('441284', '肇庆市', 'zhaoqing', '四会市', '902769', '广东省', 'ZQZQSH');
INSERT INTO `t_area` VALUES ('441302', '惠州市', 'huizhou', '惠城区', '902770', '广东省', 'HZHZHC');
INSERT INTO `t_area` VALUES ('441303', '惠州市', 'huizhou', '惠阳区', '902771', '广东省', 'HZHZHY');
INSERT INTO `t_area` VALUES ('441322', '惠州市', 'huizhou', '博罗县', '902772', '广东省', 'HZHZBL');
INSERT INTO `t_area` VALUES ('441323', '惠州市', 'huizhou', '惠东县', '902773', '广东省', 'HZHZHD');
INSERT INTO `t_area` VALUES ('441324', '惠州市', 'huizhou', '龙门县', '902774', '广东省', 'HZHZLM');
INSERT INTO `t_area` VALUES ('441402', '梅州市', 'meizhou', '梅江区', '902825', '广东省', 'MZMZMJ');
INSERT INTO `t_area` VALUES ('441403', '梅州市', 'meizhou', '梅县区', '902826', '广东省', 'MZMZMX');
INSERT INTO `t_area` VALUES ('441422', '梅州市', 'meizhou', '大埔县', '902827', '广东省', 'MZMZDP');
INSERT INTO `t_area` VALUES ('441423', '梅州市', 'meizhou', '丰顺县', '902828', '广东省', 'MZMZFS');
INSERT INTO `t_area` VALUES ('441424', '梅州市', 'meizhou', '五华县', '902829', '广东省', 'MZMZWH');
INSERT INTO `t_area` VALUES ('441426', '梅州市', 'meizhou', '平远县', '902830', '广东省', 'MZMZPY');
INSERT INTO `t_area` VALUES ('441427', '梅州市', 'meizhou', '蕉岭县', '902831', '广东省', 'MZMZJL');
INSERT INTO `t_area` VALUES ('441481', '梅州市', 'meizhou', '兴宁市', '902832', '广东省', 'MZMZXN');
INSERT INTO `t_area` VALUES ('441502', '汕尾市', 'shanwei', '城区', '902722', '广东省', 'SWSWC');
INSERT INTO `t_area` VALUES ('441521', '汕尾市', 'shanwei', '海丰县', '902723', '广东省', 'SWSWHF');
INSERT INTO `t_area` VALUES ('441523', '汕尾市', 'shanwei', '陆河县', '902724', '广东省', 'SWSWLH');
INSERT INTO `t_area` VALUES ('441581', '汕尾市', 'shanwei', '陆丰市', '902725', '广东省', 'SWSWLF');
INSERT INTO `t_area` VALUES ('441602', '河源市', 'heyuan', '源城区', '902786', '广东省', 'HYHYYC');
INSERT INTO `t_area` VALUES ('441621', '河源市', 'heyuan', '紫金县', '902787', '广东省', 'HYHYZJ');
INSERT INTO `t_area` VALUES ('441622', '河源市', 'heyuan', '龙川县', '902788', '广东省', 'HYHYLC');
INSERT INTO `t_area` VALUES ('441623', '河源市', 'heyuan', '连平县', '902789', '广东省', 'HYHYLP');
INSERT INTO `t_area` VALUES ('441624', '河源市', 'heyuan', '和平县', '902790', '广东省', 'HYHYHP');
INSERT INTO `t_area` VALUES ('441625', '河源市', 'heyuan', '东源县', '902791', '广东省', 'HYHYDY');
INSERT INTO `t_area` VALUES ('441702', '阳江市', 'yangjiang', '江城区', '902782', '广东省', 'YJYJJC');
INSERT INTO `t_area` VALUES ('441704', '阳江市', 'yangjiang', '阳东区', '902783', '广东省', 'YJYJYD');
INSERT INTO `t_area` VALUES ('441721', '阳江市', 'yangjiang', '阳西县', '902784', '广东省', 'YJYJYX');
INSERT INTO `t_area` VALUES ('441781', '阳江市', 'yangjiang', '阳春市', '902785', '广东省', 'YJYJYC');
INSERT INTO `t_area` VALUES ('441802', '清远市', 'qingyuan', '清城区', '902798', '广东省', 'QYQYQC');
INSERT INTO `t_area` VALUES ('441803', '清远市', 'qingyuan', '清新区', '902799', '广东省', 'QYQYQX');
INSERT INTO `t_area` VALUES ('441821', '清远市', 'qingyuan', '佛冈县', '902800', '广东省', 'QYQYFG');
INSERT INTO `t_area` VALUES ('441823', '清远市', 'qingyuan', '阳山县', '902801', '广东省', 'QYQYYS');
INSERT INTO `t_area` VALUES ('441825', '清远市', 'qingyuan', '连山壮族瑶族自治县', '902802', '广东省', 'QYQYLSZZYZZZ');
INSERT INTO `t_area` VALUES ('441826', '清远市', 'qingyuan', '连南瑶族自治县', '902803', '广东省', 'QYQYLNYZZZ');
INSERT INTO `t_area` VALUES ('441881', '清远市', 'qingyuan', '英德市', '902804', '广东省', 'QYQYYD');
INSERT INTO `t_area` VALUES ('441882', '清远市', 'qingyuan', '连州市', '902805', '广东省', 'QYQYLZ');
INSERT INTO `t_area` VALUES ('441900', '东莞市', 'dongguan', '三元里', '902806', '广东省', 'DGDGSY');
INSERT INTO `t_area` VALUES ('442000', '中山市', 'zhongshan', '湖滨北路', '902797', '广东省', 'ZSZSHBB');
INSERT INTO `t_area` VALUES ('445102', '潮州市', 'chaozhou', '湘桥区', '902822', '广东省', 'CZCZXQ');
INSERT INTO `t_area` VALUES ('445103', '潮州市', 'chaozhou', '潮安区', '902823', '广东省', 'CZCZCA');
INSERT INTO `t_area` VALUES ('445122', '潮州市', 'chaozhou', '饶平县', '902824', '广东省', 'CZCZRP');
INSERT INTO `t_area` VALUES ('445202', '揭阳市', 'jieyang', '榕城区', '902717', '广东省', 'JYJYRC');
INSERT INTO `t_area` VALUES ('445203', '揭阳市', 'jieyang', '揭东区', '902718', '广东省', 'JYJYJD');
INSERT INTO `t_area` VALUES ('445222', '揭阳市', 'jieyang', '揭西县', '902719', '广东省', 'JYJYJX');
INSERT INTO `t_area` VALUES ('445224', '揭阳市', 'jieyang', '惠来县', '902720', '广东省', 'JYJYHL');
INSERT INTO `t_area` VALUES ('445281', '揭阳市', 'jieyang', '普宁市', '902721', '广东省', 'JYJYPN');
INSERT INTO `t_area` VALUES ('445302', '云浮市', 'yunfu', '云城区', '902792', '广东省', 'YFYFYC');
INSERT INTO `t_area` VALUES ('445303', '云浮市', 'yunfu', '云安区', '902793', '广东省', 'YFYFYA');
INSERT INTO `t_area` VALUES ('445321', '云浮市', 'yunfu', '新兴县', '902794', '广东省', 'YFYFXX');
INSERT INTO `t_area` VALUES ('445322', '云浮市', 'yunfu', '郁南县', '902795', '广东省', 'YFYFYN');
INSERT INTO `t_area` VALUES ('445381', '云浮市', 'yunfu', '罗定市', '902796', '广东省', 'YFYFLD');
INSERT INTO `t_area` VALUES ('450102', '南宁市', 'nanning', '兴宁区', '900342', '广西壮族自治区', 'NNNNXN');
INSERT INTO `t_area` VALUES ('450103', '南宁市', 'nanning', '青秀区', '900343', '广西壮族自治区', 'NNNNQX');
INSERT INTO `t_area` VALUES ('450105', '南宁市', 'nanning', '江南区', '900344', '广西壮族自治区', 'NNNNJN');
INSERT INTO `t_area` VALUES ('450107', '南宁市', 'nanning', '西乡塘区', '900345', '广西壮族自治区', 'NNNNXXT');
INSERT INTO `t_area` VALUES ('450108', '南宁市', 'nanning', '良庆区', '900346', '广西壮族自治区', 'NNNNLQ');
INSERT INTO `t_area` VALUES ('450109', '南宁市', 'nanning', '邕宁区', '900347', '广西壮族自治区', 'NNNNYN');
INSERT INTO `t_area` VALUES ('450110', '南宁市', 'nanning', '武鸣区', '900348', '广西壮族自治区', 'NNNNWM');
INSERT INTO `t_area` VALUES ('450123', '南宁市', 'nanning', '隆安县', '900349', '广西壮族自治区', 'NNNNLA');
INSERT INTO `t_area` VALUES ('450124', '南宁市', 'nanning', '马山县', '900350', '广西壮族自治区', 'NNNNMS');
INSERT INTO `t_area` VALUES ('450125', '南宁市', 'nanning', '上林县', '900351', '广西壮族自治区', 'NNNNSL');
INSERT INTO `t_area` VALUES ('450126', '南宁市', 'nanning', '宾阳县', '900352', '广西壮族自治区', 'NNNNBY');
INSERT INTO `t_area` VALUES ('450127', '南宁市', 'nanning', '横县', '900353', '广西壮族自治区', 'NNNNH');
INSERT INTO `t_area` VALUES ('450202', '柳州市', 'liuzhou', '城中区', '900313', '广西壮族自治区', 'LZLZCZ');
INSERT INTO `t_area` VALUES ('450203', '柳州市', 'liuzhou', '鱼峰区', '900314', '广西壮族自治区', 'LZLZYF');
INSERT INTO `t_area` VALUES ('450204', '柳州市', 'liuzhou', '柳南区', '900315', '广西壮族自治区', 'LZLZLN');
INSERT INTO `t_area` VALUES ('450205', '柳州市', 'liuzhou', '柳北区', '900316', '广西壮族自治区', 'LZLZLB');
INSERT INTO `t_area` VALUES ('450221', '柳州市', 'liuzhou', '柳江县', '900317', '广西壮族自治区', 'LZLZLJ');
INSERT INTO `t_area` VALUES ('450222', '柳州市', 'liuzhou', '柳城县', '900318', '广西壮族自治区', 'LZLZLC');
INSERT INTO `t_area` VALUES ('450223', '柳州市', 'liuzhou', '鹿寨县', '900319', '广西壮族自治区', 'LZLZLZ');
INSERT INTO `t_area` VALUES ('450224', '柳州市', 'liuzhou', '融安县', '900320', '广西壮族自治区', 'LZLZRA');
INSERT INTO `t_area` VALUES ('450225', '柳州市', 'liuzhou', '融水苗族自治县', '900321', '广西壮族自治区', 'LZLZRSMZZZ');
INSERT INTO `t_area` VALUES ('450226', '柳州市', 'liuzhou', '三江侗族自治县', '900322', '广西壮族自治区', 'LZLZSJDZZZ');
INSERT INTO `t_area` VALUES ('450302', '桂林市', 'guilin', '秀峰区', '900290', '广西壮族自治区', 'GLGLXF');
INSERT INTO `t_area` VALUES ('450303', '桂林市', 'guilin', '叠彩区', '900291', '广西壮族自治区', 'GLGLDC');
INSERT INTO `t_area` VALUES ('450304', '桂林市', 'guilin', '象山区', '900292', '广西壮族自治区', 'GLGLXS');
INSERT INTO `t_area` VALUES ('450305', '桂林市', 'guilin', '七星区', '900293', '广西壮族自治区', 'GLGLQX');
INSERT INTO `t_area` VALUES ('450311', '桂林市', 'guilin', '雁山区', '900294', '广西壮族自治区', 'GLGLYS');
INSERT INTO `t_area` VALUES ('450312', '桂林市', 'guilin', '临桂区', '900295', '广西壮族自治区', 'GLGLLG');
INSERT INTO `t_area` VALUES ('450321', '桂林市', 'guilin', '阳朔县', '900296', '广西壮族自治区', 'GLGLYS');
INSERT INTO `t_area` VALUES ('450323', '桂林市', 'guilin', '灵川县', '900297', '广西壮族自治区', 'GLGLLC');
INSERT INTO `t_area` VALUES ('450324', '桂林市', 'guilin', '全州县', '900298', '广西壮族自治区', 'GLGLQZ');
INSERT INTO `t_area` VALUES ('450325', '桂林市', 'guilin', '兴安县', '900299', '广西壮族自治区', 'GLGLXA');
INSERT INTO `t_area` VALUES ('450326', '桂林市', 'guilin', '永福县', '900300', '广西壮族自治区', 'GLGLYF');
INSERT INTO `t_area` VALUES ('450327', '桂林市', 'guilin', '灌阳县', '900301', '广西壮族自治区', 'GLGLGY');
INSERT INTO `t_area` VALUES ('450328', '桂林市', 'guilin', '龙胜各族自治县', '900302', '广西壮族自治区', 'GLGLLSGZZZ');
INSERT INTO `t_area` VALUES ('450329', '桂林市', 'guilin', '资源县', '900303', '广西壮族自治区', 'GLGLZY');
INSERT INTO `t_area` VALUES ('450330', '桂林市', 'guilin', '平乐县', '900304', '广西壮族自治区', 'GLGLPL');
INSERT INTO `t_area` VALUES ('450331', '桂林市', 'guilin', '荔浦县', '900305', '广西壮族自治区', 'GLGLLP');
INSERT INTO `t_area` VALUES ('450332', '桂林市', 'guilin', '恭城瑶族自治县', '900306', '广西壮族自治区', 'GLGLGCYZZZ');
INSERT INTO `t_area` VALUES ('450403', '梧州市', 'wuzhou', '万秀区', '900272', '广西壮族自治区', 'WZWZWX');
INSERT INTO `t_area` VALUES ('450405', '梧州市', 'wuzhou', '长洲区', '900273', '广西壮族自治区', 'WZWZZZ');
INSERT INTO `t_area` VALUES ('450406', '梧州市', 'wuzhou', '龙圩区', '900274', '广西壮族自治区', 'WZWZLW');
INSERT INTO `t_area` VALUES ('450421', '梧州市', 'wuzhou', '苍梧县', '900275', '广西壮族自治区', 'WZWZCW');
INSERT INTO `t_area` VALUES ('450422', '梧州市', 'wuzhou', '藤县', '900276', '广西壮族自治区', 'WZWZT');
INSERT INTO `t_area` VALUES ('450423', '梧州市', 'wuzhou', '蒙山县', '900277', '广西壮族自治区', 'WZWZMS');
INSERT INTO `t_area` VALUES ('450481', '梧州市', 'wuzhou', '岑溪市', '900278', '广西壮族自治区', 'WZWZCX');
INSERT INTO `t_area` VALUES ('450502', '北海市', 'beihai', '海城区', '900327', '广西壮族自治区', 'BHBHHC');
INSERT INTO `t_area` VALUES ('450503', '北海市', 'beihai', '银海区', '900328', '广西壮族自治区', 'BHBHYH');
INSERT INTO `t_area` VALUES ('450512', '北海市', 'beihai', '铁山港区', '900329', '广西壮族自治区', 'BHBHTSG');
INSERT INTO `t_area` VALUES ('450521', '北海市', 'beihai', '合浦县', '900330', '广西壮族自治区', 'BHBHHP');
INSERT INTO `t_area` VALUES ('450602', '防城港市', 'fangchenggang', '港口区', '900323', '广西壮族自治区', 'FCGFCGGK');
INSERT INTO `t_area` VALUES ('450603', '防城港市', 'fangchenggang', '防城区', '900324', '广西壮族自治区', 'FCGFCGFC');
INSERT INTO `t_area` VALUES ('450621', '防城港市', 'fangchenggang', '上思县', '900325', '广西壮族自治区', 'FCGFCGSS');
INSERT INTO `t_area` VALUES ('450681', '防城港市', 'fangchenggang', '东兴市', '900326', '广西壮族自治区', 'FCGFCGDX');
INSERT INTO `t_area` VALUES ('450702', '钦州市', 'qinzhou', '钦南区', '900263', '广西壮族自治区', 'QZQZQN');
INSERT INTO `t_area` VALUES ('450703', '钦州市', 'qinzhou', '钦北区', '900264', '广西壮族自治区', 'QZQZQB');
INSERT INTO `t_area` VALUES ('450721', '钦州市', 'qinzhou', '灵山县', '900265', '广西壮族自治区', 'QZQZLS');
INSERT INTO `t_area` VALUES ('450722', '钦州市', 'qinzhou', '浦北县', '900266', '广西壮族自治区', 'QZQZPB');
INSERT INTO `t_area` VALUES ('450802', '贵港市', 'guigang', '港北区', '900267', '广西壮族自治区', 'GGGGGB');
INSERT INTO `t_area` VALUES ('450803', '贵港市', 'guigang', '港南区', '900268', '广西壮族自治区', 'GGGGGN');
INSERT INTO `t_area` VALUES ('450804', '贵港市', 'guigang', '覃塘区', '900269', '广西壮族自治区', 'GGGGTT');
INSERT INTO `t_area` VALUES ('450821', '贵港市', 'guigang', '平南县', '900270', '广西壮族自治区', 'GGGGPN');
INSERT INTO `t_area` VALUES ('450881', '贵港市', 'guigang', '桂平市', '900271', '广西壮族自治区', 'GGGGGP');
INSERT INTO `t_area` VALUES ('450902', '玉林市', 'yulin', '玉州区', '900354', '广西壮族自治区', 'YLYLYZ');
INSERT INTO `t_area` VALUES ('450903', '玉林市', 'yulin', '福绵区', '900355', '广西壮族自治区', 'YLYLFM');
INSERT INTO `t_area` VALUES ('450921', '玉林市', 'yulin', '容县', '900356', '广西壮族自治区', 'YLYLR');
INSERT INTO `t_area` VALUES ('450922', '玉林市', 'yulin', '陆川县', '900357', '广西壮族自治区', 'YLYLLC');
INSERT INTO `t_area` VALUES ('450923', '玉林市', 'yulin', '博白县', '900358', '广西壮族自治区', 'YLYLBB');
INSERT INTO `t_area` VALUES ('450924', '玉林市', 'yulin', '兴业县', '900359', '广西壮族自治区', 'YLYLXY');
INSERT INTO `t_area` VALUES ('450981', '玉林市', 'yulin', '北流市', '900360', '广西壮族自治区', 'YLYLBL');
INSERT INTO `t_area` VALUES ('451002', '百色市', 'baise', '右江区', '900361', '广西壮族自治区', 'BSBSYJ');
INSERT INTO `t_area` VALUES ('451021', '百色市', 'baise', '田阳县', '900362', '广西壮族自治区', 'BSBSTY');
INSERT INTO `t_area` VALUES ('451022', '百色市', 'baise', '田东县', '900363', '广西壮族自治区', 'BSBSTD');
INSERT INTO `t_area` VALUES ('451023', '百色市', 'baise', '平果县', '900364', '广西壮族自治区', 'BSBSPG');
INSERT INTO `t_area` VALUES ('451024', '百色市', 'baise', '德保县', '900365', '广西壮族自治区', 'BSBSDB');
INSERT INTO `t_area` VALUES ('451025', '百色市', 'baise', '靖西县', '900366', '广西壮族自治区', 'BSBSJX');
INSERT INTO `t_area` VALUES ('451026', '百色市', 'baise', '那坡县', '900367', '广西壮族自治区', 'BSBSNP');
INSERT INTO `t_area` VALUES ('451027', '百色市', 'baise', '凌云县', '900368', '广西壮族自治区', 'BSBSLY');
INSERT INTO `t_area` VALUES ('451028', '百色市', 'baise', '乐业县', '900369', '广西壮族自治区', 'BSBSLY');
INSERT INTO `t_area` VALUES ('451029', '百色市', 'baise', '田林县', '900370', '广西壮族自治区', 'BSBSTL');
INSERT INTO `t_area` VALUES ('451030', '百色市', 'baise', '西林县', '900371', '广西壮族自治区', 'BSBSXL');
INSERT INTO `t_area` VALUES ('451031', '百色市', 'baise', '隆林各族自治县', '900372', '广西壮族自治区', 'BSBSLLGZZZ');
INSERT INTO `t_area` VALUES ('451102', '贺州市', 'hezhou', '八步区', '900286', '广西壮族自治区', 'HZHZBB');
INSERT INTO `t_area` VALUES ('451121', '贺州市', 'hezhou', '昭平县', '900287', '广西壮族自治区', 'HZHZZP');
INSERT INTO `t_area` VALUES ('451122', '贺州市', 'hezhou', '钟山县', '900288', '广西壮族自治区', 'HZHZZS');
INSERT INTO `t_area` VALUES ('451123', '贺州市', 'hezhou', '富川瑶族自治县', '900289', '广西壮族自治区', 'HZHZFCYZZZ');
INSERT INTO `t_area` VALUES ('451202', '河池市', 'hechi', '金城江区', '900331', '广西壮族自治区', 'HCHCJCJ');
INSERT INTO `t_area` VALUES ('451221', '河池市', 'hechi', '南丹县', '900332', '广西壮族自治区', 'HCHCND');
INSERT INTO `t_area` VALUES ('451222', '河池市', 'hechi', '天峨县', '900333', '广西壮族自治区', 'HCHCTE');
INSERT INTO `t_area` VALUES ('451223', '河池市', 'hechi', '凤山县', '900334', '广西壮族自治区', 'HCHCFS');
INSERT INTO `t_area` VALUES ('451224', '河池市', 'hechi', '东兰县', '900335', '广西壮族自治区', 'HCHCDL');
INSERT INTO `t_area` VALUES ('451225', '河池市', 'hechi', '罗城仫佬族自治县', '900336', '广西壮族自治区', 'HCHCLCMLZZZ');
INSERT INTO `t_area` VALUES ('451226', '河池市', 'hechi', '环江毛南族自治县', '900337', '广西壮族自治区', 'HCHCHJMNZZZ');
INSERT INTO `t_area` VALUES ('451227', '河池市', 'hechi', '巴马瑶族自治县', '900338', '广西壮族自治区', 'HCHCBMYZZZ');
INSERT INTO `t_area` VALUES ('451228', '河池市', 'hechi', '都安瑶族自治县', '900339', '广西壮族自治区', 'HCHCDAYZZZ');
INSERT INTO `t_area` VALUES ('451229', '河池市', 'hechi', '大化瑶族自治县', '900340', '广西壮族自治区', 'HCHCDHYZZZ');
INSERT INTO `t_area` VALUES ('451281', '河池市', 'hechi', '宜州市', '900341', '广西壮族自治区', 'HCHCYZ');
INSERT INTO `t_area` VALUES ('451302', '来宾市', 'laibin', '兴宾区', '900307', '广西壮族自治区', 'LBLBXB');
INSERT INTO `t_area` VALUES ('451321', '来宾市', 'laibin', '忻城县', '900308', '广西壮族自治区', 'LBLBXC');
INSERT INTO `t_area` VALUES ('451322', '来宾市', 'laibin', '象州县', '900309', '广西壮族自治区', 'LBLBXZ');
INSERT INTO `t_area` VALUES ('451323', '来宾市', 'laibin', '武宣县', '900310', '广西壮族自治区', 'LBLBWX');
INSERT INTO `t_area` VALUES ('451324', '来宾市', 'laibin', '金秀瑶族自治县', '900311', '广西壮族自治区', 'LBLBJXYZZZ');
INSERT INTO `t_area` VALUES ('451381', '来宾市', 'laibin', '合山市', '900312', '广西壮族自治区', 'LBLBHS');
INSERT INTO `t_area` VALUES ('451402', '崇左市', 'chongzuo', '江州区', '900279', '广西壮族自治区', 'CZCZJZ');
INSERT INTO `t_area` VALUES ('451421', '崇左市', 'chongzuo', '扶绥县', '900280', '广西壮族自治区', 'CZCZFS');
INSERT INTO `t_area` VALUES ('451422', '崇左市', 'chongzuo', '宁明县', '900281', '广西壮族自治区', 'CZCZNM');
INSERT INTO `t_area` VALUES ('451423', '崇左市', 'chongzuo', '龙州县', '900282', '广西壮族自治区', 'CZCZLZ');
INSERT INTO `t_area` VALUES ('451424', '崇左市', 'chongzuo', '大新县', '900283', '广西壮族自治区', 'CZCZDX');
INSERT INTO `t_area` VALUES ('451425', '崇左市', 'chongzuo', '天等县', '900284', '广西壮族自治区', 'CZCZTD');
INSERT INTO `t_area` VALUES ('451481', '崇左市', 'chongzuo', '凭祥市', '900285', '广西壮族自治区', 'CZCZPX');
INSERT INTO `t_area` VALUES ('460105', '海口市', 'haikou', '秀英区', '901349', '海南省', 'HKHKXY');
INSERT INTO `t_area` VALUES ('460106', '海口市', 'haikou', '龙华区', '901350', '海南省', 'HKHKLH');
INSERT INTO `t_area` VALUES ('460107', '海口市', 'haikou', '琼山区', '901351', '海南省', 'HKHKQS');
INSERT INTO `t_area` VALUES ('460108', '海口市', 'haikou', '美兰区', '901352', '海南省', 'HKHKML');
INSERT INTO `t_area` VALUES ('460200', '三亚市', 'sanya', '三亚湾', '901353', '海南省', 'SYSYSY');
INSERT INTO `t_area` VALUES ('460202', '三亚市', 'sanya', '海棠区', '901354', '海南省', 'SYSYHT');
INSERT INTO `t_area` VALUES ('460203', '三亚市', 'sanya', '吉阳区', '901355', '海南省', 'SYSYJY');
INSERT INTO `t_area` VALUES ('460204', '三亚市', 'sanya', '天涯区', '901356', '海南省', 'SYSYTY');
INSERT INTO `t_area` VALUES ('460205', '三亚市', 'sanya', '崖州区', '901357', '海南省', 'SYSYYZ');
INSERT INTO `t_area` VALUES ('460321', '三沙市', 'sansha', '西沙群岛', '901346', '海南省', 'SSSSXSQ');
INSERT INTO `t_area` VALUES ('460322', '三沙市', 'sansha', '南沙群岛', '901347', '海南省', 'SSSSNSQ');
INSERT INTO `t_area` VALUES ('460323', '三沙市', 'sansha', '中沙群岛的岛礁及其海域', '901348', '海南省', 'SSSSZSQDDDJJQH');
INSERT INTO `t_area` VALUES ('500101', '重庆市', 'zhongqing', '万州区', '901084', '重庆市', 'ZQZQWZ');
INSERT INTO `t_area` VALUES ('500102', '重庆市', 'zhongqing', '涪陵区', '901085', '重庆市', 'ZQZQFL');
INSERT INTO `t_area` VALUES ('500103', '重庆市', 'zhongqing', '渝中区', '901086', '重庆市', 'ZQZQYZ');
INSERT INTO `t_area` VALUES ('500104', '重庆市', 'zhongqing', '大渡口区', '901087', '重庆市', 'ZQZQDDK');
INSERT INTO `t_area` VALUES ('500105', '重庆市', 'zhongqing', '江北区', '901088', '重庆市', 'ZQZQJB');
INSERT INTO `t_area` VALUES ('500106', '重庆市', 'zhongqing', '沙坪坝区', '901089', '重庆市', 'ZQZQSPB');
INSERT INTO `t_area` VALUES ('500107', '重庆市', 'zhongqing', '九龙坡区', '901090', '重庆市', 'ZQZQJLP');
INSERT INTO `t_area` VALUES ('500108', '重庆市', 'zhongqing', '南岸区', '901091', '重庆市', 'ZQZQNA');
INSERT INTO `t_area` VALUES ('500109', '重庆市', 'zhongqing', '北碚区', '901092', '重庆市', 'ZQZQBB');
INSERT INTO `t_area` VALUES ('500110', '重庆市', 'zhongqing', '綦江区', '901093', '重庆市', 'ZQZQQJ');
INSERT INTO `t_area` VALUES ('500111', '重庆市', 'zhongqing', '大足区', '901094', '重庆市', 'ZQZQDZ');
INSERT INTO `t_area` VALUES ('500112', '重庆市', 'zhongqing', '渝北区', '901095', '重庆市', 'ZQZQYB');
INSERT INTO `t_area` VALUES ('500113', '重庆市', 'zhongqing', '巴南区', '901096', '重庆市', 'ZQZQBN');
INSERT INTO `t_area` VALUES ('500114', '重庆市', 'zhongqing', '黔江区', '901097', '重庆市', 'ZQZQQJ');
INSERT INTO `t_area` VALUES ('500115', '重庆市', 'zhongqing', '长寿区', '901098', '重庆市', 'ZQZQZS');
INSERT INTO `t_area` VALUES ('500116', '重庆市', 'zhongqing', '江津区', '901099', '重庆市', 'ZQZQJJ');
INSERT INTO `t_area` VALUES ('500117', '重庆市', 'zhongqing', '合川区', '901100', '重庆市', 'ZQZQHC');
INSERT INTO `t_area` VALUES ('500118', '重庆市', 'zhongqing', '永川区', '901101', '重庆市', 'ZQZQYC');
INSERT INTO `t_area` VALUES ('500119', '重庆市', 'zhongqing', '南川区', '901102', '重庆市', 'ZQZQNC');
INSERT INTO `t_area` VALUES ('500120', '重庆市', 'zhongqing', '璧山区', '901103', '重庆市', 'ZQZQBS');
INSERT INTO `t_area` VALUES ('500151', '重庆市', 'zhongqing', '铜梁区', '901104', '重庆市', 'ZQZQTL');
INSERT INTO `t_area` VALUES ('500223', '重庆市', 'zhongqing', '潼南区', '901105', '重庆市', 'ZQZQTN');
INSERT INTO `t_area` VALUES ('500226', '重庆市', 'zhongqing', '荣昌区', '901106', '重庆市', 'ZQZQRC');
INSERT INTO `t_area` VALUES ('500228', '重庆市', 'zhongqing', '梁平县', '901107', '重庆市', 'ZQZQLP');
INSERT INTO `t_area` VALUES ('500229', '重庆市', 'zhongqing', '城口县', '901108', '重庆市', 'ZQZQCK');
INSERT INTO `t_area` VALUES ('500230', '重庆市', 'zhongqing', '丰都县', '901109', '重庆市', 'ZQZQFD');
INSERT INTO `t_area` VALUES ('500231', '重庆市', 'zhongqing', '垫江县', '901110', '重庆市', 'ZQZQDJ');
INSERT INTO `t_area` VALUES ('500232', '重庆市', 'zhongqing', '武隆县', '901111', '重庆市', 'ZQZQWL');
INSERT INTO `t_area` VALUES ('500233', '重庆市', 'zhongqing', '忠县', '901112', '重庆市', 'ZQZQZ');
INSERT INTO `t_area` VALUES ('500234', '重庆市', 'zhongqing', '开县', '901113', '重庆市', 'ZQZQK');
INSERT INTO `t_area` VALUES ('500235', '重庆市', 'zhongqing', '云阳县', '901114', '重庆市', 'ZQZQYY');
INSERT INTO `t_area` VALUES ('500236', '重庆市', 'zhongqing', '奉节县', '901115', '重庆市', 'ZQZQFJ');
INSERT INTO `t_area` VALUES ('500237', '重庆市', 'zhongqing', '巫山县', '901116', '重庆市', 'ZQZQWS');
INSERT INTO `t_area` VALUES ('500238', '重庆市', 'zhongqing', '巫溪县', '901117', '重庆市', 'ZQZQWX');
INSERT INTO `t_area` VALUES ('500240', '重庆市', 'zhongqing', '石柱土家族自治县', '901118', '重庆市', 'ZQZQSZTJZZZ');
INSERT INTO `t_area` VALUES ('500241', '重庆市', 'zhongqing', '秀山土家族苗族自治县', '901119', '重庆市', 'ZQZQXSTJZMZZZ');
INSERT INTO `t_area` VALUES ('500242', '重庆市', 'zhongqing', '酉阳土家族苗族自治县', '901120', '重庆市', 'ZQZQYYTJZMZZZ');
INSERT INTO `t_area` VALUES ('500243', '重庆市', 'zhongqing', '彭水苗族土家族自治县', '901121', '重庆市', 'ZQZQPSMZTJZZZ');
INSERT INTO `t_area` VALUES ('510104', '成都市', 'chengdou', '锦江区', '902578', '四川省', 'CDCDJJ');
INSERT INTO `t_area` VALUES ('510105', '成都市', 'chengdou', '青羊区', '902579', '四川省', 'CDCDQY');
INSERT INTO `t_area` VALUES ('510106', '成都市', 'chengdou', '金牛区', '902580', '四川省', 'CDCDJN');
INSERT INTO `t_area` VALUES ('510107', '成都市', 'chengdou', '武侯区', '902581', '四川省', 'CDCDWH');
INSERT INTO `t_area` VALUES ('510108', '成都市', 'chengdou', '成华区', '902582', '四川省', 'CDCDCH');
INSERT INTO `t_area` VALUES ('510112', '成都市', 'chengdou', '龙泉驿区', '902583', '四川省', 'CDCDLQY');
INSERT INTO `t_area` VALUES ('510113', '成都市', 'chengdou', '青白江区', '902584', '四川省', 'CDCDQBJ');
INSERT INTO `t_area` VALUES ('510114', '成都市', 'chengdou', '新都区', '902585', '四川省', 'CDCDXD');
INSERT INTO `t_area` VALUES ('510115', '成都市', 'chengdou', '温江区', '902586', '四川省', 'CDCDWJ');
INSERT INTO `t_area` VALUES ('510121', '成都市', 'chengdou', '金堂县', '902587', '四川省', 'CDCDJT');
INSERT INTO `t_area` VALUES ('510122', '成都市', 'chengdou', '双流县', '902588', '四川省', 'CDCDSL');
INSERT INTO `t_area` VALUES ('510124', '成都市', 'chengdou', '郫县', '902589', '四川省', 'CDCDP');
INSERT INTO `t_area` VALUES ('510129', '成都市', 'chengdou', '大邑县', '902590', '四川省', 'CDCDDY');
INSERT INTO `t_area` VALUES ('510131', '成都市', 'chengdou', '蒲江县', '902591', '四川省', 'CDCDPJ');
INSERT INTO `t_area` VALUES ('510132', '成都市', 'chengdou', '新津县', '902592', '四川省', 'CDCDXJ');
INSERT INTO `t_area` VALUES ('510181', '成都市', 'chengdou', '都江堰市', '902593', '四川省', 'CDCDDJY');
INSERT INTO `t_area` VALUES ('510182', '成都市', 'chengdou', '彭州市', '902594', '四川省', 'CDCDPZ');
INSERT INTO `t_area` VALUES ('510183', '成都市', 'chengdou', '邛崃市', '902595', '四川省', 'CDCDQL');
INSERT INTO `t_area` VALUES ('510184', '成都市', 'chengdou', '崇州市', '902596', '四川省', 'CDCDCZ');
INSERT INTO `t_area` VALUES ('510302', '自贡市', 'zigong', '??流井区', '902665', '四川省', 'ZGZG??LJ');
INSERT INTO `t_area` VALUES ('510303', '自贡市', 'zigong', '贡井区', '902666', '四川省', 'ZGZGGJ');
INSERT INTO `t_area` VALUES ('510304', '自贡市', 'zigong', '大安区', '902667', '四川省', 'ZGZGDA');
INSERT INTO `t_area` VALUES ('510311', '自贡市', 'zigong', '沿滩区', '902668', '四川省', 'ZGZGYT');
INSERT INTO `t_area` VALUES ('510321', '自贡市', 'zigong', '荣县', '902669', '四川省', 'ZGZGR');
INSERT INTO `t_area` VALUES ('510322', '自贡市', 'zigong', '富顺县', '902670', '四川省', 'ZGZGFS');
INSERT INTO `t_area` VALUES ('510402', '攀枝花市', 'panzhihua', '东区', '902671', '四川省', 'PZHPZHD');
INSERT INTO `t_area` VALUES ('510403', '攀枝花市', 'panzhihua', '西区', '902672', '四川省', 'PZHPZHX');
INSERT INTO `t_area` VALUES ('510411', '攀枝花市', 'panzhihua', '仁和区', '902673', '四川省', 'PZHPZHRH');
INSERT INTO `t_area` VALUES ('510421', '攀枝花市', 'panzhihua', '米易县', '902674', '四川省', 'PZHPZHMY');
INSERT INTO `t_area` VALUES ('510422', '攀枝花市', 'panzhihua', '盐边县', '902675', '四川省', 'PZHPZHYB');
INSERT INTO `t_area` VALUES ('510502', '泸州市', 'luzhou', '江阳区', '902612', '四川省', 'LZLZJY');
INSERT INTO `t_area` VALUES ('510503', '泸州市', 'luzhou', '纳溪区', '902613', '四川省', 'LZLZNX');
INSERT INTO `t_area` VALUES ('510504', '泸州市', 'luzhou', '龙马潭区', '902614', '四川省', 'LZLZLMT');
INSERT INTO `t_area` VALUES ('510521', '泸州市', 'luzhou', '泸县', '902615', '四川省', 'LZLZL');
INSERT INTO `t_area` VALUES ('510522', '泸州市', 'luzhou', '合江县', '902616', '四川省', 'LZLZHJ');
INSERT INTO `t_area` VALUES ('510524', '泸州市', 'luzhou', '叙永县', '902617', '四川省', 'LZLZXY');
INSERT INTO `t_area` VALUES ('510525', '泸州市', 'luzhou', '古蔺县', '902618', '四川省', 'LZLZGL');
INSERT INTO `t_area` VALUES ('510603', '德阳市', 'deyang', '旌阳区', '902619', '四川省', 'DYDYJY');
INSERT INTO `t_area` VALUES ('510623', '德阳市', 'deyang', '中江县', '902620', '四川省', 'DYDYZJ');
INSERT INTO `t_area` VALUES ('510626', '德阳市', 'deyang', '罗江县', '902621', '四川省', 'DYDYLJ');
INSERT INTO `t_area` VALUES ('510681', '德阳市', 'deyang', '广汉市', '902622', '四川省', 'DYDYGH');
INSERT INTO `t_area` VALUES ('510682', '德阳市', 'deyang', '什邡市', '902623', '四川省', 'DYDYSF');
INSERT INTO `t_area` VALUES ('510683', '德阳市', 'deyang', '绵竹市', '902624', '四川省', 'DYDYMZ');
INSERT INTO `t_area` VALUES ('510703', '绵阳市', 'mianyang', '涪城区', '902546', '四川省', 'MYMYFC');
INSERT INTO `t_area` VALUES ('510704', '绵阳市', 'mianyang', '游仙区', '902547', '四川省', 'MYMYYX');
INSERT INTO `t_area` VALUES ('510722', '绵阳市', 'mianyang', '三台县', '902548', '四川省', 'MYMYST');
INSERT INTO `t_area` VALUES ('510723', '绵阳市', 'mianyang', '盐亭县', '902549', '四川省', 'MYMYYT');
INSERT INTO `t_area` VALUES ('510724', '绵阳市', 'mianyang', '安县', '902550', '四川省', 'MYMYA');
INSERT INTO `t_area` VALUES ('510725', '绵阳市', 'mianyang', '梓潼县', '902551', '四川省', 'MYMYZT');
INSERT INTO `t_area` VALUES ('510726', '绵阳市', 'mianyang', '北川羌族自治县', '902552', '四川省', 'MYMYBCQZZZ');
INSERT INTO `t_area` VALUES ('510727', '绵阳市', 'mianyang', '平武县', '902553', '四川省', 'MYMYPW');
INSERT INTO `t_area` VALUES ('510781', '绵阳市', 'mianyang', '江油市', '902554', '四川省', 'MYMYJY');
INSERT INTO `t_area` VALUES ('510802', '广元市', 'guangyuan', '利州区', '902695', '四川省', 'GYGYLZ');
INSERT INTO `t_area` VALUES ('510811', '广元市', 'guangyuan', '昭化区', '902696', '四川省', 'GYGYZH');
INSERT INTO `t_area` VALUES ('510812', '广元市', 'guangyuan', '朝天区', '902697', '四川省', 'GYGYCT');
INSERT INTO `t_area` VALUES ('510821', '广元市', 'guangyuan', '旺苍县', '902698', '四川省', 'GYGYWC');
INSERT INTO `t_area` VALUES ('510822', '广元市', 'guangyuan', '青川县', '902699', '四川省', 'GYGYQC');
INSERT INTO `t_area` VALUES ('510823', '广元市', 'guangyuan', '剑阁县', '902700', '四川省', 'GYGYJG');
INSERT INTO `t_area` VALUES ('510824', '广元市', 'guangyuan', '苍溪县', '902701', '四川省', 'GYGYCX');
INSERT INTO `t_area` VALUES ('510903', '遂宁市', 'suining', '船山区', '902676', '四川省', 'SNSNCS');
INSERT INTO `t_area` VALUES ('510904', '遂宁市', 'suining', '安居区', '902677', '四川省', 'SNSNAJ');
INSERT INTO `t_area` VALUES ('510921', '遂宁市', 'suining', '蓬溪县', '902678', '四川省', 'SNSNPX');
INSERT INTO `t_area` VALUES ('510922', '遂宁市', 'suining', '射洪县', '902679', '四川省', 'SNSNSH');
INSERT INTO `t_area` VALUES ('510923', '遂宁市', 'suining', '大英县', '902680', '四川省', 'SNSNDY');
INSERT INTO `t_area` VALUES ('511002', '内江市', 'neijiang', '市中区', '902555', '四川省', 'NJNJSZ');
INSERT INTO `t_area` VALUES ('511011', '内江市', 'neijiang', '东兴区', '902556', '四川省', 'NJNJDX');
INSERT INTO `t_area` VALUES ('511024', '内江市', 'neijiang', '威远县', '902557', '四川省', 'NJNJWY');
INSERT INTO `t_area` VALUES ('511025', '内江市', 'neijiang', '资中县', '902558', '四川省', 'NJNJZZ');
INSERT INTO `t_area` VALUES ('511028', '内江市', 'neijiang', '隆昌县', '902559', '四川省', 'NJNJLC');
INSERT INTO `t_area` VALUES ('511102', '乐山市', 'leshan', '市中区', '902643', '四川省', 'LSLSSZ');
INSERT INTO `t_area` VALUES ('511111', '乐山市', 'leshan', '沙湾区', '902644', '四川省', 'LSLSSW');
INSERT INTO `t_area` VALUES ('511112', '乐山市', 'leshan', '五通桥区', '902645', '四川省', 'LSLSWTQ');
INSERT INTO `t_area` VALUES ('511113', '乐山市', 'leshan', '金口河区', '902646', '四川省', 'LSLSJKH');
INSERT INTO `t_area` VALUES ('511123', '乐山市', 'leshan', '犍为县', '902647', '四川省', 'LSLSJW');
INSERT INTO `t_area` VALUES ('511124', '乐山市', 'leshan', '井研县', '902648', '四川省', 'LSLSJY');
INSERT INTO `t_area` VALUES ('511126', '乐山市', 'leshan', '夹江县', '902649', '四川省', 'LSLSJJ');
INSERT INTO `t_area` VALUES ('511129', '乐山市', 'leshan', '沐川县', '902650', '四川省', 'LSLSMC');
INSERT INTO `t_area` VALUES ('511132', '乐山市', 'leshan', '峨边彝族自治县', '902651', '四川省', 'LSLSEBYZZZ');
INSERT INTO `t_area` VALUES ('511133', '乐山市', 'leshan', '马边彝族自治县', '902652', '四川省', 'LSLSMBYZZZ');
INSERT INTO `t_area` VALUES ('511181', '乐山市', 'leshan', '峨眉山市', '902653', '四川省', 'LSLSEMS');
INSERT INTO `t_area` VALUES ('511302', '南充市', 'nanchong', '顺庆区', '902603', '四川省', 'NCNCSQ');
INSERT INTO `t_area` VALUES ('511303', '南充市', 'nanchong', '高坪区', '902604', '四川省', 'NCNCGP');
INSERT INTO `t_area` VALUES ('511304', '南充市', 'nanchong', '嘉陵区', '902605', '四川省', 'NCNCJL');
INSERT INTO `t_area` VALUES ('511321', '南充市', 'nanchong', '南部县', '902606', '四川省', 'NCNCNB');
INSERT INTO `t_area` VALUES ('511322', '南充市', 'nanchong', '营山县', '902607', '四川省', 'NCNCYS');
INSERT INTO `t_area` VALUES ('511323', '南充市', 'nanchong', '蓬安县', '902608', '四川省', 'NCNCPA');
INSERT INTO `t_area` VALUES ('511324', '南充市', 'nanchong', '仪陇县', '902609', '四川省', 'NCNCYL');
INSERT INTO `t_area` VALUES ('511325', '南充市', 'nanchong', '西充县', '902610', '四川省', 'NCNCXC');
INSERT INTO `t_area` VALUES ('511381', '南充市', 'nanchong', '阆中市', '902611', '四川省', 'NCNCLZ');
INSERT INTO `t_area` VALUES ('511402', '眉山市', 'meishan', '东坡区', '902681', '四川省', 'MSMSDP');
INSERT INTO `t_area` VALUES ('511403', '眉山市', 'meishan', '彭山区', '902682', '四川省', 'MSMSPS');
INSERT INTO `t_area` VALUES ('511421', '眉山市', 'meishan', '仁寿县', '902683', '四川省', 'MSMSRS');
INSERT INTO `t_area` VALUES ('511423', '眉山市', 'meishan', '洪雅县', '902684', '四川省', 'MSMSHY');
INSERT INTO `t_area` VALUES ('511424', '眉山市', 'meishan', '丹棱县', '902685', '四川省', 'MSMSDL');
INSERT INTO `t_area` VALUES ('511425', '眉山市', 'meishan', '青神县', '902686', '四川省', 'MSMSQS');
INSERT INTO `t_area` VALUES ('511502', '宜宾市', 'yibin', '翠屏区', '902702', '四川省', 'YBYBCP');
INSERT INTO `t_area` VALUES ('511503', '宜宾市', 'yibin', '南溪区', '902703', '四川省', 'YBYBNX');
INSERT INTO `t_area` VALUES ('511521', '宜宾市', 'yibin', '宜宾县', '902704', '四川省', 'YBYBYB');
INSERT INTO `t_area` VALUES ('511523', '宜宾市', 'yibin', '江安县', '902705', '四川省', 'YBYBJA');
INSERT INTO `t_area` VALUES ('511524', '宜宾市', 'yibin', '长宁县', '902706', '四川省', 'YBYBZN');
INSERT INTO `t_area` VALUES ('511525', '宜宾市', 'yibin', '高县', '902707', '四川省', 'YBYBG');
INSERT INTO `t_area` VALUES ('511526', '宜宾市', 'yibin', '珙县', '902708', '四川省', 'YBYBG');
INSERT INTO `t_area` VALUES ('511527', '宜宾市', 'yibin', '筠连县', '902709', '四川省', 'YBYBYL');
INSERT INTO `t_area` VALUES ('511528', '宜宾市', 'yibin', '兴文县', '902710', '四川省', 'YBYBXW');
INSERT INTO `t_area` VALUES ('511529', '宜宾市', 'yibin', '屏山县', '902711', '四川省', 'YBYBPS');
INSERT INTO `t_area` VALUES ('511602', '广安市', 'guangan', '广安区', '902597', '四川省', 'GAGAGA');
INSERT INTO `t_area` VALUES ('511603', '广安市', 'guangan', '前锋区', '902598', '四川省', 'GAGAQF');
INSERT INTO `t_area` VALUES ('511621', '广安市', 'guangan', '岳池县', '902599', '四川省', 'GAGAYC');
INSERT INTO `t_area` VALUES ('511622', '广安市', 'guangan', '武胜县', '902600', '四川省', 'GAGAWS');
INSERT INTO `t_area` VALUES ('511623', '广安市', 'guangan', '邻水县', '902601', '四川省', 'GAGALS');
INSERT INTO `t_area` VALUES ('511681', '广安市', 'guangan', '华蓥市', '902602', '四川省', 'GAGAHY');
INSERT INTO `t_area` VALUES ('511702', '达州市', 'dazhou', '通川区', '902658', '四川省', 'DZDZTC');
INSERT INTO `t_area` VALUES ('511703', '达州市', 'dazhou', '达川区', '902659', '四川省', 'DZDZDC');
INSERT INTO `t_area` VALUES ('511722', '达州市', 'dazhou', '宣汉县', '902660', '四川省', 'DZDZXH');
INSERT INTO `t_area` VALUES ('511723', '达州市', 'dazhou', '开江县', '902661', '四川省', 'DZDZKJ');
INSERT INTO `t_area` VALUES ('511724', '达州市', 'dazhou', '大竹县', '902662', '四川省', 'DZDZDZ');
INSERT INTO `t_area` VALUES ('511725', '达州市', 'dazhou', '渠县', '902663', '四川省', 'DZDZQ');
INSERT INTO `t_area` VALUES ('511781', '达州市', 'dazhou', '万源市', '902664', '四川省', 'DZDZWY');
INSERT INTO `t_area` VALUES ('511802', '雅安市', 'yaan', '雨城区', '902687', '四川省', 'YAYAYC');
INSERT INTO `t_area` VALUES ('511803', '雅安市', 'yaan', '名山区', '902688', '四川省', 'YAYAMS');
INSERT INTO `t_area` VALUES ('511822', '雅安市', 'yaan', '荥经县', '902689', '四川省', 'YAYAYJ');
INSERT INTO `t_area` VALUES ('511823', '雅安市', 'yaan', '汉源县', '902690', '四川省', 'YAYAHY');
INSERT INTO `t_area` VALUES ('511824', '雅安市', 'yaan', '石棉县', '902691', '四川省', 'YAYASM');
INSERT INTO `t_area` VALUES ('511825', '雅安市', 'yaan', '天全县', '902692', '四川省', 'YAYATQ');
INSERT INTO `t_area` VALUES ('511826', '雅安市', 'yaan', '芦山县', '902693', '四川省', 'YAYALS');
INSERT INTO `t_area` VALUES ('511827', '雅安市', 'yaan', '宝兴县', '902694', '四川省', 'YAYABX');
INSERT INTO `t_area` VALUES ('511902', '巴中市', 'bazhong', '巴州区', '902560', '四川省', 'BZBZBZ');
INSERT INTO `t_area` VALUES ('511903', '巴中市', 'bazhong', '恩阳区', '902561', '四川省', 'BZBZEY');
INSERT INTO `t_area` VALUES ('511921', '巴中市', 'bazhong', '通江县', '902562', '四川省', 'BZBZTJ');
INSERT INTO `t_area` VALUES ('511922', '巴中市', 'bazhong', '南江县', '902563', '四川省', 'BZBZNJ');
INSERT INTO `t_area` VALUES ('511923', '巴中市', 'bazhong', '平昌县', '902564', '四川省', 'BZBZPC');
INSERT INTO `t_area` VALUES ('512002', '资阳市', 'ziyang', '雁江区', '902654', '四川省', 'ZYZYYJ');
INSERT INTO `t_area` VALUES ('512021', '资阳市', 'ziyang', '安岳县', '902655', '四川省', 'ZYZYAY');
INSERT INTO `t_area` VALUES ('512022', '资阳市', 'ziyang', '乐至县', '902656', '四川省', 'ZYZYLZ');
INSERT INTO `t_area` VALUES ('512081', '资阳市', 'ziyang', '简阳市', '902657', '四川省', 'ZYZYJY');
INSERT INTO `t_area` VALUES ('513221', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '汶川县', '902565', '四川省', 'ABZZQZZZABZZQZZZWC');
INSERT INTO `t_area` VALUES ('513222', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '理县', '902566', '四川省', 'ABZZQZZZABZZQZZZL');
INSERT INTO `t_area` VALUES ('513223', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '茂县', '902567', '四川省', 'ABZZQZZZABZZQZZZM');
INSERT INTO `t_area` VALUES ('513224', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '松潘县', '902568', '四川省', 'ABZZQZZZABZZQZZZSP');
INSERT INTO `t_area` VALUES ('513225', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '九寨沟县', '902569', '四川省', 'ABZZQZZZABZZQZZZJZG');
INSERT INTO `t_area` VALUES ('513226', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '金川县', '902570', '四川省', 'ABZZQZZZABZZQZZZJC');
INSERT INTO `t_area` VALUES ('513227', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '小金县', '902571', '四川省', 'ABZZQZZZABZZQZZZXJ');
INSERT INTO `t_area` VALUES ('513228', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '黑水县', '902572', '四川省', 'ABZZQZZZABZZQZZZHS');
INSERT INTO `t_area` VALUES ('513229', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '马尔康县', '902573', '四川省', 'ABZZQZZZABZZQZZZMEK');
INSERT INTO `t_area` VALUES ('513230', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '壤塘县', '902574', '四川省', 'ABZZQZZZABZZQZZZRT');
INSERT INTO `t_area` VALUES ('513231', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '阿坝县', '902575', '四川省', 'ABZZQZZZABZZQZZZAB');
INSERT INTO `t_area` VALUES ('513232', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '若尔盖县', '902576', '四川省', 'ABZZQZZZABZZQZZZREG');
INSERT INTO `t_area` VALUES ('513233', '阿坝藏族羌族自治州', 'abazangzuqiangzuzizhi', '红原县', '902577', '四川省', 'ABZZQZZZABZZQZZZHY');
INSERT INTO `t_area` VALUES ('513301', '甘孜藏族自治州', 'ganzizangzuzizhi', '康定市', '902625', '四川省', 'GZZZZZGZZZZZKD');
INSERT INTO `t_area` VALUES ('513322', '甘孜藏族自治州', 'ganzizangzuzizhi', '泸定县', '902626', '四川省', 'GZZZZZGZZZZZLD');
INSERT INTO `t_area` VALUES ('513323', '甘孜藏族自治州', 'ganzizangzuzizhi', '丹巴县', '902627', '四川省', 'GZZZZZGZZZZZDB');
INSERT INTO `t_area` VALUES ('513324', '甘孜藏族自治州', 'ganzizangzuzizhi', '九龙县', '902628', '四川省', 'GZZZZZGZZZZZJL');
INSERT INTO `t_area` VALUES ('513325', '甘孜藏族自治州', 'ganzizangzuzizhi', '雅江县', '902629', '四川省', 'GZZZZZGZZZZZYJ');
INSERT INTO `t_area` VALUES ('513326', '甘孜藏族自治州', 'ganzizangzuzizhi', '道孚县', '902630', '四川省', 'GZZZZZGZZZZZDF');
INSERT INTO `t_area` VALUES ('513327', '甘孜藏族自治州', 'ganzizangzuzizhi', '炉霍县', '902631', '四川省', 'GZZZZZGZZZZZLH');
INSERT INTO `t_area` VALUES ('513328', '甘孜藏族自治州', 'ganzizangzuzizhi', '甘孜县', '902632', '四川省', 'GZZZZZGZZZZZGZ');
INSERT INTO `t_area` VALUES ('513329', '甘孜藏族自治州', 'ganzizangzuzizhi', '新龙县', '902633', '四川省', 'GZZZZZGZZZZZXL');
INSERT INTO `t_area` VALUES ('513330', '甘孜藏族自治州', 'ganzizangzuzizhi', '德格县', '902634', '四川省', 'GZZZZZGZZZZZDG');
INSERT INTO `t_area` VALUES ('513331', '甘孜藏族自治州', 'ganzizangzuzizhi', '白玉县', '902635', '四川省', 'GZZZZZGZZZZZBY');
INSERT INTO `t_area` VALUES ('513332', '甘孜藏族自治州', 'ganzizangzuzizhi', '石渠县', '902636', '四川省', 'GZZZZZGZZZZZSQ');
INSERT INTO `t_area` VALUES ('513333', '甘孜藏族自治州', 'ganzizangzuzizhi', '色达县', '902637', '四川省', 'GZZZZZGZZZZZSD');
INSERT INTO `t_area` VALUES ('513334', '甘孜藏族自治州', 'ganzizangzuzizhi', '理塘县', '902638', '四川省', 'GZZZZZGZZZZZLT');
INSERT INTO `t_area` VALUES ('513335', '甘孜藏族自治州', 'ganzizangzuzizhi', '巴塘县', '902639', '四川省', 'GZZZZZGZZZZZBT');
INSERT INTO `t_area` VALUES ('513336', '甘孜藏族自治州', 'ganzizangzuzizhi', '乡城县', '902640', '四川省', 'GZZZZZGZZZZZXC');
INSERT INTO `t_area` VALUES ('513337', '甘孜藏族自治州', 'ganzizangzuzizhi', '稻城县', '902641', '四川省', 'GZZZZZGZZZZZDC');
INSERT INTO `t_area` VALUES ('513338', '甘孜藏族自治州', 'ganzizangzuzizhi', '得荣县', '902642', '四川省', 'GZZZZZGZZZZZDR');
INSERT INTO `t_area` VALUES ('513401', '凉山彝族自治州', 'liangshanyizuzizhi', '西昌市', '902529', '四川省', 'LSYZZZLSYZZZXC');
INSERT INTO `t_area` VALUES ('513422', '凉山彝族自治州', 'liangshanyizuzizhi', '木里藏族自治县', '902530', '四川省', 'LSYZZZLSYZZZMLZZZZ');
INSERT INTO `t_area` VALUES ('513423', '凉山彝族自治州', 'liangshanyizuzizhi', '盐源县', '902531', '四川省', 'LSYZZZLSYZZZYY');
INSERT INTO `t_area` VALUES ('513424', '凉山彝族自治州', 'liangshanyizuzizhi', '德昌县', '902532', '四川省', 'LSYZZZLSYZZZDC');
INSERT INTO `t_area` VALUES ('513425', '凉山彝族自治州', 'liangshanyizuzizhi', '会理县', '902533', '四川省', 'LSYZZZLSYZZZHL');
INSERT INTO `t_area` VALUES ('513426', '凉山彝族自治州', 'liangshanyizuzizhi', '会东县', '902534', '四川省', 'LSYZZZLSYZZZHD');
INSERT INTO `t_area` VALUES ('513427', '凉山彝族自治州', 'liangshanyizuzizhi', '宁南县', '902535', '四川省', 'LSYZZZLSYZZZNN');
INSERT INTO `t_area` VALUES ('513428', '凉山彝族自治州', 'liangshanyizuzizhi', '普格县', '902536', '四川省', 'LSYZZZLSYZZZPG');
INSERT INTO `t_area` VALUES ('513429', '凉山彝族自治州', 'liangshanyizuzizhi', '布拖县', '902537', '四川省', 'LSYZZZLSYZZZBT');
INSERT INTO `t_area` VALUES ('513430', '凉山彝族自治州', 'liangshanyizuzizhi', '金阳县', '902538', '四川省', 'LSYZZZLSYZZZJY');
INSERT INTO `t_area` VALUES ('513431', '凉山彝族自治州', 'liangshanyizuzizhi', '昭觉县', '902539', '四川省', 'LSYZZZLSYZZZZJ');
INSERT INTO `t_area` VALUES ('513432', '凉山彝族自治州', 'liangshanyizuzizhi', '喜德县', '902540', '四川省', 'LSYZZZLSYZZZXD');
INSERT INTO `t_area` VALUES ('513433', '凉山彝族自治州', 'liangshanyizuzizhi', '冕宁县', '902541', '四川省', 'LSYZZZLSYZZZMN');
INSERT INTO `t_area` VALUES ('513434', '凉山彝族自治州', 'liangshanyizuzizhi', '越西县', '902542', '四川省', 'LSYZZZLSYZZZYX');
INSERT INTO `t_area` VALUES ('513435', '凉山彝族自治州', 'liangshanyizuzizhi', '甘洛县', '902543', '四川省', 'LSYZZZLSYZZZGL');
INSERT INTO `t_area` VALUES ('513436', '凉山彝族自治州', 'liangshanyizuzizhi', '美姑县', '902544', '四川省', 'LSYZZZLSYZZZMG');
INSERT INTO `t_area` VALUES ('513437', '凉山彝族自治州', 'liangshanyizuzizhi', '雷波县', '902545', '四川省', 'LSYZZZLSYZZZLB');
INSERT INTO `t_area` VALUES ('520102', '贵阳市', 'guiyang', '南明区', '901864', '贵州省', 'GYGYNM');
INSERT INTO `t_area` VALUES ('520103', '贵阳市', 'guiyang', '云岩区', '901865', '贵州省', 'GYGYYY');
INSERT INTO `t_area` VALUES ('520111', '贵阳市', 'guiyang', '花溪区', '901866', '贵州省', 'GYGYHX');
INSERT INTO `t_area` VALUES ('520112', '贵阳市', 'guiyang', '乌当区', '901867', '贵州省', 'GYGYWD');
INSERT INTO `t_area` VALUES ('520113', '贵阳市', 'guiyang', '白云区', '901868', '贵州省', 'GYGYBY');
INSERT INTO `t_area` VALUES ('520115', '贵阳市', 'guiyang', '观山湖区', '901869', '贵州省', 'GYGYGSH');
INSERT INTO `t_area` VALUES ('520121', '贵阳市', 'guiyang', '开阳县', '901870', '贵州省', 'GYGYKY');
INSERT INTO `t_area` VALUES ('520122', '贵阳市', 'guiyang', '息烽县', '901871', '贵州省', 'GYGYXF');
INSERT INTO `t_area` VALUES ('520123', '贵阳市', 'guiyang', '修文县', '901872', '贵州省', 'GYGYXW');
INSERT INTO `t_area` VALUES ('520181', '贵阳市', 'guiyang', '清镇市', '901873', '贵州省', 'GYGYQZ');
INSERT INTO `t_area` VALUES ('520201', '六盘水市', 'liupanshui', '钟山区', '901874', '贵州省', 'LPSLPSZS');
INSERT INTO `t_area` VALUES ('520203', '六盘水市', 'liupanshui', '六枝特区', '901875', '贵州省', 'LPSLPSLZT');
INSERT INTO `t_area` VALUES ('520221', '六盘水市', 'liupanshui', '水城县', '901876', '贵州省', 'LPSLPSSC');
INSERT INTO `t_area` VALUES ('520222', '六盘水市', 'liupanshui', '盘县', '901877', '贵州省', 'LPSLPSP');
INSERT INTO `t_area` VALUES ('520302', '遵义市', 'zunyi', '红花岗区', '901878', '贵州省', 'ZYZYHHG');
INSERT INTO `t_area` VALUES ('520303', '遵义市', 'zunyi', '汇川区', '901879', '贵州省', 'ZYZYHC');
INSERT INTO `t_area` VALUES ('520321', '遵义市', 'zunyi', '遵义县', '901880', '贵州省', 'ZYZYZY');
INSERT INTO `t_area` VALUES ('520322', '遵义市', 'zunyi', '桐梓县', '901881', '贵州省', 'ZYZYTZ');
INSERT INTO `t_area` VALUES ('520323', '遵义市', 'zunyi', '绥阳县', '901882', '贵州省', 'ZYZYSY');
INSERT INTO `t_area` VALUES ('520324', '遵义市', 'zunyi', '正安县', '901883', '贵州省', 'ZYZYZA');
INSERT INTO `t_area` VALUES ('520325', '遵义市', 'zunyi', '道真仡佬族苗族自治县', '901884', '贵州省', 'ZYZYDZGLZMZZZ');
INSERT INTO `t_area` VALUES ('520326', '遵义市', 'zunyi', '务川仡佬族苗族自治县', '901885', '贵州省', 'ZYZYWCGLZMZZZ');
INSERT INTO `t_area` VALUES ('520327', '遵义市', 'zunyi', '凤冈县', '901886', '贵州省', 'ZYZYFG');
INSERT INTO `t_area` VALUES ('520328', '遵义市', 'zunyi', '湄潭县', '901887', '贵州省', 'ZYZYMT');
INSERT INTO `t_area` VALUES ('520329', '遵义市', 'zunyi', '余庆县', '901888', '贵州省', 'ZYZYYQ');
INSERT INTO `t_area` VALUES ('520330', '遵义市', 'zunyi', '习水县', '901889', '贵州省', 'ZYZYXS');
INSERT INTO `t_area` VALUES ('520381', '遵义市', 'zunyi', '赤水市', '901890', '贵州省', 'ZYZYCS');
INSERT INTO `t_area` VALUES ('520382', '遵义市', 'zunyi', '仁怀市', '901891', '贵州省', 'ZYZYRH');
INSERT INTO `t_area` VALUES ('520402', '安顺市', 'anshun', '西秀区', '901904', '贵州省', 'ASASXX');
INSERT INTO `t_area` VALUES ('520403', '安顺市', 'anshun', '平坝区', '901905', '贵州省', 'ASASPB');
INSERT INTO `t_area` VALUES ('520422', '安顺市', 'anshun', '普定县', '901906', '贵州省', 'ASASPD');
INSERT INTO `t_area` VALUES ('520423', '安顺市', 'anshun', '镇宁布依族苗族自治县', '901907', '贵州省', 'ASASZNBYZMZZZ');
INSERT INTO `t_area` VALUES ('520424', '安顺市', 'anshun', '关岭布依族苗族自治县', '901908', '贵州省', 'ASASGLBYZMZZZ');
INSERT INTO `t_area` VALUES ('520425', '安顺市', 'anshun', '紫云苗族布依族自治县', '901909', '贵州省', 'ASASZYMZBYZZZ');
INSERT INTO `t_area` VALUES ('520502', '毕节市', 'bijie', '七星关区', '901944', '贵州省', 'BJBJQXG');
INSERT INTO `t_area` VALUES ('520521', '毕节市', 'bijie', '大方县', '901945', '贵州省', 'BJBJDF');
INSERT INTO `t_area` VALUES ('520522', '毕节市', 'bijie', '黔西县', '901946', '贵州省', 'BJBJQX');
INSERT INTO `t_area` VALUES ('520523', '毕节市', 'bijie', '金沙县', '901947', '贵州省', 'BJBJJS');
INSERT INTO `t_area` VALUES ('520524', '毕节市', 'bijie', '织金县', '901948', '贵州省', 'BJBJZJ');
INSERT INTO `t_area` VALUES ('520525', '毕节市', 'bijie', '纳雍县', '901949', '贵州省', 'BJBJNY');
INSERT INTO `t_area` VALUES ('520526', '毕节市', 'bijie', '威宁彝族回族苗族自治县', '901950', '贵州省', 'BJBJWNYZHZMZZZ');
INSERT INTO `t_area` VALUES ('520527', '毕节市', 'bijie', '赫章县', '901951', '贵州省', 'BJBJHZ');
INSERT INTO `t_area` VALUES ('520602', '铜仁市', 'tongren', '碧江区', '901934', '贵州省', 'TRTRBJ');
INSERT INTO `t_area` VALUES ('520603', '铜仁市', 'tongren', '万山区', '901935', '贵州省', 'TRTRWS');
INSERT INTO `t_area` VALUES ('520621', '铜仁市', 'tongren', '江口县', '901936', '贵州省', 'TRTRJK');
INSERT INTO `t_area` VALUES ('520622', '铜仁市', 'tongren', '玉屏侗族自治县', '901937', '贵州省', 'TRTRYPDZZZ');
INSERT INTO `t_area` VALUES ('520623', '铜仁市', 'tongren', '石阡县', '901938', '贵州省', 'TRTRSQ');
INSERT INTO `t_area` VALUES ('520624', '铜仁市', 'tongren', '思南县', '901939', '贵州省', 'TRTRSN');
INSERT INTO `t_area` VALUES ('520625', '铜仁市', 'tongren', '印江土家族苗族自治县', '901940', '贵州省', 'TRTRYJTJZMZZZ');
INSERT INTO `t_area` VALUES ('520626', '铜仁市', 'tongren', '德江县', '901941', '贵州省', 'TRTRDJ');
INSERT INTO `t_area` VALUES ('520627', '铜仁市', 'tongren', '沿河土家族自治县', '901942', '贵州省', 'TRTRYHTJZZZ');
INSERT INTO `t_area` VALUES ('520628', '铜仁市', 'tongren', '松桃苗族自治县', '901943', '贵州省', 'TRTRSTMZZZ');
INSERT INTO `t_area` VALUES ('522301', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhi', '兴义市', '901926', '贵州省', 'QXNBYZMZZZQXNBYZMZZZXY');
INSERT INTO `t_area` VALUES ('522322', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhi', '兴仁县', '901927', '贵州省', 'QXNBYZMZZZQXNBYZMZZZXR');
INSERT INTO `t_area` VALUES ('522323', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhi', '普安县', '901928', '贵州省', 'QXNBYZMZZZQXNBYZMZZZPA');
INSERT INTO `t_area` VALUES ('522324', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhi', '晴隆县', '901929', '贵州省', 'QXNBYZMZZZQXNBYZMZZZQL');
INSERT INTO `t_area` VALUES ('522325', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhi', '贞丰县', '901930', '贵州省', 'QXNBYZMZZZQXNBYZMZZZZF');
INSERT INTO `t_area` VALUES ('522326', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhi', '望谟县', '901931', '贵州省', 'QXNBYZMZZZQXNBYZMZZZWM');
INSERT INTO `t_area` VALUES ('522327', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhi', '册亨县', '901932', '贵州省', 'QXNBYZMZZZQXNBYZMZZZCH');
INSERT INTO `t_area` VALUES ('522328', '黔西南布依族苗族自治州', 'qianxinanbuyizumiaozuzizhi', '安龙县', '901933', '贵州省', 'QXNBYZMZZZQXNBYZMZZZAL');
INSERT INTO `t_area` VALUES ('522601', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '凯里市', '901910', '贵州省', 'QDNMZDZZZQDNMZDZZZKL');
INSERT INTO `t_area` VALUES ('522622', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '黄平县', '901911', '贵州省', 'QDNMZDZZZQDNMZDZZZHP');
INSERT INTO `t_area` VALUES ('522623', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '施秉县', '901912', '贵州省', 'QDNMZDZZZQDNMZDZZZSB');
INSERT INTO `t_area` VALUES ('522624', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '三穗县', '901913', '贵州省', 'QDNMZDZZZQDNMZDZZZSS');
INSERT INTO `t_area` VALUES ('522625', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '镇远县', '901914', '贵州省', 'QDNMZDZZZQDNMZDZZZZY');
INSERT INTO `t_area` VALUES ('522626', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '岑巩县', '901915', '贵州省', 'QDNMZDZZZQDNMZDZZZCG');
INSERT INTO `t_area` VALUES ('522627', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '天柱县', '901916', '贵州省', 'QDNMZDZZZQDNMZDZZZTZ');
INSERT INTO `t_area` VALUES ('522628', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '锦屏县', '901917', '贵州省', 'QDNMZDZZZQDNMZDZZZJP');
INSERT INTO `t_area` VALUES ('522629', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '剑河县', '901918', '贵州省', 'QDNMZDZZZQDNMZDZZZJH');
INSERT INTO `t_area` VALUES ('522630', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '台江县', '901919', '贵州省', 'QDNMZDZZZQDNMZDZZZTJ');
INSERT INTO `t_area` VALUES ('522631', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '黎平县', '901920', '贵州省', 'QDNMZDZZZQDNMZDZZZLP');
INSERT INTO `t_area` VALUES ('522632', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '榕江县', '901921', '贵州省', 'QDNMZDZZZQDNMZDZZZRJ');
INSERT INTO `t_area` VALUES ('522633', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '从江县', '901922', '贵州省', 'QDNMZDZZZQDNMZDZZZCJ');
INSERT INTO `t_area` VALUES ('522634', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '雷山县', '901923', '贵州省', 'QDNMZDZZZQDNMZDZZZLS');
INSERT INTO `t_area` VALUES ('522635', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '麻江县', '901924', '贵州省', 'QDNMZDZZZQDNMZDZZZMJ');
INSERT INTO `t_area` VALUES ('522636', '黔东南苗族侗族自治州', 'qiandongnanmiaozudongzuzizhi', '丹寨县', '901925', '贵州省', 'QDNMZDZZZQDNMZDZZZDZ');
INSERT INTO `t_area` VALUES ('522701', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '都匀市', '901892', '贵州省', 'QNBYZMZZZQNBYZMZZZDY');
INSERT INTO `t_area` VALUES ('522702', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '福泉市', '901893', '贵州省', 'QNBYZMZZZQNBYZMZZZFQ');
INSERT INTO `t_area` VALUES ('522722', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '荔波县', '901894', '贵州省', 'QNBYZMZZZQNBYZMZZZLB');
INSERT INTO `t_area` VALUES ('522723', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '贵定县', '901895', '贵州省', 'QNBYZMZZZQNBYZMZZZGD');
INSERT INTO `t_area` VALUES ('522725', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '瓮安县', '901896', '贵州省', 'QNBYZMZZZQNBYZMZZZWA');
INSERT INTO `t_area` VALUES ('522726', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '独山县', '901897', '贵州省', 'QNBYZMZZZQNBYZMZZZDS');
INSERT INTO `t_area` VALUES ('522727', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '平塘县', '901898', '贵州省', 'QNBYZMZZZQNBYZMZZZPT');
INSERT INTO `t_area` VALUES ('522728', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '罗甸县', '901899', '贵州省', 'QNBYZMZZZQNBYZMZZZLD');
INSERT INTO `t_area` VALUES ('522729', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '长顺县', '901900', '贵州省', 'QNBYZMZZZQNBYZMZZZZS');
INSERT INTO `t_area` VALUES ('522730', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '龙里县', '901901', '贵州省', 'QNBYZMZZZQNBYZMZZZLL');
INSERT INTO `t_area` VALUES ('522731', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '惠水县', '901902', '贵州省', 'QNBYZMZZZQNBYZMZZZHS');
INSERT INTO `t_area` VALUES ('522732', '黔南布依族苗族自治州', 'qiannanbuyizumiaozuzizhi', '三都水族自治县', '901903', '贵州省', 'QNBYZMZZZQNBYZMZZZSDSZZZ');
INSERT INTO `t_area` VALUES ('530102', '昆明市', 'kunming', '五华区', '902439', '云南省', 'KMKMWH');
INSERT INTO `t_area` VALUES ('530103', '昆明市', 'kunming', '盘龙区', '902440', '云南省', 'KMKMPL');
INSERT INTO `t_area` VALUES ('530111', '昆明市', 'kunming', '官渡区', '902441', '云南省', 'KMKMGD');
INSERT INTO `t_area` VALUES ('530112', '昆明市', 'kunming', '西山区', '902442', '云南省', 'KMKMXS');
INSERT INTO `t_area` VALUES ('530113', '昆明市', 'kunming', '东川区', '902443', '云南省', 'KMKMDC');
INSERT INTO `t_area` VALUES ('530114', '昆明市', 'kunming', '呈贡区', '902444', '云南省', 'KMKMCG');
INSERT INTO `t_area` VALUES ('530122', '昆明市', 'kunming', '晋宁县', '902445', '云南省', 'KMKMJN');
INSERT INTO `t_area` VALUES ('530124', '昆明市', 'kunming', '富民县', '902446', '云南省', 'KMKMFM');
INSERT INTO `t_area` VALUES ('530125', '昆明市', 'kunming', '宜良县', '902447', '云南省', 'KMKMYL');
INSERT INTO `t_area` VALUES ('530126', '昆明市', 'kunming', '石林彝族自治县', '902448', '云南省', 'KMKMSLYZZZ');
INSERT INTO `t_area` VALUES ('530127', '昆明市', 'kunming', '嵩明县', '902449', '云南省', 'KMKMSM');
INSERT INTO `t_area` VALUES ('530128', '昆明市', 'kunming', '禄劝彝族苗族自治县', '902450', '云南省', 'KMKMLQYZMZZZ');
INSERT INTO `t_area` VALUES ('530129', '昆明市', 'kunming', '寻甸回族彝族自治县', '902451', '云南省', 'KMKMXDHZYZZZ');
INSERT INTO `t_area` VALUES ('530181', '昆明市', 'kunming', '安宁市', '902452', '云南省', 'KMKMAN');
INSERT INTO `t_area` VALUES ('530302', '曲靖市', 'qujing', '麒麟区', '902520', '云南省', 'QJQJQL');
INSERT INTO `t_area` VALUES ('530321', '曲靖市', 'qujing', '马龙县', '902521', '云南省', 'QJQJML');
INSERT INTO `t_area` VALUES ('530322', '曲靖市', 'qujing', '陆良县', '902522', '云南省', 'QJQJLL');
INSERT INTO `t_area` VALUES ('530323', '曲靖市', 'qujing', '师宗县', '902523', '云南省', 'QJQJSZ');
INSERT INTO `t_area` VALUES ('530324', '曲靖市', 'qujing', '罗平县', '902524', '云南省', 'QJQJLP');
INSERT INTO `t_area` VALUES ('530325', '曲靖市', 'qujing', '富源县', '902525', '云南省', 'QJQJFY');
INSERT INTO `t_area` VALUES ('530326', '曲靖市', 'qujing', '会泽县', '902526', '云南省', 'QJQJHZ');
INSERT INTO `t_area` VALUES ('530328', '曲靖市', 'qujing', '沾益县', '902527', '云南省', 'QJQJZY');
INSERT INTO `t_area` VALUES ('530381', '曲靖市', 'qujing', '宣威市', '902528', '云南省', 'QJQJXW');
INSERT INTO `t_area` VALUES ('530402', '玉溪市', 'yuxi', '红塔区', '902408', '云南省', 'YXYXHT');
INSERT INTO `t_area` VALUES ('530421', '玉溪市', 'yuxi', '江川县', '902409', '云南省', 'YXYXJC');
INSERT INTO `t_area` VALUES ('530422', '玉溪市', 'yuxi', '澄江县', '902410', '云南省', 'YXYXCJ');
INSERT INTO `t_area` VALUES ('530423', '玉溪市', 'yuxi', '通海县', '902411', '云南省', 'YXYXTH');
INSERT INTO `t_area` VALUES ('530424', '玉溪市', 'yuxi', '华宁县', '902412', '云南省', 'YXYXHN');
INSERT INTO `t_area` VALUES ('530425', '玉溪市', 'yuxi', '易门县', '902413', '云南省', 'YXYXYM');
INSERT INTO `t_area` VALUES ('530426', '玉溪市', 'yuxi', '峨山彝族自治县', '902414', '云南省', 'YXYXESYZZZ');
INSERT INTO `t_area` VALUES ('530427', '玉溪市', 'yuxi', '新平彝族傣族自治县', '902415', '云南省', 'YXYXXPYZDZZZ');
INSERT INTO `t_area` VALUES ('530428', '玉溪市', 'yuxi', '元江哈尼族彝族傣族自治县', '902416', '云南省', 'YXYXYJHNZYZDZZZ');
INSERT INTO `t_area` VALUES ('530502', '保山市', 'baoshan', '隆阳区', '902422', '云南省', 'BSBSLY');
INSERT INTO `t_area` VALUES ('530521', '保山市', 'baoshan', '施甸县', '902423', '云南省', 'BSBSSD');
INSERT INTO `t_area` VALUES ('530522', '保山市', 'baoshan', '腾冲县', '902424', '云南省', 'BSBSTC');
INSERT INTO `t_area` VALUES ('530523', '保山市', 'baoshan', '龙陵县', '902425', '云南省', 'BSBSLL');
INSERT INTO `t_area` VALUES ('530524', '保山市', 'baoshan', '昌宁县', '902426', '云南省', 'BSBSCN');
INSERT INTO `t_area` VALUES ('530602', '昭通市', 'zhaotong', '昭阳区', '902473', '云南省', 'ZTZTZY');
INSERT INTO `t_area` VALUES ('530621', '昭通市', 'zhaotong', '鲁甸县', '902474', '云南省', 'ZTZTLD');
INSERT INTO `t_area` VALUES ('530622', '昭通市', 'zhaotong', '巧家县', '902475', '云南省', 'ZTZTQJ');
INSERT INTO `t_area` VALUES ('530623', '昭通市', 'zhaotong', '盐津县', '902476', '云南省', 'ZTZTYJ');
INSERT INTO `t_area` VALUES ('530624', '昭通市', 'zhaotong', '大关县', '902477', '云南省', 'ZTZTDG');
INSERT INTO `t_area` VALUES ('530625', '昭通市', 'zhaotong', '永善县', '902478', '云南省', 'ZTZTYS');
INSERT INTO `t_area` VALUES ('530626', '昭通市', 'zhaotong', '绥江县', '902479', '云南省', 'ZTZTSJ');
INSERT INTO `t_area` VALUES ('530627', '昭通市', 'zhaotong', '镇雄县', '902480', '云南省', 'ZTZTZX');
INSERT INTO `t_area` VALUES ('530628', '昭通市', 'zhaotong', '彝良县', '902481', '云南省', 'ZTZTYL');
INSERT INTO `t_area` VALUES ('530629', '昭通市', 'zhaotong', '威信县', '902482', '云南省', 'ZTZTWX');
INSERT INTO `t_area` VALUES ('530630', '昭通市', 'zhaotong', '水富县', '902483', '云南省', 'ZTZTSF');
INSERT INTO `t_area` VALUES ('530702', '丽江市', 'lijiang', '古城区', '902400', '云南省', 'LJLJGC');
INSERT INTO `t_area` VALUES ('530721', '丽江市', 'lijiang', '玉龙纳西族自治县', '902401', '云南省', 'LJLJYLNXZZZ');
INSERT INTO `t_area` VALUES ('530722', '丽江市', 'lijiang', '永胜县', '902402', '云南省', 'LJLJYS');
INSERT INTO `t_area` VALUES ('530723', '丽江市', 'lijiang', '华坪县', '902403', '云南省', 'LJLJHP');
INSERT INTO `t_area` VALUES ('530724', '丽江市', 'lijiang', '宁蒗彝族自治县', '902404', '云南省', 'LJLJNLYZZZ');
INSERT INTO `t_area` VALUES ('530802', '普洱市', 'puer', '思茅区', '902484', '云南省', 'PEPESM');
INSERT INTO `t_area` VALUES ('530821', '普洱市', 'puer', '宁洱哈尼族彝族自治县', '902485', '云南省', 'PEPENEHNZYZZZ');
INSERT INTO `t_area` VALUES ('530822', '普洱市', 'puer', '墨江哈尼族自治县', '902486', '云南省', 'PEPEMJHNZZZ');
INSERT INTO `t_area` VALUES ('530823', '普洱市', 'puer', '景东彝族自治县', '902487', '云南省', 'PEPEJDYZZZ');
INSERT INTO `t_area` VALUES ('530824', '普洱市', 'puer', '景谷傣族彝族自治县', '902488', '云南省', 'PEPEJGDZYZZZ');
INSERT INTO `t_area` VALUES ('530825', '普洱市', 'puer', '镇沅彝族哈尼族拉祜族自治县', '902489', '云南省', 'PEPEZYYZHNZLHZZZ');
INSERT INTO `t_area` VALUES ('530826', '普洱市', 'puer', '江城哈尼族彝族自治县', '902490', '云南省', 'PEPEJCHNZYZZZ');
INSERT INTO `t_area` VALUES ('530827', '普洱市', 'puer', '孟连傣族拉祜族佤族自治县', '902491', '云南省', 'PEPEMLDZLHZWZZZ');
INSERT INTO `t_area` VALUES ('530828', '普洱市', 'puer', '澜沧拉祜族自治县', '902492', '云南省', 'PEPELCLHZZZ');
INSERT INTO `t_area` VALUES ('530829', '普洱市', 'puer', '西盟佤族自治县', '902493', '云南省', 'PEPEXMWZZZ');
INSERT INTO `t_area` VALUES ('530902', '临沧市', 'lincang', '临翔区', '902461', '云南省', 'LCLCLX');
INSERT INTO `t_area` VALUES ('530921', '临沧市', 'lincang', '凤庆县', '902462', '云南省', 'LCLCFQ');
INSERT INTO `t_area` VALUES ('530922', '临沧市', 'lincang', '云县', '902463', '云南省', 'LCLCY');
INSERT INTO `t_area` VALUES ('530923', '临沧市', 'lincang', '永德县', '902464', '云南省', 'LCLCYD');
INSERT INTO `t_area` VALUES ('530924', '临沧市', 'lincang', '镇康县', '902465', '云南省', 'LCLCZK');
INSERT INTO `t_area` VALUES ('530925', '临沧市', 'lincang', '双江拉祜族佤族布朗族傣族自治县', '902466', '云南省', 'LCLCSJLHZWZBLZDZZZ');
INSERT INTO `t_area` VALUES ('530926', '临沧市', 'lincang', '耿马傣族佤族自治县', '902467', '云南省', 'LCLCGMDZWZZZ');
INSERT INTO `t_area` VALUES ('530927', '临沧市', 'lincang', '沧源佤族自治县', '902468', '云南省', 'LCLCCYWZZZ');
INSERT INTO `t_area` VALUES ('532301', '楚雄彝族自治州', 'chuxiongyizuzizhi', '楚雄市', '902494', '云南省', 'CXYZZZCXYZZZCX');
INSERT INTO `t_area` VALUES ('532322', '楚雄彝族自治州', 'chuxiongyizuzizhi', '双柏县', '902495', '云南省', 'CXYZZZCXYZZZSB');
INSERT INTO `t_area` VALUES ('532323', '楚雄彝族自治州', 'chuxiongyizuzizhi', '牟定县', '902496', '云南省', 'CXYZZZCXYZZZMD');
INSERT INTO `t_area` VALUES ('532324', '楚雄彝族自治州', 'chuxiongyizuzizhi', '南华县', '902497', '云南省', 'CXYZZZCXYZZZNH');
INSERT INTO `t_area` VALUES ('532325', '楚雄彝族自治州', 'chuxiongyizuzizhi', '姚安县', '902498', '云南省', 'CXYZZZCXYZZZYA');
INSERT INTO `t_area` VALUES ('532326', '楚雄彝族自治州', 'chuxiongyizuzizhi', '大姚县', '902499', '云南省', 'CXYZZZCXYZZZDY');
INSERT INTO `t_area` VALUES ('532327', '楚雄彝族自治州', 'chuxiongyizuzizhi', '永仁县', '902500', '云南省', 'CXYZZZCXYZZZYR');
INSERT INTO `t_area` VALUES ('532328', '楚雄彝族自治州', 'chuxiongyizuzizhi', '元谋县', '902501', '云南省', 'CXYZZZCXYZZZYM');
INSERT INTO `t_area` VALUES ('532329', '楚雄彝族自治州', 'chuxiongyizuzizhi', '武定县', '902502', '云南省', 'CXYZZZCXYZZZWD');
INSERT INTO `t_area` VALUES ('532331', '楚雄彝族自治州', 'chuxiongyizuzizhi', '禄丰县', '902503', '云南省', 'CXYZZZCXYZZZLF');
INSERT INTO `t_area` VALUES ('532501', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '个旧市', '902507', '云南省', 'HHHNZYZZZHHHNZYZZZGJ');
INSERT INTO `t_area` VALUES ('532502', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '开远市', '902508', '云南省', 'HHHNZYZZZHHHNZYZZZKY');
INSERT INTO `t_area` VALUES ('532503', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '蒙自市', '902509', '云南省', 'HHHNZYZZZHHHNZYZZZMZ');
INSERT INTO `t_area` VALUES ('532504', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '弥勒市', '902510', '云南省', 'HHHNZYZZZHHHNZYZZZML');
INSERT INTO `t_area` VALUES ('532523', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '屏边苗族自治县', '902511', '云南省', 'HHHNZYZZZHHHNZYZZZPBMZZZ');
INSERT INTO `t_area` VALUES ('532524', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '建水县', '902512', '云南省', 'HHHNZYZZZHHHNZYZZZJS');
INSERT INTO `t_area` VALUES ('532525', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '石屏县', '902513', '云南省', 'HHHNZYZZZHHHNZYZZZSP');
INSERT INTO `t_area` VALUES ('532527', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '泸西县', '902514', '云南省', 'HHHNZYZZZHHHNZYZZZLX');
INSERT INTO `t_area` VALUES ('532528', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '元阳县', '902515', '云南省', 'HHHNZYZZZHHHNZYZZZYY');
INSERT INTO `t_area` VALUES ('532529', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '红河县', '902516', '云南省', 'HHHNZYZZZHHHNZYZZZHH');
INSERT INTO `t_area` VALUES ('532530', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '金平苗族瑶族傣族自治县', '902517', '云南省', 'HHHNZYZZZHHHNZYZZZJPMZYZDZZZ');
INSERT INTO `t_area` VALUES ('532531', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '绿春县', '902518', '云南省', 'HHHNZYZZZHHHNZYZZZLC');
INSERT INTO `t_area` VALUES ('532532', '红河哈尼族彝族自治州', 'honghehanizuyizuzizhi', '河口瑶族自治县', '902519', '云南省', 'HHHNZYZZZHHHNZYZZZHKYZZZ');
INSERT INTO `t_area` VALUES ('532601', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhi', '文山市', '902453', '云南省', 'WSZZMZZZWSZZMZZZWS');
INSERT INTO `t_area` VALUES ('532622', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhi', '砚山县', '902454', '云南省', 'WSZZMZZZWSZZMZZZYS');
INSERT INTO `t_area` VALUES ('532623', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhi', '西畴县', '902455', '云南省', 'WSZZMZZZWSZZMZZZXC');
INSERT INTO `t_area` VALUES ('532624', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhi', '麻栗坡县', '902456', '云南省', 'WSZZMZZZWSZZMZZZMLP');
INSERT INTO `t_area` VALUES ('532625', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhi', '马关县', '902457', '云南省', 'WSZZMZZZWSZZMZZZMG');
INSERT INTO `t_area` VALUES ('532626', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhi', '丘北县', '902458', '云南省', 'WSZZMZZZWSZZMZZZQB');
INSERT INTO `t_area` VALUES ('532627', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhi', '广南县', '902459', '云南省', 'WSZZMZZZWSZZMZZZGN');
INSERT INTO `t_area` VALUES ('532628', '文山壮族苗族自治州', 'wenshanzhuangzumiaozuzizhi', '富宁县', '902460', '云南省', 'WSZZMZZZWSZZMZZZFN');
INSERT INTO `t_area` VALUES ('532801', '西双版纳傣族自治州', 'xishuangbannadaizuzizhi', '景洪市', '902504', '云南省', 'XSBNDZZZXSBNDZZZJH');
INSERT INTO `t_area` VALUES ('532822', '西双版纳傣族自治州', 'xishuangbannadaizuzizhi', '勐海县', '902505', '云南省', 'XSBNDZZZXSBNDZZZMH');
INSERT INTO `t_area` VALUES ('532823', '西双版纳傣族自治州', 'xishuangbannadaizuzizhi', '勐腊县', '902506', '云南省', 'XSBNDZZZXSBNDZZZML');
INSERT INTO `t_area` VALUES ('532901', '大理白族自治州', 'dalibaizuzizhi', '大理市', '902427', '云南省', 'DLBZZZDLBZZZDL');
INSERT INTO `t_area` VALUES ('532922', '大理白族自治州', 'dalibaizuzizhi', '漾濞彝族自治县', '902428', '云南省', 'DLBZZZDLBZZZYBYZZZ');
INSERT INTO `t_area` VALUES ('532923', '大理白族自治州', 'dalibaizuzizhi', '祥云县', '902429', '云南省', 'DLBZZZDLBZZZXY');
INSERT INTO `t_area` VALUES ('532924', '大理白族自治州', 'dalibaizuzizhi', '宾川县', '902430', '云南省', 'DLBZZZDLBZZZBC');
INSERT INTO `t_area` VALUES ('532925', '大理白族自治州', 'dalibaizuzizhi', '弥渡县', '902431', '云南省', 'DLBZZZDLBZZZMD');
INSERT INTO `t_area` VALUES ('532926', '大理白族自治州', 'dalibaizuzizhi', '南涧彝族自治县', '902432', '云南省', 'DLBZZZDLBZZZNJYZZZ');
INSERT INTO `t_area` VALUES ('532927', '大理白族自治州', 'dalibaizuzizhi', '巍山彝族回族自治县', '902433', '云南省', 'DLBZZZDLBZZZWSYZHZZZ');
INSERT INTO `t_area` VALUES ('532928', '大理白族自治州', 'dalibaizuzizhi', '永平县', '902434', '云南省', 'DLBZZZDLBZZZYP');
INSERT INTO `t_area` VALUES ('532929', '大理白族自治州', 'dalibaizuzizhi', '云龙县', '902435', '云南省', 'DLBZZZDLBZZZYL');
INSERT INTO `t_area` VALUES ('532930', '大理白族自治州', 'dalibaizuzizhi', '洱源县', '902436', '云南省', 'DLBZZZDLBZZZEY');
INSERT INTO `t_area` VALUES ('532931', '大理白族自治州', 'dalibaizuzizhi', '剑川县', '902437', '云南省', 'DLBZZZDLBZZZJC');
INSERT INTO `t_area` VALUES ('532932', '大理白族自治州', 'dalibaizuzizhi', '鹤庆县', '902438', '云南省', 'DLBZZZDLBZZZHQ');
INSERT INTO `t_area` VALUES ('533102', '德宏傣族景颇族自治州', 'dehongdaizujingpozuzizhi', '瑞丽市', '902417', '云南省', 'DHDZJPZZZDHDZJPZZZRL');
INSERT INTO `t_area` VALUES ('533103', '德宏傣族景颇族自治州', 'dehongdaizujingpozuzizhi', '芒市', '902418', '云南省', 'DHDZJPZZZDHDZJPZZZM');
INSERT INTO `t_area` VALUES ('533122', '德宏傣族景颇族自治州', 'dehongdaizujingpozuzizhi', '梁河县', '902419', '云南省', 'DHDZJPZZZDHDZJPZZZLH');
INSERT INTO `t_area` VALUES ('533123', '德宏傣族景颇族自治州', 'dehongdaizujingpozuzizhi', '盈江县', '902420', '云南省', 'DHDZJPZZZDHDZJPZZZYJ');
INSERT INTO `t_area` VALUES ('533124', '德宏傣族景颇族自治州', 'dehongdaizujingpozuzizhi', '陇川县', '902421', '云南省', 'DHDZJPZZZDHDZJPZZZLC');
INSERT INTO `t_area` VALUES ('533321', '怒江傈僳族自治州', 'nujianglisuzuzizhi', '泸水县', '902469', '云南省', 'NJLSZZZNJLSZZZLS');
INSERT INTO `t_area` VALUES ('533323', '怒江傈僳族自治州', 'nujianglisuzuzizhi', '福贡县', '902470', '云南省', 'NJLSZZZNJLSZZZFG');
INSERT INTO `t_area` VALUES ('533324', '怒江傈僳族自治州', 'nujianglisuzuzizhi', '贡山独龙族怒族自治县', '902471', '云南省', 'NJLSZZZNJLSZZZGSDLZNZZZ');
INSERT INTO `t_area` VALUES ('533325', '怒江傈僳族自治州', 'nujianglisuzuzizhi', '兰坪白族普米族自治县', '902472', '云南省', 'NJLSZZZNJLSZZZLPBZPMZZZ');
INSERT INTO `t_area` VALUES ('533401', '迪庆藏族自治州', 'diqingzangzuzizhi', '香格里拉市', '902405', '云南省', 'DQZZZZDQZZZZXGLL');
INSERT INTO `t_area` VALUES ('533422', '迪庆藏族自治州', 'diqingzangzuzizhi', '德钦县', '902406', '云南省', 'DQZZZZDQZZZZDQ');
INSERT INTO `t_area` VALUES ('533423', '迪庆藏族自治州', 'diqingzangzuzizhi', '维西傈僳族自治县', '902407', '云南省', 'DQZZZZDQZZZZWXLSZZZ');
INSERT INTO `t_area` VALUES ('540102', '拉萨市', 'lasa', '城关区', '901697', '西藏自治区', 'LSLSCG');
INSERT INTO `t_area` VALUES ('540121', '拉萨市', 'lasa', '林周县', '901698', '西藏自治区', 'LSLSLZ');
INSERT INTO `t_area` VALUES ('540122', '拉萨市', 'lasa', '当雄县', '901699', '西藏自治区', 'LSLSDX');
INSERT INTO `t_area` VALUES ('540123', '拉萨市', 'lasa', '尼木县', '901700', '西藏自治区', 'LSLSNM');
INSERT INTO `t_area` VALUES ('540124', '拉萨市', 'lasa', '曲水县', '901701', '西藏自治区', 'LSLSQS');
INSERT INTO `t_area` VALUES ('540125', '拉萨市', 'lasa', '堆龙德庆县', '901702', '西藏自治区', 'LSLSDLDQ');
INSERT INTO `t_area` VALUES ('540126', '拉萨市', 'lasa', '达孜县', '901703', '西藏自治区', 'LSLSDZ');
INSERT INTO `t_area` VALUES ('540127', '拉萨市', 'lasa', '墨竹工卡县', '901704', '西藏自治区', 'LSLSMZGK');
INSERT INTO `t_area` VALUES ('540202', '日喀则市', 'rikaze', '桑珠孜区', '901741', '西藏自治区', 'RKZRKZSZZ');
INSERT INTO `t_area` VALUES ('540221', '日喀则市', 'rikaze', '南木林县', '901742', '西藏自治区', 'RKZRKZNML');
INSERT INTO `t_area` VALUES ('540222', '日喀则市', 'rikaze', '江孜县', '901743', '西藏自治区', 'RKZRKZJZ');
INSERT INTO `t_area` VALUES ('540223', '日喀则市', 'rikaze', '定日县', '901744', '西藏自治区', 'RKZRKZDR');
INSERT INTO `t_area` VALUES ('540224', '日喀则市', 'rikaze', '萨迦县', '901745', '西藏自治区', 'RKZRKZSJ');
INSERT INTO `t_area` VALUES ('540225', '日喀则市', 'rikaze', '拉孜县', '901746', '西藏自治区', 'RKZRKZLZ');
INSERT INTO `t_area` VALUES ('540226', '日喀则市', 'rikaze', '昂仁县', '901747', '西藏自治区', 'RKZRKZAR');
INSERT INTO `t_area` VALUES ('540227', '日喀则市', 'rikaze', '谢通门县', '901748', '西藏自治区', 'RKZRKZXTM');
INSERT INTO `t_area` VALUES ('540228', '日喀则市', 'rikaze', '白朗县', '901749', '西藏自治区', 'RKZRKZBL');
INSERT INTO `t_area` VALUES ('540229', '日喀则市', 'rikaze', '仁布县', '901750', '西藏自治区', 'RKZRKZRB');
INSERT INTO `t_area` VALUES ('540230', '日喀则市', 'rikaze', '康马县', '901751', '西藏自治区', 'RKZRKZKM');
INSERT INTO `t_area` VALUES ('540231', '日喀则市', 'rikaze', '定结县', '901752', '西藏自治区', 'RKZRKZDJ');
INSERT INTO `t_area` VALUES ('540232', '日喀则市', 'rikaze', '仲巴县', '901753', '西藏自治区', 'RKZRKZZB');
INSERT INTO `t_area` VALUES ('540233', '日喀则市', 'rikaze', '亚东县', '901754', '西藏自治区', 'RKZRKZYD');
INSERT INTO `t_area` VALUES ('540234', '日喀则市', 'rikaze', '吉隆县', '901755', '西藏自治区', 'RKZRKZJL');
INSERT INTO `t_area` VALUES ('540235', '日喀则市', 'rikaze', '聂拉木县', '901756', '西藏自治区', 'RKZRKZNLM');
INSERT INTO `t_area` VALUES ('540236', '日喀则市', 'rikaze', '萨嘎县', '901757', '西藏自治区', 'RKZRKZSG');
INSERT INTO `t_area` VALUES ('540237', '日喀则市', 'rikaze', '岗巴县', '901758', '西藏自治区', 'RKZRKZGB');
INSERT INTO `t_area` VALUES ('540302', '昌都市', 'changdou', '卡若区', '901723', '西藏自治区', 'CDCDKR');
INSERT INTO `t_area` VALUES ('540321', '昌都市', 'changdou', '江达县', '901724', '西藏自治区', 'CDCDJD');
INSERT INTO `t_area` VALUES ('540322', '昌都市', 'changdou', '贡觉县', '901725', '西藏自治区', 'CDCDGJ');
INSERT INTO `t_area` VALUES ('540323', '昌都市', 'changdou', '类乌齐县', '901726', '西藏自治区', 'CDCDLWQ');
INSERT INTO `t_area` VALUES ('540324', '昌都市', 'changdou', '丁青县', '901727', '西藏自治区', 'CDCDDQ');
INSERT INTO `t_area` VALUES ('540325', '昌都市', 'changdou', '察雅县', '901728', '西藏自治区', 'CDCDCY');
INSERT INTO `t_area` VALUES ('540326', '昌都市', 'changdou', '八宿县', '901729', '西藏自治区', 'CDCDBS');
INSERT INTO `t_area` VALUES ('540327', '昌都市', 'changdou', '左贡县', '901730', '西藏自治区', 'CDCDZG');
INSERT INTO `t_area` VALUES ('540328', '昌都市', 'changdou', '芒康县', '901731', '西藏自治区', 'CDCDMK');
INSERT INTO `t_area` VALUES ('540329', '昌都市', 'changdou', '洛隆县', '901732', '西藏自治区', 'CDCDLL');
INSERT INTO `t_area` VALUES ('540330', '昌都市', 'changdou', '边坝县', '901733', '西藏自治区', 'CDCDBB');
INSERT INTO `t_area` VALUES ('542221', '山南地区', 'shannandi', '乃东县', '901685', '西藏自治区', 'SNDSNDND');
INSERT INTO `t_area` VALUES ('542222', '山南地区', 'shannandi', '扎囊县', '901686', '西藏自治区', 'SNDSNDZN');
INSERT INTO `t_area` VALUES ('542223', '山南地区', 'shannandi', '贡嘎县', '901687', '西藏自治区', 'SNDSNDGG');
INSERT INTO `t_area` VALUES ('542224', '山南地区', 'shannandi', '桑日县', '901688', '西藏自治区', 'SNDSNDSR');
INSERT INTO `t_area` VALUES ('542225', '山南地区', 'shannandi', '琼结县', '901689', '西藏自治区', 'SNDSNDQJ');
INSERT INTO `t_area` VALUES ('542226', '山南地区', 'shannandi', '曲松县', '901690', '西藏自治区', 'SNDSNDQS');
INSERT INTO `t_area` VALUES ('542227', '山南地区', 'shannandi', '措美县', '901691', '西藏自治区', 'SNDSNDCM');
INSERT INTO `t_area` VALUES ('542228', '山南地区', 'shannandi', '洛扎县', '901692', '西藏自治区', 'SNDSNDLZ');
INSERT INTO `t_area` VALUES ('542229', '山南地区', 'shannandi', '加查县', '901693', '西藏自治区', 'SNDSNDJC');
INSERT INTO `t_area` VALUES ('542231', '山南地区', 'shannandi', '隆子县', '901694', '西藏自治区', 'SNDSNDLZ');
INSERT INTO `t_area` VALUES ('542232', '山南地区', 'shannandi', '错那县', '901695', '西藏自治区', 'SNDSNDCN');
INSERT INTO `t_area` VALUES ('542233', '山南地区', 'shannandi', '浪卡子县', '901696', '西藏自治区', 'SNDSNDLKZ');
INSERT INTO `t_area` VALUES ('542421', '那曲地区', 'neiqudi', '那曲县', '901712', '西藏自治区', 'NQDNQDNQ');
INSERT INTO `t_area` VALUES ('542422', '那曲地区', 'neiqudi', '嘉黎县', '901713', '西藏自治区', 'NQDNQDJL');
INSERT INTO `t_area` VALUES ('542423', '那曲地区', 'neiqudi', '比如县', '901714', '西藏自治区', 'NQDNQDBR');
INSERT INTO `t_area` VALUES ('542424', '那曲地区', 'neiqudi', '聂荣县', '901715', '西藏自治区', 'NQDNQDNR');
INSERT INTO `t_area` VALUES ('542425', '那曲地区', 'neiqudi', '安多县', '901716', '西藏自治区', 'NQDNQDAD');
INSERT INTO `t_area` VALUES ('542426', '那曲地区', 'neiqudi', '申扎县', '901717', '西藏自治区', 'NQDNQDSZ');
INSERT INTO `t_area` VALUES ('542427', '那曲地区', 'neiqudi', '索县', '901718', '西藏自治区', 'NQDNQDS');
INSERT INTO `t_area` VALUES ('542428', '那曲地区', 'neiqudi', '班戈县', '901719', '西藏自治区', 'NQDNQDBG');
INSERT INTO `t_area` VALUES ('542429', '那曲地区', 'neiqudi', '巴青县', '901720', '西藏自治区', 'NQDNQDBQ');
INSERT INTO `t_area` VALUES ('542430', '那曲地区', 'neiqudi', '尼玛县', '901721', '西藏自治区', 'NQDNQDNM');
INSERT INTO `t_area` VALUES ('542431', '那曲地区', 'neiqudi', '双湖县', '901722', '西藏自治区', 'NQDNQDSH');
INSERT INTO `t_area` VALUES ('542521', '阿里地区', 'alidi', '普兰县', '901734', '西藏自治区', 'ALDALDPL');
INSERT INTO `t_area` VALUES ('542522', '阿里地区', 'alidi', '札达县', '901735', '西藏自治区', 'ALDALDZD');
INSERT INTO `t_area` VALUES ('542523', '阿里地区', 'alidi', '噶尔县', '901736', '西藏自治区', 'ALDALDGE');
INSERT INTO `t_area` VALUES ('542524', '阿里地区', 'alidi', '日土县', '901737', '西藏自治区', 'ALDALDRT');
INSERT INTO `t_area` VALUES ('542525', '阿里地区', 'alidi', '革吉县', '901738', '西藏自治区', 'ALDALDGJ');
INSERT INTO `t_area` VALUES ('542526', '阿里地区', 'alidi', '改则县', '901739', '西藏自治区', 'ALDALDGZ');
INSERT INTO `t_area` VALUES ('542527', '阿里地区', 'alidi', '措勤县', '901740', '西藏自治区', 'ALDALDCQ');
INSERT INTO `t_area` VALUES ('542621', '林芝市', 'linzhi', '巴宜区', '901705', '西藏自治区', 'LZLZBY');
INSERT INTO `t_area` VALUES ('542622', '林芝市', 'linzhi', '工布江达县', '901706', '西藏自治区', 'LZLZGBJD');
INSERT INTO `t_area` VALUES ('542623', '林芝市', 'linzhi', '米林县', '901707', '西藏自治区', 'LZLZML');
INSERT INTO `t_area` VALUES ('542624', '林芝市', 'linzhi', '墨脱县', '901708', '西藏自治区', 'LZLZMT');
INSERT INTO `t_area` VALUES ('542625', '林芝市', 'linzhi', '波密县', '901709', '西藏自治区', 'LZLZBM');
INSERT INTO `t_area` VALUES ('542626', '林芝市', 'linzhi', '察隅县', '901710', '西藏自治区', 'LZLZCY');
INSERT INTO `t_area` VALUES ('542627', '林芝市', 'linzhi', '朗县', '901711', '西藏自治区', 'LZLZL');
INSERT INTO `t_area` VALUES ('610102', '西安市', 'xian', '新城区', '901963', '陕西省', 'XAXAXC');
INSERT INTO `t_area` VALUES ('610103', '西安市', 'xian', '碑林区', '901964', '陕西省', 'XAXABL');
INSERT INTO `t_area` VALUES ('610104', '西安市', 'xian', '莲湖区', '901965', '陕西省', 'XAXALH');
INSERT INTO `t_area` VALUES ('610111', '西安市', 'xian', '灞桥区', '901966', '陕西省', 'XAXABQ');
INSERT INTO `t_area` VALUES ('610112', '西安市', 'xian', '未央区', '901967', '陕西省', 'XAXAWY');
INSERT INTO `t_area` VALUES ('610113', '西安市', 'xian', '雁塔区', '901968', '陕西省', 'XAXAYT');
INSERT INTO `t_area` VALUES ('610114', '西安市', 'xian', '阎良区', '901969', '陕西省', 'XAXAYL');
INSERT INTO `t_area` VALUES ('610115', '西安市', 'xian', '临潼区', '901970', '陕西省', 'XAXALT');
INSERT INTO `t_area` VALUES ('610116', '西安市', 'xian', '长安区', '901971', '陕西省', 'XAXAZA');
INSERT INTO `t_area` VALUES ('610117', '西安市', 'xian', '高陵区', '901972', '陕西省', 'XAXAGL');
INSERT INTO `t_area` VALUES ('610122', '西安市', 'xian', '蓝田县', '901973', '陕西省', 'XAXALT');
INSERT INTO `t_area` VALUES ('610124', '西安市', 'xian', '周至县', '901974', '陕西省', 'XAXAZZ');
INSERT INTO `t_area` VALUES ('610125', '西安市', 'xian', '户县', '901975', '陕西省', 'XAXAH');
INSERT INTO `t_area` VALUES ('610202', '铜川市', 'tongchuan', '王益区', '901988', '陕西省', 'TCTCWY');
INSERT INTO `t_area` VALUES ('610203', '铜川市', 'tongchuan', '印台区', '901989', '陕西省', 'TCTCYT');
INSERT INTO `t_area` VALUES ('610204', '铜川市', 'tongchuan', '耀州区', '901990', '陕西省', 'TCTCYZ');
INSERT INTO `t_area` VALUES ('610222', '铜川市', 'tongchuan', '宜君县', '901991', '陕西省', 'TCTCYJ');
INSERT INTO `t_area` VALUES ('610302', '宝鸡市', 'baoji', '渭滨区', '902016', '陕西省', 'BJBJWB');
INSERT INTO `t_area` VALUES ('610303', '宝鸡市', 'baoji', '金台区', '902017', '陕西省', 'BJBJJT');
INSERT INTO `t_area` VALUES ('610304', '宝鸡市', 'baoji', '陈仓区', '902018', '陕西省', 'BJBJCC');
INSERT INTO `t_area` VALUES ('610322', '宝鸡市', 'baoji', '凤翔县', '902019', '陕西省', 'BJBJFX');
INSERT INTO `t_area` VALUES ('610323', '宝鸡市', 'baoji', '岐山县', '902020', '陕西省', 'BJBJQS');
INSERT INTO `t_area` VALUES ('610324', '宝鸡市', 'baoji', '扶风县', '902021', '陕西省', 'BJBJFF');
INSERT INTO `t_area` VALUES ('610326', '宝鸡市', 'baoji', '眉县', '902022', '陕西省', 'BJBJM');
INSERT INTO `t_area` VALUES ('610327', '宝鸡市', 'baoji', '陇县', '902023', '陕西省', 'BJBJL');
INSERT INTO `t_area` VALUES ('610328', '宝鸡市', 'baoji', '千阳县', '902024', '陕西省', 'BJBJQY');
INSERT INTO `t_area` VALUES ('610329', '宝鸡市', 'baoji', '麟游县', '902025', '陕西省', 'BJBJLY');
INSERT INTO `t_area` VALUES ('610330', '宝鸡市', 'baoji', '凤县', '902026', '陕西省', 'BJBJF');
INSERT INTO `t_area` VALUES ('610331', '宝鸡市', 'baoji', '太白县', '902027', '陕西省', 'BJBJTB');
INSERT INTO `t_area` VALUES ('610402', '咸阳市', 'xianyang', '秦都区', '902045', '陕西省', 'XYXYQD');
INSERT INTO `t_area` VALUES ('610403', '咸阳市', 'xianyang', '杨陵区', '902046', '陕西省', 'XYXYYL');
INSERT INTO `t_area` VALUES ('610404', '咸阳市', 'xianyang', '渭城区', '902047', '陕西省', 'XYXYWC');
INSERT INTO `t_area` VALUES ('610422', '咸阳市', 'xianyang', '三原县', '902048', '陕西省', 'XYXYSY');
INSERT INTO `t_area` VALUES ('610423', '咸阳市', 'xianyang', '泾阳县', '902049', '陕西省', 'XYXYJY');
INSERT INTO `t_area` VALUES ('610424', '咸阳市', 'xianyang', '乾县', '902050', '陕西省', 'XYXYQ');
INSERT INTO `t_area` VALUES ('610425', '咸阳市', 'xianyang', '礼泉县', '902051', '陕西省', 'XYXYLQ');
INSERT INTO `t_area` VALUES ('610426', '咸阳市', 'xianyang', '永寿县', '902052', '陕西省', 'XYXYYS');
INSERT INTO `t_area` VALUES ('610427', '咸阳市', 'xianyang', '彬县', '902053', '陕西省', 'XYXYB');
INSERT INTO `t_area` VALUES ('610428', '咸阳市', 'xianyang', '长武县', '902054', '陕西省', 'XYXYZW');
INSERT INTO `t_area` VALUES ('610429', '咸阳市', 'xianyang', '旬邑县', '902055', '陕西省', 'XYXYXY');
INSERT INTO `t_area` VALUES ('610430', '咸阳市', 'xianyang', '淳化县', '902056', '陕西省', 'XYXYCH');
INSERT INTO `t_area` VALUES ('610431', '咸阳市', 'xianyang', '武功县', '902057', '陕西省', 'XYXYWG');
INSERT INTO `t_area` VALUES ('610481', '咸阳市', 'xianyang', '兴平市', '902058', '陕西省', 'XYXYXP');
INSERT INTO `t_area` VALUES ('610502', '渭南市', 'weinan', '临渭区', '901952', '陕西省', 'WNWNLW');
INSERT INTO `t_area` VALUES ('610521', '渭南市', 'weinan', '华县', '901953', '陕西省', 'WNWNH');
INSERT INTO `t_area` VALUES ('610522', '渭南市', 'weinan', '潼关县', '901954', '陕西省', 'WNWNTG');
INSERT INTO `t_area` VALUES ('610523', '渭南市', 'weinan', '大荔县', '901955', '陕西省', 'WNWNDL');
INSERT INTO `t_area` VALUES ('610524', '渭南市', 'weinan', '合阳县', '901956', '陕西省', 'WNWNHY');
INSERT INTO `t_area` VALUES ('610525', '渭南市', 'weinan', '澄城县', '901957', '陕西省', 'WNWNCC');
INSERT INTO `t_area` VALUES ('610526', '渭南市', 'weinan', '蒲城县', '901958', '陕西省', 'WNWNPC');
INSERT INTO `t_area` VALUES ('610527', '渭南市', 'weinan', '白水县', '901959', '陕西省', 'WNWNBS');
INSERT INTO `t_area` VALUES ('610528', '渭南市', 'weinan', '富平县', '901960', '陕西省', 'WNWNFP');
INSERT INTO `t_area` VALUES ('610581', '渭南市', 'weinan', '韩城市', '901961', '陕西省', 'WNWNHC');
INSERT INTO `t_area` VALUES ('610582', '渭南市', 'weinan', '华阴市', '901962', '陕西省', 'WNWNHY');
INSERT INTO `t_area` VALUES ('610602', '延安市', 'yanan', '宝塔区', '902003', '陕西省', 'YAYABT');
INSERT INTO `t_area` VALUES ('610621', '延安市', 'yanan', '延长县', '902004', '陕西省', 'YAYAYZ');
INSERT INTO `t_area` VALUES ('610622', '延安市', 'yanan', '延川县', '902005', '陕西省', 'YAYAYC');
INSERT INTO `t_area` VALUES ('610623', '延安市', 'yanan', '子长县', '902006', '陕西省', 'YAYAZZ');
INSERT INTO `t_area` VALUES ('610624', '延安市', 'yanan', '安塞县', '902007', '陕西省', 'YAYAAS');
INSERT INTO `t_area` VALUES ('610625', '延安市', 'yanan', '志丹县', '902008', '陕西省', 'YAYAZD');
INSERT INTO `t_area` VALUES ('610626', '延安市', 'yanan', '吴起县', '902009', '陕西省', 'YAYAWQ');
INSERT INTO `t_area` VALUES ('610627', '延安市', 'yanan', '甘泉县', '902010', '陕西省', 'YAYAGQ');
INSERT INTO `t_area` VALUES ('610628', '延安市', 'yanan', '富县', '902011', '陕西省', 'YAYAF');
INSERT INTO `t_area` VALUES ('610629', '延安市', 'yanan', '洛川县', '902012', '陕西省', 'YAYALC');
INSERT INTO `t_area` VALUES ('610630', '延安市', 'yanan', '宜川县', '902013', '陕西省', 'YAYAYC');
INSERT INTO `t_area` VALUES ('610631', '延安市', 'yanan', '黄龙县', '902014', '陕西省', 'YAYAHL');
INSERT INTO `t_area` VALUES ('610632', '延安市', 'yanan', '黄陵县', '902015', '陕西省', 'YAYAHL');
INSERT INTO `t_area` VALUES ('610702', '汉中市', 'hanzhong', '汉台区', '901992', '陕西省', 'HZHZHT');
INSERT INTO `t_area` VALUES ('610721', '汉中市', 'hanzhong', '南郑县', '901993', '陕西省', 'HZHZNZ');
INSERT INTO `t_area` VALUES ('610722', '汉中市', 'hanzhong', '城固县', '901994', '陕西省', 'HZHZCG');
INSERT INTO `t_area` VALUES ('610723', '汉中市', 'hanzhong', '洋县', '901995', '陕西省', 'HZHZY');
INSERT INTO `t_area` VALUES ('610724', '汉中市', 'hanzhong', '西乡县', '901996', '陕西省', 'HZHZXX');
INSERT INTO `t_area` VALUES ('610725', '汉中市', 'hanzhong', '勉县', '901997', '陕西省', 'HZHZM');
INSERT INTO `t_area` VALUES ('610726', '汉中市', 'hanzhong', '宁强县', '901998', '陕西省', 'HZHZNQ');
INSERT INTO `t_area` VALUES ('610727', '汉中市', 'hanzhong', '略阳县', '901999', '陕西省', 'HZHZLY');
INSERT INTO `t_area` VALUES ('610728', '汉中市', 'hanzhong', '镇巴县', '902000', '陕西省', 'HZHZZB');
INSERT INTO `t_area` VALUES ('610729', '汉中市', 'hanzhong', '留坝县', '902001', '陕西省', 'HZHZLB');
INSERT INTO `t_area` VALUES ('610730', '汉中市', 'hanzhong', '佛坪县', '902002', '陕西省', 'HZHZFP');
INSERT INTO `t_area` VALUES ('610802', '榆林市', 'yulin', '榆阳区', '901976', '陕西省', 'YLYLYY');
INSERT INTO `t_area` VALUES ('610821', '榆林市', 'yulin', '神木县', '901977', '陕西省', 'YLYLSM');
INSERT INTO `t_area` VALUES ('610822', '榆林市', 'yulin', '府谷县', '901978', '陕西省', 'YLYLFG');
INSERT INTO `t_area` VALUES ('610823', '榆林市', 'yulin', '横山县', '901979', '陕西省', 'YLYLHS');
INSERT INTO `t_area` VALUES ('610824', '榆林市', 'yulin', '靖边县', '901980', '陕西省', 'YLYLJB');
INSERT INTO `t_area` VALUES ('610825', '榆林市', 'yulin', '定边县', '901981', '陕西省', 'YLYLDB');
INSERT INTO `t_area` VALUES ('610826', '榆林市', 'yulin', '绥德县', '901982', '陕西省', 'YLYLSD');
INSERT INTO `t_area` VALUES ('610827', '榆林市', 'yulin', '米脂县', '901983', '陕西省', 'YLYLMZ');
INSERT INTO `t_area` VALUES ('610828', '榆林市', 'yulin', '佳县', '901984', '陕西省', 'YLYLJ');
INSERT INTO `t_area` VALUES ('610829', '榆林市', 'yulin', '吴堡县', '901985', '陕西省', 'YLYLWB');
INSERT INTO `t_area` VALUES ('610830', '榆林市', 'yulin', '清涧县', '901986', '陕西省', 'YLYLQJ');
INSERT INTO `t_area` VALUES ('610831', '榆林市', 'yulin', '子洲县', '901987', '陕西省', 'YLYLZZ');
INSERT INTO `t_area` VALUES ('610902', '安康市', 'ankang', '汉滨区', '902035', '陕西省', 'AKAKHB');
INSERT INTO `t_area` VALUES ('610921', '安康市', 'ankang', '汉阴县', '902036', '陕西省', 'AKAKHY');
INSERT INTO `t_area` VALUES ('610922', '安康市', 'ankang', '石泉县', '902037', '陕西省', 'AKAKSQ');
INSERT INTO `t_area` VALUES ('610923', '安康市', 'ankang', '宁陕县', '902038', '陕西省', 'AKAKNS');
INSERT INTO `t_area` VALUES ('610924', '安康市', 'ankang', '紫阳县', '902039', '陕西省', 'AKAKZY');
INSERT INTO `t_area` VALUES ('610925', '安康市', 'ankang', '岚皋县', '902040', '陕西省', 'AKAKLG');
INSERT INTO `t_area` VALUES ('610926', '安康市', 'ankang', '平利县', '902041', '陕西省', 'AKAKPL');
INSERT INTO `t_area` VALUES ('610927', '安康市', 'ankang', '镇坪县', '902042', '陕西省', 'AKAKZP');
INSERT INTO `t_area` VALUES ('610928', '安康市', 'ankang', '旬阳县', '902043', '陕西省', 'AKAKXY');
INSERT INTO `t_area` VALUES ('610929', '安康市', 'ankang', '白河县', '902044', '陕西省', 'AKAKBH');
INSERT INTO `t_area` VALUES ('611002', '商洛市', 'shangluo', '商州区', '902028', '陕西省', 'SLSLSZ');
INSERT INTO `t_area` VALUES ('611021', '商洛市', 'shangluo', '洛南县', '902029', '陕西省', 'SLSLLN');
INSERT INTO `t_area` VALUES ('611022', '商洛市', 'shangluo', '丹凤县', '902030', '陕西省', 'SLSLDF');
INSERT INTO `t_area` VALUES ('611023', '商洛市', 'shangluo', '商南县', '902031', '陕西省', 'SLSLSN');
INSERT INTO `t_area` VALUES ('611024', '商洛市', 'shangluo', '山阳???', '902032', '陕西省', 'SLSLSY??');
INSERT INTO `t_area` VALUES ('611025', '商洛市', 'shangluo', '镇安县', '902033', '陕西省', 'SLSLZA');
INSERT INTO `t_area` VALUES ('611026', '商洛市', 'shangluo', '柞水县', '902034', '陕西省', 'SLSLZS');
INSERT INTO `t_area` VALUES ('620102', '兰州市', 'lanzhou', '城关区', '901160', '甘肃省', 'LZLZCG');
INSERT INTO `t_area` VALUES ('620103', '兰州市', 'lanzhou', '七里河区', '901161', '甘肃省', 'LZLZQLH');
INSERT INTO `t_area` VALUES ('620104', '兰州市', 'lanzhou', '西固区', '901162', '甘肃省', 'LZLZXG');
INSERT INTO `t_area` VALUES ('620105', '兰州市', 'lanzhou', '安宁区', '901163', '甘肃省', 'LZLZAN');
INSERT INTO `t_area` VALUES ('620111', '兰州市', 'lanzhou', '红古区', '901164', '甘肃省', 'LZLZHG');
INSERT INTO `t_area` VALUES ('620121', '兰州市', 'lanzhou', '永登县', '901165', '甘肃省', 'LZLZYD');
INSERT INTO `t_area` VALUES ('620122', '兰州市', 'lanzhou', '皋兰县', '901166', '甘肃省', 'LZLZGL');
INSERT INTO `t_area` VALUES ('620123', '兰州市', 'lanzhou', '榆中县', '901167', '甘肃省', 'LZLZYZ');
INSERT INTO `t_area` VALUES ('620302', '金昌市', 'jinchang', '金川区', '901122', '甘肃省', 'JCJCJC');
INSERT INTO `t_area` VALUES ('620321', '金昌市', 'jinchang', '永昌县', '901123', '甘肃省', 'JCJCYC');
INSERT INTO `t_area` VALUES ('620402', '白银市', 'baiyin', '白银区', '901147', '甘肃省', 'BYBYBY');
INSERT INTO `t_area` VALUES ('620403', '白银市', 'baiyin', '平川区', '901148', '甘肃省', 'BYBYPC');
INSERT INTO `t_area` VALUES ('620421', '白银市', 'baiyin', '靖远县', '901149', '甘肃省', 'BYBYJY');
INSERT INTO `t_area` VALUES ('620422', '白银市', 'baiyin', '会宁县', '901150', '甘肃省', 'BYBYHN');
INSERT INTO `t_area` VALUES ('620423', '白银市', 'baiyin', '景泰县', '901151', '甘肃省', 'BYBYJT');
INSERT INTO `t_area` VALUES ('620502', '天水市', 'tianshui', '秦州区', '901124', '甘肃省', 'TSTSQZ');
INSERT INTO `t_area` VALUES ('620503', '天水市', 'tianshui', '麦积区', '901125', '甘肃省', 'TSTSMJ');
INSERT INTO `t_area` VALUES ('620521', '天水市', 'tianshui', '清水县', '901126', '甘肃省', 'TSTSQS');
INSERT INTO `t_area` VALUES ('620522', '天水市', 'tianshui', '秦安县', '901127', '甘肃省', 'TSTSQA');
INSERT INTO `t_area` VALUES ('620523', '天水市', 'tianshui', '甘谷县', '901128', '甘肃省', 'TSTSGG');
INSERT INTO `t_area` VALUES ('620524', '天水市', 'tianshui', '武山县', '901129', '甘肃省', 'TSTSWS');
INSERT INTO `t_area` VALUES ('620525', '天水市', 'tianshui', '张家川回族自治县', '901130', '甘肃省', 'TSTSZJCHZZZ');
INSERT INTO `t_area` VALUES ('620602', '武威市', 'wuwei', '凉州区', '901204', '甘肃省', 'WWWWLZ');
INSERT INTO `t_area` VALUES ('620621', '武威市', 'wuwei', '民勤县', '901205', '甘肃省', 'WWWWMQ');
INSERT INTO `t_area` VALUES ('620622', '武威市', 'wuwei', '古浪县', '901206', '甘肃省', 'WWWWGL');
INSERT INTO `t_area` VALUES ('620623', '武威市', 'wuwei', '天祝藏族自治县', '901207', '甘肃省', 'WWWWTZZZZZ');
INSERT INTO `t_area` VALUES ('620702', '张掖市', 'zhangye', '甘州区', '901190', '甘肃省', 'ZYZYGZ');
INSERT INTO `t_area` VALUES ('620721', '张掖市', 'zhangye', '肃南裕固族自治县', '901191', '甘肃省', 'ZYZYSNYGZZZ');
INSERT INTO `t_area` VALUES ('620722', '张掖市', 'zhangye', '民乐县', '901192', '甘肃省', 'ZYZYML');
INSERT INTO `t_area` VALUES ('620723', '张掖市', 'zhangye', '临泽县', '901193', '甘肃省', 'ZYZYLZ');
INSERT INTO `t_area` VALUES ('620724', '张掖市', 'zhangye', '高台县', '901194', '甘肃省', 'ZYZYGT');
INSERT INTO `t_area` VALUES ('620725', '张掖市', 'zhangye', '山丹县', '901195', '甘肃省', 'ZYZYSD');
INSERT INTO `t_area` VALUES ('620802', '平凉市', 'pingliang', '崆峒区', '901175', '甘肃省', 'PLPLKT');
INSERT INTO `t_area` VALUES ('620821', '平凉市', 'pingliang', '泾川县', '901176', '甘肃省', 'PLPLJC');
INSERT INTO `t_area` VALUES ('620822', '平凉市', 'pingliang', '灵台县', '901177', '甘肃省', 'PLPLLT');
INSERT INTO `t_area` VALUES ('620823', '平凉市', 'pingliang', '崇信县', '901178', '甘肃省', 'PLPLCX');
INSERT INTO `t_area` VALUES ('620824', '平凉市', 'pingliang', '华亭县', '901179', '甘肃省', 'PLPLHT');
INSERT INTO `t_area` VALUES ('620825', '平凉市', 'pingliang', '庄浪县', '901180', '甘肃省', 'PLPLZL');
INSERT INTO `t_area` VALUES ('620826', '平凉市', 'pingliang', '静宁县', '901181', '甘肃省', 'PLPLJN');
INSERT INTO `t_area` VALUES ('620902', '酒泉市', 'jiuquan', '肃州区', '901131', '甘肃省', 'JQJQSZ');
INSERT INTO `t_area` VALUES ('620921', '酒泉市', 'jiuquan', '金塔县', '901132', '甘肃省', 'JQJQJT');
INSERT INTO `t_area` VALUES ('620922', '酒泉市', 'jiuquan', '瓜州县', '901133', '甘肃省', 'JQJQGZ');
INSERT INTO `t_area` VALUES ('620923', '酒泉市', 'jiuquan', '肃北蒙古族自治县', '901134', '甘肃省', 'JQJQSBMGZZZ');
INSERT INTO `t_area` VALUES ('620924', '酒泉市', 'jiuquan', '阿克塞哈萨克族自治县', '901135', '甘肃省', 'JQJQAKSHSKZZZ');
INSERT INTO `t_area` VALUES ('620981', '酒泉市', 'jiuquan', '玉门市', '901136', '甘肃省', 'JQJQYM');
INSERT INTO `t_area` VALUES ('620982', '酒泉市', 'jiuquan', '敦煌市', '901137', '甘肃省', 'JQJQDH');
INSERT INTO `t_area` VALUES ('621002', '庆阳市', 'qingyang', '西峰区', '901152', '甘肃省', 'QYQYXF');
INSERT INTO `t_area` VALUES ('621021', '庆阳市', 'qingyang', '庆城县', '901153', '甘肃省', 'QYQYQC');
INSERT INTO `t_area` VALUES ('621022', '庆阳市', 'qingyang', '环县', '901154', '甘肃省', 'QYQYH');
INSERT INTO `t_area` VALUES ('621023', '庆阳市', 'qingyang', '华池县', '901155', '甘肃省', 'QYQYHC');
INSERT INTO `t_area` VALUES ('621024', '庆阳市', 'qingyang', '合水县', '901156', '甘肃省', 'QYQYHS');
INSERT INTO `t_area` VALUES ('621025', '庆阳市', 'qingyang', '正宁县', '901157', '甘肃省', 'QYQYZN');
INSERT INTO `t_area` VALUES ('621026', '庆阳市', 'qingyang', '宁县', '901158', '甘肃省', 'QYQYN');
INSERT INTO `t_area` VALUES ('621027', '庆阳市', 'qingyang', '镇原县', '901159', '甘肃省', 'QYQYZY');
INSERT INTO `t_area` VALUES ('621102', '定西市', 'dingxi', '安定区', '901168', '甘肃省', 'DXDXAD');
INSERT INTO `t_area` VALUES ('621121', '定西市', 'dingxi', '通渭县', '901169', '甘肃省', 'DXDXTW');
INSERT INTO `t_area` VALUES ('621122', '定西市', 'dingxi', '陇西县', '901170', '甘肃省', 'DXDXLX');
INSERT INTO `t_area` VALUES ('621123', '定西市', 'dingxi', '渭源县', '901171', '甘肃省', 'DXDXWY');
INSERT INTO `t_area` VALUES ('621124', '定西市', 'dingxi', '临洮县', '901172', '甘肃省', 'DXDXLT');
INSERT INTO `t_area` VALUES ('621125', '定西市', 'dingxi', '漳县', '901173', '甘肃省', 'DXDXZ');
INSERT INTO `t_area` VALUES ('621126', '定西市', 'dingxi', '岷县', '901174', '甘肃省', 'DXDXM');
INSERT INTO `t_area` VALUES ('621202', '陇南市', 'longnan', '武都区', '901138', '甘肃省', 'LNLNWD');
INSERT INTO `t_area` VALUES ('621221', '陇南市', 'longnan', '成县', '901139', '甘肃省', 'LNLNC');
INSERT INTO `t_area` VALUES ('621222', '陇南市', 'longnan', '文县', '901140', '甘肃省', 'LNLNW');
INSERT INTO `t_area` VALUES ('621223', '陇南市', 'longnan', '宕昌县', '901141', '甘肃省', 'LNLNDC');
INSERT INTO `t_area` VALUES ('621224', '陇南市', 'longnan', '康县', '901142', '甘肃省', 'LNLNK');
INSERT INTO `t_area` VALUES ('621225', '陇南市', 'longnan', '西和县', '901143', '甘肃省', 'LNLNXH');
INSERT INTO `t_area` VALUES ('621226', '陇南市', 'longnan', '礼县', '901144', '甘肃省', 'LNLNL');
INSERT INTO `t_area` VALUES ('621227', '陇南市', 'longnan', '徽县', '901145', '甘肃省', 'LNLNH');
INSERT INTO `t_area` VALUES ('621228', '陇南市', 'longnan', '两当县', '901146', '甘肃省', 'LNLNLD');
INSERT INTO `t_area` VALUES ('622901', '临夏回族自治州', 'linxiahuizuzizhi', '临夏市', '901196', '甘肃省', 'LXHZZZLXHZZZLX');
INSERT INTO `t_area` VALUES ('622921', '临夏回族自治州', 'linxiahuizuzizhi', '临夏县', '901197', '甘肃省', 'LXHZZZLXHZZZLX');
INSERT INTO `t_area` VALUES ('622922', '临夏回族自治州', 'linxiahuizuzizhi', '康乐县', '901198', '甘肃省', 'LXHZZZLXHZZZKL');
INSERT INTO `t_area` VALUES ('622923', '临夏回族自治州', 'linxiahuizuzizhi', '永靖县', '901199', '甘肃省', 'LXHZZZLXHZZZYJ');
INSERT INTO `t_area` VALUES ('622924', '临夏回族自治州', 'linxiahuizuzizhi', '广河县', '901200', '甘肃省', 'LXHZZZLXHZZZGH');
INSERT INTO `t_area` VALUES ('622925', '临夏回族自治州', 'linxiahuizuzizhi', '和政县', '901201', '甘肃省', 'LXHZZZLXHZZZHZ');
INSERT INTO `t_area` VALUES ('622926', '临夏回族自治州', 'linxiahuizuzizhi', '东乡族自治县', '901202', '甘肃省', 'LXHZZZLXHZZZDXZZZ');
INSERT INTO `t_area` VALUES ('622927', '临夏回族自治州', 'linxiahuizuzizhi', '积石山保安族东乡族撒拉族自治县', '901203', '甘肃省', 'LXHZZZLXHZZZJSSBAZDXZSLZZZ');
INSERT INTO `t_area` VALUES ('623001', '甘南藏族自治州', 'gannanzangzuzizhi', '合作市', '901182', '甘肃省', 'GNZZZZGNZZZZHZ');
INSERT INTO `t_area` VALUES ('623021', '甘南藏族自治州', 'gannanzangzuzizhi', '临潭县', '901183', '甘肃省', 'GNZZZZGNZZZZLT');
INSERT INTO `t_area` VALUES ('623022', '甘南藏族自治州', 'gannanzangzuzizhi', '卓尼县', '901184', '甘肃省', 'GNZZZZGNZZZZZN');
INSERT INTO `t_area` VALUES ('623023', '甘南藏族自治州', 'gannanzangzuzizhi', '舟曲县', '901185', '甘肃省', 'GNZZZZGNZZZZZQ');
INSERT INTO `t_area` VALUES ('623024', '甘南藏族自治州', 'gannanzangzuzizhi', '迭部县', '901186', '甘肃省', 'GNZZZZGNZZZZDB');
INSERT INTO `t_area` VALUES ('623025', '甘南藏族自治州', 'gannanzangzuzizhi', '玛曲县', '901187', '甘肃省', 'GNZZZZGNZZZZMQ');
INSERT INTO `t_area` VALUES ('623026', '甘南藏族自治州', 'gannanzangzuzizhi', '碌曲县', '901188', '甘肃省', 'GNZZZZGNZZZZLQ');
INSERT INTO `t_area` VALUES ('623027', '甘南藏族自治州', 'gannanzangzuzizhi', '夏河县', '901189', '甘肃省', 'GNZZZZGNZZZZXH');
INSERT INTO `t_area` VALUES ('630102', '西宁市', 'xining', '城东区', '900005', '青海省', 'XNXNCD');
INSERT INTO `t_area` VALUES ('630103', '西宁市', 'xining', '城中区', '900006', '青海省', 'XNXNCZ');
INSERT INTO `t_area` VALUES ('630104', '西宁市', 'xining', '城西区', '900007', '青海省', 'XNXNCX');
INSERT INTO `t_area` VALUES ('630105', '西宁市', 'xining', '城北区', '900008', '青海省', 'XNXNCB');
INSERT INTO `t_area` VALUES ('630121', '西宁市', 'xining', '大通回族土族自治县', '900009', '青海省', 'XNXNDTHZTZZZ');
INSERT INTO `t_area` VALUES ('630122', '西宁市', 'xining', '湟中县', '900010', '青海省', 'XNXNHZ');
INSERT INTO `t_area` VALUES ('630123', '西宁市', 'xining', '湟源县', '900011', '青海省', 'XNXNHY');
INSERT INTO `t_area` VALUES ('630202', '海东市', 'haidong', '乐都区', '900018', '青海省', 'HDHDLD');
INSERT INTO `t_area` VALUES ('630203', '海东市', 'haidong', '平安区', '900019', '青海省', 'HDHDPA');
INSERT INTO `t_area` VALUES ('630222', '海东市', 'haidong', '民和回族土族自治县', '900020', '青海省', 'HDHDMHHZTZZZ');
INSERT INTO `t_area` VALUES ('630223', '海东市', 'haidong', '互助土族自治县', '900021', '青海省', 'HDHDHZTZZZ');
INSERT INTO `t_area` VALUES ('630224', '海东市', 'haidong', '化隆回族自治县', '900022', '青海省', 'HDHDHLHZZZ');
INSERT INTO `t_area` VALUES ('630225', '海东市', 'haidong', '循化撒拉族自治县', '900023', '青海省', 'HDHDXHSLZZZ');
INSERT INTO `t_area` VALUES ('632221', '海北藏族自治州', 'haibeizangzuzizhi', '门源回族自治县', '900001', '青海省', 'HBZZZZHBZZZZMYHZZZ');
INSERT INTO `t_area` VALUES ('632222', '海北藏族自治州', 'haibeizangzuzizhi', '祁连县', '900002', '青海省', 'HBZZZZHBZZZZQL');
INSERT INTO `t_area` VALUES ('632223', '海北藏族自治州', 'haibeizangzuzizhi', '海晏县', '900003', '青海省', 'HBZZZZHBZZZZHY');
INSERT INTO `t_area` VALUES ('632224', '海北藏族自治州', 'haibeizangzuzizhi', '刚察县', '900004', '青海省', 'HBZZZZHBZZZZGC');
INSERT INTO `t_area` VALUES ('632321', '黄南藏族自治州', 'huangnanzangzuzizhi', '同仁县', '900024', '青海省', 'HNZZZZHNZZZZTR');
INSERT INTO `t_area` VALUES ('632322', '黄南藏族自治州', 'huangnanzangzuzizhi', '尖扎县', '900025', '青海省', 'HNZZZZHNZZZZJZ');
INSERT INTO `t_area` VALUES ('632323', '黄南藏族自治州', 'huangnanzangzuzizhi', '泽库县', '900026', '青海省', 'HNZZZZHNZZZZZK');
INSERT INTO `t_area` VALUES ('632324', '黄南藏族自治州', 'huangnanzangzuzizhi', '河南蒙古族自治县', '900027', '青海省', 'HNZZZZHNZZZZHNMGZZZ');
INSERT INTO `t_area` VALUES ('632521', '海南藏族自治州', 'hainanzangzuzizhi', '共和县', '900040', '青海省', 'HNZZZZHNZZZZGH');
INSERT INTO `t_area` VALUES ('632522', '海南藏族自治州', 'hainanzangzuzizhi', '同德县', '900041', '青海省', 'HNZZZZHNZZZZTD');
INSERT INTO `t_area` VALUES ('632523', '海南藏族自治州', 'hainanzangzuzizhi', '贵德县', '900042', '青海省', 'HNZZZZHNZZZZGD');
INSERT INTO `t_area` VALUES ('632524', '海南藏族自治州', 'hainanzangzuzizhi', '兴海县', '900043', '青海省', 'HNZZZZHNZZZZXH');
INSERT INTO `t_area` VALUES ('632525', '海南藏族自治州', 'hainanzangzuzizhi', '贵南县', '900044', '青海省', 'HNZZZZHNZZZZGN');
INSERT INTO `t_area` VALUES ('632621', '果洛藏族自治州', 'guoluozangzuzizhi', '玛沁县', '900028', '青海省', 'GLZZZZGLZZZZMQ');
INSERT INTO `t_area` VALUES ('632622', '果洛藏族自治州', 'guoluozangzuzizhi', '班玛县', '900029', '青海省', 'GLZZZZGLZZZZBM');
INSERT INTO `t_area` VALUES ('632623', '果洛藏族自治州', 'guoluozangzuzizhi', '甘德县', '900030', '青海省', 'GLZZZZGLZZZZGD');
INSERT INTO `t_area` VALUES ('632624', '果洛藏族自治州', 'guoluozangzuzizhi', '达日县', '900031', '青海省', 'GLZZZZGLZZZZDR');
INSERT INTO `t_area` VALUES ('632625', '果洛藏族自治州', 'guoluozangzuzizhi', '久治县', '900032', '青海省', 'GLZZZZGLZZZZJZ');
INSERT INTO `t_area` VALUES ('632626', '果洛藏族自治州', 'guoluozangzuzizhi', '玛多县', '900033', '青海省', 'GLZZZZGLZZZZMD');
INSERT INTO `t_area` VALUES ('632701', '玉树藏族自治州', 'yushuzangzuzizhi', '玉树市', '900034', '青海省', 'YSZZZZYSZZZZYS');
INSERT INTO `t_area` VALUES ('632722', '玉树藏族自治州', 'yushuzangzuzizhi', '杂多县', '900035', '青海省', 'YSZZZZYSZZZZZD');
INSERT INTO `t_area` VALUES ('632723', '玉树藏族自治州', 'yushuzangzuzizhi', '称多县', '900036', '青海省', 'YSZZZZYSZZZZCD');
INSERT INTO `t_area` VALUES ('632724', '玉树藏族自治州', 'yushuzangzuzizhi', '治多县', '900037', '青海省', 'YSZZZZYSZZZZZD');
INSERT INTO `t_area` VALUES ('632725', '玉树藏族自治州', 'yushuzangzuzizhi', '囊谦县', '900038', '青海省', 'YSZZZZYSZZZZNQ');
INSERT INTO `t_area` VALUES ('632726', '玉树藏族自治州', 'yushuzangzuzizhi', '曲麻莱县', '900039', '青海省', 'YSZZZZYSZZZZQML');
INSERT INTO `t_area` VALUES ('632801', '海西蒙古族藏族自治州', 'haiximengguzuzangzuzizhi', '格尔木市', '900012', '青海省', 'HXMGZZZZZHXMGZZZZZGEM');
INSERT INTO `t_area` VALUES ('632802', '海西蒙古族藏族自治州', 'haiximengguzuzangzuzizhi', '德令哈市', '900013', '青海省', 'HXMGZZZZZHXMGZZZZZDLH');
INSERT INTO `t_area` VALUES ('632821', '海西蒙古族藏族自治州', 'haiximengguzuzangzuzizhi', '乌兰县', '900014', '青海省', 'HXMGZZZZZHXMGZZZZZWL');
INSERT INTO `t_area` VALUES ('632822', '海西蒙古族藏族自治州', 'haiximengguzuzangzuzizhi', '都兰县', '900015', '青海省', 'HXMGZZZZZHXMGZZZZZDL');
INSERT INTO `t_area` VALUES ('632823', '海西蒙古族藏族自治州', 'haiximengguzuzangzuzizhi', '天峻县', '900016', '青海省', 'HXMGZZZZZHXMGZZZZZTJ');
INSERT INTO `t_area` VALUES ('632825', '海西蒙古族藏族自治州', 'haiximengguzuzangzuzizhi', '海西蒙古族藏族自治州直辖', '900017', '青海省', 'HXMGZZZZZHXMGZZZZZHXMGZZZZZZZ');
INSERT INTO `t_area` VALUES ('640104', '银川市', 'yinchuan', '兴庆区', '900257', '宁夏回族自治区', 'YCYCXQ');
INSERT INTO `t_area` VALUES ('640105', '银川市', 'yinchuan', '西夏区', '900258', '宁夏回族自治区', 'YCYCXX');
INSERT INTO `t_area` VALUES ('640106', '银川市', 'yinchuan', '金凤区', '900259', '宁夏回族自治区', 'YCYCJF');
INSERT INTO `t_area` VALUES ('640121', '银川市', 'yinchuan', '永宁县', '900260', '宁夏回族自治区', 'YCYCYN');
INSERT INTO `t_area` VALUES ('640122', '银川市', 'yinchuan', '贺兰县', '900261', '宁夏回族自治区', 'YCYCHL');
INSERT INTO `t_area` VALUES ('640181', '银川市', 'yinchuan', '灵武市', '900262', '宁夏回族自治区', 'YCYCLW');
INSERT INTO `t_area` VALUES ('640202', '石嘴山市', 'shizuishan', '大武口区', '900246', '宁夏回族自治区', 'SZSSZSDWK');
INSERT INTO `t_area` VALUES ('640205', '石嘴山市', 'shizuishan', '惠农区', '900247', '宁夏回族自治区', 'SZSSZSHN');
INSERT INTO `t_area` VALUES ('640221', '石嘴山市', 'shizuishan', '平罗县', '900248', '宁夏回族自治区', 'SZSSZSPL');
INSERT INTO `t_area` VALUES ('640302', '吴忠市', 'wuzhong', '利通区', '900249', '宁夏回族自治区', 'WZWZLT');
INSERT INTO `t_area` VALUES ('640303', '吴忠市', 'wuzhong', '红寺堡区', '900250', '宁夏回族自治区', 'WZWZHSB');
INSERT INTO `t_area` VALUES ('640323', '吴忠市', 'wuzhong', '盐池县', '900251', '宁夏回族自治区', 'WZWZYC');
INSERT INTO `t_area` VALUES ('640324', '吴忠市', 'wuzhong', '同心县', '900252', '宁夏回族自治区', 'WZWZTX');
INSERT INTO `t_area` VALUES ('640381', '吴忠市', 'wuzhong', '青铜峡市', '900253', '宁夏回族自治区', 'WZWZQTX');
INSERT INTO `t_area` VALUES ('640402', '固原市', 'guyuan', '原州区', '900241', '宁夏回族自治区', 'GYGYYZ');
INSERT INTO `t_area` VALUES ('640422', '固原市', 'guyuan', '西吉县', '900242', '宁夏回族自治区', 'GYGYXJ');
INSERT INTO `t_area` VALUES ('640423', '固原市', 'guyuan', '隆德县', '900243', '宁夏回族自治区', 'GYGYLD');
INSERT INTO `t_area` VALUES ('640424', '固原市', 'guyuan', '泾源县', '900244', '宁夏回族自治区', 'GYGYJY');
INSERT INTO `t_area` VALUES ('640425', '固原市', 'guyuan', '彭阳县', '900245', '宁夏回族自治区', 'GYGYPY');
INSERT INTO `t_area` VALUES ('640502', '中卫市', 'zhongwei', '沙坡头区', '900254', '宁夏回族自治区', 'ZWZWSPT');
INSERT INTO `t_area` VALUES ('640521', '中卫市', 'zhongwei', '中宁县', '900255', '宁夏回族自治区', 'ZWZWZN');
INSERT INTO `t_area` VALUES ('640522', '中卫市', 'zhongwei', '海原县', '900256', '宁夏回族自治区', 'ZWZWHY');
INSERT INTO `t_area` VALUES ('650102', '乌鲁木齐市', 'wulumuqi', '天山区', '900054', '新疆维吾尔自治区', 'WLMQWLMQTS');
INSERT INTO `t_area` VALUES ('650103', '乌鲁木齐市', 'wulumuqi', '沙依巴克区', '900055', '新疆维吾尔自治区', 'WLMQWLMQSYBK');
INSERT INTO `t_area` VALUES ('650104', '乌鲁木齐市', 'wulumuqi', '新市区', '900056', '新疆维吾尔自治区', 'WLMQWLMQXS');
INSERT INTO `t_area` VALUES ('650105', '乌鲁木齐市', 'wulumuqi', '水磨沟区', '900057', '新疆维吾尔自治区', 'WLMQWLMQSMG');
INSERT INTO `t_area` VALUES ('650106', '乌鲁木齐市', 'wulumuqi', '头屯河区', '900058', '新疆维吾尔自治区', 'WLMQWLMQTTH');
INSERT INTO `t_area` VALUES ('650107', '乌鲁木齐市', 'wulumuqi', '达坂城区', '900059', '新疆维吾尔自治区', 'WLMQWLMQDBC');
INSERT INTO `t_area` VALUES ('650109', '乌鲁木齐市', 'wulumuqi', '米东区', '900060', '新疆维吾尔自治区', 'WLMQWLMQMD');
INSERT INTO `t_area` VALUES ('650121', '乌鲁木齐市', 'wulumuqi', '乌鲁木齐县', '900061', '新疆维吾尔自治区', 'WLMQWLMQWLMQ');
INSERT INTO `t_area` VALUES ('650202', '克拉玛依市', 'kelamayi', '独山子区', '900137', '新疆维吾尔自治区', 'KLMYKLMYDSZ');
INSERT INTO `t_area` VALUES ('650203', '克拉玛依市', 'kelamayi', '克拉玛依区', '900138', '新疆维吾尔自治区', 'KLMYKLMYKLMY');
INSERT INTO `t_area` VALUES ('650204', '克拉玛依市', 'kelamayi', '白碱滩区', '900139', '新疆维吾尔自治区', 'KLMYKLMYBJT');
INSERT INTO `t_area` VALUES ('650205', '克拉玛依市', 'kelamayi', '乌尔禾区', '900140', '新疆维吾尔自治区', 'KLMYKLMYWEH');
INSERT INTO `t_area` VALUES ('652101', '吐鲁番市', 'tulufan', '高昌区', '900073', '新疆维吾尔自治区', 'TLFTLFGC');
INSERT INTO `t_area` VALUES ('652122', '吐鲁番市', 'tulufan', '鄯善县', '900074', '新疆维吾尔自治区', 'TLFTLFSS');
INSERT INTO `t_area` VALUES ('652123', '吐鲁番市', 'tulufan', '托克逊县', '900075', '新疆维吾尔自治区', 'TLFTLFTKX');
INSERT INTO `t_area` VALUES ('652201', '哈密地区', 'hamidi', '哈密市', '900134', '新疆维吾尔自治区', 'HMDHMDHM');
INSERT INTO `t_area` VALUES ('652222', '哈密地区', 'hamidi', '巴里坤哈萨克自治县', '900135', '新疆维吾尔自治区', 'HMDHMDBLKHSKZZ');
INSERT INTO `t_area` VALUES ('652223', '哈密地区', 'hamidi', '伊吾县', '900136', '新疆维吾尔自治区', 'HMDHMDYW');
INSERT INTO `t_area` VALUES ('652301', '昌吉回族自治州', 'changjihuizuzizhi', '昌吉市', '900066', '新疆维吾尔自治区', 'CJHZZZCJHZZZCJ');
INSERT INTO `t_area` VALUES ('652302', '昌吉回族自治州', 'changjihuizuzizhi', '阜康市', '900067', '新疆维吾尔自治区', 'CJHZZZCJHZZZFK');
INSERT INTO `t_area` VALUES ('652323', '昌吉回族自治州', 'changjihuizuzizhi', '呼图壁县', '900068', '新疆维吾尔自治区', 'CJHZZZCJHZZZHTB');
INSERT INTO `t_area` VALUES ('652324', '昌吉回族自治州', 'changjihuizuzizhi', '玛纳斯县', '900069', '新疆维吾尔自治区', 'CJHZZZCJHZZZMNS');
INSERT INTO `t_area` VALUES ('652325', '昌吉回族自治州', 'changjihuizuzizhi', '奇台县', '900070', '新疆维吾尔自治区', 'CJHZZZCJHZZZQT');
INSERT INTO `t_area` VALUES ('652327', '昌吉回族自治州', 'changjihuizuzizhi', '吉木萨尔县', '900071', '新疆维吾尔自治区', 'CJHZZZCJHZZZJMSE');
INSERT INTO `t_area` VALUES ('652328', '昌吉回族自治州', 'changjihuizuzizhi', '木垒哈萨克自治县', '900072', '新疆维吾尔自治区', 'CJHZZZCJHZZZMLHSKZZ');
INSERT INTO `t_area` VALUES ('652701', '博尔塔拉蒙古自治州', 'boertalamengguzizhi', '博乐市', '900109', '新疆维吾尔自治区', 'BETLMGZZBETLMGZZBL');
INSERT INTO `t_area` VALUES ('652702', '博尔塔拉蒙古自治州', 'boertalamengguzizhi', '阿拉山口市', '900110', '新疆维吾尔自治区', 'BETLMGZZBETLMGZZALSK');
INSERT INTO `t_area` VALUES ('652722', '博尔塔拉蒙古自治州', 'boertalamengguzizhi', '精河县', '900111', '新疆维吾尔自治区', 'BETLMGZZBETLMGZZJH');
INSERT INTO `t_area` VALUES ('652723', '博尔塔拉蒙古自治州', 'boertalamengguzizhi', '温泉县', '900112', '新疆维吾尔自治区', 'BETLMGZZBETLMGZZWQ');
INSERT INTO `t_area` VALUES ('652801', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '库尔勒市', '900125', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZKEL');
INSERT INTO `t_area` VALUES ('652822', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '轮台县', '900126', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZLT');
INSERT INTO `t_area` VALUES ('652823', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '尉犁县', '900127', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZWL');
INSERT INTO `t_area` VALUES ('652824', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '若羌县', '900128', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZRQ');
INSERT INTO `t_area` VALUES ('652825', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '且末县', '900129', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZQM');
INSERT INTO `t_area` VALUES ('652826', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '焉耆回族自治县', '900130', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZYQHZZZ');
INSERT INTO `t_area` VALUES ('652827', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '和静县', '900131', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZHJ');
INSERT INTO `t_area` VALUES ('652828', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '和硕县', '900132', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZHS');
INSERT INTO `t_area` VALUES ('652829', '巴音郭楞蒙古自治州', 'bayinguolengmengguzizhi', '博湖县', '900133', '新疆维吾尔自治区', 'BYGLMGZZBYGLMGZZBH');
INSERT INTO `t_area` VALUES ('652901', '阿克苏地区', 'akesudi', '阿克苏市', '900045', '新疆维吾尔自治区', 'AKSDAKSDAKS');
INSERT INTO `t_area` VALUES ('652922', '阿克苏地区', 'akesudi', '温宿县', '900046', '新疆维吾尔自治区', 'AKSDAKSDWS');
INSERT INTO `t_area` VALUES ('652923', '阿克苏地区', 'akesudi', '库车县', '900047', '新疆维吾尔自治区', 'AKSDAKSDKC');
INSERT INTO `t_area` VALUES ('652924', '阿克苏地区', 'akesudi', '沙雅县', '900048', '新疆维吾尔自治区', 'AKSDAKSDSY');
INSERT INTO `t_area` VALUES ('652925', '阿克苏地区', 'akesudi', '新和县', '900049', '新疆维吾尔自治区', 'AKSDAKSDXH');
INSERT INTO `t_area` VALUES ('652926', '阿克苏地区', 'akesudi', '拜城县', '900050', '新疆维吾尔自治区', 'AKSDAKSDBC');
INSERT INTO `t_area` VALUES ('652927', '阿克苏地区', 'akesudi', '乌什县', '900051', '新疆维吾尔自治区', 'AKSDAKSDWS');
INSERT INTO `t_area` VALUES ('652928', '阿克苏地区', 'akesudi', '阿瓦提县', '900052', '新疆维吾尔自治区', 'AKSDAKSDAWT');
INSERT INTO `t_area` VALUES ('652929', '阿克苏地区', 'akesudi', '柯坪县', '900053', '新疆维吾尔自治区', 'AKSDAKSDKP');
INSERT INTO `t_area` VALUES ('653001', '克孜勒苏柯尔克孜自治州', 'kezilesukeerkezizizhi', '阿图什市', '900062', '新疆维吾尔自治区', 'KZLSKEKZZZKZLSKEKZZZATS');
INSERT INTO `t_area` VALUES ('653022', '克孜勒苏柯尔克孜自治州', 'kezilesukeerkezizizhi', '阿克陶县', '900063', '新疆维吾尔自治区', 'KZLSKEKZZZKZLSKEKZZZAKT');
INSERT INTO `t_area` VALUES ('653023', '克孜勒苏柯尔克孜自治州', 'kezilesukeerkezizizhi', '阿合奇县', '900064', '新疆维吾尔自治区', 'KZLSKEKZZZKZLSKEKZZZAHQ');
INSERT INTO `t_area` VALUES ('653024', '克孜勒苏柯尔克孜自治州', 'kezilesukeerkezizizhi', '乌恰县', '900065', '新疆维吾尔自治区', 'KZLSKEKZZZKZLSKEKZZZWQ');
INSERT INTO `t_area` VALUES ('653101', '喀什地区', 'kashendi', '喀什市', '900113', '新疆维吾尔自治区', 'KSDKSDKS');
INSERT INTO `t_area` VALUES ('653121', '喀什地区', 'kashendi', '疏附县', '900114', '新疆维吾尔自治区', 'KSDKSDSF');
INSERT INTO `t_area` VALUES ('653122', '喀什地区', 'kashendi', '疏勒县', '900115', '新疆维吾尔自治区', 'KSDKSDSL');
INSERT INTO `t_area` VALUES ('653123', '喀什地区', 'kashendi', '英吉沙县', '900116', '新疆维吾尔自治区', 'KSDKSDYJS');
INSERT INTO `t_area` VALUES ('653124', '喀什地区', 'kashendi', '泽普县', '900117', '新疆维吾尔自治区', 'KSDKSDZP');
INSERT INTO `t_area` VALUES ('653125', '喀什地区', 'kashendi', '莎车县', '900118', '新疆维吾尔自治区', 'KSDKSDSC');
INSERT INTO `t_area` VALUES ('653126', '喀什地区', 'kashendi', '叶城县', '900119', '新疆维吾尔自治区', 'KSDKSDYC');
INSERT INTO `t_area` VALUES ('653127', '喀什地区', 'kashendi', '麦盖提县', '900120', '新疆维吾尔自治区', 'KSDKSDMGT');
INSERT INTO `t_area` VALUES ('653128', '喀什地区', 'kashendi', '岳普湖县', '900121', '新疆维吾尔自治区', 'KSDKSDYPH');
INSERT INTO `t_area` VALUES ('653129', '喀什地区', 'kashendi', '伽师县', '900122', '新疆维吾尔自治区', 'KSDKSDJS');
INSERT INTO `t_area` VALUES ('653130', '喀什地区', 'kashendi', '巴楚县', '900123', '新疆维吾尔自治区', 'KSDKSDBC');
INSERT INTO `t_area` VALUES ('653131', '喀什地区', 'kashendi', '塔什库尔干塔吉克自治县', '900124', '新疆维吾尔自治区', 'KSDKSDTSKEGTJKZZ');
INSERT INTO `t_area` VALUES ('653201', '和田地区', 'hetiandi', '和田市', '900076', '新疆维吾尔自治区', 'HTDHTDHT');
INSERT INTO `t_area` VALUES ('653221', '和田地区', 'hetiandi', '和田县', '900077', '新疆维吾尔自治区', 'HTDHTDHT');
INSERT INTO `t_area` VALUES ('653222', '和田地区', 'hetiandi', '墨玉县', '900078', '新疆维吾尔自治区', 'HTDHTDMY');
INSERT INTO `t_area` VALUES ('653223', '和田地区', 'hetiandi', '皮山县', '900079', '新疆维吾尔自治区', 'HTDHTDPS');
INSERT INTO `t_area` VALUES ('653224', '和田地区', 'hetiandi', '洛浦县', '900080', '新疆维吾尔自治区', 'HTDHTDLP');
INSERT INTO `t_area` VALUES ('653225', '和田地区', 'hetiandi', '策勒县', '900081', '新疆维吾尔自治区', 'HTDHTDCL');
INSERT INTO `t_area` VALUES ('653226', '和田地区', 'hetiandi', '于田县', '900082', '新疆维吾尔自治区', 'HTDHTDYT');
INSERT INTO `t_area` VALUES ('653227', '和田地区', 'hetiandi', '民丰县', '900083', '新疆维吾尔自治区', 'HTDHTDMF');
INSERT INTO `t_area` VALUES ('654002', '伊犁哈萨克自治州', 'yilihasakezizhi', '伊宁市', '900084', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZYN');
INSERT INTO `t_area` VALUES ('654003', '伊犁哈萨克自治州', 'yilihasakezizhi', '奎屯市', '900085', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZKT');
INSERT INTO `t_area` VALUES ('654004', '伊犁哈萨克自治州', 'yilihasakezizhi', '霍尔果斯市', '900086', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZHEGS');
INSERT INTO `t_area` VALUES ('654021', '伊犁哈萨克自治州', 'yilihasakezizhi', '伊宁县', '900087', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZYN');
INSERT INTO `t_area` VALUES ('654022', '伊犁哈萨克自治州', 'yilihasakezizhi', '察布查尔锡伯自治县', '900088', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZCBCEXBZZ');
INSERT INTO `t_area` VALUES ('654023', '伊犁哈萨克自治州', 'yilihasakezizhi', '霍城县', '900089', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZHC');
INSERT INTO `t_area` VALUES ('654024', '伊犁哈萨克自治州', 'yilihasakezizhi', '巩留县', '900090', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZGL');
INSERT INTO `t_area` VALUES ('654025', '伊犁哈萨克自治州', 'yilihasakezizhi', '新源县', '900091', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZXY');
INSERT INTO `t_area` VALUES ('654026', '伊犁哈萨克自治州', 'yilihasakezizhi', '昭苏县', '900092', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZZS');
INSERT INTO `t_area` VALUES ('654027', '伊犁哈萨克自治州', 'yilihasakezizhi', '特克斯县', '900093', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZTKS');
INSERT INTO `t_area` VALUES ('654028', '伊犁哈萨克自治州', 'yilihasakezizhi', '尼勒克县', '900094', '新疆维吾尔自治区', 'YLHSKZZYLHSKZZNLK');
INSERT INTO `t_area` VALUES ('654201', '塔城地区', 'tachengdi', '塔城市', '900102', '新疆维吾尔自治区', 'TCDTCDTC');
INSERT INTO `t_area` VALUES ('654202', '塔城地区', 'tachengdi', '乌苏市', '900103', '新疆维吾尔自治区', 'TCDTCDWS');
INSERT INTO `t_area` VALUES ('654221', '塔城地区', 'tachengdi', '额敏县', '900104', '新疆维吾尔自治区', 'TCDTCDEM');
INSERT INTO `t_area` VALUES ('654223', '塔城地区', 'tachengdi', '沙湾县', '900105', '新疆维吾尔自治区', 'TCDTCDSW');
INSERT INTO `t_area` VALUES ('654224', '塔城地区', 'tachengdi', '托里县', '900106', '新疆维吾尔自治区', 'TCDTCDTL');
INSERT INTO `t_area` VALUES ('654225', '塔城地区', 'tachengdi', '裕民县', '900107', '新疆维吾尔自治区', 'TCDTCDYM');
INSERT INTO `t_area` VALUES ('654226', '塔城地区', 'tachengdi', '和布克赛尔蒙古自治县', '900108', '新疆维吾尔自治区', 'TCDTCDHBKSEMGZZ');
INSERT INTO `t_area` VALUES ('654301', '阿勒泰地区', 'aletaidi', '阿勒泰市', '900095', '新疆维吾尔自治区', 'ALTDALTDALT');
INSERT INTO `t_area` VALUES ('654321', '阿勒泰地区', 'aletaidi', '布尔津县', '900096', '新疆维吾尔自治区', 'ALTDALTDBEJ');
INSERT INTO `t_area` VALUES ('654322', '阿勒泰地区', 'aletaidi', '富蕴县', '900097', '新疆维吾尔自治区', 'ALTDALTDFY');
INSERT INTO `t_area` VALUES ('654323', '阿勒泰地区', 'aletaidi', '福海县', '900098', '新疆维吾尔自治区', 'ALTDALTDFH');
INSERT INTO `t_area` VALUES ('654324', '阿勒泰地区', 'aletaidi', '哈巴河县', '900099', '新疆维吾尔自治区', 'ALTDALTDHBH');
INSERT INTO `t_area` VALUES ('654325', '阿勒泰地区', 'aletaidi', '青河县', '900100', '新疆维吾尔自治区', 'ALTDALTDQH');
INSERT INTO `t_area` VALUES ('654326', '阿勒泰地区', 'aletaidi', '吉木乃县', '900101', '新疆维吾尔自治区', 'ALTDALTDJMN');

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
-- Records of t_courier
-- ----------------------------
INSERT INTO `t_courier` VALUES ('1', '123456', '北京市快递一公司', '10001', null, '张三', '1111000', '18888888801', '小件员', 'ME009', '电动车', '17', null, '0');
INSERT INTO `t_courier` VALUES ('2', '123456', '北京市物流二公司', '10002', null, '李四', '12111', '18888888802', '大件员', 'ME077', '电动车', '18', null, '0');
INSERT INTO `t_courier` VALUES ('3', '123456', '北京市物流二公司', '10003', null, '王五', '12111', '137444778999', '大件员', 'ME004', '电动车', '18', null, '0');
INSERT INTO `t_courier` VALUES ('4', null, null, null, null, '李慧', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('5', null, null, null, null, '李昊', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('6', null, null, null, null, '李世恒', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('7', null, null, null, null, '李易', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('8', null, null, null, null, '李亚萍', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('9', null, null, null, null, '李逸', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('10', null, null, null, null, '李建中', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('11', null, null, null, null, '李佳茜', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('12', null, null, null, null, '李俊纶', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('13', null, null, null, null, '朱鼎澔', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('14', null, null, null, null, '朱梦烁', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('15', null, null, null, null, '朱昊哲', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('16', null, null, null, null, '朱溶月', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('17', null, null, null, null, '朱晨阳', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('18', null, null, null, null, '沈宜航', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('19', null, null, null, null, '沈贝', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('20', null, null, null, null, '沈文刚', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('21', null, null, null, null, '沈奕辰', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('22', null, null, null, null, '沈暄', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('23', null, null, null, null, '范汐石', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('24', null, null, null, null, '范芷', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('25', null, null, null, null, '范黯石', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('26', null, null, null, null, '范冰冰', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('27', null, null, null, null, '范瑞瑞', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('28', null, null, null, null, '范粤齐', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('29', null, null, null, null, '范缘权', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('30', null, null, null, null, '范敏慧', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('31', null, null, null, null, '白一凡', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('32', null, null, null, null, '白鲜', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('33', null, null, null, null, '白静', null, null, null, null, null, null, null, '1');
INSERT INTO `t_courier` VALUES ('34', null, null, null, null, '白桧', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('35', null, null, null, null, '白梓墨', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('36', null, null, null, null, '白学箴', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('37', null, null, null, '1', '白恩帆', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('38', null, null, null, '1', '白坤宇', null, null, null, null, null, null, null, '0');
INSERT INTO `t_courier` VALUES ('40', '1211212222222', '1211212222222', '1112', null, 'SSM框架学习', '1211212222222', '1211212222222', '1211212222222', '1211212222222', '1211212222222', '17', null, '0');
INSERT INTO `t_courier` VALUES ('41', '1211212222222', '1211212222222', '1112', null, 'SSM框架学习', '1211212222222', '1211212222222', '1211212222222', 'GG67', '大型', '17', null, '0');
INSERT INTO `t_courier` VALUES ('42', '1211212222222', '1211212222222', '1112', null, 'SSM框架学习', '1211212222222', '1211212222222', '1211212222222', 'GG67', '大型', '17', null, '0');
INSERT INTO `t_courier` VALUES ('43', '1211212222222', '1211212222222', '1112', null, 'SSM框架学习', '1211212222222', '1211212222222', '1211212222222', 'GG67', '大型', '17', null, '0');
INSERT INTO `t_courier` VALUES ('44', '1211212222222', '1211212222222', '1112', null, 'SSM框架学习', '1211212222222', '1211212222222', '1211212222222', 'GG67', '大型', '17', null, '0');
INSERT INTO `t_courier` VALUES ('45', '1211212222222', '1211212222222', '1112', null, 'SSM框架学习', '1211212222222', '1211212222222', '1211212222222', 'GG67', '大型', '17', null, '0');
INSERT INTO `t_courier` VALUES ('46', '1211212222222', '1211212222222', '1112', null, 'SSM框架学习', '1211212222222', '1211212222222', '1211212222222', 'GG67', '大型', '18', null, '0');
INSERT INTO `t_courier` VALUES ('47', '1211212222222', '1211212222222', '1112', null, 'SSM框架学习', '1211212222222', '1211212222222', '1211212222222', 'GG67', '大型', '17', null, '0');
INSERT INTO `t_courier` VALUES ('48', '1211212222222', '1211212222222', '1112', null, 'Linux', '1211212222222', '1211212222222', '1211212222222', 'GG67', '大型', '17', null, '0');

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
-- Records of t_courier_taketime
-- ----------------------------
INSERT INTO `t_courier_taketime` VALUES ('33', '1');

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
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('14', '张三', 'e10adc3949ba59abbe56e057f20f883e', '1', '1998-01-07', '1', '13112345678', 'A公司', 'A部门', '经理', '北京市海淀区建材城西路金燕龙办公楼一层', '01012345671', 'aaa@163.com', 'dq001');
INSERT INTO `t_customer` VALUES ('15', '李四', 'e10adc3949ba59abbe56e057f20f883e', '1', '1998-01-07', '1', '13212345678', 'B公司', 'B部门', '经理', '北京市海淀区建材城西路育新花园9号楼111', '01012345672', 'bbb@163.com', 'dq002');
INSERT INTO `t_customer` VALUES ('16', '王五', 'e10adc3949ba59abbe56e057f20f883e', '1', '1998-01-07', '1', '13312345678', 'C公司', 'C部门', '经理', '北京市海淀区中关村海龙大厦1111', '01012345673', 'ccc@163.com', 'dq001');
INSERT INTO `t_customer` VALUES ('17', '赵六', 'e10adc3949ba59abbe56e057f20f883e', '1', '1998-01-07', '1', '3412345678', 'D公司', 'D部门', '经理', '北京市海淀区中关村软件园国际软件大厦112', '01012345674', 'ddd@163.com', null);

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
-- Records of t_fixedarea_courier
-- ----------------------------
INSERT INTO `t_fixedarea_courier` VALUES ('dq001', '1');
INSERT INTO `t_fixedarea_courier` VALUES ('dq001', '2');
INSERT INTO `t_fixedarea_courier` VALUES ('dq002', '3');

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
-- Records of t_fixed_area
-- ----------------------------
INSERT INTO `t_fixed_area` VALUES ('dq001', '杭州市物流二公司', '张三', '北京市海淀区建材城西路金燕龙办公楼一层', null, null, null, '18888888802');
INSERT INTO `t_fixed_area` VALUES ('dq002', '杭州市城邦物流', '欧阳圣', '北京市海淀区建材城西路育新花园9号楼111', null, null, null, '18888883303');

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
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '系统管理', null, '0', null, '0', null, null, null, '0');
INSERT INTO `t_menu` VALUES ('11', '基础档案', null, '1', null, '1', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('12', '受理', null, '2', null, '1', null, null, null, '2');
INSERT INTO `t_menu` VALUES ('13', '调度', null, '3', null, '1', null, null, null, '3');
INSERT INTO `t_menu` VALUES ('14', '分拣管理', null, '4', null, '1', null, null, null, '4');
INSERT INTO `t_menu` VALUES ('1101', '基础档案设置', 'pages/base/archives.html', '1', null, '11', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('1102', '收派标准', 'pages/base/standard.html', '2', null, '11', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('1103', '班车管理', 'pages/base/vehicle.html', '3', null, '11', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('1104', '快递员设置/替班', 'pages/base/courier.html', '4', null, '11', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('1105', '区域设置', 'pages/base/area.html', '5', null, '11', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('1106', '管理分区', 'pages/base/sub_area.html', '6', null, '11', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('1107', '管理定区/调度排班', 'pages/base/fixed_area.html', '7', null, '11', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('1108', '收派时间管理', 'pages/base/take_time.html', '8', null, '11', null, null, null, '1');
INSERT INTO `t_menu` VALUES ('1201', '业务受理', 'pages/take_delivery/order.html', '1', null, '12', null, null, null, '2');
INSERT INTO `t_menu` VALUES ('1202', '运单快速录入', 'pages/take_delivery/waybill_quick.html', '2', null, '12', null, null, null, '2');
INSERT INTO `t_menu` VALUES ('1203', '运单录入', 'pages/take_delivery/waybill.html', '3', null, '12', null, null, null, '2');
INSERT INTO `t_menu` VALUES ('1204', '运单导入', 'pages/take_delivery/waybill_import.html', '4', null, '12', null, null, null, '2');
INSERT INTO `t_menu` VALUES ('1205', '运单管理', 'pages/take_delivery/waybill_manage.html', '5', null, '12', null, null, null, '2');
INSERT INTO `t_menu` VALUES ('1206', '异调运单', 'pages/take_delivery/different_waybill.html', '6', null, '12', null, null, null, '2');
INSERT INTO `t_menu` VALUES ('1207', '运单打印', 'pages/take_delivery/waybill_print.html', '7', null, '12', null, null, null, '2');
INSERT INTO `t_menu` VALUES ('1301', '查台转单', 'pages/take_delivery/change_work_order.html', '1', null, '13', null, null, null, '3');
INSERT INTO `t_menu` VALUES ('1302', '人工调度', 'pages/take_delivery/dispatcher.html', '2', null, '13', null, null, null, '3');
INSERT INTO `t_menu` VALUES ('1303', '取派调度监控', 'pages/take_delivery/dispatcher_monitor.html', '3', null, '13', null, null, null, '3');
INSERT INTO `t_menu` VALUES ('1304', '签收录入', 'pages/take_delivery/sign_input.html', '4', null, '13', null, null, null, '3');
INSERT INTO `t_menu` VALUES ('1305', '取消签收申请', 'pages/take_delivery/sign_cancel.html', '5', null, '13', null, null, null, '3');
INSERT INTO `t_menu` VALUES ('1306', '宣传任务', 'pages/take_delivery/promotion.html', '6', null, '13', null, null, null, '3');
INSERT INTO `t_menu` VALUES ('1401', '入库', 'pages/transit/in_storage.html', '1', null, '14', null, null, null, '4');
INSERT INTO `t_menu` VALUES ('1402', '出库', 'pages/transit/out_storage.html', '2', null, '14', null, null, null, '4');
INSERT INTO `t_menu` VALUES ('1403', '盘库', 'pages/transit/make_storage.html', '3', null, '14', null, null, null, '4');
INSERT INTO `t_menu` VALUES ('1404', '合包', 'pages/transit/compose_package.html', '4', null, '14', null, null, null, '4');
INSERT INTO `t_menu` VALUES ('1405', '到达时间录入', 'pages/transit/arrive_time.html', '5', null, '14', null, null, null, '4');
INSERT INTO `t_menu` VALUES ('1406', '出入库查询', 'pages/transit/in_out_search.html', '6', null, '14', null, null, null, '4');
INSERT INTO `t_menu` VALUES ('1407', '库存查询', 'pages/transit/remain_search.html', '7', null, '14', null, null, null, '4');
INSERT INTO `t_menu` VALUES ('1408', '合包查询', 'pages/transit/package_search.html', '8', null, '14', null, null, null, '4');

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
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('2', '3f54408b-974b-419d-be8e-ee4283de43da', null, '14', '关云长', '18900000001', '蜀国物流', '110108', '北京市海淀区建材城西路金燕龙办公楼一层', '曹操', '13800000001', '大魏快递', '130123', '石家庄市正定县石家庄正定国际机场', '速运当日', '文件', '寄付日结', '20.80', '小心啊，易碎物品哟', '过来顺便给我带包烟', '1', '1', '2018-09-26 12:48:42', '1', null);

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
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1001', '添加快递员', 'courier:add', '添加快递员功能', null);
INSERT INTO `t_permission` VALUES ('1002', '查询快递员', 'courier:list', '快递员列表查询功能', null);
INSERT INTO `t_permission` VALUES ('1003', '区域列表查询', 'region:list', '区域列表查询功能', null);
INSERT INTO `t_permission` VALUES ('1004', '运单管理', 'waybill', '运单管理功能', null);

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
-- Records of t_promotion
-- ----------------------------
INSERT INTO `t_promotion` VALUES ('2', '无限可能，尽在卡中', '/promotionImg/fdd14cb3-dad9-4a5a-94bb-aaecf0f74c7671.jpg', '中国大陆', '2018-09-04', '2018-09-23', null, null, null, '2', '<img src=\"/uploadImg/7f9f5c05-10e2-4281-8eb5-d761ee59b63e05.jpg\" alt=\"\" />');

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
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1001', '基础数据录入员', 'base', '负责基础数据录入', null);
INSERT INTO `t_role` VALUES ('1002', '取派业务客服', 'qupai', '负责运单管理功能', null);
INSERT INTO `t_role` VALUES ('1003', '超级管理员', 'super', '超级管理员', null);
INSERT INTO `t_role` VALUES ('1004', '管理员', 'manage', '', null);

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
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('1', '1004', '11');
INSERT INTO `t_role_menu` VALUES ('2', '1004', '1101');
INSERT INTO `t_role_menu` VALUES ('3', '1004', '1102');
INSERT INTO `t_role_menu` VALUES ('4', '1004', '1103');
INSERT INTO `t_role_menu` VALUES ('5', '1004', '1104');
INSERT INTO `t_role_menu` VALUES ('6', '1004', '1105');
INSERT INTO `t_role_menu` VALUES ('7', '1004', '1106');
INSERT INTO `t_role_menu` VALUES ('8', '1004', '1107');
INSERT INTO `t_role_menu` VALUES ('9', '1004', '1108');
INSERT INTO `t_role_menu` VALUES ('10', '1004', '12');
INSERT INTO `t_role_menu` VALUES ('11', '1004', '1201');
INSERT INTO `t_role_menu` VALUES ('12', '1004', '1202');
INSERT INTO `t_role_menu` VALUES ('13', '1004', '1203');
INSERT INTO `t_role_menu` VALUES ('14', '1004', '1204');
INSERT INTO `t_role_menu` VALUES ('15', '1004', '1205');
INSERT INTO `t_role_menu` VALUES ('16', '1004', '1206');
INSERT INTO `t_role_menu` VALUES ('17', '1004', '1207');
INSERT INTO `t_role_menu` VALUES ('18', '1004', '13');
INSERT INTO `t_role_menu` VALUES ('19', '1004', '1301');
INSERT INTO `t_role_menu` VALUES ('20', '1004', '1302');
INSERT INTO `t_role_menu` VALUES ('21', '1004', '1303');
INSERT INTO `t_role_menu` VALUES ('22', '1004', '1304');
INSERT INTO `t_role_menu` VALUES ('23', '1004', '1305');
INSERT INTO `t_role_menu` VALUES ('24', '1004', '1306');
INSERT INTO `t_role_menu` VALUES ('25', '1004', '14');
INSERT INTO `t_role_menu` VALUES ('26', '1004', '1401');
INSERT INTO `t_role_menu` VALUES ('27', '1004', '1402');
INSERT INTO `t_role_menu` VALUES ('28', '1004', '1403');
INSERT INTO `t_role_menu` VALUES ('29', '1004', '1404');
INSERT INTO `t_role_menu` VALUES ('30', '1004', '1405');
INSERT INTO `t_role_menu` VALUES ('31', '1004', '1406');
INSERT INTO `t_role_menu` VALUES ('32', '1004', '1407');
INSERT INTO `t_role_menu` VALUES ('33', '1004', '1408');
INSERT INTO `t_role_menu` VALUES ('34', '1001', '11');
INSERT INTO `t_role_menu` VALUES ('35', '1001', '1101');
INSERT INTO `t_role_menu` VALUES ('36', '1001', '1102');
INSERT INTO `t_role_menu` VALUES ('37', '1001', '1103');
INSERT INTO `t_role_menu` VALUES ('38', '1001', '1104');
INSERT INTO `t_role_menu` VALUES ('39', '1001', '1105');
INSERT INTO `t_role_menu` VALUES ('40', '1001', '1106');
INSERT INTO `t_role_menu` VALUES ('41', '1001', '1107');
INSERT INTO `t_role_menu` VALUES ('42', '1001', '1108');
INSERT INTO `t_role_menu` VALUES ('43', '1001', '12');
INSERT INTO `t_role_menu` VALUES ('44', '1001', '1201');
INSERT INTO `t_role_menu` VALUES ('45', '1001', '1202');
INSERT INTO `t_role_menu` VALUES ('46', '1001', '1203');
INSERT INTO `t_role_menu` VALUES ('47', '1001', '1204');
INSERT INTO `t_role_menu` VALUES ('48', '1001', '1205');
INSERT INTO `t_role_menu` VALUES ('49', '1001', '1206');
INSERT INTO `t_role_menu` VALUES ('50', '1001', '1207');

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
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '1001', '1001');
INSERT INTO `t_role_permission` VALUES ('2', '1001', '1002');
INSERT INTO `t_role_permission` VALUES ('3', '1001', '1003');
INSERT INTO `t_role_permission` VALUES ('4', '1002', '1004');
INSERT INTO `t_role_permission` VALUES ('5', '1003', '1001');
INSERT INTO `t_role_permission` VALUES ('6', '1003', '1002');
INSERT INTO `t_role_permission` VALUES ('7', '1003', '1003');
INSERT INTO `t_role_permission` VALUES ('8', '1003', '1004');
INSERT INTO `t_role_permission` VALUES ('15', '1004', '1001');
INSERT INTO `t_role_permission` VALUES ('16', '1004', '1002');
INSERT INTO `t_role_permission` VALUES ('17', '1004', '1003');
INSERT INTO `t_role_permission` VALUES ('18', '1004', '1004');

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
-- Records of t_standard
-- ----------------------------
INSERT INTO `t_standard` VALUES ('16', '20', '20', '10', '10', '10-20公斤', null, null, null);
INSERT INTO `t_standard` VALUES ('17', '30', '30', '20', '20', '20-30公斤', null, null, null);
INSERT INTO `t_standard` VALUES ('18', '40', '40', '30', '30', '30-40公斤', null, null, null);

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
-- Records of t_sub_archive
-- ----------------------------

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
-- Records of t_sub_area
-- ----------------------------
INSERT INTO `t_sub_area` VALUES ('bg001', '北苑', '100', '朝阳北路', '0', '1', '110105', null);
INSERT INTO `t_sub_area` VALUES ('bg002', '燕莎', '100', '亮马桥路', '1', '1', '110105', null);
INSERT INTO `t_sub_area` VALUES ('bg003', '石佛营', '100', '姚家园路', '0', '1', '110105', null);
INSERT INTO `t_sub_area` VALUES ('bg004', '管庄', '100', '朝阳路', '0', '1', '110105', null);
INSERT INTO `t_sub_area` VALUES ('bg005', '大山子', '100', '酒仙桥路', '0', '1', '110105', null);
INSERT INTO `t_sub_area` VALUES ('bg006', '巩华家园', '100', '百沙路', '0', '1', '110114', null);
INSERT INTO `t_sub_area` VALUES ('bg007', '龙跃苑', '100', '回龙观东大街', '1', '1', '110114', null);
INSERT INTO `t_sub_area` VALUES ('bg008', '史各庄', '100', '北清路', '0', '1', '110114', null);
INSERT INTO `t_sub_area` VALUES ('bg009', '北七家镇', '100', '定泗路', '1', '1', '110114', null);
INSERT INTO `t_sub_area` VALUES ('bg010', '华龙苑', '100', '黄平路', '0', '1', '110114', null);
INSERT INTO `t_sub_area` VALUES ('bg011', '中关村软件园', '100', '西北旺', '0', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg012', '复兴路', '100', '万寿路街道', '1', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg013', '金沟河', '100', '永定路街道', '0', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg014', '云基地', '100', '上地西路', '1', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg015', '四季青', '100', '杏石口路', '1', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg016', '世纪城', '100', '远大路', '0', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg017', '玉海园', '100', '玉泉路', '0', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg018', '普惠', '100', '翠微路', '0', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg019', '晾果厂', '100', '玉渊潭南路', '0', '1', '110108', null);
INSERT INTO `t_sub_area` VALUES ('bg020', '永乐', '100', '鲁谷路', '0', '1', '110107', null);
INSERT INTO `t_sub_area` VALUES ('bg021', '古城', '100', '八角北路', '0', '1', '110107', null);
INSERT INTO `t_sub_area` VALUES ('bg022', '老山', '100', '田村山南路', '0', '1', '110107', null);
INSERT INTO `t_sub_area` VALUES ('bg023', '首钢', '100', '晋元庄路', '0', '1', '110107', null);
INSERT INTO `t_sub_area` VALUES ('bg024', '雍景', '100', '田村路', '1', '1', '110107', null);
INSERT INTO `t_sub_area` VALUES ('bg025', '青塔', '100', '大成路', '1', '1', '110106', null);
INSERT INTO `t_sub_area` VALUES ('bg026', '六里桥', '100', '广安路', '1', '1', '110106', null);
INSERT INTO `t_sub_area` VALUES ('bg027', '大井', '100', '卢沟桥路', '1', '1', '110106', null);
INSERT INTO `t_sub_area` VALUES ('bg028', '华源', '100', '太平桥路', '1', '1', '110106', null);
INSERT INTO `t_sub_area` VALUES ('bg029', '造甲', '100', '丰台南路', '1', '1', '110106', null);

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
-- Records of t_take_time
-- ----------------------------
INSERT INTO `t_take_time` VALUES ('1', '速运快递', '8-14早班', '14', '8', null, null, null, '14', '8', null, '14', '8');
INSERT INTO `t_take_time` VALUES ('2', '速运快递', '14-20晚班', '20', '14', null, null, null, '20', '14', null, '20', '14');

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
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', null, null, '4b3a3f925b0f76827cad96b311889532', null, null, null, 'admin', null, null, null, null);
INSERT INTO `t_user` VALUES ('2', null, null, '2639c40ed969830192a9c6bf150c6c27', null, null, null, 'lisi', null, null, null, null);
INSERT INTO `t_user` VALUES ('3', null, null, '6442b7e1de7d8f06afeeaa45c193bc51', null, null, null, 'zhangsan', null, null, null, null);
INSERT INTO `t_user` VALUES ('5', '2018-10-15', '', '4de400ca1c308e8ce5635e1120a22da6', null, '总公司', '18255889066', 'haojian', null, null, null, null);

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
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '3', '1001');
INSERT INTO `t_user_role` VALUES ('2', '2', '1002');
INSERT INTO `t_user_role` VALUES ('3', '5', '1004');

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
-- Records of t_vehicle
-- ----------------------------

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
-- Records of t_way_bill
-- ----------------------------
INSERT INTO `t_way_bill` VALUES ('1', 'WAYBILL001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '20.00', null, '10', null, null, null, null, '无', null, null, null);
INSERT INTO `t_way_bill` VALUES ('2', 'WAYBILL002', '2', '关云长', '18900000001', '蜀国物流', null, '北京市海淀区建材城西路金燕龙办公楼一层', '曹操', '13800000001', '大魏快递', null, '石家庄市正定县石家庄正定国际机场', '速运当日', '文件', null, '0.00', null, '12', '上海', '0', '0.00', '', '海路', null, '0', null);

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

-- ----------------------------
-- Records of t_work_bill
-- ----------------------------
INSERT INTO `t_work_bill` VALUES ('1', '新', '已通知', '2018-09-26 12:48:43', null, '小心啊，易碎物品哟', '1533', '1', null);
