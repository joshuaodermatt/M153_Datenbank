
DROP PROCEDURE IF EXISTS sp_DurchschnitAlkoholgehaltVon;

DELIMITER $$
CREATE PROCEDURE sp_DurchschnitAlkoholgehaltVon
 (IN marke varchar(45), OUT average float )
BEGIN 
	SELECT AVG(Alkoholgehalt) 'Alkoholgehalt Durchschnitt'
    INTO average FROM Biersorten 
    WHERE Fk_MarkenId = (SELECT MarkenId from Marken WHERE Name = marke);
END $$

DELIMITER ;




