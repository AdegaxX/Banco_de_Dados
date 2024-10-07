DELIMITER //

CREATE TRIGGER impedir_inserir_jogos
BEFORE INSERT ON jogos
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Não é permitido adicionar novos jogos.';
END;

//
DELIMITER ;


insert into jogos values (default, "Castlevania", "1998-12-12", "Rockstar");