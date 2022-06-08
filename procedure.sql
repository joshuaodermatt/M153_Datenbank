
DROP PROCEDURE IF EXISTS get_liebhaber_amount_of_beer;

DELIMITER $$

CREATE PROCEDURE get_liebhaber_amount_of_beer(
    IN beer varchar(45)
) BEGIN
    SELECT count(BL.BierLiebhaberId) AS 'Anzahl' FROM BierLiebhaber BL
    JOIN BierFavorit BF on BL.BierLiebhaberId = BF.BierLiebhaberId
    JOIN Biersorten BS on BS.BierstortenId = BF.BierstortenId
    where BS.Name = beer;
end $$;

DELIMITER ;

DROP PROCEDURE IF EXISTS delete_products_of_marke;

DELIMITER $$

CREATE PROCEDURE delete_products_of_marke (
    IN brandId int
) BEGIN
    DELETE FROM BierFavorit where BierFavorit.BierstortenId IN (SELECT BS.BierstortenId FROM Biersorten BS JOIN Marken M on BS.Fk_MarkenId = M.MarkenId where M.MarkenId = brandId);
    DELETE FROM Biersorten where Fk_MarkenId = brandId;
end $$;

DELIMITER ;

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
END $$;

DELIMITER ;


