CREATE VIEW top_10_mais_vendidos AS
SELECT 
    j.nome AS Nome_Jogo,					-- da tabela jogos(j) pega o nome e colocar no view com a coluna escrita Nome_Jogo.
    j.desenvolvedora AS Desenvolvedora,		-- da tabela jogos(j) pega a desenvolvedora e coloca no view com a coluna escrita Desenvolvedora
    SUM(v.quantidade) AS Total_Vendas		-- da tabela de vendas(v) pega a quantidade somando todas e coloca na view com a coluna escrita Total_Vendas
FROM 
    jogos j									-- da tabela de jogos(j) pega todos os elementos e coloca como j como "atalho"
JOIN 
    vendas v ON j.id = v.id_jogo			-- serve para usar o id da tabela vendas que referencia o id do jogo na tabela jogos
GROUP BY
    j.id									-- agrupa os jogos com base no seu id
ORDER BY 
    Total_Vendas DESC
LIMIT 10;

select * from top_10_mais_vendidos;
