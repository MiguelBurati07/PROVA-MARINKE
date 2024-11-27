DELIMITER $$

CREATE PROCEDURE RedefinirStatusMesaParaLivre(
    IN p_idMesa INT
)
BEGIN
    DECLARE v_idStatusLivre INT;

    SELECT idSTATUS INTO v_idStatusLivre
    FROM status
    WHERE DESCRICAO = 'LIVRE';

    UPDATE mesa
    SET idSTATUS = v_idStatusLivre
    WHERE idMESA = p_idMesa;
END$$

DELIMITER ;
