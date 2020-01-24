CREATE TABLE IF NOT EXISTS `mmotop_votes` (
  `voteId` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `voterIp` varchar(48) NOT NULL DEFAULT '0.0.0.0',
  `voterName` varchar(72) NOT NULL DEFAULT '',
  `voteType` tinyint(4) NOT NULL DEFAULT '-1',
  `isRewarded` tinyint(1) NOT NULL,
  PRIMARY KEY (`voteId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
