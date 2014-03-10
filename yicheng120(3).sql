-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-03-10 02:20:40
-- 服务器版本： 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yicheng120`
--

-- --------------------------------------------------------

--
-- 表的结构 `action`
--

CREATE TABLE IF NOT EXISTS `action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统行为表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `action`
--

INSERT INTO `action` (`id`, `name`, `title`, `remark`, `rule`, `log`, `type`, `status`, `update_time`) VALUES
(1, 'user_login', '用户登录', '积分+10，每天一次', 'table:member|field:score|condition:uid={$self} AND status>-1|rule:score+10|cycle:24|max:1;', '[user|get_nickname]在[time|time_format]登录了系统', 1, 1, 1387181220),
(2, 'user_reg', '用户注册', '积分+10', 'table:member|field:score|condition:uid={$self} AND status>-1|rule:score+10|cycle:24|max:1;', '[user|get_nickname]在[time|time_format]注册了系统', 1, 1, 1387181220);

-- --------------------------------------------------------

--
-- 表的结构 `action_log`
--

CREATE TABLE IF NOT EXISTS `action_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表' AUTO_INCREMENT=74 ;

--
-- 转存表中的数据 `action_log`
--

INSERT INTO `action_log` (`id`, `action_id`, `user_id`, `action_ip`, `model`, `record_id`, `remark`, `status`, `create_time`) VALUES
(1, 1, 15, 2025907938, 'member', 15, '在2014-01-29 14:33登录了系统', 1, 1390977220),
(2, 1, 15, 2025907938, 'member', 15, 'ktskts123在2014-01-29 14:34登录了系统', 1, 1390977280),
(3, 1, 3, 182652226, 'member', 3, '在2014-01-29 14:54登录了系统', 1, 1390978451),
(4, 1, 15, 2025907938, 'member', 15, 'ktskts123在2014-01-29 15:33登录了系统', 1, 1390980784),
(5, 1, 3, 3733050819, 'member', 3, '在2014-01-29 22:35登录了系统', 1, 1391006152),
(6, 1, 3, 3733050819, 'member', 3, '在2014-01-29 23:02登录了系统', 1, 1391007768),
(7, 1, 15, 2025907938, 'member', 15, 'ktskts123在2014-01-30 03:48登录了系统', 1, 1391024918),
(8, 1, 3, 3733050819, 'member', 3, '在2014-01-30 03:52登录了系统', 1, 1391025128),
(9, 1, 3, 3733050819, 'member', 3, '在2014-01-30 03:52登录了系统', 1, 1391025161),
(10, 1, 15, 2025907938, 'member', 15, 'ktskts123在2014-01-30 03:54登录了系统', 1, 1391025243),
(11, 1, 3, 3733050819, 'member', 3, '在2014-01-30 03:54登录了系统', 1, 1391025259),
(12, 1, 3, 3733050819, 'member', 3, '在2014-01-30 03:55登录了系统', 1, 1391025324),
(13, 1, 15, 2025907938, 'member', 15, 'ktskts123在2014-01-30 03:55登录了系统', 1, 1391025337),
(14, 1, 3, 3733050819, 'member', 3, '在2014-01-30 03:56登录了系统', 1, 1391025413),
(15, 1, 3, 3733050819, 'member', 3, '在2014-01-30 03:57登录了系统', 1, 1391025444),
(16, 1, 15, 2025907938, 'member', 15, 'ktskts123在2014-01-30 04:01登录了系统', 1, 1391025706),
(17, 1, 15, 2025907938, 'member', 15, 'ktskts123在2014-01-30 04:20登录了系统', 1, 1391026803),
(18, 1, 3, 2025907938, 'member', 3, '12332123在2014-01-30 07:17登录了系统', 1, 1391037449),
(19, 1, 3, 3733050819, 'member', 3, '12332123在2014-01-30 07:23登录了系统', 1, 1391037797),
(20, 1, 3, 3733050819, 'member', 3, '12332123在2014-01-30 07:27登录了系统', 1, 1391038022),
(21, 1, 3, 3733050819, 'member', 3, '12332123在2014-01-30 07:49登录了系统', 1, 1391039399),
(22, 1, 15, 2099381857, 'member', 15, 'ktskts123在2014-02-08 23:36登录了系统', 1, 1391873777),
(23, 1, 15, 2099381857, 'member', 15, 'ktskts123在2014-02-08 23:43登录了系统', 1, 1391874214),
(24, 1, 15, 2099381857, 'member', 15, 'ktskts123在2014-02-08 23:59登录了系统', 1, 1391875169),
(25, 1, 15, 2099381857, 'member', 15, 'ktskts123在2014-02-09 11:03登录了系统', 1, 1391915027),
(26, 1, 3, 2099381857, 'member', 3, '12332123在2014-02-09 11:04登录了系统', 1, 1391915094),
(27, 2, 16, 1033178455, 'member', 16, 'kkttss123在2014-02-09 18:12注册了系统', 1, 1391940774),
(28, 1, 3, 1875139428, 'member', 3, '12332123在2014-02-09 18:22登录了系统', 1, 1391941373),
(29, 1, 3, 2007094150, 'member', 3, '12332123在2014-02-14 09:06登录了系统', 1, 1392339977),
(30, 1, 15, 2007094150, 'member', 15, 'ktskts123在2014-02-14 09:08登录了系统', 1, 1392340086),
(31, 1, 3, 182652238, 'member', 3, '12332123在2014-02-14 09:57登录了系统', 1, 1392343078),
(32, 1, 3, 182652238, 'member', 3, '12332123在2014-02-14 10:56登录了系统', 1, 1392346583),
(33, 1, 15, 182652238, 'member', 15, 'ktskts123在2014-02-14 11:04登录了系统', 1, 1392347082),
(34, 1, 7, 182652238, 'member', 7, '在2014-02-14 11:22登录了系统', 1, 1392348179),
(35, 1, 15, 182652238, 'member', 15, 'ktskts123在2014-02-14 11:23登录了系统', 1, 1392348209),
(36, 1, 15, 2007096908, 'member', 15, 'ktskts123在2014-02-14 11:26登录了系统', 1, 1392348363),
(37, 1, 3, 2007096908, 'member', 3, '12332123在2014-02-14 13:47登录了系统', 1, 1392356854),
(38, 1, 15, 2007096908, 'member', 15, 'ktskts123在2014-02-14 13:48登录了系统', 1, 1392356916),
(39, 2, 17, 0, 'member', 17, 'dreamww在2014-02-17 15:21注册了系统', 1, 1392621696),
(40, 2, 18, 2130706433, 'member', 18, '18511301992?2014-02-28 13:16?????', 1, 1393564570),
(41, 2, 1062, 2130706433, 'member', 1062, 'yeswzc?2014-02-28 14:17?????', 1, 1393568232),
(42, 2, 1062, 2130706433, 'member', 1062, 'yeswzc@126.com?2014-03-03 09:41?????', 1, 1393810907),
(43, 2, 1062, 2130706433, 'member', 1062, 'yeswzc?2014-03-03 09:57?????', 1, 1393811855),
(44, 2, 1062, 2130706433, 'member', 1062, 'yeswzc@126.com?2014-03-03 10:38?????', 1, 1393814308),
(45, 2, 1062, 2130706433, 'member', 1062, 'woaini?2014-03-03 10:47?????', 1, 1393814852),
(46, 2, 1062, 2130706433, 'member', 1062, 'woaini?2014-03-03 10:51?????', 1, 1393815082),
(47, 2, 1062, 2130706433, 'member', 1062, '18511301993?2014-03-03 10:52?????', 1, 1393815177),
(48, 1, 17, 2130706433, 'member', 17, 'dreamww?2014-03-03 10:59?????', 1, 1393815546),
(49, 1, 17, 0, 'member', 17, 'dreamww?2014-03-03 14:37?????', 1, 1393828633),
(50, 1, 17, 0, 'member', 17, 'dreamww?2014-03-03 14:39?????', 1, 1393828772),
(51, 1, 17, 0, 'member', 17, 'dreamww?2014-03-03 14:59?????', 1, 1393829999),
(52, 1, 17, 0, 'member', 17, 'dreamww?2014-03-03 15:00?????', 1, 1393830018),
(53, 1, 17, 0, 'member', 17, 'dreamww?2014-03-03 15:01?????', 1, 1393830069),
(54, 1, 17, 0, 'member', 17, 'dreamww?2014-03-03 15:02?????', 1, 1393830125),
(55, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 08:39?????', 1, 1393893540),
(56, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 08:39?????', 1, 1393893544),
(57, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 08:39?????', 1, 1393893564),
(58, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 08:41?????', 1, 1393893687),
(59, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 09:00?????', 1, 1393894813),
(60, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 09:02?????', 1, 1393894938),
(61, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 09:03?????', 1, 1393894988),
(62, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 09:03?????', 1, 1393894998),
(63, 2, 1062, 0, 'member', 1062, 'dreamww2?2014-03-04 10:36?????', 1, 1393900600),
(64, 2, 1062, 0, 'member', 1062, 'dreamww3?2014-03-04 10:37?????', 1, 1393900642),
(65, 1, 17, 0, 'member', 17, 'dreamww?2014-03-04 11:02?????', 1, 1393902177),
(66, 2, 21, 0, 'member', 21, 'çŽ‹ä¼Ÿ1?2014-03-04 17:23?????', 1, 1393924997),
(67, 1, 17, 0, 'member', 17, 'dreamww在2014-03-05 15:25登录了系统', 1, 1394004305),
(68, 1, 17, -1062731752, 'member', 17, 'dreamww在2014-03-06 11:23登录了系统', 1, 1394076193),
(69, 2, 22, -1062731743, 'member', 22, '18511301999在2014-03-06 11:28注册了系统', 1, 1394076533),
(70, 1, 22, -1062731743, 'member', 22, '18511301999在2014-03-06 11:29登录了系统', 1, 1394076544),
(71, 1, 22, -1062731743, 'member', 22, '18511301999在2014-03-06 14:45登录了系统', 1, 1394088339),
(72, 2, 23, 0, 'member', 23, 'dreamww3在2014-03-10 09:12注册了系统', 1, 1394413948),
(73, 1, 23, 0, 'member', 23, 'dreamww3在2014-03-10 09:14登录了系统', 1, 1394414085);

-- --------------------------------------------------------

--
-- 表的结构 `attention`
--

CREATE TABLE IF NOT EXISTS `attention` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `fid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `consult`
--

CREATE TABLE IF NOT EXISTS `consult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `doc_repo` tinyint(4) NOT NULL DEFAULT '0',
  `show_index` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `consult`
--

INSERT INTO `consult` (`id`, `content`, `pic`, `uid`, `create_time`, `doc_repo`, `show_index`, `status`) VALUES
(1, 'fdsafdsa', '', 3, '0000-00-00 00:00:00', 0, 0, 1),
(2, 'fdsafdsaaaf', 'http%3A%2F%2Fyc120-uploads.stor.sinaapp.com%2FUploads%2F2014-01-30%2F52e946d009b2d.jpg', 3, '0000-00-00 00:00:00', 0, 0, 1),
(3, 'frsdgfsd', 'http%3A%2F%2Fyc120-uploads.stor.sinaapp.com%2FUploads%2F2014-01-30%2F52e949ae146ec.jpg', 3, '0000-00-00 00:00:00', 0, 0, 1),
(4, 'frsdgfsd', 'http%3A%2F%2Fyc120-uploads.stor.sinaapp.com%2FUploads%2F2014-01-30%2F52e949bd6c243.jpg', 3, '0000-00-00 00:00:00', 0, 0, 1),
(5, 'fdafdsa', 'http%3A%2F%2Fyc120-uploads.stor.sinaapp.com%2FUploads%2F2014-01-30%2F52e949bd6c243.jpg', 3, '0000-00-00 00:00:00', 0, 0, 1),
(6, 'frsdgfsd', 'http%3A%2F%2Fyc120-uploads.stor.sinaapp.com%2FUploads%2F2014-01-30%2F52e949bd6c243.jpg', 3, '0000-00-00 00:00:00', 0, 0, 1),
(7, '发大水', '', 3, '0000-00-00 00:00:00', 0, 0, 1),
(8, '发大水', '', 3, '0000-00-00 00:00:00', 0, 0, 1),
(9, 'fdsafdsa', '', 3, '0000-00-00 00:00:00', 0, 0, 1),
(10, 'fdsafdsa', '', 3, '0000-00-00 00:00:00', 0, 0, 1),
(11, 'fdasfdas', '', 3, '0000-00-00 00:00:00', 0, 0, 1),
(12, 'fdsafds', '', 3, '0000-00-00 00:00:00', 0, 0, 1),
(13, '范德萨的', '', 3, '0000-00-00 00:00:00', 0, 0, 1),
(14, 'fdsafdsa', 'http%3A%2F%2Fyc120-uploads.stor.sinaapp.com%2FUploads%2F2014-01-30%2F52e95f9b6906a.jpg', 3, '0000-00-00 00:00:00', 0, 0, 1),
(15, 'fdsafdsa', '', 3, '2014-01-29 16:00:00', 1, 1, 1),
(16, '飞洒发大水', '', 3, '2014-01-29 20:28:28', 0, 0, 1),
(17, '发大水', '', 3, '2014-01-29 21:42:28', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gg_report`
--

CREATE TABLE IF NOT EXISTS `gg_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `val` varchar(100) NOT NULL,
  `desc` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gg_report`
--

INSERT INTO `gg_report` (`id`, `uid`, `val`, `desc`, `create_time`, `status`) VALUES
(1, 3, '发大', 0, '2014-01-29 19:49:27', 1),
(2, 3, '范德萨', 0, '2014-01-29 23:23:27', 1),
(3, 18, '11', 11, '2014-02-28 05:24:17', 1);

-- --------------------------------------------------------

--
-- 表的结构 `habits`
--

CREATE TABLE IF NOT EXISTS `habits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `val` text NOT NULL,
  `type` tinyint(4) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_type` (`uid`,`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `habits`
--

INSERT INTO `habits` (`id`, `uid`, `title`, `val`, `type`, `create_time`, `status`) VALUES
(1, 3, '1', '{"blood":"21","breath":"21","heart":"21","height":"21","weight":"21"}', 1, '2014-01-29 19:38:55', 1),
(3, 3, '2', '{"smoking":"3","liquor":"4","other":"","sport":"4","food":"2","sleep":"2"}', 2, '2014-01-29 19:41:38', 1),
(5, 18, '1', '{"realname":"\\u738b\\u4f1f","blood":"22","breath":11,"heart":11,"height":11,"weight":22}', 1, '2014-02-28 05:23:58', 1);

-- --------------------------------------------------------

--
-- 表的结构 `kith`
--

CREATE TABLE IF NOT EXISTS `kith` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `realname` varchar(50) NOT NULL COMMENT '亲友真实姓名',
  `mobilephone` varchar(15) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `kith`
--

INSERT INTO `kith` (`id`, `uid`, `realname`, `mobilephone`, `nickname`, `create_time`, `status`) VALUES
(5, 3, '123', '13233333333', '123', '2014-01-29 06:58:13', 1),
(3, 15, '大师傅', '13333333333', '12321', '2014-01-29 06:55:19', 1),
(4, 15, '123', '13333333333', '123', '2014-01-29 06:53:54', 1),
(6, 3, '范德萨', '13322222222', '地方撒', '2014-01-29 07:16:34', 1),
(7, 3, 'fdsa', '13222222222', 'fdsa', '2014-01-29 07:39:41', 1),
(8, 3, '123', '13233333333', '123', '2014-01-29 07:59:02', 1),
(9, 3, '范德萨', '13322222222', '地方撒', '2014-01-29 07:59:30', 1),
(10, 3, '123', '13233333333', '123', '2014-01-29 07:59:34', 1),
(11, 3, 'fdsa', '13222222222', 'fdsa', '2014-01-29 07:59:48', 1),
(12, 3, '123', '13233333333', '123', '2014-01-29 08:05:28', 1),
(13, 3, '范德萨', '13322222222', '地方撒', '2014-01-29 08:06:13', 1),
(14, 3, '123', '13233333333', '123', '2014-01-29 08:06:17', 1),
(15, 3, 'fdsa', '13111111111', 'fdsa', '2014-01-29 08:07:27', 1);

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL,
  `login` int(11) NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  `ukey` varchar(18) NOT NULL,
  `mobilephone` varchar(11) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `weibo` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `basic_info` tinyint(4) NOT NULL DEFAULT '0',
  `life_info` tinyint(4) NOT NULL DEFAULT '0',
  `mtype` tinyint(4) NOT NULL DEFAULT '1',
  `hospital` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `show_index` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `uid`, `username`, `email`, `create_time`, `update_time`, `last_login_time`, `login`, `last_login_ip`, `ukey`, `mobilephone`, `address`, `qq`, `weibo`, `score`, `basic_info`, `life_info`, `mtype`, `hospital`, `title`, `show_index`, `status`) VALUES
(1, 0, 'bbb', 'bbb@yc120.com', '2014-01-21 09:34:21', '2014-01-21 09:34:21', '2014-01-21 09:34:21', 0, '', '', '', '', '', '', 0, 0, 0, 1, '', '', 1, 1),
(2, 0, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, 0, 0, 1, '', '', 1, 1),
(3, 0, '哈哈哈哈', NULL, '2014-01-29 20:18:02', '2014-01-29 20:18:02', '2014-01-29 20:18:02', 0, '', '', '', '', '', '', 0, 0, 0, 1, '', '', 1, 1),
(4, 0, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, 0, 0, 1, '', '', 1, 1),
(5, 0, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, 0, 0, 1, '', '', 1, 1),
(6, 0, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, 0, 0, 1, '', '', 1, 1),
(7, 0, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, 0, 0, 1, '', '', 1, 1),
(8, 9, 'kts3212', 'kts3212@yicheng120.com', '2014-01-29 03:06:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(9, 10, 'kts32123', 'kts32123@yicheng120.com', '2014-01-29 03:08:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(10, 14, 'kts32126', '123123@123.com', '2014-01-29 03:11:06', '0000-00-00 00:00:00', '2014-01-29 03:34:57', 2, '120.192.230.226', '610103198408250439', '13911762825', 'adsfasdf', '38993658', 'http://weibo.com/adsfasfd', 0, 0, 0, 1, '', '', 0, 1),
(11, 3, '12332123', NULL, '2014-01-29 20:22:10', '2014-01-29 20:22:10', '2014-02-14 05:47:34', 20, '119.161.222.76', '', '', '', '', '', 30, 0, 0, 1, '', '', 0, 1),
(12, 15, 'ktskts123', 'ktskts123@yicheng120.com', '2014-01-29 21:18:37', '2014-01-29 21:18:37', '2014-02-14 05:48:36', 20, '119.161.222.76', '', '', '', '', '', 30, 0, 0, 2, '首都医科大学', '主任医师', 0, 1),
(13, 16, 'kkttss123', 'kkttss123@yicheng120.com', '2014-02-09 10:12:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 10, 0, 0, 1, '', '', 0, 1),
(14, 7, '', NULL, NULL, '0000-00-00 00:00:00', '2014-02-14 03:22:59', 1, '10.227.13.78', '', '', '', '', '', 10, 0, 0, 1, '', '', 0, 1),
(15, 17, 'dreamww', 'dreamww@yicheng120.com', '2014-02-17 07:21:37', '0000-00-00 00:00:00', '2014-03-06 03:23:13', 18, '192.168.0.24', '', '', '', '', '', 30, 0, 0, 1, '', '', 0, 1),
(16, 18, '18511301992', '', '2014-02-28 05:16:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '18511301992', '', '', '', 10, 1, 0, 1, '', '', 0, 1),
(17, 1062, 'yeswzc', '', '2014-02-28 06:17:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 20, 0, 0, 1, '', '', 0, 1),
(18, 1062, 'yeswzc@126.com', '', '2014-03-03 01:41:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 10, 0, 0, 1, '', '', 0, 1),
(19, 1062, 'yeswzc', '', '2014-03-03 01:57:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(20, 1062, 'yeswzc@126.com', '', '2014-03-03 02:38:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(21, 1062, 'woaini', '', '2014-03-03 02:47:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(22, 1062, 'woaini', '', '2014-03-03 02:51:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(23, 1062, '18511301993', '', '2014-03-03 02:52:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '18511301993', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(24, 1062, 'dreamww2', '', '2014-03-04 02:36:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(25, 1062, 'dreamww3', '', '2014-03-04 02:37:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 0, 0, 0, 1, '', '', 0, 1),
(26, 21, 'çŽ‹ä¼Ÿ1', '', '2014-03-04 09:23:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0', '', '', '', '', '', 10, 0, 0, 1, '', '', 0, 1),
(27, 22, '18511301999', '', '2014-03-06 03:28:53', '0000-00-00 00:00:00', '2014-03-06 06:45:39', 2, '192.168.0.33', '', '18511301999', '', '', '', 20, 0, 0, 1, '', '', 0, 1),
(28, 23, 'dreamww3', '', '2014-03-10 01:12:28', '0000-00-00 00:00:00', '2014-03-10 01:14:45', 1, '0.0.0.0', '', '', '', '', '', 20, 0, 0, 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `member_doctor`
--

CREATE TABLE IF NOT EXISTS `member_doctor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` char(32) NOT NULL DEFAULT '0' COMMENT '用户id',
  `hospital` char(100) NOT NULL COMMENT '所在医院名称',
  `position` char(18) NOT NULL COMMENT '医师职位',
  `introduction` text NOT NULL COMMENT '医生简介',
  `reg_money` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '挂号费',
  `diagnosis_cost` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '每分钟诊断费用',
  `free_cost` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '问诊免费时长',
  `service_time` char(13) NOT NULL COMMENT '自定义星期问诊时间0,1,2,3,4,5,6表示',
  `m_register_mode` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上午是否问诊',
  `m_register_limit` char(30) NOT NULL COMMENT '上午问诊时间段',
  `a_register_mode` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '下午是否问诊',
  `a_register_limit` char(30) NOT NULL COMMENT '下午问诊时间段',
  `departments` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='医生信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `qa`
--

CREATE TABLE IF NOT EXISTS `qa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consult_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `file_link` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1回答.2追问',
  `star` tinyint(4) NOT NULL,
  `show_index` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `qa`
--

INSERT INTO `qa` (`id`, `consult_id`, `parent_id`, `uid`, `doctor_id`, `content`, `file_link`, `create_time`, `type`, `star`, `show_index`, `status`) VALUES
(1, 0, 0, 0, 22, '我爱你 你知道么 哈哈哈哈哈', '', '2014-03-06 05:25:18', 0, 0, 0, 1),
(2, 0, 0, 0, 22, '是电饭锅电饭锅电饭锅发给', '', '2014-03-06 05:55:19', 0, 0, 0, 1),
(3, 0, 0, 0, 22, '豆腐干豆腐花房管局和规划局', '', '2014-03-06 05:55:32', 0, 0, 0, 1),
(4, 0, 0, 0, 22, '士大夫士大夫士大夫士大夫', '', '2014-03-06 06:45:44', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `val` varchar(50) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_link` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `datatime` date NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1.化验单，2身体指标',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `report`
--

INSERT INTO `report` (`id`, `uid`, `title`, `val`, `create_time`, `file_link`, `desc`, `datatime`, `type`, `status`) VALUES
(1, 0, '1', '1', '2014-01-29 07:51:53', 'http://yc120-uploads.stor.sinaapp.com/Uploads/2014-01-29/52e8651c0c459.jpg	', '阿萨德发生发生地方', '2014-01-29', 1, 1),
(2, 0, 'aa', '3', '2014-01-29 07:51:53', 'http://yc120-uploads.stor.sinaapp.com/Uploads/2014-01-29/52e8651c0c459.jpg	', '', '2014-01-08', 1, 1),
(3, 0, '得到', '3', '2014-01-29 07:51:53', 'http://yc120-uploads.stor.sinaapp.com/Uploads/2014-01-29/52e8651c0c459.jpg	', '', '2014-01-02', 1, 1),
(4, 0, '得到', '3', '2014-01-29 07:51:53', 'http://yc120-uploads.stor.sinaapp.com/Uploads/2014-01-29/52e8651c0c459.jpg	', '范德萨仿盛大', '2014-01-02', 1, 1),
(5, 0, '得到', '3', '2014-01-29 07:51:53', 'http://yc120-uploads.stor.sinaapp.com//Uploads/2014-01-29/52e86393e29ca.jpg', '范德萨仿盛大', '2014-01-02', 1, 1),
(6, 0, 'fdsa', '22', '2014-01-29 07:51:53', 'http://yc120-uploads.stor.sinaapp.com/Uploads/2014-01-29/52e8651c0c459.jpg', 'fdsafas', '2014-01-16', 1, 1),
(7, 3, '范德萨', '1', '2014-01-29 07:51:53', 'http://yc120-uploads.stor.sinaapp.com/Uploads/2014-01-29/52e8a29f10d7a.jpg', '范德萨', '2014-01-08', 1, 1),
(8, 15, '血糖', '12', '2014-01-29 07:51:14', '', '哀伤的发生大幅撒地方', '2014-01-29', 2, 1),
(9, 3, '3', 'd', '2014-01-29 14:36:18', '', 'fsda', '2014-01-02', 2, 1),
(10, 3, '血糖', '94', '2014-01-29 14:37:30', 'http://yc120-uploads.stor.sinaapp.com/Uploads/2014-01-29/52e91207a6d60.png', '正常', '2014-01-29', 1, 1),
(11, 17, '血糖', '1', '2014-02-19 00:30:22', '', '房贷首付多少', '2014-02-14', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `report_sug`
--

CREATE TABLE IF NOT EXISTS `report_sug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `master_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `desc` varchar(5000) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `qa_id` int(10) unsigned NOT NULL COMMENT '问题表id',
  `reservation_time` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL COMMENT '1=未预约、2=已预约未开始、3=正在面诊、4=正常结束面诊、5=时间过期用户未进入结束、6=时间超过问诊时间医生未进入结束、7=未知异常结束、8=拒绝预约',
  `process_time` int(10) unsigned NOT NULL,
  `record` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `prompt` text NOT NULL COMMENT '提示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `reservation`
--

INSERT INTO `reservation` (`id`, `uid`, `doctor_id`, `qa_id`, `reservation_time`, `time`, `status`, `process_time`, `record`, `video`, `prompt`) VALUES
(1, 22, 17, 1, 1394085400, 0, 7, 0, '', '', '您在<span class="orange">17:00~17:30</span>时预约了<span class="blue">dreamww</span>进行面诊'),
(5, 22, 17, 3, 1394086951, 0, 7, 0, '', '', '您在<span class="orange">14:00~14:30</span>时预约了<span class="blue">dreamww</span>进行面诊'),
(6, 22, 17, 4, 1394088587, 0, 7, 0, '', '', '正在问诊');

-- --------------------------------------------------------

--
-- 表的结构 `reservation_record`
--

CREATE TABLE IF NOT EXISTS `reservation_record` (
  `uid` int(10) unsigned NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `time` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `reservation_record`
--

INSERT INTO `reservation_record` (`uid`, `doctor_id`, `rid`, `content`, `time`) VALUES
(17, 22, 6, '2323423', 1394090091),
(17, 22, 6, '??? \n', 1394090125),
(17, 22, 6, '??????', 1394090130),
(17, 22, 6, '232323', 1394090177),
(17, 22, 6, '121212', 1394090189),
(17, 22, 6, '3333', 1394090191),
(17, 22, 6, '444', 1394090193);

-- --------------------------------------------------------

--
-- 表的结构 `search`
--

CREATE TABLE IF NOT EXISTS `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `all` text NOT NULL,
  `show` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `slide`
--

INSERT INTO `slide` (`all`, `show`) VALUES
('[{"link":"http://yc120-uploads.stor.sinaapp.com/Uploads/2014-02-08/52f63afbe7c71.jpg","is_show":"0"},{"link":"http://yc120-uploads.stor.sinaapp.com/Uploads/2014-02-08/52f63fb1af500.jpg","is_show":"1"},{"link":"http://yc120-uploads.stor.sinaapp.com/Uploads/2014-02-08/52f63b022682f.jpg","is_show":"1"}]', '[{"link":"http://yc120-uploads.stor.sinaapp.com/Uploads/2014-02-08/52f63fb1af500.jpg"},{"link":"http://yc120-uploads.stor.sinaapp.com/Uploads/2014-02-08/52f63b022682f.jpg"}]');

-- --------------------------------------------------------

--
-- 表的结构 `test_report`
--

CREATE TABLE IF NOT EXISTS `test_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `desc` varchar(3000) NOT NULL,
  `test_status` tinyint(4) NOT NULL COMMENT '0其他,1吃饭之前,2刚吃过饭,3吃完饭一小时之后',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL COMMENT '1大夫，2朋友',
  `kith_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `test_report`
--

INSERT INTO `test_report` (`id`, `uid`, `desc`, `test_status`, `create_time`, `type`, `kith_id`, `status`) VALUES
(1, 3, '', 0, '2014-01-29 06:32:07', 1, 0, 1),
(2, 3, '', 0, '2014-01-29 08:07:49', 2, 0, 1),
(3, 3, 'dsaDASdsaDSAff', 0, '2014-01-29 08:09:02', 2, 0, 1),
(4, 3, 'dsaDASdsaDSAff', 0, '2014-01-29 08:10:13', 2, 0, 1),
(5, 15, '啊对时发生大幅', 0, '2014-01-29 19:06:07', 1, 0, 1),
(6, 3, '范德萨', 0, '2014-02-08 16:18:12', 1, 0, 1),
(7, 18, 'å£«å¤§å¤«å£«å¤§å¤«', 0, '2014-02-28 05:16:53', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_auth_group`
--

CREATE TABLE IF NOT EXISTS `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `think_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `think_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_auth_rule`
--

CREATE TABLE IF NOT EXISTS `think_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `uc_ucenter_admin`
--

CREATE TABLE IF NOT EXISTS `uc_ucenter_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员用户ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '管理员状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `uc_ucenter_app`
--

CREATE TABLE IF NOT EXISTS `uc_ucenter_app` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '应用ID',
  `title` varchar(30) NOT NULL COMMENT '应用名称',
  `url` varchar(100) NOT NULL COMMENT '应用URL',
  `ip` char(15) NOT NULL COMMENT '应用IP',
  `auth_key` varchar(100) NOT NULL COMMENT '加密KEY',
  `sys_login` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '同步登陆',
  `allow_ip` varchar(255) NOT NULL COMMENT '允许访问的IP',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '应用状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `uc_ucenter_member`
--

CREATE TABLE IF NOT EXISTS `uc_ucenter_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `email` char(32) DEFAULT NULL COMMENT '用户邮箱',
  `mobile` char(15) DEFAULT NULL COMMENT '用户手机',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '用户状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `uc_ucenter_member`
--

INSERT INTO `uc_ucenter_member` (`id`, `username`, `password`, `email`, `mobile`, `reg_time`, `reg_ip`, `last_login_time`, `last_login_ip`, `update_time`, `status`) VALUES
(1, 'ycyc120', 'ff3ecc751f69bb81030370c917a99f10', 'kts2tt@gmail.com', '', 1389774322, 181469279, 1389775760, 181469279, 1389774322, 1),
(2, 'ktskts', 'a31acfd071f017ab4f58a55f23832d6e', 'ktskts@yicheng120.com', '', 1390462154, 181469279, 1390463066, 181469279, 1390462154, 1),
(3, 'zhaobo', '1e170428a78c1a13bbd4855862a3f74c', 'zhaobo@yicheng120.com', '', 1390462492, 182652226, 1392356854, 2007096908, 1390462492, 1),
(4, 'zhaobo2', 'a31acfd071f017ab4f58a55f23832d6e', 'zhaobo2@yicheng120.com', '', 1390531556, 182652226, 1390535932, 182652226, 1390531556, 1),
(5, 'zhaobo3', 'a31acfd071f017ab4f58a55f23832d6e', 'zhaobo3@yicheng120.com', '', 1390531719, 182652226, 0, 0, 1390531719, 1),
(6, 'zhaobo4', 'a31acfd071f017ab4f58a55f23832d6e', 'zhaobo4@yicheng120.com', '', 1390531750, 182652226, 0, 0, 1390531750, 1),
(7, 'kts123', 'a31acfd071f017ab4f58a55f23832d6e', 'kts123@yicheng120.com', '', 1390897963, 2025907949, 1392348179, 182652238, 1390897963, 1),
(8, 'kts321', '0e430772092bbf24c63ecc053a8b4214', 'kts321@yicheng120.com', '', 1390964489, 2025907938, 0, 0, 1390964489, 1),
(9, 'kts3212', '0e430772092bbf24c63ecc053a8b4214', 'kts3212@yicheng120.com', '', 1390964764, 2025907938, 0, 0, 1390964764, 1),
(10, 'kts32123', '0e430772092bbf24c63ecc053a8b4214', 'kts32123@yicheng120.com', '', 1390964918, 2025907938, 0, 0, 1390964918, 1),
(11, 'kts32124', '0e430772092bbf24c63ecc053a8b4214', 'kts32124@yicheng120.com', '', 1390964974, 2025907938, 0, 0, 1390964974, 1),
(12, 'kts32125', '0e430772092bbf24c63ecc053a8b4214', 'kts32125@yicheng120.com', '', 1390965006, 2025907938, 0, 0, 1390965006, 1),
(13, 'puding', 'a31acfd071f017ab4f58a55f23832d6e', 'puding@yicheng120.com', '', 1390965043, 182652226, 0, 0, 1390965043, 1),
(14, 'kts32126', '0e430772092bbf24c63ecc053a8b4214', 'kts32126@yicheng120.com', '', 1390965066, 2025907938, 1390966497, 2025907938, 1390965066, 1),
(15, 'ktskts123', 'a31acfd071f017ab4f58a55f23832d6e', 'ktskts123@yicheng120.com', '', 1390976425, 2025907938, 1392356916, 2007096908, 1390976425, 1),
(16, 'kkttss123', '26d61156b7488e11dc848517dd967f67', 'kkttss123@yicheng120.com', '', 1391940774, 1033178455, 0, 0, 1391940774, 1),
(17, 'dreamww', '9fecb9db8366969ab4b280181a669d5d', 'dreamww@yicheng120.com', '', 1392621696, 0, 1394076193, 3232235544, 1392621696, 1),
(18, '18511301992', '14efb88917f9ba52c56c29a1e9de6316', '', '18511301992', 1393564570, 2130706433, 0, 0, 1393564570, 1),
(19, 'dreamww4', '9fecb9db8366969ab4b280181a669d5d', NULL, NULL, 1393922645, 0, 0, 0, 1393922645, 1),
(20, 'çŽ‹ä¼Ÿ', '9fecb9db8366969ab4b280181a669d5d', NULL, NULL, 1393924922, 0, 0, 0, 1393924922, 1),
(21, 'çŽ‹ä¼Ÿ1', '9fecb9db8366969ab4b280181a669d5d', NULL, NULL, 1393924997, 0, 0, 0, 1393924997, 1),
(22, '18511301999', '7fc66cb2563de8d1bbce4f26258539f6', NULL, '18511301999', 1394076533, 3232235553, 1394088339, 3232235553, 1394076533, 1),
(23, 'dreamww3', '9fecb9db8366969ab4b280181a669d5d', NULL, NULL, 1394413948, 0, 1394414085, 0, 1394413948, 1);

-- --------------------------------------------------------

--
-- 表的结构 `uc_ucenter_setting`
--

CREATE TABLE IF NOT EXISTS `uc_ucenter_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '设置ID',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型（1-用户配置）',
  `value` text NOT NULL COMMENT '配置数据',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='设置表' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
