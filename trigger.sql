
DROP TRIGGER IF EXISTS gruendungsjahr_ueberprüfen;

DELIMITER $$
CREATE TRIGGER gruendungsjahr_ueberprüfen
    BEFORE INSERT
    ON Marken FOR EACH ROW
    BEGIN
        DECLARE jahr_aktuell INT;
        DECLARE error_msg varchar(100);
        SET error_msg = 'Error while trying to insert new row into Marken. Gruendungsjahr is not conform.';
        SET jahr_aktuell = YEAR(NOW());

        if jahr_aktuell < new.Gruendungsjahr
        THEN BEGIN
             signal sqlstate '45000' set message_text = error_msg;
        END; END IF;
    END;

DELIMITER ;