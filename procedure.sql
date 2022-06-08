
DROP PROCEDURE IF EXISTS sp_DurchschnitAlkoholgehaltVon;

DELIMITER $$
CREATE PROCEDURE sp_DurchschnitAlkoholgehaltVon
 (IN marke varchar(45), OUT average float )
BEGIN 
	DECLARE error_msg varchar(100);
	SET error_msg = 'Error while trying to calculate average alcohol procentage. Marke does not exist.';
    
	IF NOT EXISTS (SELECT MarkenId from Marken WHERE Name = marke)
	THEN 
		signal sqlstate '45000' set message_text = error_msg;
	ELSE
		SELECT AVG(Alkoholgehalt) 'Alkoholgehalt Durchschnitt'
		INTO average FROM Biersorten 
		WHERE Fk_MarkenId = (SELECT MarkenId from Marken WHERE Name = marke);
	END IF;
END $$

DELIMITER ;




