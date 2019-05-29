/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : labormarket

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-05-12 12:02:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bio
-- ----------------------------
DROP TABLE IF EXISTS `bio`;
CREATE TABLE `bio` (
  `bio_id` varchar(32) NOT NULL,
  `bio_no` varchar(16) DEFAULT NULL,
  `bio_name` varchar(64) DEFAULT NULL,
  `bio_shortname` varchar(32) DEFAULT NULL,
  `bio_orgtype` varchar(2) DEFAULT NULL,
  `cdg_regtype` varchar(3) DEFAULT NULL,
  `bio_industry` varchar(5) DEFAULT NULL,
  `bio_rga_regioncode` varchar(12) DEFAULT NULL,
  `bio_bua_postcode` varchar(6) DEFAULT NULL,
  `bio_con_fax` varchar(32) DEFAULT NULL,
  `bio_con_mail` varchar(32) DEFAULT NULL,
  `bio_bua_address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bip
-- ----------------------------
DROP TABLE IF EXISTS `bip`;
CREATE TABLE `bip` (
  `bip_id` varchar(32) NOT NULL,
  `bip_citizenid` varchar(18) DEFAULT NULL,
  `bip_sex` varchar(1) DEFAULT NULL,
  `bip_age` varchar(3) DEFAULT NULL,
  `bip_name` varchar(32) DEFAULT NULL,
  `bip_birthday` varchar(8) DEFAULT NULL,
  `bip_minzu` varchar(2) DEFAULT NULL,
  `bip_zzmm` varchar(2) DEFAULT NULL,
  `bip_hyzk` varchar(2) DEFAULT NULL,
  `bip_hjxz` varchar(2) DEFAULT NULL,
  `bip_rylb` varchar(2) DEFAULT NULL,
  `bip_jkzk` varchar(1) DEFAULT NULL,
  `bip_cjqk` varchar(2) DEFAULT NULL,
  `bip_eyesightleft` varchar(4) DEFAULT NULL,
  `bip_eyesightright` varchar(4) DEFAULT NULL,
  `bip_long` varchar(4) DEFAULT NULL,
  `bip_weight` varchar(4) DEFAULT NULL,
  `bip_hkszd` varchar(12) DEFAULT NULL,
  `bip_whcd` varchar(2) DEFAULT NULL,
  `bip_subject` varchar(64) DEFAULT NULL,
  `bip_graduateschool` varchar(64) DEFAULT NULL,
  `bip_bysj` varchar(8) DEFAULT NULL,
  `bip_educationallevel2` varchar(255) DEFAULT NULL,
  `bip_con_telephone` varchar(32) DEFAULT NULL,
  `bip_con_mobile` varchar(32) DEFAULT NULL,
  `bip_con_email` varchar(32) DEFAULT NULL,
  `bip_con_postcode` varchar(8) DEFAULT NULL,
  `bip_con_contact` varchar(32) DEFAULT NULL,
  `bip_con_contacttel` varchar(32) DEFAULT NULL,
  `bip_res_address` varchar(64) DEFAULT NULL,
  `bip_t_lowersecurity` varchar(1) DEFAULT NULL,
  `bip_t_criminal` varchar(1) DEFAULT NULL,
  `bip_t_destitute` varchar(1) DEFAULT NULL,
  `bip_t_peasant` varchar(1) DEFAULT NULL,
  `bip_t_veteran` varchar(1) DEFAULT NULL,
  `bip_t_othercities` varchar(1) DEFAULT NULL,
  `bip_t_czjyyhz` varchar(1) DEFAULT NULL,
  `bip_t_rhfl` varchar(1) DEFAULT NULL,
  `bip_t_newgraduate` varchar(1) DEFAULT NULL,
  `bip_pc_dj` varchar(2) DEFAULT NULL,
  `bip_pc_slcd` varchar(2) DEFAULT NULL,
  `bip_resume` varchar(4000) DEFAULT NULL,
  `bip_qtsm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bip_foreignlanguage
-- ----------------------------
DROP TABLE IF EXISTS `bip_foreignlanguage`;
CREATE TABLE `bip_foreignlanguage` (
  `bip_fl_id` varchar(32) NOT NULL,
  `bip_id` varchar(32) DEFAULT NULL,
  `bip_fl_years` varchar(2) DEFAULT NULL,
  `bip_fl_jywy` varchar(2) DEFAULT NULL,
  `bip_fl_wysm` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`bip_fl_id`),
  KEY `FK_BIP_FORE_REFERENCE_BIP` (`bip_id`),
  CONSTRAINT `FK_BIP_FORE_REFERENCE_BIP` FOREIGN KEY (`bip_id`) REFERENCES `bip` (`bip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bip_skill
-- ----------------------------
DROP TABLE IF EXISTS `bip_skill`;
CREATE TABLE `bip_skill` (
  `bip_s_id` varchar(32) NOT NULL,
  `bip_id` varchar(32) DEFAULT NULL,
  `bip_s_years` varchar(2) DEFAULT NULL,
  `bip_s_zyjn` varchar(7) DEFAULT NULL,
  `bip_s_jsdj` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`bip_s_id`),
  KEY `FK_BIP_SKIL_REFERENCE_BIP` (`bip_id`),
  CONSTRAINT `FK_BIP_SKIL_REFERENCE_BIP` FOREIGN KEY (`bip_id`) REFERENCES `bip` (`bip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_computergrade
-- ----------------------------
DROP TABLE IF EXISTS `cdg_computergrade`;
CREATE TABLE `cdg_computergrade` (
  `cd_id` varchar(1) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_deformity
-- ----------------------------
DROP TABLE IF EXISTS `cdg_deformity`;
CREATE TABLE `cdg_deformity` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_educationallevel
-- ----------------------------
DROP TABLE IF EXISTS `cdg_educationallevel`;
CREATE TABLE `cdg_educationallevel` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_healthstate
-- ----------------------------
DROP TABLE IF EXISTS `cdg_healthstate`;
CREATE TABLE `cdg_healthstate` (
  `cd_id` varchar(1) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_industry
-- ----------------------------
DROP TABLE IF EXISTS `cdg_industry`;
CREATE TABLE `cdg_industry` (
  `cd_id` varchar(5) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_language
-- ----------------------------
DROP TABLE IF EXISTS `cdg_language`;
CREATE TABLE `cdg_language` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_marriage
-- ----------------------------
DROP TABLE IF EXISTS `cdg_marriage`;
CREATE TABLE `cdg_marriage` (
  `cd_id` varchar(1) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_nation
-- ----------------------------
DROP TABLE IF EXISTS `cdg_nation`;
CREATE TABLE `cdg_nation` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_politicsaspect
-- ----------------------------
DROP TABLE IF EXISTS `cdg_politicsaspect`;
CREATE TABLE `cdg_politicsaspect` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_regioncode
-- ----------------------------
DROP TABLE IF EXISTS `cdg_regioncode`;
CREATE TABLE `cdg_regioncode` (
  `cd_id` varchar(12) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_regtype
-- ----------------------------
DROP TABLE IF EXISTS `cdg_regtype`;
CREATE TABLE `cdg_regtype` (
  `cd_id` varchar(3) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdg_sex
-- ----------------------------
DROP TABLE IF EXISTS `cdg_sex`;
CREATE TABLE `cdg_sex` (
  `cd_id` varchar(1) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdl_employtype
-- ----------------------------
DROP TABLE IF EXISTS `cdl_employtype`;
CREATE TABLE `cdl_employtype` (
  `cd_id` varchar(5) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdl_orgtype
-- ----------------------------
DROP TABLE IF EXISTS `cdl_orgtype`;
CREATE TABLE `cdl_orgtype` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdl_personneltype
-- ----------------------------
DROP TABLE IF EXISTS `cdl_personneltype`;
CREATE TABLE `cdl_personneltype` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdl_proficiency
-- ----------------------------
DROP TABLE IF EXISTS `cdl_proficiency`;
CREATE TABLE `cdl_proficiency` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdl_qualification
-- ----------------------------
DROP TABLE IF EXISTS `cdl_qualification`;
CREATE TABLE `cdl_qualification` (
  `cd_id` varchar(7) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdl_rprtype
-- ----------------------------
DROP TABLE IF EXISTS `cdl_rprtype`;
CREATE TABLE `cdl_rprtype` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cdl_specialty
-- ----------------------------
DROP TABLE IF EXISTS `cdl_specialty`;
CREATE TABLE `cdl_specialty` (
  `cd_id` varchar(7) NOT NULL,
  `cd_name` varchar(128) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  `cd_spell` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ldlsc_user
-- ----------------------------
DROP TABLE IF EXISTS `ldlsc_user`;
CREATE TABLE `ldlsc_user` (
  `user_id` varchar(32) NOT NULL,
  `USER_NAME` varchar(32) DEFAULT NULL,
  `USERLOGINNAME` varchar(32) DEFAULT NULL,
  `USERPASSWORD` varchar(16) DEFAULT NULL,
  `USERINDEX` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_dwdjjdb
-- ----------------------------
DROP TABLE IF EXISTS `zj_dwdjjdb`;
CREATE TABLE `zj_dwdjjdb` (
  `DWDJJDBH` varchar(32) NOT NULL,
  `ZPBH` varchar(32) DEFAULT NULL,
  `DJYY` varchar(255) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `JDYY` varchar(255) DEFAULT NULL,
  `JDSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`DWDJJDBH`),
  KEY `FK_ZJ_DWDJJ_REFERENCE_ZJ_DWZPD` (`ZPBH`),
  CONSTRAINT `FK_ZJ_DWDJJ_REFERENCE_ZJ_DWZPD` FOREIGN KEY (`ZPBH`) REFERENCES `zj_dwzpdjb` (`ZPBH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_dwzpdjb
-- ----------------------------
DROP TABLE IF EXISTS `zj_dwzpdjb`;
CREATE TABLE `zj_dwzpdjb` (
  `ZPBH` varchar(32) NOT NULL,
  `DWBH` varchar(32) DEFAULT NULL,
  `DWLXR` varchar(32) DEFAULT NULL,
  `LXRSFZHM` varchar(18) DEFAULT NULL,
  `LXRSJ` varchar(12) DEFAULT NULL,
  `SFDJ` varchar(1) DEFAULT NULL,
  `DJYXQ` int(11) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  `SFGD` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ZPBH`),
  KEY `FK_ZJ_DWZPD_REFERENCE_BIO` (`DWBH`),
  CONSTRAINT `FK_ZJ_DWZPD_REFERENCE_BIO` FOREIGN KEY (`DWBH`) REFERENCES `bio` (`bio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_dwzpgzb
-- ----------------------------
DROP TABLE IF EXISTS `zj_dwzpgzb`;
CREATE TABLE `zj_dwzpgzb` (
  `ZPGZBH` varchar(32) NOT NULL,
  `ZPBH` varchar(32) DEFAULT NULL,
  `ZPGZ` varchar(7) DEFAULT NULL,
  `ZPGZBM` varchar(32) DEFAULT NULL,
  `GWLB` varchar(2) DEFAULT NULL,
  `ZRS` varchar(4) DEFAULT NULL,
  `ZPRSN` varchar(4) DEFAULT NULL,
  `ZPRSNV` varchar(4) DEFAULT NULL,
  `XBBX` varchar(4) DEFAULT NULL,
  `hjxz` varchar(2) DEFAULT NULL,
  `KSSJ` varchar(8) DEFAULT NULL,
  `JSSJ` varchar(8) DEFAULT NULL,
  `ZXNL` varchar(2) DEFAULT NULL,
  `ZDNL` varchar(2) DEFAULT NULL,
  `whcd` varchar(2) DEFAULT NULL,
  `ygxs` varchar(1) DEFAULT NULL,
  `ZZYX` varchar(8) DEFAULT NULL,
  `ZGYX` varchar(8) DEFAULT NULL,
  `hyzk` varchar(1) DEFAULT NULL,
  `jkzk` varchar(1) DEFAULT NULL,
  `rylb` varchar(2) DEFAULT NULL,
  `sfbys` varchar(1) DEFAULT NULL,
  `ZPDQ` varchar(12) DEFAULT NULL,
  `JYYZ` varchar(2) DEFAULT NULL,
  `SLCD` varchar(2) DEFAULT NULL,
  `JSJDJ` varchar(2) DEFAULT NULL,
  `JSJSLCD` varchar(2) DEFAULT NULL,
  `GWMS` varchar(255) DEFAULT NULL,
  `GZDD` varchar(255) DEFAULT NULL,
  `CGRSN` varchar(4) DEFAULT NULL,
  `CGRSNV` varchar(4) DEFAULT NULL,
  `DJYXQ` varchar(2) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`ZPGZBH`),
  KEY `FK_ZJ_DWZPG_REFERENCE_ZJ_DWZPD` (`ZPBH`),
  CONSTRAINT `FK_ZJ_DWZPG_REFERENCE_ZJ_DWZPD` FOREIGN KEY (`ZPBH`) REFERENCES `zj_dwzpdjb` (`ZPBH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_d_gwlb
-- ----------------------------
DROP TABLE IF EXISTS `zj_d_gwlb`;
CREATE TABLE `zj_d_gwlb` (
  `dmid` char(2) NOT NULL,
  `dmmc` char(64) DEFAULT NULL,
  `sfky` char(1) DEFAULT NULL,
  `xh` int(11) DEFAULT NULL,
  PRIMARY KEY (`dmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_grqzdjb
-- ----------------------------
DROP TABLE IF EXISTS `zj_grqzdjb`;
CREATE TABLE `zj_grqzdjb` (
  `qzbh` varchar(32) NOT NULL,
  `bip_id` varchar(32) DEFAULT NULL,
  `dwxx` varchar(2) DEFAULT NULL,
  `dwjjlx` varchar(3) DEFAULT NULL,
  `dwhy` varchar(5) DEFAULT NULL,
  `gzdq` varchar(12) DEFAULT NULL,
  `SFDJ` varchar(1) DEFAULT NULL,
  `SFJSDX` varchar(1) DEFAULT NULL,
  `SFCJPX` varchar(1) DEFAULT NULL,
  `SFJSZYZD` varchar(1) DEFAULT NULL,
  `djyxq` varchar(2) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  `SFGD` varchar(1) DEFAULT NULL,
  `TJX` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`qzbh`),
  KEY `FK_ZJ_GRQZD_REFERENCE_BIP` (`bip_id`),
  CONSTRAINT `FK_ZJ_GRQZD_REFERENCE_BIP` FOREIGN KEY (`bip_id`) REFERENCES `bip` (`bip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_grqzdjjdb
-- ----------------------------
DROP TABLE IF EXISTS `zj_grqzdjjdb`;
CREATE TABLE `zj_grqzdjjdb` (
  `GRDJJDBH` varchar(32) NOT NULL,
  `QZBH` varchar(32) DEFAULT NULL,
  `DOJYY` varchar(255) DEFAULT NULL,
  `DOJSJ` varchar(14) DEFAULT NULL,
  `JIDYY` varchar(255) DEFAULT NULL,
  `JIDSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`GRDJJDBH`),
  KEY `FK_ZJ_GRQZD_REFERENCE_ZJ_GRQZD` (`QZBH`),
  CONSTRAINT `FK_ZJ_GRQZD_REFERENCE_ZJ_GRQZD` FOREIGN KEY (`QZBH`) REFERENCES `zj_grqzdjb` (`qzbh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_grqzgzb
-- ----------------------------
DROP TABLE IF EXISTS `zj_grqzgzb`;
CREATE TABLE `zj_grqzgzb` (
  `QZGZBH` varchar(32) NOT NULL,
  `QZBH` varchar(32) DEFAULT NULL,
  `XH` varchar(1) DEFAULT NULL,
  `GZ` varchar(7) DEFAULT NULL,
  `YGXS` varchar(1) DEFAULT NULL,
  `ZDYX` varchar(6) DEFAULT NULL,
  `ZGYX` varchar(6) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`QZGZBH`),
  KEY `FK_ZJ_GRQZG_REFERENCE_ZJ_GRQZD` (`QZBH`),
  CONSTRAINT `FK_ZJ_GRQZG_REFERENCE_ZJ_GRQZD` FOREIGN KEY (`QZBH`) REFERENCES `zj_grqzdjb` (`qzbh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_tjxxb
-- ----------------------------
DROP TABLE IF EXISTS `zj_tjxxb`;
CREATE TABLE `zj_tjxxb` (
  `TJXID` varchar(32) NOT NULL,
  `TJXLX` varchar(1) DEFAULT NULL,
  `QZGZBH` varchar(32) DEFAULT NULL,
  `ZPGZBH` varchar(32) DEFAULT NULL,
  `TJSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TJXID`),
  KEY `FK_ZJ_TJXXB_REFERENCE_ZJ_DWZPG` (`ZPGZBH`),
  KEY `FK_ZJ_TJXXB_REFERENCE_ZJ_GRQZG` (`QZGZBH`),
  CONSTRAINT `FK_ZJ_TJXXB_REFERENCE_ZJ_GRQZG` FOREIGN KEY (`QZGZBH`) REFERENCES `zj_grqzgzb` (`QZGZBH`),
  CONSTRAINT `FK_ZJ_TJXXB_REFERENCE_ZJ_DWZPG` FOREIGN KEY (`ZPGZBH`) REFERENCES `zj_dwzpgzb` (`ZPGZBH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zj_tjxxhzb
-- ----------------------------
DROP TABLE IF EXISTS `zj_tjxxhzb`;
CREATE TABLE `zj_tjxxhzb` (
  `TJXID` varchar(32) NOT NULL,
  `TJXLX` varchar(1) DEFAULT NULL,
  `QZGZBH` varchar(32) DEFAULT NULL,
  `ZPGZBH` varchar(32) DEFAULT NULL,
  `TJSJ` varchar(14) DEFAULT NULL,
  `SFCG` varchar(1) DEFAULT NULL,
  `JYYX` varchar(6) DEFAULT NULL,
  `BCGYY` varchar(255) DEFAULT NULL,
  `SFHZ` varchar(1) DEFAULT NULL,
  `HZSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TJXID`),
  KEY `FK_ZJ_TJXXH_REFERENCE_ZJ_DWZPG` (`ZPGZBH`),
  KEY `FK_ZJ_TJXXH_REFERENCE_ZJ_GRQZG` (`QZGZBH`),
  CONSTRAINT `FK_ZJ_TJXXH_REFERENCE_ZJ_GRQZG` FOREIGN KEY (`QZGZBH`) REFERENCES `zj_grqzgzb` (`QZGZBH`),
  CONSTRAINT `FK_ZJ_TJXXH_REFERENCE_ZJ_DWZPG` FOREIGN KEY (`ZPGZBH`) REFERENCES `zj_dwzpgzb` (`ZPGZBH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
