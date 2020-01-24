DELIMITER $$

/* repair player`s to stable params */
DROP PROCEDURE IF EXISTS `lip_RepairePlayer` $$
CREATE PROCEDURE `lip_RepairePlayer` (IN iPayerObjID INTEGER UNSIGNED)
 DETERMINISTIC
 SQL SECURITY DEFINER
BEGIN
	UPDATE `characters` SET `x` = 17867, `y` = 170259, `z` = -3503 WHERE `obj_Id` = iPayerObjID LIMIT 1;
	DELETE FROM `character_effects_save` WHERE `object_id`= iPayerObjID;
	UPDATE `items` SET `location` = "INVENTORY" WHERE `location` = "PAPERDOLL" AND `owner_id` = iPayerObjID;
END $$

DELIMITER ;