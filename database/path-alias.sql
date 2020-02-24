CREATE TABLE `path_alias` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `revision_id` INT(10) UNSIGNED DEFAULT NULL,
  `uuid` VARCHAR(128) CHARACTER SET ASCII NOT NULL,
  `langcode` VARCHAR(12) CHARACTER SET ASCII NOT NULL,
  `path` VARCHAR(255) DEFAULT NULL,
  `alias` VARCHAR(255) DEFAULT NULL,
  `status` TINYINT(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path_alias_field__uuid__value` (`uuid`),
  UNIQUE KEY `path_alias__revision_id` (`revision_id`),
  KEY `path_alias__status` (`status`,`id`),
  KEY `path_alias__alias_langcode_id_status` (`alias`(191),`langcode`,`id`,`status`),
  KEY `path_alias__path_langcode_id_status` (`path`(191),`langcode`,`id`,`status`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for path_alias entities.';
CREATE TABLE `path_alias_revision` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `revision_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `path_alias__id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for path_alias entities.';

