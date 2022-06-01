
DROP TIGGER IF EXISTS gruendungsjahr_ueberprüfen;

CREATE TIGGER gruendungsjahr_ueberprüfen
    BEFORE INSERT
    ON MARKEN FOR EACH ROW
    BEGIN
        DECLARE datum_aktuell DATE;
        DECLARE error_msg = 'Error while trying to insert new row into Marken. Gruendungsjahr is not conform.'
        CURRENT_DATE INTO datum_aktuell

        if datum_aktuell < new.Gruendungsjahr
        BEGIN
             signal sqlstate '45000' set message_text = msg;
        END
    END
