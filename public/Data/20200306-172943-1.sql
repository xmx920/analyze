
-- -----------------------------
-- Table structure for `tp_ad`
-- -----------------------------
DROP TABLE IF EXISTS `tp_ad`;
CREATE TABLE `tp_ad` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type_id` mediumint(8) NOT NULL COMMENT '类型ID',
  `name` varchar(250) NOT NULL COMMENT '广告名称',
  `image` varchar(250) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(250) DEFAULT NULL COMMENT '缩略图',
  `url` varchar(250) DEFAULT NULL COMMENT '链接地址',
  `description` varchar(250) DEFAULT NULL COMMENT '备注',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- -----------------------------
-- Records of `tp_ad`
-- -----------------------------
INSERT INTO `tp_ad` VALUES ('1', '1', 'banner_1 ', '/uploads/20181225/b671c6f234a72c2e6560c63ddd9dc0ff.jpg', '/uploads/20181225/b671c6f234a72c2e6560c63ddd9dc0ff.jpg', '', '免费、开源\r\n快速、简单', '1', '1', '1541128222', '1553154525');
INSERT INTO `tp_ad` VALUES ('2', '1', 'banner_2', '/uploads/20181225/25670f5712b4acfb61c5d2a1bce79225.jpg', '/uploads/20181225/25670f5712b4acfb61c5d2a1bce79225.jpg', '', 'banner_2', '2', '1', '1545719151', '1551937531');

-- -----------------------------
-- Table structure for `tp_ad_type`
-- -----------------------------
DROP TABLE IF EXISTS `tp_ad_type`;
CREATE TABLE `tp_ad_type` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告位表';

-- -----------------------------
-- Records of `tp_ad_type`
-- -----------------------------
INSERT INTO `tp_ad_type` VALUES ('1', '【首页】顶部通栏', '导航下的焦点图', '1', '1', '0', '1551936878');
INSERT INTO `tp_ad_type` VALUES ('2', '【内页】顶部通栏', '内页顶部通栏', '2', '1', '0', '1551936840');

-- -----------------------------
-- Table structure for `tp_admin`
-- -----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `logintime` int(10) DEFAULT NULL COMMENT '时间',
  `loginip` char(20) DEFAULT NULL COMMENT 'IP',
  `status` int(1) DEFAULT '0' COMMENT '状态（1 正常，0 锁定）',
  `nickname` char(100) DEFAULT NULL COMMENT '真实姓名',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- -----------------------------
-- Records of `tp_admin`
-- -----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1583478223', '127.0.0.1', '1', 'admin', '', '1553846932', '1583476711');

-- -----------------------------
-- Table structure for `tp_admin_log`
-- -----------------------------
DROP TABLE IF EXISTS `tp_admin_log`;
CREATE TABLE `tp_admin_log` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) DEFAULT '' COMMENT '管理员',
  `url` varchar(1500) DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) DEFAULT '' COMMENT '日志标题',
  `content` text COMMENT '内容',
  `ip` varchar(50) DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) DEFAULT '' COMMENT 'User-Agent',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- -----------------------------
-- Records of `tp_admin_log`
-- -----------------------------
INSERT INTO `tp_admin_log` VALUES ('1', '1', 'admin', '/', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583421485');
INSERT INTO `tp_admin_log` VALUES ('2', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583421497');
INSERT INTO `tp_admin_log` VALUES ('3', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583421497');
INSERT INTO `tp_admin_log` VALUES ('4', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583421503');
INSERT INTO `tp_admin_log` VALUES ('5', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583421503');
INSERT INTO `tp_admin_log` VALUES ('6', '1', 'admin', '/', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583422195');
INSERT INTO `tp_admin_log` VALUES ('7', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583422418');
INSERT INTO `tp_admin_log` VALUES ('8', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583422754');
INSERT INTO `tp_admin_log` VALUES ('9', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583422754');
INSERT INTO `tp_admin_log` VALUES ('10', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583422930');
INSERT INTO `tp_admin_log` VALUES ('11', '1', 'admin', '/System/systemPost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"democms\",\"logo\":\"\\/static\\/admin\\/images\\/photo.jpg\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"www.xxx.com\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"SIYUCMS \\u5b98\\u7f51\",\"key\":\"SIYUCMS\\uff0cSIYUCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"SIYUCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423067');
INSERT INTO `tp_admin_log` VALUES ('12', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423068');
INSERT INTO `tp_admin_log` VALUES ('13', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423071');
INSERT INTO `tp_admin_log` VALUES ('14', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423076');
INSERT INTO `tp_admin_log` VALUES ('15', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423083');
INSERT INTO `tp_admin_log` VALUES ('16', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423083');
INSERT INTO `tp_admin_log` VALUES ('17', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423149');
INSERT INTO `tp_admin_log` VALUES ('18', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423149');
INSERT INTO `tp_admin_log` VALUES ('19', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423164');
INSERT INTO `tp_admin_log` VALUES ('20', '1', 'admin', '/System/systemPost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"democms\",\"logo\":\"\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"www.xxx.com\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"SIYUCMS \\u5b98\\u7f51\",\"key\":\"SIYUCMS\\uff0cSIYUCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"SIYUCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423170');
INSERT INTO `tp_admin_log` VALUES ('21', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423171');
INSERT INTO `tp_admin_log` VALUES ('22', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423186');
INSERT INTO `tp_admin_log` VALUES ('23', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423215');
INSERT INTO `tp_admin_log` VALUES ('24', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423225');
INSERT INTO `tp_admin_log` VALUES ('25', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423225');
INSERT INTO `tp_admin_log` VALUES ('26', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423270');
INSERT INTO `tp_admin_log` VALUES ('27', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423271');
INSERT INTO `tp_admin_log` VALUES ('28', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423288');
INSERT INTO `tp_admin_log` VALUES ('29', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423288');
INSERT INTO `tp_admin_log` VALUES ('30', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423405');
INSERT INTO `tp_admin_log` VALUES ('31', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423406');
INSERT INTO `tp_admin_log` VALUES ('32', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423476');
INSERT INTO `tp_admin_log` VALUES ('33', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423477');
INSERT INTO `tp_admin_log` VALUES ('34', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423479');
INSERT INTO `tp_admin_log` VALUES ('35', '1', 'admin', '/System/systemPost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"democms\",\"logo\":\"\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"www.xxx.com\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"democms\",\"key\":\"democms\\u5173\\u952e\\u5b57\",\"des\":\"democms\\u5173\\u952e\\u5b57\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423506');
INSERT INTO `tp_admin_log` VALUES ('36', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423507');
INSERT INTO `tp_admin_log` VALUES ('37', '1', 'admin', '/System/systemPost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"democms\",\"logo\":\"\",\"file\":\"\",\"icp\":\"\\u6e1dICP\\u5907123456\\u53f7\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"www.xxx.com\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"democms\",\"key\":\"democms\\u5173\\u952e\\u5b57\",\"des\":\"democms\\u5173\\u952e\\u5b57\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423562');
INSERT INTO `tp_admin_log` VALUES ('38', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423563');
INSERT INTO `tp_admin_log` VALUES ('39', '1', 'admin', '/System/systemPost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"democms\",\"logo\":\"\",\"file\":\"\",\"icp\":\"\\u6e1dICP\\u5907123456\\u53f7\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"www.xxx.com\",\"address\":\"\\u91cd\\u5e86\\u5e02\\u6e1d\\u5317\\u533a\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"159 2388 6045\",\"fax\":\"010-8888 9999\",\"email\":\"916579252@qq.com\",\"qq\":\"916579252\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"democms\",\"key\":\"democms\\u5173\\u952e\\u5b57\",\"des\":\"democms\\u5173\\u952e\\u5b57\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423592');
INSERT INTO `tp_admin_log` VALUES ('40', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423593');
INSERT INTO `tp_admin_log` VALUES ('41', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423594');
INSERT INTO `tp_admin_log` VALUES ('42', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423599');
INSERT INTO `tp_admin_log` VALUES ('43', '1', 'admin', '/SystemGroup/index.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置分组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423600');
INSERT INTO `tp_admin_log` VALUES ('44', '1', 'admin', '/Auth/adminList.html?_pjax=.content-wrapper', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423603');
INSERT INTO `tp_admin_log` VALUES ('45', '1', 'admin', '/Auth/adminList.html', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423611');
INSERT INTO `tp_admin_log` VALUES ('46', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423613');
INSERT INTO `tp_admin_log` VALUES ('47', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423613');
INSERT INTO `tp_admin_log` VALUES ('48', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423613');
INSERT INTO `tp_admin_log` VALUES ('49', '1', 'admin', '/Auth/adminList.html?_pjax=.content-wrapper', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423615');
INSERT INTO `tp_admin_log` VALUES ('50', '1', 'admin', '/Auth/adminGroup.html?_pjax=.content-wrapper', '[权限管理] -> [角色组管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423615');
INSERT INTO `tp_admin_log` VALUES ('51', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423616');
INSERT INTO `tp_admin_log` VALUES ('52', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423618');
INSERT INTO `tp_admin_log` VALUES ('53', '1', 'admin', '/Database/optimize.html', '[数据库管理] -> [数据库备份] -> [操作-优化]', '{\"id\":\"tp_ad\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423626');
INSERT INTO `tp_admin_log` VALUES ('54', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423627');
INSERT INTO `tp_admin_log` VALUES ('55', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423628');
INSERT INTO `tp_admin_log` VALUES ('56', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423646');
INSERT INTO `tp_admin_log` VALUES ('57', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423652');
INSERT INTO `tp_admin_log` VALUES ('58', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423654');
INSERT INTO `tp_admin_log` VALUES ('59', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423798');
INSERT INTO `tp_admin_log` VALUES ('60', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423803');
INSERT INTO `tp_admin_log` VALUES ('61', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423805');
INSERT INTO `tp_admin_log` VALUES ('62', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423805');
INSERT INTO `tp_admin_log` VALUES ('63', '1', 'admin', '/SystemGroup/index.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置分组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423812');
INSERT INTO `tp_admin_log` VALUES ('64', '1', 'admin', '/SystemGroup/del.html', '[系统设置] -> [系统设置分组] -> [修改-删除]', '{\"id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423821');
INSERT INTO `tp_admin_log` VALUES ('65', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423835');
INSERT INTO `tp_admin_log` VALUES ('66', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423836');
INSERT INTO `tp_admin_log` VALUES ('67', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423837');
INSERT INTO `tp_admin_log` VALUES ('68', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423851');
INSERT INTO `tp_admin_log` VALUES ('69', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423852');
INSERT INTO `tp_admin_log` VALUES ('70', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423887');
INSERT INTO `tp_admin_log` VALUES ('71', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423889');
INSERT INTO `tp_admin_log` VALUES ('72', '1', 'admin', '/SystemGroup/index.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置分组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423889');
INSERT INTO `tp_admin_log` VALUES ('73', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423906');
INSERT INTO `tp_admin_log` VALUES ('74', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423920');
INSERT INTO `tp_admin_log` VALUES ('75', '1', 'admin', '/SystemGroup/index.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置分组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423921');
INSERT INTO `tp_admin_log` VALUES ('76', '1', 'admin', '/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423926');
INSERT INTO `tp_admin_log` VALUES ('77', '1', 'admin', '/Cate/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423926');
INSERT INTO `tp_admin_log` VALUES ('78', '1', 'admin', '/SystemGroup/index.html', '[系统设置] -> [系统设置分组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423927');
INSERT INTO `tp_admin_log` VALUES ('79', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423947');
INSERT INTO `tp_admin_log` VALUES ('80', '1', 'admin', '/Module/index.html?_pjax=.content-wrapper', '[模型管理] -> [模型列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583423972');
INSERT INTO `tp_admin_log` VALUES ('81', '1', 'admin', '/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424200');
INSERT INTO `tp_admin_log` VALUES ('82', '1', 'admin', '/Cate/index.html', '[栏目管理] -> [栏目列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424200');
INSERT INTO `tp_admin_log` VALUES ('83', '1', 'admin', '/', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424252');
INSERT INTO `tp_admin_log` VALUES ('84', '1', 'admin', '/Addons/index.html?_pjax=.content-wrapper', '[插件管理] -> [插件管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424289');
INSERT INTO `tp_admin_log` VALUES ('85', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424440');
INSERT INTO `tp_admin_log` VALUES ('86', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424440');
INSERT INTO `tp_admin_log` VALUES ('87', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424441');
INSERT INTO `tp_admin_log` VALUES ('88', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424443');
INSERT INTO `tp_admin_log` VALUES ('89', '1', 'admin', '/Tags/index.html?_pjax=.content-wrapper', '[网站功能] -> [标签管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424596');
INSERT INTO `tp_admin_log` VALUES ('90', '1', 'admin', '/Tags/index.html', '[网站功能] -> [标签管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424596');
INSERT INTO `tp_admin_log` VALUES ('91', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424611');
INSERT INTO `tp_admin_log` VALUES ('92', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424621');
INSERT INTO `tp_admin_log` VALUES ('93', '1', 'admin', '/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424622');
INSERT INTO `tp_admin_log` VALUES ('94', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424623');
INSERT INTO `tp_admin_log` VALUES ('95', '1', 'admin', '/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告位管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424624');
INSERT INTO `tp_admin_log` VALUES ('96', '1', 'admin', '/Debris/index.html?_pjax=.content-wrapper', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424624');
INSERT INTO `tp_admin_log` VALUES ('97', '1', 'admin', '/Debris/index.html', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424880');
INSERT INTO `tp_admin_log` VALUES ('98', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424883');
INSERT INTO `tp_admin_log` VALUES ('99', '1', 'admin', '/Auth/adminList.html?_pjax=.content-wrapper', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424887');
INSERT INTO `tp_admin_log` VALUES ('100', '1', 'admin', '/Auth/adminEdit.html?id=1&_pjax=.content-wrapper', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424889');
INSERT INTO `tp_admin_log` VALUES ('101', '1', 'admin', '/Auth/adminEdit.html?id=1', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424891');
INSERT INTO `tp_admin_log` VALUES ('102', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424896');
INSERT INTO `tp_admin_log` VALUES ('103', '1', 'admin', '/AdminLog/index.html?_pjax=.content-wrapper', '[权限管理] -> [管理员日志]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424897');
INSERT INTO `tp_admin_log` VALUES ('104', '1', 'admin', '/Auth/adminList.html?_pjax=.content-wrapper', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424898');
INSERT INTO `tp_admin_log` VALUES ('105', '1', 'admin', '/Auth/adminGroup.html?_pjax=.content-wrapper', '[权限管理] -> [角色组管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424899');
INSERT INTO `tp_admin_log` VALUES ('106', '1', 'admin', '/Auth/groupAccess.html?id=1&_pjax=.content-wrapper', '[权限管理] -> [角色组管理] -> [操作-权限]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424901');
INSERT INTO `tp_admin_log` VALUES ('107', '1', 'admin', '/Auth/groupAccess.html?id=1', '[权限管理] -> [角色组管理] -> [操作-权限]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424902');
INSERT INTO `tp_admin_log` VALUES ('108', '1', 'admin', '/Auth/adminGroup.html?_pjax=.content-wrapper', '[权限管理] -> [角色组管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424914');
INSERT INTO `tp_admin_log` VALUES ('109', '1', 'admin', '/Auth/groupEdit.html?id=1&_pjax=.content-wrapper', '[权限管理] -> [角色组管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424916');
INSERT INTO `tp_admin_log` VALUES ('110', '1', 'admin', '/AdminLog/index.html?_pjax=.content-wrapper', '[权限管理] -> [管理员日志]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424920');
INSERT INTO `tp_admin_log` VALUES ('111', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583424921');
INSERT INTO `tp_admin_log` VALUES ('112', '1', 'admin', '/Auth/adminList.html?_pjax=.content-wrapper', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425078');
INSERT INTO `tp_admin_log` VALUES ('113', '1', 'admin', '/Auth/adminGroup.html?_pjax=.content-wrapper', '[权限管理] -> [角色组管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425079');
INSERT INTO `tp_admin_log` VALUES ('114', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425079');
INSERT INTO `tp_admin_log` VALUES ('115', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425081');
INSERT INTO `tp_admin_log` VALUES ('116', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425109');
INSERT INTO `tp_admin_log` VALUES ('117', '1', 'admin', '/Database/backup.html', '[数据库管理] -> [数据库备份] -> [操作-备份]', '{\"id\":\"tp_test\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425120');
INSERT INTO `tp_admin_log` VALUES ('118', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425121');
INSERT INTO `tp_admin_log` VALUES ('119', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425184');
INSERT INTO `tp_admin_log` VALUES ('120', '1', 'admin', '/Database/optimize.html', '[数据库管理] -> [数据库备份] -> [操作-优化]', '{\"id\":\"tp_test\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425190');
INSERT INTO `tp_admin_log` VALUES ('121', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425192');
INSERT INTO `tp_admin_log` VALUES ('122', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425194');
INSERT INTO `tp_admin_log` VALUES ('123', '1', 'admin', '/Database/backup.html', '[数据库管理] -> [数据库备份] -> [操作-备份]', '{\"id\":\"tp_test\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425198');
INSERT INTO `tp_admin_log` VALUES ('124', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425199');
INSERT INTO `tp_admin_log` VALUES ('125', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425220');
INSERT INTO `tp_admin_log` VALUES ('126', '1', 'admin', '/Database/repair.html', '[数据库管理] -> [数据库备份] -> [操作-修复]', '{\"id\":\"tp_test\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425229');
INSERT INTO `tp_admin_log` VALUES ('127', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425230');
INSERT INTO `tp_admin_log` VALUES ('128', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425274');
INSERT INTO `tp_admin_log` VALUES ('129', '1', 'admin', '/Database/optimize.html', '[数据库管理] -> [数据库备份] -> [操作-优化]', '{\"id\":\"tp_test\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425284');
INSERT INTO `tp_admin_log` VALUES ('130', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425286');
INSERT INTO `tp_admin_log` VALUES ('131', '1', 'admin', '/Database/repair.html', '[数据库管理] -> [数据库备份] -> [操作-修复]', '{\"id\":\"tp_test\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425289');
INSERT INTO `tp_admin_log` VALUES ('132', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425291');
INSERT INTO `tp_admin_log` VALUES ('133', '1', 'admin', '/Database/backup.html', '[数据库管理] -> [数据库备份] -> [操作-备份]', '{\"id\":\"tp_test\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425295');
INSERT INTO `tp_admin_log` VALUES ('134', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425297');
INSERT INTO `tp_admin_log` VALUES ('135', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425326');
INSERT INTO `tp_admin_log` VALUES ('136', '1', 'admin', '/Database/repair.html', '[数据库管理] -> [数据库备份] -> [操作-修复]', '{\"id\":\"tp_test\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425333');
INSERT INTO `tp_admin_log` VALUES ('137', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425334');
INSERT INTO `tp_admin_log` VALUES ('138', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425335');
INSERT INTO `tp_admin_log` VALUES ('139', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425449');
INSERT INTO `tp_admin_log` VALUES ('140', '1', 'admin', '/Database/restore.html?_pjax=.content-wrapper', '[数据库管理] -> [还原数据库]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425450');
INSERT INTO `tp_admin_log` VALUES ('141', '1', 'admin', '/Database/import.html', '[数据库管理] -> [还原数据库] -> [操作-还原]', '{\"time\":\"1583425295\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425456');
INSERT INTO `tp_admin_log` VALUES ('142', '1', 'admin', '/Database/restore.html?_pjax=.content-wrapper', '[数据库管理] -> [还原数据库]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425457');
INSERT INTO `tp_admin_log` VALUES ('143', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425468');
INSERT INTO `tp_admin_log` VALUES ('144', '1', 'admin', '/Database/restore.html?_pjax=.content-wrapper', '[数据库管理] -> [还原数据库]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425469');
INSERT INTO `tp_admin_log` VALUES ('145', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425470');
INSERT INTO `tp_admin_log` VALUES ('146', '1', 'admin', '/Database/restore.html?_pjax=.content-wrapper', '[数据库管理] -> [还原数据库]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425474');
INSERT INTO `tp_admin_log` VALUES ('147', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425474');
INSERT INTO `tp_admin_log` VALUES ('148', '1', 'admin', '/Database/database.html', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425555');
INSERT INTO `tp_admin_log` VALUES ('149', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425557');
INSERT INTO `tp_admin_log` VALUES ('150', '1', 'admin', '/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425558');
INSERT INTO `tp_admin_log` VALUES ('151', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425559');
INSERT INTO `tp_admin_log` VALUES ('152', '1', 'admin', '/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告位管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425562');
INSERT INTO `tp_admin_log` VALUES ('153', '1', 'admin', '/Debris/index.html?_pjax=.content-wrapper', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425563');
INSERT INTO `tp_admin_log` VALUES ('154', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425565');
INSERT INTO `tp_admin_log` VALUES ('155', '1', 'admin', '/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425566');
INSERT INTO `tp_admin_log` VALUES ('156', '1', 'admin', '/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告位管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425567');
INSERT INTO `tp_admin_log` VALUES ('157', '1', 'admin', '/Debris/index.html?_pjax=.content-wrapper', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425568');
INSERT INTO `tp_admin_log` VALUES ('158', '1', 'admin', '/Debris/index.html', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583425949');
INSERT INTO `tp_admin_log` VALUES ('159', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426084');
INSERT INTO `tp_admin_log` VALUES ('160', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426087');
INSERT INTO `tp_admin_log` VALUES ('161', '1', 'admin', '/System/email.html', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426144');
INSERT INTO `tp_admin_log` VALUES ('162', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426149');
INSERT INTO `tp_admin_log` VALUES ('163', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426151');
INSERT INTO `tp_admin_log` VALUES ('164', '1', 'admin', '/Auth/adminList.html?_pjax=.content-wrapper', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426154');
INSERT INTO `tp_admin_log` VALUES ('165', '1', 'admin', '/Auth/adminGroup.html?_pjax=.content-wrapper', '[权限管理] -> [角色组管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426154');
INSERT INTO `tp_admin_log` VALUES ('166', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426155');
INSERT INTO `tp_admin_log` VALUES ('167', '1', 'admin', '/AdminLog/index.html?_pjax=.content-wrapper', '[权限管理] -> [管理员日志]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426155');
INSERT INTO `tp_admin_log` VALUES ('168', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426156');
INSERT INTO `tp_admin_log` VALUES ('169', '1', 'admin', '/Database/restore.html?_pjax=.content-wrapper', '[数据库管理] -> [还原数据库]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426157');
INSERT INTO `tp_admin_log` VALUES ('170', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426160');
INSERT INTO `tp_admin_log` VALUES ('171', '1', 'admin', '/Database/restore.html?_pjax=.content-wrapper', '[数据库管理] -> [还原数据库]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426162');
INSERT INTO `tp_admin_log` VALUES ('172', '1', 'admin', '/Database/delSqlFiles.html', '[数据库管理] -> [还原数据库] -> [操作-删除]', '{\"time\":\"1583425295\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426165');
INSERT INTO `tp_admin_log` VALUES ('173', '1', 'admin', '/Database/restore.html?_pjax=.content-wrapper', '[数据库管理] -> [还原数据库]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426166');
INSERT INTO `tp_admin_log` VALUES ('174', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583426187');
INSERT INTO `tp_admin_log` VALUES ('175', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583427575');
INSERT INTO `tp_admin_log` VALUES ('176', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583427580');
INSERT INTO `tp_admin_log` VALUES ('177', '1', 'admin', '/', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583427582');
INSERT INTO `tp_admin_log` VALUES ('178', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583427587');
INSERT INTO `tp_admin_log` VALUES ('179', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583427587');
INSERT INTO `tp_admin_log` VALUES ('180', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583427590');
INSERT INTO `tp_admin_log` VALUES ('181', '1', 'admin', '/Database/backup.html', '[数据库管理] -> [数据库备份] -> [操作-备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583427596');
INSERT INTO `tp_admin_log` VALUES ('182', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475449');
INSERT INTO `tp_admin_log` VALUES ('183', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475832');
INSERT INTO `tp_admin_log` VALUES ('184', '1', 'admin', '/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475835');
INSERT INTO `tp_admin_log` VALUES ('185', '1', 'admin', '/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告位管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475835');
INSERT INTO `tp_admin_log` VALUES ('186', '1', 'admin', '/Debris/index.html?_pjax=.content-wrapper', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475837');
INSERT INTO `tp_admin_log` VALUES ('187', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475865');
INSERT INTO `tp_admin_log` VALUES ('188', '1', 'admin', '/Auth/ruleAdd.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则] -> [操作-添加]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475868');
INSERT INTO `tp_admin_log` VALUES ('189', '1', 'admin', '/Auth/ruleAdd.html', '[权限管理] -> [菜单规则] -> [操作-添加]', '{\"pid\":\"0\",\"title\":\"\\u65b0\\u95fb\\u7ba1\\u7406\",\"name\":\"News\",\"icon\":\"fa fa-send\",\"status\":\"1\",\"auth_open\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475891');
INSERT INTO `tp_admin_log` VALUES ('190', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475892');
INSERT INTO `tp_admin_log` VALUES ('191', '1', 'admin', '/Auth/adminRule.html', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475893');
INSERT INTO `tp_admin_log` VALUES ('192', '1', 'admin', '/Auth/ruleAdd.html?id=250&_pjax=.content-wrapper', '[权限管理] -> [菜单规则] -> [操作-添加]', '{\"id\":\"250\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475914');
INSERT INTO `tp_admin_log` VALUES ('193', '1', 'admin', '/Auth/ruleAdd.html', '[权限管理] -> [菜单规则] -> [操作-添加]', '{\"pid\":\"250\",\"title\":\"\\u65b0\\u95fb\\u5217\\u8868\",\"name\":\"news\\/index\",\"icon\":\"\",\"status\":\"1\",\"auth_open\":\"1\",\"sort\":\"50\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475931');
INSERT INTO `tp_admin_log` VALUES ('194', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475932');
INSERT INTO `tp_admin_log` VALUES ('195', '1', 'admin', '/Auth/adminRule.html', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475933');
INSERT INTO `tp_admin_log` VALUES ('196', '1', 'admin', '/news/index.html?_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475934');
INSERT INTO `tp_admin_log` VALUES ('197', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475968');
INSERT INTO `tp_admin_log` VALUES ('198', '1', 'admin', '/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475976');
INSERT INTO `tp_admin_log` VALUES ('199', '1', 'admin', '/Debris/index.html?_pjax=.content-wrapper', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475980');
INSERT INTO `tp_admin_log` VALUES ('200', '1', 'admin', '/Debris/edit.html?id=1&_pjax=.content-wrapper', '[网站功能] -> [碎片管理] -> [  操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475982');
INSERT INTO `tp_admin_log` VALUES ('201', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475996');
INSERT INTO `tp_admin_log` VALUES ('202', '1', 'admin', '/Link/edit.html?id=1&_pjax=.content-wrapper', '[网站功能] -> [友情链接] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583475999');
INSERT INTO `tp_admin_log` VALUES ('203', '1', 'admin', '/Debris/index.html?_pjax=.content-wrapper', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476004');
INSERT INTO `tp_admin_log` VALUES ('204', '1', 'admin', '/Debris/edit.html?id=1&_pjax=.content-wrapper', '[网站功能] -> [碎片管理] -> [  操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476006');
INSERT INTO `tp_admin_log` VALUES ('205', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476556');
INSERT INTO `tp_admin_log` VALUES ('206', '1', 'admin', '/System/systemPost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"cncbq\",\"logo\":\"\",\"file\":\"\",\"icp\":\"\\u6e1dICP\\u5907123456\\u53f7\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"www.xxx.com\",\"address\":\"\\u91cd\\u5e86\\u5e02\\u6e1d\\u5317\\u533a\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"159 2388 6045\",\"fax\":\"010-8888 9999\",\"email\":\"916579252@qq.com\",\"qq\":\"916579252\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"suffix\":\"cncba\",\"title\":\"cncba\",\"key\":\"cncba\\u5173\\u952e\\u5b57\",\"des\":\"cncba\\u5173\\u952e\\u5b57\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476586');
INSERT INTO `tp_admin_log` VALUES ('207', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476587');
INSERT INTO `tp_admin_log` VALUES ('208', '1', 'admin', '/System/systemPost.html', '[系统设置] -> [系统设置] -> [操作-修改保存]', '{\"name\":\"cncba\",\"logo\":\"\",\"file\":\"\",\"icp\":\"\\u6e1dICP\\u5907123456\\u53f7\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"www.xxx.com\",\"address\":\"\\u91cd\\u5e86\\u5e02\\u6e1d\\u5317\\u533a\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"159 2388 6045\",\"fax\":\"010-8888 9999\",\"email\":\"916579252@qq.com\",\"qq\":\"916579252\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"suffix\":\"cncba\",\"title\":\"cncba\",\"key\":\"cncba\\u5173\\u952e\\u5b57\",\"des\":\"cncba\\u5173\\u952e\\u5b57\",\"mobile\":\"0\",\"code\":\"0\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"html\":\"html\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476589');
INSERT INTO `tp_admin_log` VALUES ('209', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476590');
INSERT INTO `tp_admin_log` VALUES ('210', '1', 'admin', '/System/system.html', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476591');
INSERT INTO `tp_admin_log` VALUES ('211', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476597');
INSERT INTO `tp_admin_log` VALUES ('212', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476604');
INSERT INTO `tp_admin_log` VALUES ('213', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476604');
INSERT INTO `tp_admin_log` VALUES ('214', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476614');
INSERT INTO `tp_admin_log` VALUES ('215', '1', 'admin', '/auth/adminedit.html?id=1&_pjax=.content-wrapper', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476623');
INSERT INTO `tp_admin_log` VALUES ('216', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476697');
INSERT INTO `tp_admin_log` VALUES ('217', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476697');
INSERT INTO `tp_admin_log` VALUES ('218', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476700');
INSERT INTO `tp_admin_log` VALUES ('219', '1', 'admin', '/auth/adminedit.html?id=1&_pjax=.content-wrapper', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476708');
INSERT INTO `tp_admin_log` VALUES ('220', '1', 'admin', '/Auth/adminEdit.html', '[权限管理] -> [管理员管理] -> [操作-修改]', '{\"id\":\"1\",\"group_id\":\"1\",\"username\":\"admin\",\"image\":\"\",\"file\":\"\",\"nickname\":\"admin\",\"status\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476711');
INSERT INTO `tp_admin_log` VALUES ('221', '1', 'admin', '/Auth/adminList.html?_pjax=.content-wrapper', '[权限管理] -> [管理员管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476712');
INSERT INTO `tp_admin_log` VALUES ('222', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476717');
INSERT INTO `tp_admin_log` VALUES ('223', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476717');
INSERT INTO `tp_admin_log` VALUES ('224', '1', 'admin', '/news/index.html?_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476721');
INSERT INTO `tp_admin_log` VALUES ('225', '1', 'admin', '/news/index.html', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583476721');
INSERT INTO `tp_admin_log` VALUES ('226', '1', 'admin', '/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583478223');
INSERT INTO `tp_admin_log` VALUES ('227', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583478223');
INSERT INTO `tp_admin_log` VALUES ('228', '1', 'admin', '/news/index.html?_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583478234');
INSERT INTO `tp_admin_log` VALUES ('229', '1', 'admin', '/news/index.html', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583478234');
INSERT INTO `tp_admin_log` VALUES ('230', '1', 'admin', '/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583478319');
INSERT INTO `tp_admin_log` VALUES ('231', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583478393');
INSERT INTO `tp_admin_log` VALUES ('232', '1', 'admin', '/Link/index.html', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583478618');
INSERT INTO `tp_admin_log` VALUES ('233', '1', 'admin', '/news/index.html', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583480974');
INSERT INTO `tp_admin_log` VALUES ('234', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481754');
INSERT INTO `tp_admin_log` VALUES ('235', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481757');
INSERT INTO `tp_admin_log` VALUES ('236', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481759');
INSERT INTO `tp_admin_log` VALUES ('237', '1', 'admin', '/SystemGroup/index.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置分组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481760');
INSERT INTO `tp_admin_log` VALUES ('238', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481761');
INSERT INTO `tp_admin_log` VALUES ('239', '1', 'admin', '/SystemGroup/index.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置分组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481762');
INSERT INTO `tp_admin_log` VALUES ('240', '1', 'admin', '/Auth/adminRule.html?_pjax=.content-wrapper', '[权限管理] -> [菜单规则]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481763');
INSERT INTO `tp_admin_log` VALUES ('241', '1', 'admin', '/AdminLog/index.html?_pjax=.content-wrapper', '[权限管理] -> [管理员日志]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481764');
INSERT INTO `tp_admin_log` VALUES ('242', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481765');
INSERT INTO `tp_admin_log` VALUES ('243', '1', 'admin', '/Database/restore.html?_pjax=.content-wrapper', '[数据库管理] -> [还原数据库]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481766');
INSERT INTO `tp_admin_log` VALUES ('244', '1', 'admin', '/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481768');
INSERT INTO `tp_admin_log` VALUES ('245', '1', 'admin', '/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [ 广告管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481768');
INSERT INTO `tp_admin_log` VALUES ('246', '1', 'admin', '/Debris/index.html?_pjax=.content-wrapper', '[网站功能] -> [碎片管理]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481770');
INSERT INTO `tp_admin_log` VALUES ('247', '1', 'admin', '/Users/index.html?_pjax=.content-wrapper', '[会员管理] -> [会员列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481772');
INSERT INTO `tp_admin_log` VALUES ('248', '1', 'admin', '/UsersType/index.html?_pjax=.content-wrapper', '[会员管理] -> [会员组]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481772');
INSERT INTO `tp_admin_log` VALUES ('249', '1', 'admin', '/news/index.html?_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481774');
INSERT INTO `tp_admin_log` VALUES ('250', '1', 'admin', '/news/index.html', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583481817');
INSERT INTO `tp_admin_log` VALUES ('251', '1', 'admin', '/News/index.html?keyword=%E5%92%A8%E8%AF%A2%E9%87%8F%E6%9A%B4%E5%A2%9E%E6%BB%A1%E6%84%8F%E5%BA%A6%E9%80%86%E5%8A%BF&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"\\u54a8\\u8be2\\u91cf\\u66b4\\u589e\\u6ee1\\u610f\\u5ea6\\u9006\\u52bf\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482268');
INSERT INTO `tp_admin_log` VALUES ('252', '1', 'admin', '/News/index.html?keyword=1&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"1\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482272');
INSERT INTO `tp_admin_log` VALUES ('253', '1', 'admin', '/News/index.html?keyword=%E5%92%A8%E8%AF%A2%E9%87%8F%E6%9A%B4%E5%A2%9E%E6%BB%A1%E6%84%8F%E5%BA%A6%E9%80%86%E5%8A%BF&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"\\u54a8\\u8be2\\u91cf\\u66b4\\u589e\\u6ee1\\u610f\\u5ea6\\u9006\\u52bf\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482274');
INSERT INTO `tp_admin_log` VALUES ('254', '1', 'admin', '/News/index.html?_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482275');
INSERT INTO `tp_admin_log` VALUES ('255', '1', 'admin', '/News/index.html?cate_id=12&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"12\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482302');
INSERT INTO `tp_admin_log` VALUES ('256', '1', 'admin', '/News/index.html?keyword=1&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"1\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482306');
INSERT INTO `tp_admin_log` VALUES ('257', '1', 'admin', '/News/index.html?cate_id=11&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482318');
INSERT INTO `tp_admin_log` VALUES ('258', '1', 'admin', '/News/index.html?keyword=&dateran=2020-03-05%20%E8%87%B3%202020-03-05&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"\",\"dateran\":\"2020-03-05 \\u81f3 2020-03-05\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482342');
INSERT INTO `tp_admin_log` VALUES ('259', '1', 'admin', '/News/index.html?keyword=&dateran=2020-03-05%20%E8%87%B3%202020-03-05', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"\",\"dateran\":\"2020-03-05 \\u81f3 2020-03-05\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482416');
INSERT INTO `tp_admin_log` VALUES ('260', '1', 'admin', '/News/index.html?cate_id=1&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482417');
INSERT INTO `tp_admin_log` VALUES ('261', '1', 'admin', '/News/index.html?keyword=1&dateran=&cate_id=1&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"1\",\"dateran\":\"\",\"cate_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482420');
INSERT INTO `tp_admin_log` VALUES ('262', '1', 'admin', '/News/index.html?cate_id=12&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"12\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482424');
INSERT INTO `tp_admin_log` VALUES ('263', '1', 'admin', '/News/index.html?keyword=1&dateran=&cate_id=12&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"1\",\"dateran\":\"\",\"cate_id\":\"12\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482501');
INSERT INTO `tp_admin_log` VALUES ('264', '1', 'admin', '/News/index.html?cate_id=11&keyword=1&0=dateran+%3D%3E+%24adteran&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"11\",\"keyword\":\"1\",\"0\":\"dateran => $adteran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482503');
INSERT INTO `tp_admin_log` VALUES ('265', '1', 'admin', '/News/index.html?cate_id=2&keyword=1&0=dateran+%3D%3E+%24adteran&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"1\",\"0\":\"dateran => $adteran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482508');
INSERT INTO `tp_admin_log` VALUES ('266', '1', 'admin', '/News/index.html?keyword=1&dateran=&cate_id=2&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"1\",\"dateran\":\"\",\"cate_id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482510');
INSERT INTO `tp_admin_log` VALUES ('267', '1', 'admin', '/News/index.html?cate_id=12&keyword=1&0=dateran+%3D%3E+%24adteran&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"12\",\"keyword\":\"1\",\"0\":\"dateran => $adteran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482512');
INSERT INTO `tp_admin_log` VALUES ('268', '1', 'admin', '/News/index.html?cate_id=1&keyword=1&0=dateran+%3D%3E+%24adteran&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"1\",\"0\":\"dateran => $adteran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482514');
INSERT INTO `tp_admin_log` VALUES ('269', '1', 'admin', '/News/index.html?cate_id=11&keyword=1&0=dateran+%3D%3E+%24adteran&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"11\",\"keyword\":\"1\",\"0\":\"dateran => $adteran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482515');
INSERT INTO `tp_admin_log` VALUES ('270', '1', 'admin', '/News/index.html?cate_id=11&keyword=1&0=dateran+%3D%3E+%24adteran', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"11\",\"keyword\":\"1\",\"0\":\"dateran => $adteran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482527');
INSERT INTO `tp_admin_log` VALUES ('271', '1', 'admin', '/News/index.html?cate_id=2&keyword=1&0=dateran+%3D%3E+%24dateran&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"1\",\"0\":\"dateran => $dateran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482528');
INSERT INTO `tp_admin_log` VALUES ('272', '1', 'admin', '/News/index.html?cate_id=3&keyword=1&0=dateran+%3D%3E+%24dateran&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"1\",\"0\":\"dateran => $dateran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482534');
INSERT INTO `tp_admin_log` VALUES ('273', '1', 'admin', '/News/index.html?keyword=1&dateran=2020-03-05%20%E8%87%B3%202020-03-05&cate_id=3&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"1\",\"dateran\":\"2020-03-05 \\u81f3 2020-03-05\",\"cate_id\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482537');
INSERT INTO `tp_admin_log` VALUES ('274', '1', 'admin', '/News/index.html?cate_id=13&keyword=1&0=dateran+%3D%3E+%24dateran&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"13\",\"keyword\":\"1\",\"0\":\"dateran => $dateran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482539');
INSERT INTO `tp_admin_log` VALUES ('275', '1', 'admin', '/News/index.html?cate_id=13&keyword=1&0=dateran+%3D%3E+%24dateran', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"13\",\"keyword\":\"1\",\"0\":\"dateran => $dateran\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482552');
INSERT INTO `tp_admin_log` VALUES ('276', '1', 'admin', '/News/index.html?cate_id=3&keyword=1&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"1\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482554');
INSERT INTO `tp_admin_log` VALUES ('277', '1', 'admin', '/News/index.html?keyword=1&dateran=2020-03-05%20%E8%87%B3%202020-03-05&cate_id=3&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"keyword\":\"1\",\"dateran\":\"2020-03-05 \\u81f3 2020-03-05\",\"cate_id\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482556');
INSERT INTO `tp_admin_log` VALUES ('278', '1', 'admin', '/News/index.html?cate_id=13&keyword=1&dateran=2020-03-05+%E8%87%B3+2020-03-05&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"13\",\"keyword\":\"1\",\"dateran\":\"2020-03-05 \\u81f3 2020-03-05\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482557');
INSERT INTO `tp_admin_log` VALUES ('279', '1', 'admin', '/News/index.html?cate_id=12&keyword=1&dateran=2020-03-05+%E8%87%B3+2020-03-05&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"12\",\"keyword\":\"1\",\"dateran\":\"2020-03-05 \\u81f3 2020-03-05\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482564');
INSERT INTO `tp_admin_log` VALUES ('280', '1', 'admin', '/News/index.html?cate_id=12&keyword=1&dateran=2020-03-05+%E8%87%B3+2020-03-05', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"12\",\"keyword\":\"1\",\"dateran\":\"2020-03-05 \\u81f3 2020-03-05\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583482803');
INSERT INTO `tp_admin_log` VALUES ('281', '1', 'admin', '/News/index.html?_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583483097');
INSERT INTO `tp_admin_log` VALUES ('282', '1', 'admin', '/News/index.html', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583483113');
INSERT INTO `tp_admin_log` VALUES ('283', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583483588');
INSERT INTO `tp_admin_log` VALUES ('284', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583483595');
INSERT INTO `tp_admin_log` VALUES ('285', '1', 'admin', '/News/index.html?cate_id=2&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583483600');
INSERT INTO `tp_admin_log` VALUES ('286', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583483652');
INSERT INTO `tp_admin_log` VALUES ('287', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583484029');
INSERT INTO `tp_admin_log` VALUES ('288', '1', 'admin', '/News/index.html?cate_id=3&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583484031');
INSERT INTO `tp_admin_log` VALUES ('289', '1', 'admin', '/News/index.html?cate_id=3&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583484088');
INSERT INTO `tp_admin_log` VALUES ('290', '1', 'admin', '/News/index.html?cate_id=3', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583484091');
INSERT INTO `tp_admin_log` VALUES ('291', '1', 'admin', '/News/index.html?cate_id=3&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583484092');
INSERT INTO `tp_admin_log` VALUES ('292', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583484096');
INSERT INTO `tp_admin_log` VALUES ('293', '1', 'admin', '/News/index.html?cate_id=5&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"5\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583484153');
INSERT INTO `tp_admin_log` VALUES ('294', '1', 'admin', '/News/index.html?cate_id=5&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"5\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583485207');
INSERT INTO `tp_admin_log` VALUES ('295', '1', 'admin', '/News/index.html?cate_id=5&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"5\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583485223');
INSERT INTO `tp_admin_log` VALUES ('296', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583485254');
INSERT INTO `tp_admin_log` VALUES ('297', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583485254');
INSERT INTO `tp_admin_log` VALUES ('298', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583485487');
INSERT INTO `tp_admin_log` VALUES ('299', '1', 'admin', '/News/index.html?_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583485960');
INSERT INTO `tp_admin_log` VALUES ('300', '1', 'admin', '/News/index.html', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486007');
INSERT INTO `tp_admin_log` VALUES ('301', '1', 'admin', '/News/index.html?_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486009');
INSERT INTO `tp_admin_log` VALUES ('302', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486022');
INSERT INTO `tp_admin_log` VALUES ('303', '1', 'admin', '/News/index.html?cate_id=2&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486023');
INSERT INTO `tp_admin_log` VALUES ('304', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486024');
INSERT INTO `tp_admin_log` VALUES ('305', '1', 'admin', '/News/index.html?cate_id=2&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486034');
INSERT INTO `tp_admin_log` VALUES ('306', '1', 'admin', '/News/index.html?cate_id=2&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486176');
INSERT INTO `tp_admin_log` VALUES ('307', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486177');
INSERT INTO `tp_admin_log` VALUES ('308', '1', 'admin', '/News/index.html?cate_id=1', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486238');
INSERT INTO `tp_admin_log` VALUES ('309', '1', 'admin', '/News/index.html?cate_id=4&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486287');
INSERT INTO `tp_admin_log` VALUES ('310', '1', 'admin', '/News/index.html?cate_id=4', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486421');
INSERT INTO `tp_admin_log` VALUES ('311', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486625');
INSERT INTO `tp_admin_log` VALUES ('312', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486627');
INSERT INTO `tp_admin_log` VALUES ('313', '1', 'admin', '/News/index.html?cate_id=2&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486631');
INSERT INTO `tp_admin_log` VALUES ('314', '1', 'admin', '/News/index.html?cate_id=3&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486631');
INSERT INTO `tp_admin_log` VALUES ('315', '1', 'admin', '/News/index.html?cate_id=5&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"5\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486632');
INSERT INTO `tp_admin_log` VALUES ('316', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486633');
INSERT INTO `tp_admin_log` VALUES ('317', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486647');
INSERT INTO `tp_admin_log` VALUES ('318', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486648');
INSERT INTO `tp_admin_log` VALUES ('319', '1', 'admin', '/News/index.html?cate_id=3&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486651');
INSERT INTO `tp_admin_log` VALUES ('320', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486652');
INSERT INTO `tp_admin_log` VALUES ('321', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486656');
INSERT INTO `tp_admin_log` VALUES ('322', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486657');
INSERT INTO `tp_admin_log` VALUES ('323', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486672');
INSERT INTO `tp_admin_log` VALUES ('324', '1', 'admin', '/News/index.html?cate_id=0&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"0\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486674');
INSERT INTO `tp_admin_log` VALUES ('325', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486675');
INSERT INTO `tp_admin_log` VALUES ('326', '1', 'admin', '/News/index.html?cate_id=2&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486676');
INSERT INTO `tp_admin_log` VALUES ('327', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486676');
INSERT INTO `tp_admin_log` VALUES ('328', '1', 'admin', '/News/index.html?cate_id=0&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"0\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486677');
INSERT INTO `tp_admin_log` VALUES ('329', '1', 'admin', '/News/index.html?cate_id=3&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486679');
INSERT INTO `tp_admin_log` VALUES ('330', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486680');
INSERT INTO `tp_admin_log` VALUES ('331', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486887');
INSERT INTO `tp_admin_log` VALUES ('332', '1', 'admin', '/News/index.html?cate_id=2&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"2\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486920');
INSERT INTO `tp_admin_log` VALUES ('333', '1', 'admin', '/News/index.html?cate_id=3&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486921');
INSERT INTO `tp_admin_log` VALUES ('334', '1', 'admin', '/News/index.html?cate_id=4&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"4\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486921');
INSERT INTO `tp_admin_log` VALUES ('335', '1', 'admin', '/News/index.html?cate_id=5&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"5\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486922');
INSERT INTO `tp_admin_log` VALUES ('336', '1', 'admin', '/News/index.html?cate_id=14&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"14\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486923');
INSERT INTO `tp_admin_log` VALUES ('337', '1', 'admin', '/News/index.html?cate_id=0&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"0\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486923');
INSERT INTO `tp_admin_log` VALUES ('338', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486925');
INSERT INTO `tp_admin_log` VALUES ('339', '1', 'admin', '/News/index.html?cate_id=3&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"3\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486925');
INSERT INTO `tp_admin_log` VALUES ('340', '1', 'admin', '/News/index.html?cate_id=0&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"0\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486926');
INSERT INTO `tp_admin_log` VALUES ('341', '1', 'admin', '/News/index.html?cate_id=1&keyword=&dateran=&_pjax=.content-wrapper', '[新闻管理] -> [新闻列表]', '{\"cate_id\":\"1\",\"keyword\":\"\",\"dateran\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486928');
INSERT INTO `tp_admin_log` VALUES ('342', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486956');
INSERT INTO `tp_admin_log` VALUES ('343', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486956');
INSERT INTO `tp_admin_log` VALUES ('344', '1', 'admin', '/System/system.html?_pjax=.content-wrapper', '[系统设置] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486957');
INSERT INTO `tp_admin_log` VALUES ('345', '1', 'admin', '/System/email.html?_pjax=.content-wrapper', '[系统设置] -> [邮箱配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486958');
INSERT INTO `tp_admin_log` VALUES ('346', '1', 'admin', '/System/sms.html?_pjax=.content-wrapper', '[系统设置] -> [短信配置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486959');
INSERT INTO `tp_admin_log` VALUES ('347', '1', 'admin', '/Database/database.html?_pjax=.content-wrapper', '[数据库管理] -> [数据库备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486962');
INSERT INTO `tp_admin_log` VALUES ('348', '1', 'admin', '/Database/backup.html', '[数据库管理] -> [数据库备份] -> [操作-备份]', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', '1583486982');

-- -----------------------------
-- Table structure for `tp_article`
-- -----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cate_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(70) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(80) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT 'SEO简介',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(80) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `images` mediumtext NOT NULL COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `author` varchar(50) NOT NULL DEFAULT 'Admin' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `summary` text NOT NULL COMMENT '摘要',
  `tags` varchar(100) NOT NULL DEFAULT '' COMMENT 'TAG',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `cate_id` (`id`,`cate_id`,`status`),
  KEY `sort` (`id`,`cate_id`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='文章模型表';

-- -----------------------------
-- Records of `tp_article`
-- -----------------------------
INSERT INTO `tp_article` VALUES ('5', '9', 'PHP是什么', '', '', '', '', '<p>PHP（外文名:PHP: Hypertext Preprocessor，中文名：&ldquo;超文本预处理器&rdquo;）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。</p>\n\n<p>用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。</p>\n\n<p>全球市场分析</p>\n\n<p>目前PHP在全球网页市场、手机网页市场还有为手机提供API（程序接口）排名第一。</p>\n\n<p>在中国微信开发大量使用PHP来进行开发。</p>\n\n<p>北京、上海的用人需求</p>\n\n<p style=\"text-align: center;\">上海2016年11月份中某一天用人低峰的招聘量：</p>\n\n<p style=\"text-align: center;\"><img alt=\"2.png\" src=\"/uploads/ueditor/image/20181224/1545620471.png\" title=\"1545620471.png\" /></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\">北京2016年11月份中某一天用人低峰的招聘量：</p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align: center;\"><img alt=\"1.png\" src=\"/uploads/ueditor/image/20181224/1545620478.png\" title=\"1545620478.png\" /></p>\n', '', '1', '100', '52', '1540451280', '0', '/uploads/20181224/fc3112ab0fab9f255726674dc1fd0d17.jpg', '[{\"image\":\"\\/uploads\\/20181025\\/0138d7987d3e56758ab4d49c57002401.jpg\",\"title\":\"3.jpg\"}]', '', '未知', 'php中文网', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。', '1');
INSERT INTO `tp_article` VALUES ('4', '9', '为什么学习PHP？', '', '', '', '', '<p>回答本书的几个问题吧。你到底，为什么要学习PHP？</p>\n\n<p>全国都缺PHP人才，非常好就业，PHP现在的工资水平很高，刚毕业可以拿到5000-9000每个月，特别优秀还可以破万。并且有非常多的就业机会。</p>\n\n<p>PHP入门简单，学习入门易入手。</p>\n\n<p>很多人反馈上完大学的C语言课程、java课程不会写任何东西。<br />\n诚然，中国的大学都以C语言作为主要的入门语言。但是，我们认为PHP是最简单入门，也是最合适入门的语言。</p>\n\n<p>你将学习到编程的思路，更加程序化的去处理问题。处理问题，将会更加规范化。</p>\n\n<p>如果你要创业，如果你要与互联网人沟通。未来互联网、移动互联网、信息化将会进一步围绕在你身边。你需要与人沟通，与人打交道。</p>\n\n<p>还有机会进入BAT（百度、阿里、腾讯），BAT这些企业他们在用PHP。国内和国外超一线的互联网公司，在超过90%在使用PHP来做手机API或者是网站。连微信等开放平台中的公众号的服务端也可以使用到PHP。</p>\n\n<p>大并发，还能免费。一天1个亿的访问量怎么办？PHP拥有大量优秀的开发者，在一定数据量的情况下完全能满足你的需求。国内外一线的互联网公司，很多将自己的大并发方案进行开源了。你可以免费获得很多成熟的、免费的、开源的大并发解决方案。</p>\n\n<p>开源更加节约成本也更加安全。windows很多都要收取授权费用，而使用linux的LAMP架构或者LNMP架构会更加安全。全球的黑客在帮你找漏洞。全球的工程师在帮忙修复漏洞。你发现一个他人已经消灭10个。</p>\n', '', '1', '100', '0', '1539850020', '0', '/uploads/20181224/168eb2135c7abbc3f2efcad91c7106e3.jpg', '', '', '未知', 'php中文网', '回答本书的几个问题吧。你到底，为什么要学习PHP？\n全国都缺PHP人才，非常好就业，PHP现在的工资水平很高，刚毕业可以拿到5000-9000每个月，特别优秀还可以破万。并且有非常多的就业机会。', '1');
INSERT INTO `tp_article` VALUES ('6', '9', '零基础也能学习', '', '', '', '', '<p>学习PHP前很多人担心PHP是不是能真的学会。</p><p>学习PHP学历要求不高，数学水平要求也不高，只需要会下面这些，你就可以跟着PHP中文网，开始愉快、高薪的PHP学习之旅：</p><p>有一台电脑</p><p>初中及以上文化水平</p><p>必须会打字（五笔、拼音均可）</p><p>会word（微软的office办公软件中的文字编辑软件）</p><p>会上网（QQ，写邮件，玩微信，看小说，看电影，注册网站帐号，网上购物等）</p><p>有一颗坚持的心</p><p>如果会一点html就更好了.学习HTML可以去看我们开源的另外一本HTML入门书籍。</p><p>不会HTML怎么办？也可以学习我们免费的HTML入门视频。</p>', '', '1', '100', '0', '1540452240', '0', '/uploads/20181224/894485902f96b13551b5450c7ddca081.jpg', '', '', '未知', 'php中文网', '学习PHP前很多人担心PHP是不是能真的学会。\r\n\r\n学习PHP学历要求不高，数学水平要求也不高，只需要会下面这些，你就可以跟着PHP中文网，开始愉快、高薪的PHP学习之旅：\r\n有一台电脑', '');
INSERT INTO `tp_article` VALUES ('7', '9', '为什么有些人学不会', '', '', '', '', '<p>互联网进入到人们生活中的方方面面了，世界首富比尔盖茨多次提到青少年编程，而编程是一种思维习惯的转化。</p><p>作为写了10几年程序的人，我听到过一些说编程不好学的抱怨。</p><p>从目前见到的数据统计，主要是因为在大学学习时遇到了C语言，学完后还不知道能干什么。很多人大学上完也就这么糊涂、恐惧的就过来了。</p><p>只有很少的不到1%的人学不会，这部份往往是专业的艺术家，在艺术家里面极少一部份人外，他们的思维模式和我们遇到的大多数人不太一样，并且不进行编程思维的训练，所以学不会。</p><p>而造成这个原因主要是因为社会、文化、背景、生活圈子多方面造成的。而不是因为笨。</p><p>那我们绝大多数的人是哪些原因学不会的呢？</p><p>1. 不相信自己能学会</p><p>这一块很多人可能不相信，涉及到很深的心理学知识。与心理暗示、诅咒的原理一样。</p><p>如果不相信自己能够学好，心里潜意识的念头里如果总是：PHP很难，我学不会。那么这个人肯定很难学会。</p><p>把不相信自己能学会的负面情绪和观念给抛掉。</p><p>只要你每天练习代码并相信自己。你肯定能学会，并且能学得很好，代码写的很成功，成为大牛！</p><p>2. 懒</p><p>人的天性有善有恶，而学不好程序的人，身上的一个通病，只有一个字就是————懒！<br/>基本语法，需要去背<br/>函数需要去默写</p><p>3. 自以为是</p><p>一看就会，一写就错。以为自己是神童。</p><p>4. 英文单词</p><p>计算机里面常用的英文单词就那么一些。</p><p>不要找英语的借口。本书会把英语单词都会跟你标注出来。看到不会的，就去翻一翻。</p><p>5. 不坚持</p><p>学着学着就放弃了。</p><p>6. 不去提问，不会提问，不去思考</p><p>解决问题前，先去搜索</p><p>搜索解决不了再去提问</p><p>PHP学院为大家准备了视频，也为大家准备了问答中心。</p><p>大多数的人，不把问题详述清楚，不把错误代码贴完整。</p><p>张嘴就来提问。我想神仙也不知道你的问题是什么吧？问题发出来前。换位思考一下自己看不看得懂这个问题。</p><p>7. 你还需要自我鼓励</p><p>在学习过程中，你会否定自己。其实任何人都会。大多数人都会遇到跟你一样的困难。只不过他们在克服困难，而一些人在逃避困难。</p><p>学累的时候，放松一会儿。再去多读几遍。不断的告诉自己，你就是最棒的！</p><p>学会交流和倾诉而非抱怨，并且不断的自我鼓励</p>', '', '1', '100', '25', '1540452720', '0', '/uploads/20181224/b640f82ccf862c3b34e11f792220a1f5.jpg', '', '', '未知', 'php中文网', '互联网进入到人们生活中的方方面面了，世界首富比尔盖茨多次提到青少年编程，而编程是一种思维习惯的转化。\r\n作为写了10几年程序的人，我听到过一些说编程不好学的抱怨。', '');
INSERT INTO `tp_article` VALUES ('8', '9', '开发环境是什么？', '', '', '', '', '<p>PHP是一门开发语言。而开发语言写出来的代码，通常需要在指定的软件下才能运行。因此，我们写好的代码需要（运行）显示出来看到，就需要安装这几个软件来运行代码。</p>\n\n<p>我们把运行我们写代码的几个软件和运行代码的软件统一都可称为开发环境。</p>\n\n<p>新手学习前常遇到的环境问题</p>\n\n<p>很多朋友最开始学习的时候，听说某个环境好就安装某些软件。由于缺乏相关知识，所以没有主见。陷入人云即云的怪圈里。今天换这个，明天换那个。</p>\n\n<p>当前验证真理的唯一标准，请始终保证一点：</p>\n\n<p>环境能满足你的学习需求。不要在环境上面反复纠结，耽误宝贵的学习时间。</p>\n\n<p>我们认为环境只要能满足学习要求即可。等学会了后，再去着磨一些更加复杂的互联网线上的、生产环境中的具体配置。</p>\n', '', '1', '100', '210', '1540605000', '0', '/uploads/20181224/a11e9ab3e8dc289dca70a105a7f177ee.jpg', '[{\"image\":\"\\/uploads\\/20181026\\/c90a371acbfc377a3ebb781b9e6c22af.jpg\",\"title\":\"4.jpg\"},{\"image\":\"\\/uploads\\/20181026\\/02afd01ca8661ce5ec14d60abd48673d.jpg\",\"title\":\"3.jpg\"}]', '', '未知', 'php中文网', 'PHP是一门开发语言。而开发语言写出来的代码，通常需要在指定的软件下才能运行。因此，我们写好的代码需要（运行）显示出来看到，就需要安装这几个软件来运行代码。', '8');
INSERT INTO `tp_article` VALUES ('9', '9', 'windows环境安装', '', '', '', '', '<p>所谓服务器：不要把它想的太过于高深，不过就是提供一项特殊功能（服务）的电脑而已。</p>\n\n<p>显示网页的叫网页(web)服务器（server）。</p>\n\n<p>帮我们代为收发电子邮件(Email)的服务器叫邮件服务器。</p>\n\n<p>帮我们把各个游戏玩家连接在一起的叫游戏服务器。</p>\n\n<p>帮我们存储数据的叫数据库服务器</p>\n\n<p>... ...等等</p>\n\n<p>我们现在使用的一部手机的性能比10年前的一台电脑和服务器的性能还要强劲、给力。</p>\n\n<p>而我们的学习过程当中完全可以把自己使用的这一台windows电脑作为服务器来使用。</p>\n\n<p>原来如此，一讲就通了吧？</p>\n\n<p>我们大多数人使用的电脑通常是windows操作系统的电脑。而我们的讲解主要在windows电脑上进行。</p>\n\n<p>你不需要去理解所谓高深的电脑知识、操作系统原型等。在这一章节当中，你只需要会安装QQ、杀毒软件一样，点击：下一步、下一步即可完成本章的学习。</p>\n\n<p>在最开始学习时，我们强烈建议初学者使用集成环境包进行安装。</p>\n\n<p>什么是集成环境包？</p>\n\n<p>我们学习PHP要安装的东西有很多。例如：网页服务器、数据库服务器和PHP语言核心的解释器。</p>\n\n<p>我们可以分开安装各部份，也可以合在一起安装一个集成好的软件。</p>\n\n<p>将这些合在一起的一个软件我们就叫作：集成环境包。</p>\n\n<p>这个过程需要修改很多配置文件才能完成。并且每个人的电脑情况，权限，经常容易操作出错。</p>\n\n<p>很容易因为环境问题影响到心情，我们的学习计划在初期非常绝对化：</p>\n\n<p>请使用集成环境包完成最开始的学习。</p>\n\n<p>等你学好PHP NB后，你爱用啥用啥，网上成堆的文章教你配置各种环境。</p>\n\n<p>选用什么样的集成环境包？</p>\n\n<p>集成环境包比较多。以下的这些全是各种英文名。只不过代表的是不同集成环境包的名字，不用去深纠。如下所示：</p>\n\n<p>AppServ</p>\n\n<p>PHPStudy</p>\n\n<p>APMserv</p>\n\n<p>XAMPP</p>\n\n<p>WAMPServer<br />\n... ...等等</p>\n\n<p>对于我们才入门的学习者来说，选择集成环境包的原则：</p>\n\n<p>更新快，版本比较新</p>\n\n<p>操作简单易于上手</p>\n\n<p>选择项不要过多</p>\n\n<p>因此，我们下面使用的集成环境包是：PHPstudy。当然，如果你对此块很熟悉了，也可以自行选择选择集成环境包。</p>\n\n<p>可以以在官方网址下载：<br />\nhttp://www.phpstudy.net/&nbsp;</p>\n\n<p>也可以在百度中搜索：*PHPstudy *&nbsp;&nbsp;这个5个字文字母进行下载。</p>\n\n<p>对学习PHP的新手来说，WINDOWS下PHP环境配置是一件很困难的事，就是老手也是一件烦琐的事。因此，无论你是新手还是老手，phpStudy 2016都是一个不错的选择，该程序集成Apache+PHP+MySQL+phpMyAdmin+ZendOptimizer，最新版本已集成最新的&nbsp;PHP7。</p>\n', '', '1', '100', '22', '1544593260', '0', '/uploads/20181224/f5421f965b0f46d9c1b8f1a927df7894.jpg', '', '', '未知', 'php中文网', '所谓服务器：不要把它想的太过于高深，不过就是提供一项特殊功能（服务）的电脑而已。\n显示网页的叫网页(web)服务器（server）。', '10');
INSERT INTO `tp_article` VALUES ('13', '9', 'php中的变量－读过初中你就会变量', '', '', '', '', '<p>大家在读初中的时候呀。老师经常会这么教大家。</p>\n\n<p>请问，李磊和韩梅梅同学，假如：</p>\n\n<p>x&nbsp;=&nbsp;5<br />\ny&nbsp;=&nbsp;6</p>\n\n<p>那么x + y 等于多少呢？大家会义无反顾的回答。x + y 等于11。</p>\n\n<p>接下来我们看下面的初中的数学知识，请问x + y 的结果是多少？</p>\n\n<p>x&nbsp;=&nbsp;5<br />\ny&nbsp;=&nbsp;6<br />\nx&nbsp;＝&nbsp;8</p>\n\n<p>我估计大家也会义无反顾的回答：x + y 的结果为14。</p>\n\n<p>这就是变量！</p>\n\n<p>变量的几个特点：</p>\n\n<p>1.x = 5 将右边值5，赋值给左边的x</p>\n\n<p>2.第二段x ＝ 8，最后x + y 的结果等于14，说明x在从上到下的运算（执行）中，可以被重新赋值。</p>\n\n<p>我们在PHP中的变量也是如此。不过有几个特点：</p>\n\n<p>1.必须要以$开始。如变量x必须要写成$x</p>\n\n<p>2.变量的首字母不能以数字开始</p>\n\n<p>3.变量的名字区分大小写</p>\n\n<p>4.变量不要用特殊符号、中文，_不算特殊符号</p>\n\n<p>5.变量命名要有意义（别写xxx，aaa，ccc这种 变量名）</p>\n\n<p>错误举列：</p>\n\n<p>错误：变量以数字开始</p>\n\n<p><!--?php<br/-->$123&nbsp;=&nbsp;345;<br />\n?&gt;</p>\n\n<p>错误：变量中有特殊字符，中文</p>\n\n<p><!--?php<br/-->//$a*d&nbsp;=&nbsp;345;<br />\n<br />\n//$中国&nbsp;=&nbsp;123;<br />\n?&gt;</p>\n\n<p>错误：变量命名没有意义aaa容易数错，也没有含意</p>\n\n<p><!--?php<br/-->$aaaaaaa&nbsp;=&nbsp;345;<br />\n?&gt;</p>\n\n<p>错误：变量严格区分大小写 $dog 和 $Dog是PHP学院的变量,尝试将$dog的值改为8.结果D写成了大写。</p>\n\n<p><!--?php<br/-->$dog&nbsp;=&nbsp;5;<br />\n//重新修改$dog的值，将$dog改为8<br />\n$Dog&nbsp;=&nbsp;8;<br />\n?&gt;</p>\n\n<p>正确举例：</p>\n\n<p>正确：变量不能以数字开始,但是数字可以夹在变量名中间和结尾</p>\n\n<p><!--?php<br/-->$iphone6&nbsp;=&nbsp;5880;<br />\n$iphone6plus&nbsp;=&nbsp;6088;<br />\n?&gt;</p>\n\n<p>正确：变量不能有特殊符号，但是_(下划线不算特殊符号)</p>\n\n<p><!--?php<br/-->$_cup&nbsp;=&nbsp;123;<br />\n?&gt;</p>\n\n<p>注：你会发现代码是从上向下执行的。</p>\n\n<p>$ 叫作美元符，英文单词：dollar。PHP的变量必须以美元符开始。说明搞PHP有&ldquo;钱&rdquo;途。</p>\n\n<p>dollar<br />\n读音：[&#39;dɒlə(r)]<br />\n解释：美元</p>\n\n<p>&nbsp;</p>\n', '', '1', '100', '6', '1545620940', '0', '', '', '', '未知', 'php中文网', '大家在读初中的时候呀。老师经常会这么教大家。\n请问，李磊和韩梅梅同学，假如：', '6');
INSERT INTO `tp_article` VALUES ('10', '9', 'Linux环境安装', '', '', '', '', '<p>这一个章节是本书中永远不会写的一个章节，很多人被一些市面上的书籍误导，认为学习PHP前要学习Linux。结果，一看Linux，就对人生和学习失去了希望。我们作为有过10年以上开发经验和内部训经验的专业人士告戒各位：</p>\n\n<p>Linux学习与PHP学习没有必然的联系，这是两个不同的知识体系。</p>\n\n<p>作为有多年开发经验和教学经验的我们。</p>\n\n<p>我们强烈不建议没有接触过Linux的学生，为了学习PHP而去安装Linux环境</p>\n\n<p>如果您有经验，我们相信你一定能解决，如果解决不了。</p>\n\n<p>请加QQ群和访问官网：PHP中文网&nbsp;学习视频和提问。</p>\n', '', '1', '100', '0', '1545620820', '0', '/uploads/20181224/5cd61fb68c8bc8fe6d24be4229ec0ca5.jpg', '', '', '未知', 'php中文网', '这一个章节是本书中永远不会写的一个章节，很多人被一些市面上的书籍误导，认为学习PHP前要学习Linux。结果，一看Linux，就对人生和学习失去了希望。我们作为有过10年以上开发经验和内部训经验的专业人士告戒各位：', '9');
INSERT INTO `tp_article` VALUES ('11', '9', '其他开发环境', '', '', '', '', '<p>对本章不感兴趣，可以略过，只是介绍和说明。</p>\n\n<p>其他开发环境有很多：</p>\n\n<p>1，比如 苹果电脑的系统 Mac os</p>\n\n<p>2，比如 &nbsp;在线环境（你使用了百度、新浪、阿里等云计算环境）</p>\n\n<p>3，其他更多... ...</p>\n\n<p>当然，你甚至可以使用安卓手机和苹果手机来部署你的开发环境。就像有些人可以在各种复杂的环境，甚至U衣酷的试衣间里M..L。我想，这应该不是正常人类该进行的尝试吧。</p>\n\n<p>如果你在使用这些环境遇到了问题，相信你已经有过一定的开发经验和处理问题的经验了，这不是刚开始学习编程该掌握的内容。</p>\n\n<p>但是，如果你真遇到了这些问题。你可以上PHP中文网来提问。</p>\n', '', '1', '100', '0', '1545620880', '0', '', '', '', '未知', 'php中文网', '对本章不感兴趣，可以略过，只是介绍和说明。\n其他开发环境有很多：\n1，比如 苹果电脑的系统 Mac os\n2，比如  在线环境（你使用了百度、新浪、阿里等云计算环境）\n3，其他更多... ...', '8');
INSERT INTO `tp_article` VALUES ('12', '9', '写代码的工具选择', '', '', '', '', '<p>写代码的工具有很多。对于刚开始学习PHP的朋友来说。选择工具有几个原则：</p>\n\n<p>1，不要使用带自动提示的工具（例如eclipse、zend studio等PHP开发工具集）</p>\n\n<p>2，写完的代码必须要有颜色高亮显示。（不能使用：txt文本编辑器等无代码颜色显示的编辑器）</p>\n\n<p>你可能想问，为什么呀？</p>\n\n<p>我们发现电视、电影和现实生活中的编程高手，噼里哗啦就写一堆代码，一点都不报错，点击就能运行。而我们对着他们的代码抄袭反倒抄错。这种感觉特别不好！！！</p>\n\n<p>&mdash;&mdash;传说中的这些高手，他们都曾经在基础代码上反复练习过，所以他们不会写错。</p>\n\n<p>而我们需要高手之境界，在学习初期就不能使用先进的工具。这样会浪费我们保贵的练习代码的机会、调试错误的机会。</p>\n\n<p>因为先进的编辑器通常有很多先进的功能，例如：</p>\n\n<p>代码自动显示错误</p>\n\n<p>代码自动换行</p>\n\n<p>这些先进的工具，对于开始入门学习的你，不利于新手产生独立解决问题的能力！</p>\n\n<p>推荐的开发工具</p>\n\n<p>1. NotePad++&nbsp;</p>\n\n<p>https://notepad-plus-plus.org/&nbsp;由于某些不可抗的原因，请使用百度搜索NotePad++&nbsp;</p>\n\n<p>2.phpstorm（强烈推荐）</p>\n\n<p>https://www.jetbrains.com/phpstorm/&nbsp;</p>\n\n<p>这些工具，你只需要下载下来，一直点击下一步，安装到你的电脑上即可。</p>\n', '', '1', '100', '2', '1545620880', '0', '', '', '', '未知', 'php中文网', '写代码的工具有很多。对于刚开始学习PHP的朋友来说。选择工具有几个原则：\n1，不要使用带自动提示的工具（例如eclipse、zend studio等PHP开发工具集）\n2，写完的代码必须要有颜色高亮显示。（不能使用：txt文本编辑器等无代码颜色显示的编辑器）', '7');
INSERT INTO `tp_article` VALUES ('14', '9', 'echo 显示命令', '', '', '', '', '<p>echo 是在PHP里面最常用的一个输出、显示功能的命令。</p>\n\n<p>我们可以让他显示任何可见的字符。</p>\n\n<p><!--?php<br/--><br />\necho&nbsp;123;<br />\n<br />\n?&gt;<br />\n<!--?php<br/--><br />\n$iphone&nbsp;=&nbsp;6088;<br />\n<br />\necho&nbsp;$iphone;<br />\n<br />\n?&gt;</p>\n\n<p>你可以对着做做实验。等下一章，我们讲数据类型的时候，我教大家输出中文和用PHP显示网页内容。</p>\n\n<p>单词：</p>\n\n<p>*echo *&nbsp;读音： [&#39;ekoʊ]<br />\n解释：发出回声；回响。<br />\n功能解释：输出、显示</p>\n', '', '1', '100', '0', '1545621000', '0', '', '', '', '未知', 'php中文网', 'echo 是在PHP里面最常用的一个输出、显示功能的命令。\n我们可以让他显示任何可见的字符。', '4,5');
INSERT INTO `tp_article` VALUES ('15', '9', 'php注释的学习', '', '', '', '', '<p>注释的功能很强大</p>\n\n<p>所谓注释，汉语解释可以为：注解。更为准确一些。<br />\n因为代码是英文的、并且代码很长，时间长了人会忘。<br />\n所以我们会加上注释。</p>\n\n<p>注释的功能有很多：</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;1.对重点进行标注</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;2.时间长了容易忘快速回忆，方便查找</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;3.让其他人看的时候快速看懂</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;4.还可以生成文档，代码写完相关的文档就写完了，提高工作效率</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;5.注释、空行、回车之后的代码看起来更优美</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;6.注释可用来排错。不确定代码中哪一块写错了，可以将一大段注释，确定错误区间</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;7.注释中间的部份的内容，电脑不会执行它</p>\n\n<p>先给大家看看我们觉得优美的代码，整齐、规范、说明清楚、一看就懂。（不需要理解代码的含义）：</p>\n\n<p>&nbsp;</p>\n\n<p>再看看我们眼中觉得丑陋的代码，对齐丑陋不说，并且没有功能说明（不需要理解代码的含义）：</p>\n\n<p>&nbsp;</p>\n\n<p>我们了解了注释的好处，接下来我们来说PHP的注释，注释分别：</p>\n\n<p>单行注释（只注释一行）</p>\n\n<p>多行注释（注释多行）</p>\n\n<p>单行注释</p>\n\n<p>//&nbsp;&nbsp;&nbsp;表示单行注释<br />\n#&nbsp;&nbsp;&nbsp;&nbsp;#号也表示单行注释，用的比较少</p>\n\n<p>多行注释</p>\n\n<p>/*&nbsp;<br />\n多行注释&nbsp;这里是注释区域代码<br />\n&nbsp;*/</p>\n\n<p>单行注释举例：</p>\n\n<p><!--?php<br/--><br />\n//声明一部iphone6手机的价格变量<br />\n$iphone6_price&nbsp;=&nbsp;6088;<br />\n<br />\n//显示输出手机价格<br />\necho&nbsp;$iphone6_price;<br />\n?&gt;</p>\n\n<p>注：通过上例我们知道，注释通常写代码上面。</p>\n\n<p>多行注释举例：</p>\n\n<p><!--?php<br/-->/*<br />\n作者：PHP中文网<br />\n时间：2048.12.23<br />\n功能：这是一个假的多行注释的例子<br />\n*/<br />\n<br />\n/*<br />\n&nbsp;&nbsp;声明一个爱情变量<br />\n&nbsp;&nbsp;$love&nbsp;是指爱情<br />\n&nbsp;&nbsp;爱情是一个变量，因为人的爱总是在发生变化<br />\n&nbsp;&nbsp;所以，爱情变量的值为250<br />\n*/<br />\n$love&nbsp;=&nbsp;250;<br />\n<br />\n?&gt;</p>\n\n<p>注：通过上面的例子我们发现，我们要写上很多注释的时候，释用多行注释。</p>\n\n<p>注：暂进不讲解如何通过专门的工具生成注释</p>\n\n<p>&nbsp;</p>\n', '', '1', '100', '3', '1545621060', '0', '/uploads/20181224/2d208c7893a9981a6216b83ef9fcb11f.jpg', '', '', '', '', '注释的功能很强大\n所谓注释，汉语解释可以为：注解。更为准确一些。\n因为代码是英文的、并且代码很长，时间长了人会忘。', '1,3');
INSERT INTO `tp_article` VALUES ('16', '9', 'php整型就是整数', '', '', '', '', '<p>我&nbsp; &nbsp;一直在讲，不要被名词的含义所吓唬住。</p>\n\n<p>到底什么是整型呀？</p>\n\n<p>所谓整型，就是大家数学中所学的整数。</p>\n\n<p>整型&mdash;&mdash;整数也，英文称之:integer。英文简写：int</p>\n\n<p>整型分为：</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;1.10进行</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;2.8进制 （了解，基本不用）</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;3.16进制（了解，基本不用）</p>\n\n<p>整型（整数）在计算机里面是有最大值和最小值范围的。</p>\n\n<p>【了解知识点，开发中不常用】大家经常听说32位计算机，也就是32位计算机一次运算处理的最大范围为-232至232-1。<br />\n64位计算机呢？&mdash;&mdash;</p>\n\n<p>10 进制声明：</p>\n\n<p><!--?php<br-->//为了方便大家记忆和前期学习，英文不好的朋友也可用拼音来声明变量。以后再用英文来声明变量也无所谓<br />\n//声明变量&nbsp;整数，英文&nbsp;int<br />\n//$int&nbsp;=&nbsp;1000;<br />\n$zhengshu&nbsp;=&nbsp;1000;<br />\necho&nbsp;$zhengshu;<br />\n?&gt;</p>\n\n<p>8进制声明：&nbsp;以0开始，后面跟0-7的整数（了解知识点）</p>\n\n<p><!--?php<br-->//8进制的取值范围最大为0-7,即0,1,2,3,4,5,6,7<br />\n<br />\n$bajingzhi&nbsp;=&nbsp;&nbsp;033145;<br />\necho&nbsp;$bajingzhi;<br />\n<br />\n?&gt;</p>\n\n<p>16进制声明：&nbsp;以0x开始，后面跟0-f的，0x的abcdef不区分大小写。（了解知识点）</p>\n\n<p><!--?php<br-->//16进制的取值范围最大为0-f,即0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f<br />\n$shiliu&nbsp;=&nbsp;&nbsp;0x6ff;<br />\necho&nbsp;$shiliu;<br />\n?&gt;</p>\n\n<p>本章学习重点，学会如何声明10制制整数即可。了解8制制和16进制的声明，实在不会也不要紧。</p>\n\n<p>思维误区：容易去考虑8进制和16进制到底是怎么产生的。</p>\n\n<p>&nbsp;</p>\n', '', '1', '100', '5', '1545621120', '0', '/uploads/20181224/588ac2b0eca6de73b61c125db692e020.jpg', '', '', '未知', 'php中文网', '我一直在讲，不要被名词的含义所吓唬住。\n到底什么是整型呀？\n所谓整型，就是大家数学中所学的整数。', '1,2');
INSERT INTO `tp_article` VALUES ('17', '13', 'PHP中的流程控制', '', '', '', '', '<p>流程控制就是人类社会的做事和思考和处理问题的方式和方法。通过本章，你将会发现采用计算机的思维去考虑问题，我们在做事的过程当中会更加严谨。</p>\n\n<p>我们通过一个一个的场景来去推理流程：</p>\n\n<p>有一个高富帅，他姓王。他的名字叫&mdash;&mdash;王。王同学计划要投资一个项目。如果这个项目计划开始，为了这个投资项目每周往返一次北京和大连。什么时候王思总同学不再往返呢？项目失败后或者万（da）集团临时除知除外，他就可以不再这么每周往返了。</p>\n\n<p>王同学呢，有一个好习惯，就是每次往返的时候，害怕自己到底一年往返了多少次。王同学都会在自己的记事本上记上往返的次数，第一次就写上一，第2次就写上2... ...直至最后项目停止。</p>\n\n<p>王同学家里头特别有钱，所以他的行程方式和正常人的又有些不同。不仅有更多的方式，而且王同学还迷信。</p>\n\n<p>他的出行方式呢有6种，如下：</p>\n\n<p>1，司机开车<br />\n2，民航<br />\n3，自己家的专机<br />\n4，火车动车<br />\n5，骑马<br />\n6，游轮</p>\n\n<p>每次王同学，都自己会在骰子上写上1，2，3，4，5，6。摇到哪种方式，王同学就会采用哪种方式进行往返两地。</p>\n\n<p>并且呢，王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候不同，他抵达后做的事情都不同，如下：</p>\n\n<p>半夜到达，先去夜店参加假面舞会<br />\n早上抵达，爱在酒店泡个澡<br />\n中午到达，会吃上一份神户牛肉<br />\n晚上到达，总爱去找朋友去述说一下心中的寂寞</p>\n\n<p>王同学在出行和项目中也是极度有计划性。他给自己的生活秘书和工作秘书分别指派了出差的行程：</p>\n\n<p>生活上：<br />\n先查天气，下雨带雨具和毛巾。不下雨要带防晒霜<br />\n雨具、毛巾和防晒霜的情况要提前检查，如果没有要及时买</p>\n\n<p>工作上：<br />\n要提前沟通去大连前的工作计划，准备好了要及时检查，检查合格，要提前打印现来。<br />\n及时没有及时准备好的情况下，要列出主要的项目沟通议题。</p>\n', '', '1', '100', '0', '1545628260', '0', '', '', '', '未知', 'php中文网', '流程控制就是人类社会的做事和思考和处理问题的方式和方法。通过本章，你将会发现采用计算机的思维去考虑问题，我们在做事的过程当中会更加严谨。我们通过一个一个的场景来去推理流程：', '11,1');
INSERT INTO `tp_article` VALUES ('18', '13', 'php流程控制之if条件结构流程', '', '', '', '', '<p>if条件结构流程</p>\n\n<p>if和else 语句，在之前的3.2.5章节中已经做了说明。我们配合王思总同学的例子，再次进行说明，方便大家对此章节的理解。</p>\n\n<p>本章的知识点为：【默写级】</p>\n\n<p>基本语法，不能有半点马乎，完全是语法规范规定的，不这么写就错！</p>\n\n<p><!--?php <br/-->$week=date(&quot;4&quot;);<br />\n//判断星期小于6，则输出：还没到周末，继续上班.....<br />\nif&nbsp;($week&lt;&quot;6&quot;)&nbsp;{<br />\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&quot;还没到周末，继续上班.....&quot;;<br />\n}&nbsp;<br />\n?&gt;</p>\n\n<p>在之前我们也讲过，因此if的结构可以根据人类思维推理出来两种结构：</p>\n\n<p>//if单行判断<br />\nif(布尔值判断)<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;只写一句话;<br />\n后续代码<br />\n//if多行判断<br />\nif(布尔值判断){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;可以写多句话;<br />\n}<br />\n后续代码</p>\n\n<p>&nbsp;</p>\n', '', '1', '100', '0', '1545628260', '0', '', '', '', '未知', 'php中文网', 'if条件结构流程\nif和else 语句，在之前的3.2.5章节中已经做了说明。我们配合王思总同学的例子，再次进行说明，方便大家对此章节的理解。\n本章的知识点为：【默写级】', '11,1');
INSERT INTO `tp_article` VALUES ('19', '13', 'PHP流程控制之if语句', '', '', '', '', '<p>我们为了加强大家对代码的理解，我们串了一个故事恶搞了一个王思总同学。</p>\n\n<p>在4.1和3.2.5这两个章节中我们都介绍到了if和if...else结构。并且我们讲解的很清楚。</p>\n\n<p>我们现在来用if...else结构来写一个小东西，加强大家对逻辑的理解。</p>\n\n<p>我们配合之前的知识点来写一个计算器：</p>\n\n<p>&nbsp;</p>\n\n<form><br />\n&nbsp;&nbsp;&nbsp;&nbsp;<input name=\"num1\" type=\"text\" /><br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;<select name=\"fh\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<option value=\"jia\">&nbsp;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option><option value=\"jian\">&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option><option value=\"c\">&nbsp;x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option><option value=\"chu\">&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option><option value=\"qy\">&nbsp;%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option></select><input name=\"num2\" type=\"text\" /><br />\n<br />\n<select name=\"fh\">&nbsp;&nbsp;&nbsp;&nbsp;</select><input type=\"submit\" value=\"运算\" /><br />\n<br />\n<br />\n<br />\n<br />\n<select name=\"fh\"><!--?php<br/-->&nbsp;&nbsp;&nbsp;&nbsp;$num1&nbsp;=&nbsp;$_GET[&#39;num1&#39;];&nbsp;&nbsp;&nbsp;&nbsp;$num2&nbsp;=&nbsp;$_GET[&#39;num2&#39;];&nbsp;&nbsp;&nbsp;&nbsp;$fh&nbsp;=&nbsp;$_GET[&#39;fh&#39;];&nbsp;&nbsp;&nbsp;&nbsp;if(!is_numeric($num1)&nbsp;||&nbsp;!is_numeric($num2)){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;请输入数值类型&#39;;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;if($fh&nbsp;==&nbsp;&#39;jia&#39;){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;+&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1+$num2);&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;if($fh==&#39;jian&#39;){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;-&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1-$num2);&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;if($fh==&#39;c&#39;){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;x&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1*$num2);&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;if($fh==&#39;chu&#39;){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;/&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1/$num2);&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;if($fh==&#39;qy&#39;){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$num1&nbsp;.&nbsp;&#39;%&#39;&nbsp;.&nbsp;$num2&nbsp;.&nbsp;&#39;=&#39;&nbsp;.&nbsp;($num1%$num2);&nbsp;&nbsp;&nbsp;&nbsp;}?&gt;</select>\n\n<p>&nbsp;</p>\n\n<p><select name=\"fh\">作业：写一个平年、闰年计算器。写一个form表单，通过get将年份给传来过来，判断传进来的年份是否为数值类型。并且要求，如果是闰年就提示这是闰年，如果是平年就提示这一年是平年。</select></p>\n\n<p><select name=\"fh\">平年闰年规则：年份能被4整除，但是不能被100整除。 &nbsp;或者能被400整除，即为闰年，其他情况全为平年</select></p>\n</form>\n', '', '1', '100', '11', '1545628320', '0', '', '', '', '未知', 'php中文网', '我们为了加强大家对代码的理解，我们串了一个故事恶搞了一个王思总同学。\n在4.1和3.2.5这两个章节中我们都介绍到了if和if...else结构。并且我们讲解的很清楚。\n我们现在来用if...else结构来写一个小东西，加强大家对逻辑的理解。', '11,1');
INSERT INTO `tp_article` VALUES ('20', '13', 'PHP流程控制之嵌套if...else...elseif结构', '', '', '', '', '<p>还记得本章开篇我们讲了一个王思总同学的例子：</p>\n\n<p>王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候做的事，他抵达后做的事情，如下：</p>\n\n<p>半夜到达，先去夜店参加假面舞会<br />\n&nbsp;早上抵达，爱在酒店泡个澡<br />\n&nbsp;中午到达，会吃上一份神户牛肉<br />\n&nbsp;晚上到达，总爱去找朋友去述说一下心中的寂寞</p>\n\n<p>我们来了解一下他的语法规则【知识点要求：默写】</p>\n\n<p><!--?php<br/-->if（判断语句1）{<br />\n&nbsp;&nbsp;&nbsp;&nbsp;执行语句体1<br />\n}elseif(判断语句2){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;执行语句体2<br />\n}else&nbsp;if(判断语句n){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;执行语句体n<br />\n}else{<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最后的else语句可选<br />\n}<br />\n<br />\n//后续代码<br />\n?&gt;</p>\n\n<p>上述结构表示：<br />\n如果判断语句1的值为真，则执行语句体 1。执行完成后进入后续代码段。<br />\n否则转入后面的判断语句2（elsif），判断语句2若为真，则执行语句体 2。<br />\n否则转入后面的判断语句n（elsif），判断语句2若为真，则执行语句体 n。<br />\n如果均不匹配则执行else语句。这种循环嵌套可以不含else语句，即只含有if、elseif语句。</p>\n\n<p>注：elseif()也可以写成else if()</p>\n\n<p>我们把上面的代码用流程图的形式表示清楚就如下图了：</p>\n\n<p>我们可以把王思总同学的例子通过PHP代码表示出来，代码表示结果如下：</p>\n\n<p><!--?php<br/-->//定义一个随机变量，抵达时间,随机0点至23点<br />\n$dida&nbsp;=&nbsp;rand(0,23);<br />\n<br />\nif($dida&nbsp;&gt;&nbsp;6&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;&nbsp;10){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;我爱泡澡&#39;;<br />\n}else&nbsp;if($dida&nbsp;&gt;10&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;&nbsp;14){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;吃神户牛肉&#39;;<br />\n}else&nbsp;if($dida&nbsp;&gt;=19&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;&nbsp;22){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;找一个朋友聊聊内心的寂寞&#39;;<br />\n}elseif($dida&nbsp;&gt;&nbsp;22&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;=&nbsp;23){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;泡澡&#39;;<br />\n<br />\n}elseif($dida&nbsp;&gt;=&nbsp;1&nbsp;&amp;&amp;&nbsp;$dida&nbsp;&lt;3){<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;泡澡&#39;;<br />\n}else{<br />\n&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;&#39;睡觉或者工作&#39;;<br />\n}<br />\n<br />\n<br />\n?&gt;</p>\n\n<p>作业：<br />\n写一个网页cj.html，向panduan.php页面以post方式提交分数段。分数段和显示的结果如下，要求如下：</p>\n\n<p>0----60以下，不及格</p>\n\n<p>60---70及格了，要努力</p>\n\n<p>70---80 &nbsp;还不错</p>\n\n<p>80---90 &nbsp; 上清华有希望</p>\n\n<p>90---100 &nbsp; 你这辈子没希望了</p>\n\n<p>100 &nbsp; &nbsp; &nbsp; &nbsp; 更没希望了</p>\n\n<p>100分以上 &nbsp; &nbsp;爱因斯坦转世啊，思密达！</p>\n\n<p>不是一个数值类型或者小于0 &nbsp;请输入正确的分数。</p>\n', '', '1', '100', '5', '1545628380', '0', '', '', '', '未知', 'php中文网', '还记得本章开篇我们讲了一个王思总同学的例子：\n王同学是生活极度充满娱乐化和享受生活的人。他抵达北京或者大连的时候做的事，他抵达后做的事情，如下：\n半夜到达，先去夜店参加假面舞会', '11,1');

-- -----------------------------
-- Table structure for `tp_auth_group`
-- -----------------------------
DROP TABLE IF EXISTS `tp_auth_group`;
CREATE TABLE `tp_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text,
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `tp_auth_group`
-- -----------------------------
INSERT INTO `tp_auth_group` VALUES ('1', '超级管理员', '1', '1,4,124,166,167,168,169,170,171,172,173,174,5,125,38,107,126,108,157,158,159,160,161,162,163,164,165,6,7,10,11,12,14,13,8,15,16,17,18,19,20,21,9,22,23,24,25,28,27,26,152,153,154,155,156,29,30,34,32,33,31,35,36,37,60,61,62,127,63,128,64,65,67,66,68,70,133,71,134,72,75,74,73,69,76,135,77,136,78,79,137,80,95,96,129,97,130,98,99,131,132,81,82,84,122,85,123,86,88,87,94,83,89,90,91,92,93,119,120,121,', '1537944508', '1583424913');
INSERT INTO `tp_auth_group` VALUES ('2', '测试组', '1', '0,1,4,166,167,169,5,107,157,158,160,6,152,153,154,155,29,30,34,32,33,31,35,36,39,40,41,42,44,45,46,47,48,49,51,52,53,54,60,61,62,63,64,67,68,70,71,74,73,69,76,77,137,80,95,96,97,131,132,247,109,138,100,101,102,103,105,81,82,84,85,88,94,83,89,91,120,121,176,177,184,186,178,193,195,179,202,204,180,211,213,181,220,222,182,229,231,183,238,240,', '1536304526', '1561424180');

-- -----------------------------
-- Table structure for `tp_auth_group_access`
-- -----------------------------
DROP TABLE IF EXISTS `tp_auth_group_access`;
CREATE TABLE `tp_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `tp_auth_group_access`
-- -----------------------------
INSERT INTO `tp_auth_group_access` VALUES ('1', '1', '1553846932', '1553846932');

-- -----------------------------
-- Table structure for `tp_auth_rule`
-- -----------------------------
DROP TABLE IF EXISTS `tp_auth_rule`;
CREATE TABLE `tp_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` mediumint(8) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `sort` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `auth_open` tinyint(2) DEFAULT '1',
  `icon` char(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `tp_auth_rule`
-- -----------------------------
INSERT INTO `tp_auth_rule` VALUES ('1', '0', 'System', '系统设置', '1', '1', '', '1', '1', 'fa fa-cogs', '1536819134', '1536819134');
INSERT INTO `tp_auth_rule` VALUES ('4', '1', 'System/system', '系统设置', '1', '1', '', '11', '1', 'fa fa-cog', '1536327129', '1547520976');
INSERT INTO `tp_auth_rule` VALUES ('5', '1', 'System/email', '邮箱配置', '1', '1', '', '12', '1', 'fa  fa-mail-forward', '1536327444', '1536327838');
INSERT INTO `tp_auth_rule` VALUES ('6', '0', 'Auth', '权限管理', '1', '1', '', '2', '1', 'fa fa-group', '1536327468', '1547520856');
INSERT INTO `tp_auth_rule` VALUES ('7', '6', 'Auth/adminList', '管理员管理', '1', '1', '', '21', '1', 'fa fa-user', '1536327753', '1547523425');
INSERT INTO `tp_auth_rule` VALUES ('8', '6', 'Auth/adminGroup', '角色组管理', '1', '1', '', '22', '1', 'fa fa-group', '1536327787', '1547520881');
INSERT INTO `tp_auth_rule` VALUES ('9', '6', 'Auth/adminRule', '菜单规则', '1', '1', '', '23', '1', 'fa fa-bars', '1536327826', '1547520923');
INSERT INTO `tp_auth_rule` VALUES ('10', '7', 'Auth/adminAdd', '操作-添加', '1', '1', '', '211', '1', '', '1536327882', '1536327952');
INSERT INTO `tp_auth_rule` VALUES ('11', '7', 'Auth/adminEdit', '操作-修改', '1', '1', '', '212', '1', '', '1536327906', '1536327955');
INSERT INTO `tp_auth_rule` VALUES ('12', '7', 'Auth/adminDel', '操作-删除', '1', '1', '', '213', '1', '', '1536327924', '1536327959');
INSERT INTO `tp_auth_rule` VALUES ('13', '7', 'Auth/adminState', '操作-状态', '1', '1', '', '215', '1', '', '1536327944', '1536328025');
INSERT INTO `tp_auth_rule` VALUES ('14', '7', 'Auth/adminSelectDel', '操作-批量删除', '1', '1', '', '214', '1', '', '1536328014', '1536328028');
INSERT INTO `tp_auth_rule` VALUES ('15', '8', 'Auth/groupAdd', '操作-添加', '1', '1', '', '221', '1', '', '1536329901', '1536329910');
INSERT INTO `tp_auth_rule` VALUES ('16', '8', 'Auth/groupEdit', '操作-修改', '1', '1', '', '222', '1', '', '1536329944', '1536329944');
INSERT INTO `tp_auth_rule` VALUES ('17', '8', 'Auth/groupDel', ' 操作-删除', '1', '1', '', '223', '1', '', '1536329962', '1536329986');
INSERT INTO `tp_auth_rule` VALUES ('18', '8', 'Auth/groupSelectDel', '操作-批量删除', '1', '1', '', '224', '1', '', '1536330024', '1536330033');
INSERT INTO `tp_auth_rule` VALUES ('19', '8', 'Auth/groupState', '操作-状态', '1', '1', '', '225', '1', '', '1536330069', '1536330069');
INSERT INTO `tp_auth_rule` VALUES ('20', '8', 'Auth/groupAccess', '操作-权限', '1', '1', '', '226', '1', '', '1536330111', '1536330111');
INSERT INTO `tp_auth_rule` VALUES ('21', '8', 'Auth/groupRunaccess', '操作-保存权限', '1', '1', '', '227', '1', '', '1536330174', '1536330179');
INSERT INTO `tp_auth_rule` VALUES ('22', '9', 'Auth/ruleAdd', '操作-添加', '1', '1', '', '231', '1', '', '1536330209', '1536330455');
INSERT INTO `tp_auth_rule` VALUES ('23', '9', 'Auth/ruleEdit', '操作-修改', '1', '1', '', '232', '1', '', '1536330222', '1536330462');
INSERT INTO `tp_auth_rule` VALUES ('24', '9', 'Auth/ruleDel', '操作-删除', '1', '1', '', '233', '1', '', '1536330236', '1536330463');
INSERT INTO `tp_auth_rule` VALUES ('25', '9', 'Auth/ruleSelectDel', '操作-批量删除', '1', '1', '', '234', '1', '', '1536330261', '1536330465');
INSERT INTO `tp_auth_rule` VALUES ('26', '9', 'Auth/ruleState', '操作-菜单状态', '1', '1', '', '237', '1', '', '1536330275', '1536330933');
INSERT INTO `tp_auth_rule` VALUES ('27', '9', 'Auth/ruleOpen', ' 操作-是否验证', '1', '1', '', '236', '1', '', '1536330318', '1536330480');
INSERT INTO `tp_auth_rule` VALUES ('28', '9', 'Auth/ruleSort', '操作-排序', '1', '1', '', '235', '1', '', '1536330434', '1536330478');
INSERT INTO `tp_auth_rule` VALUES ('29', '0', 'Database', '数据库管理', '1', '1', '', '3', '1', 'fa fa-database', '1536635655', '1536636028');
INSERT INTO `tp_auth_rule` VALUES ('30', '29', 'Database/database', '数据库备份', '1', '1', '', '31', '1', 'fa fa-server', '1536635724', '1536635724');
INSERT INTO `tp_auth_rule` VALUES ('31', '29', 'Database/restore', '还原数据库', '1', '1', '', '32', '1', 'fa fa-recycle', '1536635740', '1536635740');
INSERT INTO `tp_auth_rule` VALUES ('32', '30', 'Database/repair', '操作-修复', '1', '1', '', '311', '1', '', '1536635767', '1536635767');
INSERT INTO `tp_auth_rule` VALUES ('33', '30', 'Database/optimize', '操作-优化', '1', '1', '', '312', '1', '', '1536635780', '1536635780');
INSERT INTO `tp_auth_rule` VALUES ('34', '30', 'Database/backup', '操作-备份', '1', '1', '', '50', '1', '', '1536635798', '1553763716');
INSERT INTO `tp_auth_rule` VALUES ('35', '31', 'Database/import', '操作-还原', '1', '1', '', '321', '1', '', '1536635831', '1536635831');
INSERT INTO `tp_auth_rule` VALUES ('36', '31', 'Database/downFile', '操作-下载', '1', '1', '', '322', '1', '', '1536635860', '1536635860');
INSERT INTO `tp_auth_rule` VALUES ('37', '31', 'Database/delSqlFiles', '操作-删除', '1', '1', '', '323', '1', '', '1536635871', '1536635871');
INSERT INTO `tp_auth_rule` VALUES ('38', '5', 'System/trySend', '操作-测试邮件发送', '1', '1', '', '122', '1', '', '1536653622', '1551863852');
INSERT INTO `tp_auth_rule` VALUES ('60', '0', 'Function', '网站功能', '1', '1', '', '6', '1', 'fa fa-gear', '1540965627', '1540966350');
INSERT INTO `tp_auth_rule` VALUES ('61', '60', 'Link/index', '友情链接', '1', '1', '', '61', '1', 'fa fa-link', '1540966407', '1540966418');
INSERT INTO `tp_auth_rule` VALUES ('62', '61', 'Link/add', '操作-添加', '1', '1', '', '611', '1', '', '1540966465', '1540966465');
INSERT INTO `tp_auth_rule` VALUES ('63', '61', 'Link/edit', '操作-修改', '1', '1', '', '613', '1', '', '1540966488', '1551929946');
INSERT INTO `tp_auth_rule` VALUES ('64', '61', 'Link/state', '操作-状态', '1', '1', '', '615', '1', '', '1540966534', '1551930026');
INSERT INTO `tp_auth_rule` VALUES ('65', '61', 'Link/del', '操作-删除', '1', '1', '', '616', '1', '', '1540966564', '1551930029');
INSERT INTO `tp_auth_rule` VALUES ('66', '61', 'Link/selectDel', '操作-批量删除', '1', '1', '', '617', '1', '', '1540966605', '1551930033');
INSERT INTO `tp_auth_rule` VALUES ('67', '61', 'Link/sort', '操作-排序', '1', '1', '', '616', '1', '', '1540967631', '1540967631');
INSERT INTO `tp_auth_rule` VALUES ('68', '60', 'Ad/index', ' 广告管理', '1', '1', '', '62', '1', 'fa fa-tv', '1541120280', '1551936480');
INSERT INTO `tp_auth_rule` VALUES ('69', '60', 'AdType/index', '广告位管理', '1', '1', '', '63', '1', 'fa  fa-desktop', '1541120316', '1551936598');
INSERT INTO `tp_auth_rule` VALUES ('70', '68', 'Ad/add', '操作-添加', '1', '1', '', '621', '1', '', '1541120344', '1551936492');
INSERT INTO `tp_auth_rule` VALUES ('71', '68', 'Ad/edit', '操作-修改', '1', '1', '', '623', '1', '', '1541120377', '1551936511');
INSERT INTO `tp_auth_rule` VALUES ('72', '68', 'Ad/del', '操作-删除', '1', '1', '', '625', '1', '', '1541120423', '1551936530');
INSERT INTO `tp_auth_rule` VALUES ('73', '68', 'Ad/sort', '操作-排序', '1', '1', '', '628', '1', '', '1541120532', '1551936356');
INSERT INTO `tp_auth_rule` VALUES ('74', '68', 'Ad/state', '操作-状态', '1', '1', '', '627', '1', '', '1541120573', '1551936544');
INSERT INTO `tp_auth_rule` VALUES ('75', '68', 'Ad/selectDel', '操作-批量删除', '1', '1', '', '626', '1', '', '1541120586', '1551936538');
INSERT INTO `tp_auth_rule` VALUES ('76', '69', 'AdType/add', '操作-添加', '1', '1', '', '631', '1', '', '1541120670', '1551936612');
INSERT INTO `tp_auth_rule` VALUES ('77', '69', 'AdType/edit', '操作-修改', '1', '1', '', '633', '1', '', '1541120703', '1551936647');
INSERT INTO `tp_auth_rule` VALUES ('78', '69', 'AdType/del', '操作-删除', '1', '1', '', '635', '1', '', '1541120724', '1551936721');
INSERT INTO `tp_auth_rule` VALUES ('79', '69', 'AdType/selectDel', '操作-批量删除', '1', '1', '', '636', '1', '', '1541120754', '1551936734');
INSERT INTO `tp_auth_rule` VALUES ('80', '69', 'AdType/sort', '操作-排序', '1', '1', '', '638', '1', '', '1541120809', '1551936816');
INSERT INTO `tp_auth_rule` VALUES ('81', '0', 'Users', '会员管理', '1', '1', '', '9', '1', 'fa fa-user', '1541399456', '1551774271');
INSERT INTO `tp_auth_rule` VALUES ('82', '81', 'Users/index', '会员列表', '1', '1', '', '91', '1', 'fa fa-user', '1541399506', '1551774272');
INSERT INTO `tp_auth_rule` VALUES ('83', '81', 'UsersType/index', '会员组', '1', '1', '', '92', '1', 'fa fa-users', '1541399529', '1551835915');
INSERT INTO `tp_auth_rule` VALUES ('84', '82', 'Users/add', '操作-添加', '1', '1', '', '911', '1', '', '1541399593', '1551774275');
INSERT INTO `tp_auth_rule` VALUES ('85', '82', 'Users/edit', '操作-修改', '1', '1', '', '913', '1', '', '1541399618', '1551849024');
INSERT INTO `tp_auth_rule` VALUES ('86', '82', 'Users/del', '操作-删除', '1', '1', '', '915', '1', '', '1541399639', '1551849072');
INSERT INTO `tp_auth_rule` VALUES ('87', '82', 'Users/selectDel', '操作-批量删除', '1', '1', '', '916', '1', '', '1541399652', '1551849077');
INSERT INTO `tp_auth_rule` VALUES ('88', '82', 'Users/state', '操作-状态', '1', '1', '', '915', '1', '', '1541399712', '1551774281');
INSERT INTO `tp_auth_rule` VALUES ('89', '83', 'UsersType/add	', '操作-添加', '1', '1', '', '921', '1', '', '1541399760', '1551835957');
INSERT INTO `tp_auth_rule` VALUES ('90', '83', 'UsersType/addPost', '操作-添加保存', '1', '1', '', '922', '1', '', '1541399771', '1551835996');
INSERT INTO `tp_auth_rule` VALUES ('91', '83', 'UsersType/edit', '操作-修改', '1', '1', '', '923', '1', '', '1541399787', '1551836024');
INSERT INTO `tp_auth_rule` VALUES ('92', '83', 'UsersType/editPost', '操作-修改保存', '1', '1', '', '924', '1', '', '1541399799', '1551836049');
INSERT INTO `tp_auth_rule` VALUES ('93', '83', 'UsersType/del', '操作-删除', '1', '1', '', '925', '1', '', '1541399809', '1551836070');
INSERT INTO `tp_auth_rule` VALUES ('94', '82', 'Users/download', '操作-下载', '1', '1', '', '917', '1', '', '1541482111', '1551849111');
INSERT INTO `tp_auth_rule` VALUES ('95', '60', 'Debris/index', '碎片管理', '1', '1', '', '64', '1', 'fa fa-gift', '1545728477', '1545728477');
INSERT INTO `tp_auth_rule` VALUES ('96', '95', 'Debris/add', '操作-添加', '1', '1', '', '641', '1', '', '1545728513', '1545728513');
INSERT INTO `tp_auth_rule` VALUES ('97', '95', 'Debris/edit', '  操作-修改', '1', '1', '', '643', '1', '', '1545728548', '1551930413');
INSERT INTO `tp_auth_rule` VALUES ('98', '95', 'Debris/del', '操作-删除', '1', '1', '', '645', '1', '', '1545728564', '1551930402');
INSERT INTO `tp_auth_rule` VALUES ('99', '95', 'Debris/selectDel', '操作-批量删除', '1', '1', '', '646', '1', '', '1545728706', '1551930405');
INSERT INTO `tp_auth_rule` VALUES ('107', '1', 'System/sms', '短信配置', '1', '1', '', '13', '1', 'fa fa-send', '1548400960', '1548400980');
INSERT INTO `tp_auth_rule` VALUES ('108', '107', 'System/trySms', '操作-测试短信发送', '1', '1', '', '132', '1', '', '1548401007', '1551864103');
INSERT INTO `tp_auth_rule` VALUES ('119', '83', 'UsersType/selectDel', '操作-批量删除', '1', '1', '', '926', '1', '', '1551836092', '1551836092');
INSERT INTO `tp_auth_rule` VALUES ('120', '83', 'UsersType/sort', '操作-排序', '1', '1', '', '927', '1', '', '1551836104', '1551836104');
INSERT INTO `tp_auth_rule` VALUES ('121', '83', 'UsersType/state', '操作-状态', '1', '1', '', '928', '1', '', '1551836132', '1551836132');
INSERT INTO `tp_auth_rule` VALUES ('122', '82', 'Users/addPost', '操作-添加保存', '1', '1', '', '912', '1', '', '1551848993', '1551848993');
INSERT INTO `tp_auth_rule` VALUES ('123', '82', 'Users/editPost', '操作-修改保存', '1', '1', '', '914', '1', '', '1551849010', '1551849040');
INSERT INTO `tp_auth_rule` VALUES ('124', '4', 'System/systemPost', '操作-修改保存', '1', '1', '', '111', '1', '', '1551863272', '1551863272');
INSERT INTO `tp_auth_rule` VALUES ('125', '5', 'System/emailPost', '操作-修改保存', '1', '1', '', '121', '1', '', '1551863826', '1551863826');
INSERT INTO `tp_auth_rule` VALUES ('126', '107', 'System/smsPost', '操作-修改保存', '1', '1', '', '131', '1', '', '1551864090', '1551864090');
INSERT INTO `tp_auth_rule` VALUES ('127', '61', 'Link/addPost', '操作-添加保存', '1', '1', '', '612', '1', '', '1551929778', '1551929778');
INSERT INTO `tp_auth_rule` VALUES ('128', '61', 'Link/editPost', '操作-修改保存', '1', '1', '', '614', '1', '', '1551930004', '1551930017');
INSERT INTO `tp_auth_rule` VALUES ('129', '95', 'Debris/addPost', '操作-添加保存', '1', '1', '', '642', '1', '', '1551930385', '1551930385');
INSERT INTO `tp_auth_rule` VALUES ('130', '95', 'Debris/editPost', '操作-修改保存', '1', '1', '', '644', '1', '', '1551930435', '1551930435');
INSERT INTO `tp_auth_rule` VALUES ('131', '95', 'Debris/sort', '操作-排序', '1', '1', '', '647', '1', '', '1551930477', '1551930477');
INSERT INTO `tp_auth_rule` VALUES ('132', '95', 'Debris/state', '操作-状态', '1', '1', '', '648', '1', '', '1551930531', '1551930531');
INSERT INTO `tp_auth_rule` VALUES ('133', '68', 'Ad/addPost', '操作-添加保存', '1', '1', '', '622', '1', '', '1551936291', '1551936504');
INSERT INTO `tp_auth_rule` VALUES ('134', '68', 'Ad/editPost', '操作-修改保存', '1', '1', '', '624', '1', '', '1551936330', '1551936518');
INSERT INTO `tp_auth_rule` VALUES ('135', '69', 'AdType/addPost', '操作-添加保存', '1', '1', '', '632', '1', '', '1551936630', '1551936630');
INSERT INTO `tp_auth_rule` VALUES ('136', '69', 'AdType/editPost', '操作-修改保存', '1', '1', '', '634', '1', '', '1551936663', '1551936663');
INSERT INTO `tp_auth_rule` VALUES ('137', '69', 'AdType/state', '操作-状态', '1', '1', '', '637', '1', '', '1551936803', '1551936814');
INSERT INTO `tp_auth_rule` VALUES ('138', '109', 'Addons/index', '插件管理', '1', '1', '', '71', '1', '', '1552455295', '1552455295');
INSERT INTO `tp_auth_rule` VALUES ('152', '6', 'AdminLog/index', '管理员日志', '1', '1', '', '24', '1', ' fa fa-book', '1553845141', '1553845141');
INSERT INTO `tp_auth_rule` VALUES ('153', '152', 'AdminLog/del', '操作-删除', '1', '1', '', '241', '1', '', '1553845181', '1553845181');
INSERT INTO `tp_auth_rule` VALUES ('154', '152', 'AdminLog/selectDel', '操作-批量删除', '1', '1', '', '242', '1', '', '1553845204', '1553845204');
INSERT INTO `tp_auth_rule` VALUES ('155', '152', 'AdminLog/edit', '操作-查看', '1', '1', '', '243', '1', '', '1553848110', '1553848110');
INSERT INTO `tp_auth_rule` VALUES ('156', '152', 'AdminLog/download', '操作-下载', '1', '1', '', '244', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('157', '1', 'SystemGroup/index', '系统设置分组', '1', '1', '', '14', '1', 'fa  fa-cubes', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('158', '157', 'SystemGroup/add', '操作-添加', '1', '1', '', '141', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('159', '157', 'SystemGroup/addPost', '操作-添加保存', '1', '1', '', '142', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('160', '157', 'SystemGroup/edit', '操作-修改', '1', '1', '', '143', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('161', '157', 'SystemGroup/editPost', '操作-修改保存', '1', '1', '', '144', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('162', '157', 'SystemGroup/del', '修改-删除', '1', '1', '', '145', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('163', '157', 'SystemGroup/selectDel', '修改-批量删除', '1', '1', '', '146', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('164', '157', 'SystemGroup/sort', '修改-排序', '1', '1', '', '147', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('165', '157', 'SystemGroup/state', '修改-状态', '1', '1', '', '147', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('166', '4', 'System/index', '操作-字段列表', '1', '1', '', '112', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('167', '4', 'System/add', '操作-字段添加', '1', '1', '', '113', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('168', '4', 'System/addPost', '操作-字段添加保存', '1', '1', '', '114', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('169', '4', 'System/edit', '操作-字段修改', '1', '1', '', '115', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('170', '4', 'System/editPost', '操作-字段修改保存', '1', '1', '', '116', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('171', '4', 'System/del', '操作-字段删除', '1', '1', '', '117', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('172', '4', 'System/selectDel', '操作-字段批量删除', '1', '1', '', '118', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('173', '4', 'System/sort', '操作-字段排序', '1', '1', '', '119', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('174', '4', 'System/state', '操作-字段状态', '1', '1', '', '120', '1', '', '0', '0');
INSERT INTO `tp_auth_rule` VALUES ('250', '0', 'News', '新闻管理', '1', '1', '', '50', '1', 'fa fa-send', '1583475891', '1583475891');
INSERT INTO `tp_auth_rule` VALUES ('251', '250', 'news/index', '新闻列表', '1', '1', '', '50', '1', '', '1583475931', '1583475931');

-- -----------------------------
-- Table structure for `tp_cate`
-- -----------------------------
DROP TABLE IF EXISTS `tp_cate`;
CREATE TABLE `tp_cate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1-显示 0-隐藏',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='新闻分类';

-- -----------------------------
-- Records of `tp_cate`
-- -----------------------------
INSERT INTO `tp_cate` VALUES ('1', '0', '新闻动态', '1', '255');
INSERT INTO `tp_cate` VALUES ('2', '0', '协会要闻', '1', '255');
INSERT INTO `tp_cate` VALUES ('3', '0', '政策解读', '1', '255');
INSERT INTO `tp_cate` VALUES ('4', '0', '政策文件', '1', '255');
INSERT INTO `tp_cate` VALUES ('5', '0', '行业表彰', '1', '255');
INSERT INTO `tp_cate` VALUES ('6', '0', '展会活动', '1', '255');
INSERT INTO `tp_cate` VALUES ('7', '0', '会员单位', '1', '255');
INSERT INTO `tp_cate` VALUES ('8', '0', '时政要闻', '1', '255');
INSERT INTO `tp_cate` VALUES ('9', '0', '会员动态', '1', '255');
INSERT INTO `tp_cate` VALUES ('10', '0', '315专栏', '1', '255');
INSERT INTO `tp_cate` VALUES ('11', '0', '协会领导', '1', '255');
INSERT INTO `tp_cate` VALUES ('12', '0', '行业专家', '1', '255');
INSERT INTO `tp_cate` VALUES ('13', '0', '招标信息', '1', '255');
INSERT INTO `tp_cate` VALUES ('14', '0', '会员单位', '1', '255');

-- -----------------------------
-- Table structure for `tp_config`
-- -----------------------------
DROP TABLE IF EXISTS `tp_config`;
CREATE TABLE `tp_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='配置表';

-- -----------------------------
-- Records of `tp_config`
-- -----------------------------
INSERT INTO `tp_config` VALUES ('60', 'smtp_server', 'smtp.qq.com', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('61', 'smtp_port', '465', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('62', 'smtp_user', '407593529@qq.com', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('63', 'smtp_pwd', '', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('64', 'regis_smtp_enable', '1', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('65', 'test_eamil', '', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('94', 'test_mobile', '', 'sms', '');
INSERT INTO `tp_config` VALUES ('93', 'signName', '', 'sms', '');
INSERT INTO `tp_config` VALUES ('92', 'templateCode', '', 'sms', '');
INSERT INTO `tp_config` VALUES ('91', 'accessKeySecret', '', 'sms', '');
INSERT INTO `tp_config` VALUES ('90', 'accessKeyId', 'LTAIqinwPNwEawUK', 'sms', '');
INSERT INTO `tp_config` VALUES ('88', 'email_id', 'SIYUCMS', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('89', 'test_eamil_info', ' 您好！这是一封来自SIYUCMS的测试邮件！', 'smtp', '0');

-- -----------------------------
-- Table structure for `tp_debris`
-- -----------------------------
DROP TABLE IF EXISTS `tp_debris`;
CREATE TABLE `tp_debris` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `name` varchar(255) DEFAULT NULL COMMENT '调用',
  `content` text COMMENT '内容',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '状态（1 正常，0 锁定）',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='碎片表';

-- -----------------------------
-- Records of `tp_debris`
-- -----------------------------
INSERT INTO `tp_debris` VALUES ('1', '关于我们', 'AboutUs', '<p>SIYUCMS内容管理系统，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。<br>SIYUCMS内容管理系统，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。&nbsp;&nbsp;</p><p><br></p>', '12', '', '3', '1', '1', '1545729604', '1551930573');

-- -----------------------------
-- Table structure for `tp_download`
-- -----------------------------
DROP TABLE IF EXISTS `tp_download`;
CREATE TABLE `tp_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cate_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(70) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(80) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT 'SEO简介',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(80) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `images` mediumtext NOT NULL COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `author` varchar(50) NOT NULL DEFAULT 'Admin' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `summary` text NOT NULL COMMENT '摘要',
  `tags` varchar(100) NOT NULL DEFAULT '' COMMENT 'TAG',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `cate_id` (`id`,`cate_id`,`status`),
  KEY `sort` (`id`,`cate_id`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='下载模型表';

-- -----------------------------
-- Records of `tp_download`
-- -----------------------------
INSERT INTO `tp_download` VALUES ('10', '17', '招聘表格下载', '', '', '', '', '', '', '1', '100', '0', '1545633670', '0', '/uploads/20181224/6b449574a2358edd20c10f10f64bd09c.jpg', '', '/uploads/20181224/06d08f008e54d9ac4eae3d0a6d53cff7.rar', '管理员', '本站', '', '');
INSERT INTO `tp_download` VALUES ('11', '17', '报名表格下载', '', '', '', '', '', '', '1', '100', '0', '1545635098', '0', '/uploads/20181224/d6df5528408d8974777ae29280428ad6.jpg', '', '/uploads/20181224/4d3569541beb373334582df5aaaa126b.rar', '管理员', '本站', '', '');
INSERT INTO `tp_download` VALUES ('12', '17', '供应商表格下载', '', '', '', '', '', '', '1', '100', '0', '1545635131', '0', '/uploads/20181224/363944f333897882e4424bacb186e693.jpg', '', '/uploads/20181224/d21fb51f503d487d67a4c8c10577c458.rar', '管理员', '本站', '', '');

-- -----------------------------
-- Table structure for `tp_field`
-- -----------------------------
DROP TABLE IF EXISTS `tp_field`;
CREATE TABLE `tp_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` text,
  `ispost` tinyint(1) NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='模型字段表';

-- -----------------------------
-- Records of `tp_field`
-- -----------------------------
INSERT INTO `tp_field` VALUES ('1', '2', 'cate_id', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'cate', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('2', '2', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('3', '2', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('4', '2', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '17', '1', '1');
INSERT INTO `tp_field` VALUES ('5', '2', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'ckeditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('6', '2', 'create_time', '添加时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('7', '2', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'显示|1\r\n隐藏|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('8', '2', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('10', '2', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('13', '2', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('14', '2', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('15', '2', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('29', '2', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('28', '2', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('21', '2', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('22', '1', 'cate_id', '栏目', '', '1', '0', '0', '', '', '', 'cate', '', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('23', '1', 'title', '标题', '', '1', '0', '0', '', '', '', 'title', '', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('24', '1', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('25', '1', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('26', '1', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'ckeditor\',\n)', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('27', '1', 'hits', '点击次数', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '0', '1', '0');
INSERT INTO `tp_field` VALUES ('30', '3', 'cate_id', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'cate', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('31', '3', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('32', '3', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('33', '3', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '17', '1', '1');
INSERT INTO `tp_field` VALUES ('34', '3', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'ckeditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('35', '3', 'create_time', '添加时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('36', '3', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'显示|1\r\n隐藏|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('37', '3', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('38', '3', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('39', '3', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('40', '3', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('41', '3', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('42', '3', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('43', '3', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('44', '3', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('45', '4', 'cate_id', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'cate', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('46', '4', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('47', '4', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('48', '4', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '17', '1', '1');
INSERT INTO `tp_field` VALUES ('49', '4', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'ckeditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('50', '4', 'create_time', '添加时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('51', '4', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'显示|1\r\n隐藏|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('52', '4', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('53', '4', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('54', '4', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('55', '4', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('56', '4', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('57', '4', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('58', '4', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('59', '4', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('60', '5', 'cate_id', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'cate', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('61', '5', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('62', '5', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('63', '5', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '17', '1', '1');
INSERT INTO `tp_field` VALUES ('64', '5', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'ckeditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('65', '5', 'create_time', '添加时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('66', '5', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'显示|1\r\n隐藏|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('67', '5', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('68', '5', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('69', '5', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('70', '5', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('71', '5', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('72', '5', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('73', '5', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('74', '5', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('75', '6', 'cate_id', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'cate', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('76', '6', 'title', '标题', '', '1', '1', '70', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('77', '6', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '16', '1', '1');
INSERT INTO `tp_field` VALUES ('78', '6', 'description', 'SEO简介', '', '0', '0', '1200', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'发3\',\n)', '1', '', '17', '1', '1');
INSERT INTO `tp_field` VALUES ('79', '6', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'ckeditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('80', '6', 'create_time', '添加时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '10', '1', '1');
INSERT INTO `tp_field` VALUES ('81', '6', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'显示|1\r\n隐藏|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '11', '1', '1');
INSERT INTO `tp_field` VALUES ('82', '6', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '13', '1', '1');
INSERT INTO `tp_field` VALUES ('83', '6', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '1', '1');
INSERT INTO `tp_field` VALUES ('84', '6', 'image', '缩略图', '', '0', '0', '120', '', '', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('85', '6', 'images', '图片集', '', '0', '0', '0', '', '', '', 'images', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('86', '6', 'download', '文件下载', '', '0', '0', '0', '', '', '', 'file', 'array (\n  \'upload_allowext\' => \'zip|rar|doc|ppt\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('87', '6', 'source', '来源', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '4', '1', '0');
INSERT INTO `tp_field` VALUES ('88', '6', 'author', '作者', '', '0', '0', '50', '', '', '', 'text', 'array (\n  \'default\' => \'Admin\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '3', '1', '0');
INSERT INTO `tp_field` VALUES ('89', '6', 'sort', '排序', '', '1', '0', '8', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'100\',\n)', '0', '', '14', '1', '1');
INSERT INTO `tp_field` VALUES ('90', '2', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('91', '3', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('92', '4', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('93', '5', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('94', '6', 'summary', '摘要', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'text\',\n  \'default\' => \'\',\n)', '0', '', '6', '1', '0');
INSERT INTO `tp_field` VALUES ('95', '7', 'cate_id', '栏目', '', '0', '1', '6', '', '必须选择一个栏目', '', 'cate', '', '1', '', '1', '1', '1');
INSERT INTO `tp_field` VALUES ('96', '7', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', '', '1', '', '2', '1', '1');
INSERT INTO `tp_field` VALUES ('106', '7', 'contact', '联系方式', '', '1', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '9', '1', '0');
INSERT INTO `tp_field` VALUES ('99', '7', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'edittype\' => \'ckeditor\',\n)', '1', '', '3', '1', '1');
INSERT INTO `tp_field` VALUES ('100', '7', 'create_time', '添加时间', '', '1', '0', '0', 'date', '', 'createtime', 'datetime', '', '1', '', '4', '1', '1');
INSERT INTO `tp_field` VALUES ('101', '7', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已处理|1\r\n未处理|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'default\' => \'1\',\n)', '1', '', '5', '1', '1');
INSERT INTO `tp_field` VALUES ('104', '7', 'name', '姓名', '', '1', '0', '0', '', '', '', 'text', 'array (\n  \'default\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '8', '1', '0');
INSERT INTO `tp_field` VALUES ('105', '7', 'hits', '点击次数', '', '0', '0', '0', '', '', '', 'number', 'array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '0', '', '7', '1', '0');
INSERT INTO `tp_field` VALUES ('103', '7', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '6', '1', '1');
INSERT INTO `tp_field` VALUES ('107', '2', 'tags', 'TAG', '', '0', '0', '100', '', '', '', 'tag', 'array (\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '12', '1', '0');
INSERT INTO `tp_field` VALUES ('108', '4', 'tags', 'TAG', '', '0', '0', '100', '', '', '', 'tag', 'array (\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '12', '1', '0');
INSERT INTO `tp_field` VALUES ('109', '3', 'tags', 'TAG', '', '0', '0', '100', '', '', '', 'tag', 'array (\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '12', '1', '0');
INSERT INTO `tp_field` VALUES ('110', '5', 'tags', 'TAG', '', '0', '0', '100', '', '', '', 'tag', 'array (\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '12', '1', '0');
INSERT INTO `tp_field` VALUES ('111', '6', 'tags', 'TAG', '', '0', '0', '100', '', '', '', 'tag', 'array (\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '12', '1', '0');

-- -----------------------------
-- Table structure for `tp_link`
-- -----------------------------
DROP TABLE IF EXISTS `tp_link`;
CREATE TABLE `tp_link` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '网站名称',
  `url` varchar(255) NOT NULL COMMENT '网站地址',
  `logo` varchar(255) DEFAULT NULL COMMENT '网站logo',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '状态（1 正常，0 锁定）',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- -----------------------------
-- Records of `tp_link`
-- -----------------------------
INSERT INTO `tp_link` VALUES ('1', 'SIYUCMS', 'http://www.siyucms.com', '', '', '2', '1', '1548727536', '1551930738');

-- -----------------------------
-- Table structure for `tp_message`
-- -----------------------------
DROP TABLE IF EXISTS `tp_message`;
CREATE TABLE `tp_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cate_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(40) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `cate_id` (`id`,`cate_id`,`status`),
  KEY `sort` (`id`,`cate_id`,`status`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表';


-- -----------------------------
-- Table structure for `tp_news`
-- -----------------------------
DROP TABLE IF EXISTS `tp_news`;
CREATE TABLE `tp_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '新闻标题',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `content` text COMMENT '内容',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `author` varchar(255) NOT NULL DEFAULT '' COMMENT '作者',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='新闻表';

-- -----------------------------
-- Records of `tp_news`
-- -----------------------------
INSERT INTO `tp_news` VALUES ('1', '1', '咨询量暴增满意度逆势提升 宝洁、长虹特殊时期创造新增量：盯住服务数据', '', '4ps', '101', '', '1', '255', '徐明星', '0', '0');
INSERT INTO `tp_news` VALUES ('3', '4', '1', '', '', '0', '', '1', '255', '', '1583486263', '1583486286');

-- -----------------------------
-- Table structure for `tp_product`
-- -----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cate_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(70) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(225) NOT NULL DEFAULT '' COMMENT '标题样式',
  `thumb` varchar(225) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(80) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` mediumtext NOT NULL COMMENT 'SEO简介',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(80) NOT NULL DEFAULT '' COMMENT '模板',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `images` mediumtext NOT NULL COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `author` varchar(50) NOT NULL DEFAULT 'Admin' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `summary` text NOT NULL COMMENT '摘要',
  `tags` varchar(100) NOT NULL DEFAULT '' COMMENT 'TAG',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`sort`),
  KEY `cate_id` (`id`,`cate_id`,`status`),
  KEY `sort` (`id`,`cate_id`,`status`,`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='产品模型表';

-- -----------------------------
-- Records of `tp_product`
-- -----------------------------
INSERT INTO `tp_product` VALUES ('10', '15', '一本书', '', '', '', '', '', '', '1', '100', '0', '1545631080', '0', '/uploads/20181224/065928f94ebe13ab1fbdc09cdd28a18b.jpg', '', '', '管理员', '本站', '', '13');
INSERT INTO `tp_product` VALUES ('11', '15', '一支笔', '', '', '', '', '', '', '1', '100', '0', '1545631526', '0', '/uploads/20181224/f05f564a79e650d566251152fa4fa75e.jpg', '', '', '管理员', '本站', '', '');
INSERT INTO `tp_product` VALUES ('12', '15', '一支铅笔', '', '', '', '', '', '', '1', '100', '0', '1545631500', '0', '/uploads/20181224/d5e07bd3fdd9f3cbb0bdc798ccdba178.jpg', '', '', '管理员', '本站', '', '12');
INSERT INTO `tp_product` VALUES ('13', '15', '背包', '', '', '', '', '', '', '1', '100', '0', '1545631583', '0', '/uploads/20181224/8852280b4dc3365af4855c779e4239c6.jpg', '', '', '管理员', '本站', '', '');
INSERT INTO `tp_product` VALUES ('14', '15', '笔记本', '', '', '', '', '', '', '1', '100', '2', '1545631621', '0', '/uploads/20181224/d42552c77b14805f6d48e00b7a38f2e8.jpg', '', '', '管理员', '本站', '', '');
INSERT INTO `tp_product` VALUES ('15', '15', '一支笔', '', '', '', '', '', '', '1', '100', '8', '1545631620', '0', '/uploads/20181224/47f793345aa44161161aeaa4409a52f8.jpg', '', '', '管理员', '本站', '', '12');
INSERT INTO `tp_product` VALUES ('16', '15', '铅笔盒', '', '', '', '', '', '', '1', '100', '2', '1545631695', '0', '/uploads/20181224/c89c7634f5bcd3b60884da427bc0b384.jpg', '', '', '管理员', '本站', '', '');
INSERT INTO `tp_product` VALUES ('17', '15', '钢笔', '', '', '', '', '<p>钢笔</p>\n', '', '1', '100', '7', '1545631680', '0', '/uploads/20181224/0e9e92ee9cab513ff99f0189fea24a2e.jpg', '', '', '管理员', '本站', '', '12,14');

-- -----------------------------
-- Table structure for `tp_system`
-- -----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `group_id` int(8) NOT NULL COMMENT '系统设置分组id',
  `field` varchar(255) NOT NULL COMMENT '字段名',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '别名',
  `required` tinyint(1) DEFAULT '0' COMMENT '是否必填',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示信息',
  `type` varchar(20) DEFAULT NULL COMMENT '字段类型',
  `setup` text COMMENT '配置信息',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `value` text COMMENT '字段值',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='系统设置表';

-- -----------------------------
-- Records of `tp_system`
-- -----------------------------
INSERT INTO `tp_system` VALUES ('1', '1', 'name', '网站名称', '0', '', 'text', 'array (\n  \'edittype\' => \'ckeditor\',\n)', '1', '1', 'cncba', '1557964941', '1583476589');
INSERT INTO `tp_system` VALUES ('2', '1', 'logo', ' 网站LOGO', '0', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '2', '1', '', '1557968436', '1583423170');
INSERT INTO `tp_system` VALUES ('3', '1', 'icp', '备案号', '0', '', 'text', '', '3', '1', '渝ICP备123456号', '1557968883', '1583423562');
INSERT INTO `tp_system` VALUES ('4', '1', 'copyright', '版权信息', '0', '', 'textarea', '', '4', '1', 'Copyright © SIYUCMS 2019.All right reserved.Powered by SIYUCMS', '1557968923', '1557986040');
INSERT INTO `tp_system` VALUES ('5', '1', 'address', '公司地址', '0', '', 'text', '', '6', '1', '重庆市渝北区', '1557968979', '1583423592');
INSERT INTO `tp_system` VALUES ('6', '1', 'contacts', '联系人', '0', '', 'text', '', '7', '1', 'X先生', '1557969011', '1557986096');
INSERT INTO `tp_system` VALUES ('7', '1', 'tel', '联系电话', '0', '', 'text', '', '8', '1', '010-8888 7777', '1557969048', '1557986097');
INSERT INTO `tp_system` VALUES ('8', '1', 'mobile_phone', '手机号码', '0', '', 'text', '', '9', '1', '159 2388 6045', '1557969066', '1583423592');
INSERT INTO `tp_system` VALUES ('9', '1', 'fax', '传真号码', '0', '', 'text', '', '10', '1', '010-8888 9999', '1557969093', '1557986099');
INSERT INTO `tp_system` VALUES ('10', '1', 'email', '邮箱账号', '0', '', 'text', '', '11', '1', '916579252@qq.com', '1557969113', '1583423592');
INSERT INTO `tp_system` VALUES ('11', '1', 'qq', 'QQ', '0', '', 'text', '', '12', '1', '916579252', '1557969147', '1583423592');
INSERT INTO `tp_system` VALUES ('12', '1', 'qrcode', '二维码', '0', '', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '13', '1', '/uploads/20181226/cb7a4c21d6443bc5e7a8d16ac2cbe242.png', '1557969170', '1557986111');
INSERT INTO `tp_system` VALUES ('13', '2', 'title', 'SEO标题', '0', '', 'text', '', '21', '1', 'cncba', '1557969266', '1583476586');
INSERT INTO `tp_system` VALUES ('14', '2', 'key', 'SEO关键字', '0', '', 'textarea', '', '22', '1', 'cncba关键字', '1557969297', '1583476586');
INSERT INTO `tp_system` VALUES ('15', '2', 'des', 'SEO描述', '0', '', 'textarea', '', '23', '1', 'cncba关键字', '1557969320', '1583476586');
INSERT INTO `tp_system` VALUES ('16', '3', 'mobile', '手机端', '0', '开启后自动跳转到mobile，自适应网站或无手机端网站请关闭', 'radio', 'array (\n  \'options\' => \'开启|1\r\n关闭|0\',\n)', '31', '1', '0', '1557969425', '1557986182');
INSERT INTO `tp_system` VALUES ('17', '3', 'code', '后台验证码', '0', '后台登录时是否需要验证码', 'radio', 'array (\n  \'options\' => \'开启|1\r\n关闭|0\',\n)', '32', '1', '0', '1557969468', '1557986161');
INSERT INTO `tp_system` VALUES ('18', '3', 'message_code', '前台验证码', '0', '前台留言等是否需要验证码', 'radio', 'array (\n  \'options\' => \'开启|1\r\n关闭|0\',\n)', '33', '1', '0', '1557969501', '1557986161');
INSERT INTO `tp_system` VALUES ('19', '3', 'message_send_mail', '留言邮件提醒', '0', '前台留言时是否需要邮件提醒，如开启请先进行邮箱配置', 'radio', 'array (\n  \'options\' => \'开启|1\r\n关闭|0\',\n)', '34', '1', '0', '1557969526', '1557986161');
INSERT INTO `tp_system` VALUES ('20', '4', 'template', '选择模板', '0', 'PC , MOBILE 等都会在该模板中', 'template', '', '41', '1', 'default', '1557969864', '1557985790');
INSERT INTO `tp_system` VALUES ('21', '4', 'html', 'Html目录', '0', '用于模板文件防盗', 'text', '', '42', '1', 'html', '1557969903', '1557986194');
INSERT INTO `tp_system` VALUES ('22', '1', 'url', '网站地址', '0', '', 'text', '', '5', '1', 'www.xxx.com', '1557986088', '1557986120');
INSERT INTO `tp_system` VALUES ('24', '3', 'template_opening', '模板修改备份', '0', '开启后后台模板管理中修改文件时会进行自动备份', 'radio', 'array (\n  \'options\' => \'开启|1\r\n关闭|0\',\n)', '36', '1', '1', '1558756191', '1558756247');
INSERT INTO `tp_system` VALUES ('25', '2', 'suffix', 'seo后缀', '0', '网站前台除首页外seo后缀', 'text', '', '20', '1', 'cncba', '1558756191', '1583476586');

-- -----------------------------
-- Table structure for `tp_system_group`
-- -----------------------------
DROP TABLE IF EXISTS `tp_system_group`;
CREATE TABLE `tp_system_group` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '分组名称',
  `description` text COMMENT '备注',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '状态（1 正常，0 锁定）',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统设置分组表';

-- -----------------------------
-- Records of `tp_system_group`
-- -----------------------------
INSERT INTO `tp_system_group` VALUES ('1', '基础设置', '基础设置', '1', '1', '1557903491', '1557903491');
INSERT INTO `tp_system_group` VALUES ('2', 'SEO设置', 'SEO设置', '2', '1', '1557903521', '1557903521');
INSERT INTO `tp_system_group` VALUES ('3', '开关设置', '开关设置', '3', '1', '1557903537', '1557903537');
INSERT INTO `tp_system_group` VALUES ('4', '模板设置', '模板设置', '4', '1', '1557903562', '1557903567');
INSERT INTO `tp_system_group` VALUES ('5', '自定义', '自定义系统设置信息', '5', '1', '1557905966', '1557906261');

-- -----------------------------
-- Table structure for `tp_tags`
-- -----------------------------
DROP TABLE IF EXISTS `tp_tags`;
CREATE TABLE `tp_tags` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '标签名称',
  `num` mediumint(8) DEFAULT '1' COMMENT '标签数量',
  `module_id` smallint(3) DEFAULT NULL COMMENT '所属模型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- -----------------------------
-- Records of `tp_tags`
-- -----------------------------
INSERT INTO `tp_tags` VALUES ('1', 'PHP', '8', '2');
INSERT INTO `tp_tags` VALUES ('2', 'php整型', '1', '2');
INSERT INTO `tp_tags` VALUES ('3', 'php注释', '1', '2');
INSERT INTO `tp_tags` VALUES ('4', 'echo', '1', '2');
INSERT INTO `tp_tags` VALUES ('5', 'echo命令', '1', '2');
INSERT INTO `tp_tags` VALUES ('6', 'PHP变量', '1', '2');
INSERT INTO `tp_tags` VALUES ('7', '代码工具', '1', '2');
INSERT INTO `tp_tags` VALUES ('8', '开发环境', '2', '2');
INSERT INTO `tp_tags` VALUES ('9', 'Linux', '1', '2');
INSERT INTO `tp_tags` VALUES ('10', 'windows', '1', '2');
INSERT INTO `tp_tags` VALUES ('11', 'PHP流程', '4', '2');
INSERT INTO `tp_tags` VALUES ('12', '笔', '3', '4');
INSERT INTO `tp_tags` VALUES ('13', '书本', '1', '4');
INSERT INTO `tp_tags` VALUES ('14', '钢笔', '1', '4');

-- -----------------------------
-- Table structure for `tp_test`
-- -----------------------------
DROP TABLE IF EXISTS `tp_test`;
CREATE TABLE `tp_test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `qq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- -----------------------------
-- Records of `tp_test`
-- -----------------------------
INSERT INTO `tp_test` VALUES ('1', '11');

-- -----------------------------
-- Table structure for `tp_users`
-- -----------------------------
DROP TABLE IF EXISTS `tp_users`;
CREATE TABLE `tp_users` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL COMMENT '邮箱帐号',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `sex` tinyint(1) NOT NULL COMMENT '1男 0女',
  `last_login_time` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `mobile_validated` tinyint(3) DEFAULT '0' COMMENT '是否验证手机 1 验证 0 未验证',
  `email_validated` tinyint(3) DEFAULT '0' COMMENT '是否验证手机 1 验证 0 未验证',
  `type_id` tinyint(3) DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_ip` varchar(15) DEFAULT NULL COMMENT '注册IP',
  `update_time` int(10) DEFAULT '0' COMMENT '修改时间',
  `create_time` int(10) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- -----------------------------
-- Records of `tp_users`
-- -----------------------------
INSERT INTO `tp_users` VALUES ('1', 'test001@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1553138106', '127.0.0.1', '407593529', '15840189268', '0', '0', '1', '1', '127.0.0.1', '1541405155', '1541405155');
INSERT INTO `tp_users` VALUES ('2', 'test002@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1541405185', '127.0.0.1', '407593529', '15840189627', '0', '0', '2', '1', '127.0.0.1', '1541405155', '1541405185');
INSERT INTO `tp_users` VALUES ('3', 'test003@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060654', '127.0.0.1', '', '', '0', '0', '1', '1', '127.0.0.1', '1541405155', '1546060654');
INSERT INTO `tp_users` VALUES ('4', 'test004@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060666', '127.0.0.1', '', '', '0', '0', '1', '1', '127.0.0.1', '1541405155', '1546060666');
INSERT INTO `tp_users` VALUES ('5', 'test005@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060680', '127.0.0.1', '', '15840189625', '0', '0', '1', '1', '127.0.0.1', '1541405155', '1546060680');
INSERT INTO `tp_users` VALUES ('6', 'test007@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1546061841', '127.0.0.1', '', '', '0', '0', '1', '1', '127.0.0.1', '1541405155', '1546061841');
INSERT INTO `tp_users` VALUES ('7', 'test008@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1546062123', '127.0.0.1', '123', '', '0', '0', '1', '1', '127.0.0.1', '1551844614', '1546061953');

-- -----------------------------
-- Table structure for `tp_users_type`
-- -----------------------------
DROP TABLE IF EXISTS `tp_users_type`;
CREATE TABLE `tp_users_type` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '会员组名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(10) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员类型表';

-- -----------------------------
-- Records of `tp_users_type`
-- -----------------------------
INSERT INTO `tp_users_type` VALUES ('1', '注册会员', '注册会员', '1', '1', '1541405155', '1541405155');
INSERT INTO `tp_users_type` VALUES ('2', 'VIP会员', 'VIP会员', '2', '1', '1541405155', '1541405155');
