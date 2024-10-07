DELIMITER $$

CREATE PROCEDURE excluir_jogo(
    IN p_produto_id INT		-- possui somente uma entrada com o id do jogo que quer excluir
)
BEGIN
    -- Verifica se o jogo (produto) existe na tabela produtos
    DECLARE produto_existe INT;

    SELECT COUNT(*) INTO produto_existe		-- irá procurar por toda a tabela o jogo se ele existe com base no id
    FROM produtos
    WHERE produto_id = p_produto_id;

    IF produto_existe = 0 THEN				-- se o jogo não existir "Jogo não encontrado!"
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Jogo não encontrado!';
    ELSE
        -- Exclui o jogo da tabela produtos
        DELETE FROM produtos WHERE produto_id = p_produto_id;	-- se ele achar, então o jogo é excluído

    END IF;
END$$

DELIMITER ;


-- para usar a função: CALL excluir_jogo(id do jogo);
-- ex.: CALL excluir_jogo(2);