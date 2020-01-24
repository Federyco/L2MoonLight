CREATE TABLE IF NOT EXISTS `aacg_hwid_bans` (
	`hwid` VARCHAR(20) CHARACTER SET UTF8 DEFAULT '',
	`until` bigint(20) NOT NULL DEFAULT '0',
	`comment` VARCHAR(255) DEFAULT NULL,
	PRIMARY KEY (`hwid`),
	KEY `key_until` (`until`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
