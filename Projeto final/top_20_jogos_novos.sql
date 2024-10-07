CREATE VIEW top_20_jogos_mais_novos AS
SELECT 
    j.nome AS Nome_Jogo,
    j.desenvolvedora AS Desenvolvedora,
    j.data_lancamento AS Data_Lancamento
FROM 
    jogos j
ORDER BY 
    j.data_lancamento DESC
LIMIT 20;

select * from top_20_jogos_mais_novos;