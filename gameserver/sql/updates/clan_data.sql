SELECT count(*) INTO @clan_data_custom_points_exist FROM `information_schema`.`columns` WHERE
        `TABLE_SCHEMA` = database() AND
        `TABLE_NAME` = 'clan_data' AND
        `COLUMN_NAME` = 'custom_points';

SET @q = IF(@clan_data_custom_points_exist <= 0,  'ALTER TABLE `clan_data` ADD COLUMN `custom_points` INT NOT NULL DEFAULT \'0\' AFTER `disband_penalty`', 'SELECT \'OK\'');

PREPARE stmt FROM @q;
EXECUTE stmt;