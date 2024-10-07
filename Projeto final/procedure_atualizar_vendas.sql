use jogos_bd;

DELIMITER $$

CREATE PROCEDURE atualizar_venda(
    IN p_produto_id INT,			-- insere o id do jogo que deseja alterar
    IN p_nova_quantidade INT		-- insere a quantidade de vendas que deseja alterar
)
BEGIN
    -- Verifica se o produto (jogo) existe na tabela produtos
    DECLARE produto_existe INT;

    SELECT COUNT(*) INTO produto_existe
    FROM produtos
    WHERE produto_id = p_produto_id;

    IF produto_existe = 0 THEN		-- se não existir ele retorna "Jogo não encontrado!"
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Jogo não encontrado!';
    ELSE
        -- Atualiza a quantidade de vendas do produto (jogo) na tabela vendas
        UPDATE vendas
        SET quantidade = p_nova_quantidade	-- atualiza a nova quantidade de vendas
        WHERE produto_id = p_produto_id;
    END IF;
END$$

DELIMITER ;


-- para utilizar: CALL atualizar_venda(id do jogo, valor para atualizar);
-- ex.: CALL atualizar_venda(2, 46055000);