CREATE VIEW top_10_jogos_menos_vendidos AS
SELECT 
    j.nome AS Nome_Jogo,
    j.desenvolvedora AS Desenvolvedora,
    SUM(v.quantidade) AS Total_Vendas
FROM 
    jogos j
JOIN 
    vendas v ON j.id = v.id_jogo
GROUP BY 
    j.id
ORDER BY 
    Total_Vendas ASC
LIMIT 10;

select * from top_10_jogos_menos_vendidos;