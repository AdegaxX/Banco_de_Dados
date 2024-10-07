CREATE TABLE `genero` (
  `Id_genero` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome_genero` varchar(100) NOT NULL
);

CREATE TABLE `jogo_genero` (
  `id_jogo` int DEFAULT null,
  `id_genero` int DEFAULT null
);

CREATE TABLE `jogo_plataforma` (
  `id_jogo` int DEFAULT null,
  `id_plataforma` int DEFAULT null
);

CREATE TABLE `jogos` (
  `Id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Data_lancamento` date DEFAULT null,
  `Desenvolvedora` varchar(100) NOT NULL
);

CREATE TABLE `plataforma` (
  `Id_plataforma` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome_plataforma` varchar(100) NOT NULL
);

CREATE TABLE `vendas` (
  `Id_vendas` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `ano` int DEFAULT null,
  `quantidade` int DEFAULT null,
  `Id_jogo` int DEFAULT null
);

CREATE INDEX `id_jogo` ON `jogo_genero` (`id_jogo`);

CREATE INDEX `id_genero` ON `jogo_genero` (`id_genero`);

CREATE INDEX `id_jogo` ON `jogo_plataforma` (`id_jogo`);

CREATE INDEX `id_plataforma` ON `jogo_plataforma` (`id_plataforma`);

ALTER TABLE `jogo_genero` ADD FOREIGN KEY (`id_jogo`) REFERENCES `jogos` (`Id`);

ALTER TABLE `jogo_genero` ADD FOREIGN KEY (`id_genero`) REFERENCES `genero` (`Id_genero`);

ALTER TABLE `jogo_plataforma` ADD FOREIGN KEY (`id_jogo`) REFERENCES `jogos` (`Id`);

ALTER TABLE `jogo_plataforma` ADD FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`Id_plataforma`);

ALTER TABLE `vendas` ADD FOREIGN KEY (`Id_jogo`) REFERENCES `jogos` (`Id`);

ALTER TABLE `vendas` ADD FOREIGN KEY (`Id_jogo`) REFERENCES `vendas` (`quantidade`);
