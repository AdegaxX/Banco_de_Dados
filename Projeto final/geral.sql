create database jogo_bd;
use jogos_bd;

CREATE TABLE jogos(
Id INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(100) NOT NULL,
Data_lancamento DATE,
Desenvolvedora VARCHAR(100) NOT NULL);

CREATE TABLE genero(
Id_genero INT AUTO_INCREMENT PRIMARY KEY,
Nome_genero VARCHAR(100) NOT NULL);

CREATE TABLE plataforma(
Id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
Nome_plataforma VARCHAR(100) NOT NULL);

CREATE TABLE vendas(
Id_vendas INT AUTO_INCREMENT PRIMARY KEY,
ano INT,
quantidade INT,
Id_jogo INT);

CREATE TABLE jogo_genero (
  id_jogo INT,
  id_genero INT,
  FOREIGN KEY (id_jogo) REFERENCES jogos(id),
  FOREIGN KEY (id_genero) REFERENCES genero(id_genero)
);

CREATE TABLE jogo_plataforma (
  id_jogo INT,
  id_plataforma INT,
  FOREIGN KEY (id_jogo) REFERENCES jogos(id),
  FOREIGN KEY (id_plataforma) REFERENCES plataforma(id_plataforma)
);

show tables;

######################################################################################################################

-- Inserindo dados na tabela:
# Inserindo os generos:
INSERT INTO genero (nome_genero) VALUES 
('Ação'),
('Aventura'),
('RPG'),
('FPS'),
('Plataforma'),
('Esporte'),
('Corrida'),
('Estratégia'),
('Luta'),
('Puzzle'),
('Terror'),
('Simulação'),
('Battle Royale'),
('MOBA'),
('MMORPG');
select * from genero;

# Inserindo o jogo_genero:
INSERT INTO jogo_genero (id_jogo, id_genero) VALUES
(1, 2),  -- The Legend of Zelda: Breath of the Wild (Aventura)
(2, 1),  -- Red Dead Redemption 2 (Ação)
(2, 2),  -- Red Dead Redemption 2 (Aventura)
(3, 3),  -- The Witcher 3: Wild Hunt (RPG)
(4, 3),  -- Cyberpunk 2077 (RPG)
(5, 1),  -- God of War (Ação)
(6, 1),  -- Elden Ring (Ação)
(6, 3),  -- Elden Ring (RPG)
(7, 12), -- Minecraft (Simulação)
(8, 13), -- Fortnite (Battle Royale)
(9, 14), -- League of Legends (MOBA)
(10, 1), -- Overwatch (Ação)
(10, 4), -- Overwatch (FPS)
(11, 3), -- Hades (RPG)
(12, 10), -- Among Us (Puzzle)
(13, 1), -- Hollow Knight (Ação)
(14, 2), -- Celeste (Aventura)
(15, 2), -- Super Mario Odyssey (Aventura)
(16, 1), -- Dark Souls III (Ação)
(17, 1), -- Grand Theft Auto V (Ação)
(18, 3), -- Persona 5 (RPG)
(19, 10), -- Resident Evil 2 (Terror)
(20, 2), -- Control (Aventura)
(21, 2), -- Death Stranding (Aventura)
(22, 1), -- DOOM Eternal (Ação)
(22, 4), -- DOOM Eternal (FPS)
(23, 1), -- Sekiro: Shadows Die Twice (Ação)
(24, 3), -- Final Fantasy VII Remake (RPG)
(25, 14), -- Genshin Impact (MMORPG)
(26, 1), -- Spider-Man: Miles Morales (Ação)
(27, 1), -- Ratchet & Clank: Rift Apart (Ação)
(28, 9), -- It Takes Two (Puzzle)
(29, 2), -- Assassin’s Creed Valhalla (Aventura)
(30, 1), -- Valorant (Ação)
(30, 4), -- Valorant (FPS)
(31, 14), -- Dota 2 (MOBA)
(32, 13), -- Apex Legends (Battle Royale)
(33, 3), -- Monster Hunter: World (RPG)
(34, 2), -- The Outer Worlds (Aventura)
(35, 2), -- Star Wars Jedi: Fallen Order (Aventura)
(36, 1), -- Dead Cells (Ação)
(37, 3), -- Divinity: Original Sin 2 (RPG)
(38, 10), -- Slay the Spire (Puzzle)
(39, 2), -- Subnautica (Aventura)
(40, 2), -- The Stanley Parable (Aventura)
(41, 9), -- Baba Is You (Puzzle)
(42, 3), -- NieR: Automata (RPG)
(43, 2), -- Ori and the Will of the Wisps (Aventura)
(44, 2), -- Ghost of Tsushima (Aventura)
(45, 3), -- Disco Elysium (RPG)
(46, 2), -- Metro Exodus (Aventura)
(46, 4), -- Metro Exodus (FPS)
(47, 2), -- Horizon Zero Dawn (Aventura)
(48, 2), -- Days Gone (Aventura)
(48, 1), -- Days Gone (Ação)
(49, 1), -- Bloodborne (Ação)
(50, 1), -- Titanfall 2 (Ação)
(50, 4), -- Titanfall 2 (FPS)
(51, 2), -- The Last Guardian (Aventura)
(52, 2), -- Journey (Aventura)
(53, 1), -- The Last of Us Part II (Ação)
(53, 2), -- The Last of Us Part II (Aventura)
(53, 10), -- The Last of Us Part II (Terror)
(54, 1), -- Cyber Shadow (Ação)
(55, 12), -- Frostpunk (Simulação)
(56, 6), -- FIFA 21 (Esporte)
(57, 6), -- Madden NFL 21 (Esporte)
(58, 6), -- NBA 2K21 (Esporte)
(59, 9), -- Mortal Kombat 11 (Luta)
(60, 9), -- Street Fighter V (Luta)
(61, 9), -- Tekken 7 (Luta)
(62, 9), -- Guilty Gear Strive (Luta)
(63, 7), -- Forza Horizon 4 (Corrida)
(64, 7), -- Gran Turismo Sport (Corrida)
(65, 2), -- Crash Bandicoot 4: It’s About Time (Aventura)
(66, 6), -- Tony Hawk’s Pro Skater 1 + 2 (Esporte)
(67, 2), -- Hitman 3 (Aventura)
(68, 1), -- Cuphead (Ação)
(68, 9), -- Cuphead (Luta)
(69, 2), -- Little Nightmares II (Aventura)
(70, 10), -- Inside (Puzzle)
(71, 10), -- Limbo (Puzzle)
(72, 2), -- Ori and the Blind Forest (Aventura)
(73, 13), -- Fall Guys (Battle Royale)
(74, 12), -- No Man’s Sky (Simulação)
(75, 12), -- Factorio (Simulação)
(76, 12), -- Terraria (Simulação)
(77, 12), -- Stardew Valley (Simulação)
(78, 12), -- Don’t Starve (Simulação)
(79, 6), -- F1 2021 (Esporte)
(80, 12), -- The Sims 4 (Simulação)
(81, 12), -- Animal Crossing: New Horizons (Simulação)
(82, 3), -- Fire Emblem: Three Houses (RPG)
(83, 8), -- XCOM 2 (Estratégia)
(84, 8), -- Civilization VI (Estratégia)
(85, 8), -- Total War: Three Kingdoms (Estratégia)
(86, 8), -- Age of Empires II: Definitive Edition (Estratégia)
(87, 1), -- Halo Infinite (Ação)
(87, 4), -- Halo Infinite (FPS)
(88, 1), -- Destiny 2 (Ação)
(88, 4), -- Destiny 2 (FPS)
(89, 1), -- Borderlands 3 (Ação)
(89, 4), -- Borderlands 3 (FPS)
(90, 2), -- Far Cry 5 (Aventura)
(90, 4), -- Far Cry 5 (FPS)
(91, 4), -- Rainbow Six Siege (FPS)
(92, 10), -- Tetris Effect (Puzzle)
(93, 2), -- Returnal (Aventura)
(94, 3), -- Xenoblade Chronicles 2 (RPG)
(95, 2), -- The Legend of Zelda: Link’s Awakening (Aventura)
(96, 9), -- Super Smash Bros. Ultimate (Luta)
(97, 6), -- Splatoon 2 (Esporte)
(98, 7), -- Mario Kart 8 Deluxe (Corrida)
(99, 1), -- Bayonetta 2 (Ação)
(100, 2); -- Pikmin 3 Deluxe (Aventura)
select * from jogo_genero;

# Inserindo os jogos:
INSERT INTO jogos (Id, nome, data_lancamento, desenvolvedora) VALUES
('1', 'The Legend of Zelda: Breath of the Wild', '2017-03-03', 'Nintendo'),
('2', 'Red Dead Redemption 2', '2018-10-26', 'Rockstar Games'),
('3', 'The Witcher 3: Wild Hunt', '2015-05-19', 'CD Projekt Red'),
('4', 'Cyberpunk 2077', '2020-12-10', 'CD Projekt Red'),
('5', 'God of War', '2018-04-20', 'Santa Monica Studio'),
('6', 'Elden Ring', '2022-02-25', 'FromSoftware'),
('7', 'Minecraft', '2011-11-18', 'Mojang Studios'),
('8', 'Fortnite', '2017-07-25', 'Epic Games'),
('9', 'League of Legends', '2009-10-27', 'Riot Games'),
('10', 'Overwatch', '2016-05-24', 'Blizzard Entertainment'),
('11', 'Hades', '2020-09-17', 'Supergiant Games'),
('12', 'Among Us', '2018-06-15', 'Innersloth'),
('13', 'Hollow Knight', '2017-02-24', 'Team Cherry'),
('14', 'Celeste', '2018-01-25', 'Maddy Makes Games'),
('15', 'Super Mario Odyssey', '2017-10-27', 'Nintendo'),
('16', 'Dark Souls III', '2016-03-24', 'FromSoftware'),
('17', 'Grand Theft Auto V', '2013-09-17', 'Rockstar Games'),
('18', 'Persona 5', '2016-09-15', 'Atlus'),
('19', 'Resident Evil 2', '2019-01-25', 'Capcom'),
('20', 'Control', '2019-08-27', 'Remedy Entertainment'),
('21', 'Death Stranding', '2019-11-08', 'Kojima Productions'),
('22', 'DOOM Eternal', '2020-03-20', 'id Software'),
('23', 'Sekiro: Shadows Die Twice', '2019-03-22', 'FromSoftware'),
('24', 'Final Fantasy VII Remake', '2020-04-10', 'Square Enix'),
('25', 'Genshin Impact', '2020-09-28', 'miHoYo'),
('26', 'Spider-Man: Miles Morales', '2020-11-12', 'Insomniac Games'),
('27', 'Ratchet & Clank: Rift Apart', '2021-06-11', 'Insomniac Games'),
('28', 'It Takes Two', '2021-03-26', 'Hazelight Studios'),
('29', 'Assassin’s Creed Valhalla', '2020-11-10', 'Ubisoft Montreal'),
('30', 'Valorant', '2020-06-02', 'Riot Games'),
('31', 'Dota 2', '2013-07-09', 'Valve Corporation'),
('32', 'Apex Legends', '2019-02-04', 'Respawn Entertainment'),
('33', 'Monster Hunter: World', '2018-01-26', 'Capcom'),
('34', 'The Outer Worlds', '2019-10-25', 'Obsidian Entertainment'),
('35', 'Star Wars Jedi: Fallen Order', '2019-11-15', 'Respawn Entertainment'),
('36', 'Dead Cells', '2018-08-07', 'Motion Twin'),
('37', 'Divinity: Original Sin 2', '2017-09-14', 'Larian Studios'),
('38', 'Slay the Spire', '2019-01-23', 'MegaCrit'),
('39', 'Subnautica', '2018-01-23', 'Unknown Worlds Entertainment'),
('40', 'The Stanley Parable', '2013-10-17', 'Galactic Cafe'),
('41', 'Baba Is You', '2019-03-13', 'Hempuli'),
('42', 'NieR: Automata', '2017-03-07', 'PlatinumGames'),
('43', 'Ori and the Will of the Wisps', '2020-03-11', 'Moon Studios'),
('44', 'Ghost of Tsushima', '2020-07-17', 'Sucker Punch Productions'),
('45', 'Disco Elysium', '2019-10-15', 'ZA/UM'),
('46', 'Metro Exodus', '2019-02-15', '4A Games'),
('47', 'Horizon Zero Dawn', '2017-02-28', 'Guerrilla Games'),
('48', 'Days Gone', '2019-04-26', 'Bend Studio'),
('49', 'Bloodborne', '2015-03-24', 'FromSoftware'),
('50', 'Titanfall 2', '2016-10-28', 'Respawn Entertainment'),
('51', 'The Last Guardian', '2016-12-06', 'Team Ico'),
('52', 'Journey', '2012-03-13', 'Thatgamecompany'),
('53', 'The Last of Us Part II', '2020-06-19', 'Naughty Dog'),
('54', 'Cyber Shadow', '2021-01-26', 'Mechanical Head Studios'),
('55', 'Frostpunk', '2018-04-24', '11 bit studios'),
('56', 'FIFA 21', '2020-10-09', 'EA Sports'),
('57', 'Madden NFL 21', '2020-08-28', 'EA Tiburon'),
('58', 'NBA 2K21', '2020-09-04', 'Visual Concepts'),
('59', 'Mortal Kombat 11', '2019-04-23', 'NetherRealm Studios'),
('60', 'Street Fighter V', '2016-02-16', 'Capcom'),
('61', 'Tekken 7', '2017-06-02', 'Bandai Namco Studios'),
('62', 'Guilty Gear Strive', '2021-06-11', 'Arc System Works'),
('63', 'Forza Horizon 4', '2018-10-02', 'Playground Games'),
('64', 'Gran Turismo Sport', '2017-10-17', 'Polyphony Digital'),
('65', 'Crash Bandicoot 4: It’s About Time', '2020-10-02', 'Toys for Bob'),
('66', 'Tony Hawk’s Pro Skater 1 + 2', '2020-09-04', 'Vicarious Visions'),
('67', 'Hitman 3', '2021-01-20', 'IO Interactive'),
('68', 'Cuphead', '2017-09-29', 'Studio MDHR'),
('69', 'Little Nightmares II', '2021-02-11', 'Tarsier Studios'),
('70', 'Inside', '2016-07-07', 'Playdead'),
('71', 'Limbo', '2010-07-21', 'Playdead'),
('72', 'Ori and the Blind Forest', '2015-03-11', 'Moon Studios'),
('73', 'Fall Guys', '2020-08-04', 'Mediatonic'),
('74', 'No Man’s Sky', '2016-08-09', 'Hello Games'),
('75', 'Factorio', '2020-08-14', 'Wube Software'),
('76', 'Terraria', '2011-05-16', 'Re-Logic'),
('77', 'Stardew Valley', '2016-02-26', 'ConcernedApe'),
('78', 'Dont Starve', '2013-04-23', 'Klei Entertainment'),
('79', 'F1 2021', '2021-07-16', 'Codemasters'),
('80', 'The Sims 4', '2014-09-02', 'Maxis'),
('81', 'Animal Crossing: New Horizons', '2020-03-20', 'Nintendo'),
('82', 'Fire Emblem: Three Houses', '2019-07-26', 'Intelligent Systems'),
('83', 'XCOM 2', '2016-02-05', 'Firaxis Games'),
('84', 'Civilization VI', '2016-10-21', 'Firaxis Games'),
('85', 'Total War: Three Kingdoms', '2019-05-23', 'Creative Assembly'),
('86', 'Age of Empires II: Definitive Edition', '2019-11-14', 'Forgotten Empires'),
('87', 'Halo Infinite', '2021-12-08', '343 Industries'),
('88', 'Destiny 2', '2017-09-06', 'Bungie'),
('89', 'Borderlands 3', '2019-09-13', 'Gearbox Software'),
('90', 'Far Cry 5', '2018-03-27', 'Ubisoft Montreal'),
('91', 'Rainbow Six Siege', '2015-12-01', 'Ubisoft Montreal'),
('92', 'Tetris Effect', '2018-11-09', 'Monstars, Resonair'),
('93', 'Returnal', '2021-04-30', 'Housemarque'),
('94', 'Xenoblade Chronicles 2', '2017-12-01', 'Monolith Soft'),
('95', 'The Legend of Zelda: Link’s Awakening', '2019-09-20', 'Grezzo'),
('96', 'Super Smash Bros. Ultimate', '2018-12-07', 'Bandai Namco Studios'),
('97', 'Splatoon 2', '2017-07-21', 'Nintendo'),
('98', 'Mario Kart 8 Deluxe', '2017-04-28', 'Nintendo'),
('99', 'Bayonetta 2', '2014-09-20', 'PlatinumGames'),
('100', 'Pikmin 3 Deluxe', '2020-10-30', 'Nintendo');
select * from jogos;

# Inserindo as plataformas:
INSERT INTO plataforma (nome_plataforma) VALUES
('PC'),
('PlayStation 4'),
('PlayStation 5'),
('Xbox One'),
('Xbox Series X'),
('Nintendo Switch'),
('Mobile'),
('Stadia'),
('Mac');
select * from plataforma;

# Inserindo o jogo_plataforma:
INSERT INTO jogo_plataforma (id_jogo, id_plataforma) VALUES
(1, 6),  -- The Legend of Zelda: Breath of the Wild (Nintendo Switch)
(2, 2),  -- Red Dead Redemption 2 (PlayStation 4)
(2, 4),  -- Red Dead Redemption 2 (Xbox One)
(2, 1),  -- Red Dead Redemption 2 (PC)
(3, 1),  -- The Witcher 3: Wild Hunt (PC)
(3, 2),  -- The Witcher 3: Wild Hunt (PlayStation 4)
(3, 4),  -- The Witcher 3: Wild Hunt (Xbox One)
(3, 6),  -- The Witcher 3: Wild Hunt (Nintendo Switch)
(4, 1),  -- Cyberpunk 2077 (PC)
(4, 2),  -- Cyberpunk 2077 (PlayStation 4)
(4, 4),  -- Cyberpunk 2077 (Xbox One)
(4, 5),  -- Cyberpunk 2077 (Xbox Series X)
(5, 2),  -- God of War (PlayStation 4)
(6, 1),  -- Elden Ring (PC)
(6, 2),  -- Elden Ring (PlayStation 4)
(6, 3),  -- Elden Ring (PlayStation 5)
(6, 4),  -- Elden Ring (Xbox One)
(6, 5),  -- Elden Ring (Xbox Series X)
(7, 1),  -- Minecraft (PC)
(7, 6),  -- Minecraft (Nintendo Switch)
(7, 7),  -- Minecraft (Mobile)
(8, 1),  -- Fortnite (PC)
(8, 6),  -- Fortnite (Nintendo Switch)
(8, 7),  -- Fortnite (Mobile)
(8, 2),  -- Fortnite (PlayStation 4)
(8, 4),  -- Fortnite (Xbox One)
(9, 1),  -- League of Legends (PC)
(10, 1), -- Overwatch (PC)
(10, 2), -- Overwatch (PlayStation 4)
(10, 4), -- Overwatch (Xbox One)
(11, 1), -- Hades (PC)
(11, 6), -- Hades (Nintendo Switch)
(12, 1), -- Among Us (PC)
(12, 7), -- Among Us (Mobile)
(13, 1), -- Hollow Knight (PC)
(13, 6), -- Hollow Knight (Nintendo Switch)
(14, 1), -- Celeste (PC)
(14, 6), -- Celeste (Nintendo Switch)
(15, 6), -- Super Mario Odyssey (Nintendo Switch)
(16, 1), -- Dark Souls III (PC)
(16, 2), -- Dark Souls III (PlayStation 4)
(16, 4), -- Dark Souls III (Xbox One)
(17, 1), -- Grand Theft Auto V (PC)
(17, 2), -- Grand Theft Auto V (PlayStation 4)
(17, 4), -- Grand Theft Auto V (Xbox One)
(18, 2), -- Persona 5 (PlayStation 4)
(19, 1), -- Resident Evil 2 (PC)
(19, 2), -- Resident Evil 2 (PlayStation 4)
(19, 4), -- Resident Evil 2 (Xbox One)
(20, 1), -- Control (PC)
(20, 2), -- Control (PlayStation 4)
(20, 4), -- Control (Xbox One)
(21, 1), -- Death Stranding (PC)
(21, 2), -- Death Stranding (PlayStation 4)
(21, 3), -- Death Stranding (PlayStation 5)
(22, 1), -- DOOM Eternal (PC)
(22, 2), -- DOOM Eternal (PlayStation 4)
(22, 4), -- DOOM Eternal (Xbox One)
(22, 6), -- DOOM Eternal (Nintendo Switch)
(23, 1), -- Sekiro: Shadows Die Twice (PC)
(23, 2), -- Sekiro: Shadows Die Twice (PlayStation 4)
(23, 4), -- Sekiro: Shadows Die Twice (Xbox One)
(24, 2), -- Final Fantasy VII Remake (PlayStation 4)
(25, 1), -- Genshin Impact (PC)
(25, 6), -- Genshin Impact (Nintendo Switch)
(25, 7), -- Genshin Impact (Mobile)
(26, 3), -- Spider-Man: Miles Morales (PlayStation 5)
(26, 2), -- Spider-Man: Miles Morales (PlayStation 4)
(27, 3), -- Ratchet & Clank: Rift Apart (PlayStation 5)
(28, 1), -- It Takes Two (PC)
(28, 2), -- It Takes Two (PlayStation 4)
(28, 4), -- It Takes Two (Xbox One)
(28, 5), -- It Takes Two (Xbox Series X)
(29, 1), -- Assassin’s Creed Valhalla (PC)
(29, 2), -- Assassin’s Creed Valhalla (PlayStation 4)
(29, 3), -- Assassin’s Creed Valhalla (PlayStation 5)
(29, 4), -- Assassin’s Creed Valhalla (Xbox One)
(29, 5), -- Assassin’s Creed Valhalla (Xbox Series X)
(30, 1), -- Valorant (PC)
(31, 1), -- Dota 2 (PC)
(32, 1), -- Apex Legends (PC)
(32, 6), -- Apex Legends (Nintendo Switch)
(32, 2), -- Apex Legends (PlayStation 4)
(32, 4), -- Apex Legends (Xbox One)
(33, 1), -- Monster Hunter: World (PC)
(33, 2), -- Monster Hunter: World (PlayStation 4)
(33, 4), -- Monster Hunter: World (Xbox One)
(34, 1), -- The Outer Worlds (PC)
(34, 2), -- The Outer Worlds (PlayStation 4)
(34, 4), -- The Outer Worlds (Xbox One)
(35, 1), -- Star Wars Jedi: Fallen Order (PC)
(35, 2), -- Star Wars Jedi: Fallen Order (PlayStation 4)
(35, 4), -- Star Wars Jedi: Fallen Order (Xbox One)
(36, 1), -- Dead Cells (PC)
(36, 6), -- Dead Cells (Nintendo Switch)
(37, 1), -- Divinity: Original Sin 2 (PC)
(37, 2), -- Divinity: Original Sin 2 (PlayStation 4)
(37, 4), -- Divinity: Original Sin 2 (Xbox One)
(38, 1), -- Slay the Spire (PC)
(38, 6), -- Slay the Spire (Nintendo Switch)
(39, 1), -- Subnautica (PC)
(39, 6), -- Subnautica (Nintendo Switch)
(40, 1), -- The Stanley Parable (PC)
(41, 1), -- Baba Is You (PC)
(41, 6), -- Baba Is You (Nintendo Switch)
(42, 1), -- NieR: Automata (PC)
(42, 2), -- NieR: Automata (PlayStation 4)
(42, 4), -- NieR: Automata (Xbox One)
(43, 1), -- Ori and the Will of the Wisps (PC)
(43, 6), -- Ori and the Will of the Wisps (Nintendo Switch)
(44, 1), -- Ghost of Tsushima (PC)
(44, 2), -- Ghost of Tsushima (PlayStation 4)
(45, 1), -- Disco Elysium (PC)
(46, 1), -- Metro Exodus (PC)
(46, 2), -- Metro Exodus (PlayStation 4)
(46, 4), -- Metro Exodus (Xbox One)
(47, 1), -- Horizon Zero Dawn (PC)
(47, 2), -- Horizon Zero Dawn (PlayStation 4)
(48, 2), -- Days Gone (PlayStation 4)
(49, 2), -- Bloodborne (PlayStation 4)
(50, 1), -- Titanfall 2 (PC)
(50, 2), -- Titanfall 2 (PlayStation 4)
(50, 4), -- Titanfall 2 (Xbox One)
(51, 2), -- The Last Guardian (PlayStation 4)
(52, 2), -- Journey (PlayStation 4)
(53, 2), -- The Last of Us Part II (PlayStation 4)
(54, 1), -- Cyber Shadow (PC)
(55, 1), -- Frostpunk (PC)
(56, 1), -- FIFA 21 (PC)
(56, 2), -- FIFA 21 (PlayStation 4)
(56, 4), -- FIFA 21 (Xbox One)
(57, 1), -- Madden NFL 21 (PC)
(58, 1), -- NBA 2K21 (PC)
(59, 1), -- Mortal Kombat 11 (PC)
(60, 2), -- Street Fighter V (PlayStation 4)
(61, 2), -- Tekken 7 (PlayStation 4)
(62, 1), -- Guilty Gear Strive (PC)
(63, 4), -- Forza Horizon 4 (Xbox One)
(64, 4), -- Gran Turismo Sport (Xbox One)
(65, 6), -- Crash Bandicoot 4: It’s About Time (Nintendo Switch)
(66, 6), -- Tony Hawk’s Pro Skater 1 + 2 (Nintendo Switch)
(67, 1), -- Hitman 3 (PC)
(68, 1), -- Cuphead (PC)
(69, 6), -- Little Nightmares II (Nintendo Switch)
(70, 1), -- Inside (PC)
(71, 1), -- Limbo (PC)
(72, 6), -- Ori and the Blind Forest (Nintendo Switch)
(73, 1), -- Fall Guys (PC)
(74, 1), -- No Man’s Sky (PC)
(75, 1), -- Factorio (PC)
(76, 1), -- Terraria (PC)
(77, 1), -- Stardew Valley (PC)
(78, 1), -- Don’t Starve (PC)
(79, 1), -- F1 2021 (PC)
(80, 1), -- The Sims 4 (PC)
(81, 1), -- Animal Crossing: New Horizons (Nintendo Switch)
(82, 2), -- Fire Emblem: Three Houses (Nintendo Switch)
(83, 1), -- XCOM 2 (PC)
(84, 1), -- Civilization VI (PC)
(85, 1), -- Total War: Three Kingdoms (PC)
(86, 1), -- Age of Empires II: Definitive Edition (PC)
(87, 1), -- Halo Infinite (PC)
(88, 1), -- Destiny 2 (PC)
(89, 1), -- Borderlands 3 (PC)
(90, 1), -- Far Cry 5 (PC)
(91, 1), -- Rainbow Six Siege (PC)
(92, 1), -- Tetris Effect (PC)
(93, 1), -- Returnal (PC)
(94, 1), -- Xenoblade Chronicles 2 (PC)
(95, 1), -- The Legend of Zelda: Link’s Awakening (PC)
(96, 1), -- Super Smash Bros. Ultimate (PC)
(97, 1), -- Splatoon 2 (PC)
(98, 1), -- Mario Kart 8 Deluxe (PC)
(99, 1), -- Bayonetta 2 (PC)
(100, 1);-- Pikmin 3 Deluxe (PC)
select * from jogo_plataforma;

# Inserindo as vendas:
INSERT INTO vendas (ano, quantidade, id_jogo) VALUES 
(2020, 5000000, 1),  -- The Legend of Zelda: Breath of the Wild
(2020, 6000000, 2),  -- Red Dead Redemption 2
(2020, 7000000, 3),  -- The Witcher 3: Wild Hunt
(2020, 8000000, 4),  -- Cyberpunk 2077
(2020, 9000000, 5),  -- God of Warjogo_genero
(2020, 4000000, 6),  -- Elden Ring
(2020, 10000000, 7), -- Minecraft
(2020, 11000000, 8), -- Fortnite
(2020, 12000000, 9), -- League of Legends
(2020, 13000000, 10), -- Overwatch
(2020, 1400000, 11), -- Hades
(2020, 1500000, 12), -- Among Us
(2020, 1600000, 13), -- Hollow Knight
(2020, 1700000, 14), -- Celeste
(2020, 1800000, 15), -- Super Mario Odyssey
(2020, 1900000, 16), -- Dark Souls III
(2020, 2000000, 17), -- Grand Theft Auto V
(2020, 2100000, 18), -- Persona 5
(2020, 2200000, 19), -- Resident Evil 2
(2020, 2300000, 20), -- Control
(2020, 2400000, 21), -- Death Stranding
(2020, 2500000, 22), -- DOOM Eternal
(2020, 2600000, 23), -- Sekiro: Shadows Die Twice
(2020, 2700000, 24), -- Final Fantasy VII Remake
(2020, 2800000, 25), -- Genshin Impact
(2020, 2900000, 26), -- Spider-Man: Miles Morales
(2020, 3000000, 27), -- Ratchet & Clank: Rift Apart
(2020, 3100000, 28), -- It Takes Two
(2020, 3200000, 29), -- Assassin’s Creed Valhalla
(2020, 3300000, 30), -- Valorant
(2020, 3400000, 31), -- Dota 2
(2020, 3500000, 32), -- Apex Legends
(2020, 3600000, 33), -- Monster Hunter: World
(2020, 3700000, 34), -- The Outer Worlds
(2020, 3800000, 35), -- Star Wars Jedi: Fallen Order
(2020, 3900000, 36), -- Dead Cells
(2020, 4000000, 37), -- Divinity: Original Sin 2
(2020, 4100000, 38), -- Outer Wilds
(2020, 4200000, 39), -- Ghost of Tsushima
(2020, 4300000, 40), -- The Last of Us Part II
(2020, 4400000, 41), -- Nier: Automata
(2020, 4500000, 42), -- Dragon Quest XI
(2020, 4600000, 43), -- Spider-Man
(2020, 4700000, 44), -- Final Fantasy XV
(2020, 4800000, 45), -- Disco Elysium
(2020, 4900000, 46), -- Metro Exodus
(2020, 5000000, 47), -- Horizon Zero Dawn
(2020, 5100000, 48), -- Days Gone
(2020, 5200000, 49), -- Bloodborne
(2020, 5300000, 50), -- Titanfall 2
(2020, 5400000, 51), -- The Last Guardian
(2020, 5500000, 52), -- Journey
(2020, 5600000, 53), -- The Last of Us Part II
(2020, 5700000, 54), -- Cyber Shadow
(2020, 5800000, 55), -- Frostpunk
(2020, 5900000, 56), -- FIFA 21
(2020, 6000000, 57), -- Madden NFL 21
(2020, 6100000, 58), -- NBA 2K21
(2020, 6200000, 59), -- Mortal Kombat 11
(2020, 6300000, 60), -- Street Fighter V
(2020, 6400000, 61), -- Tekken 7
(2020, 6500000, 62), -- Guilty Gear Strive
(2020, 6600000, 63), -- Forza Horizon 4
(2020, 6700000, 64), -- Gran Turismo Sport
(2020, 6800000, 65), -- Crash Bandicoot 4: It’s About Time
(2020, 6900000, 66), -- Tony Hawk’s Pro Skater 1 + 2
(2020, 7000000, 67), -- Hitman 3
(2020, 7100000, 68), -- Cuphead
(2020, 7200000, 69), -- Little Nightmares II
(2020, 7300000, 70), -- Inside
(2020, 7400000, 71), -- Limbo
(2020, 7500000, 72), -- Ori and the Blind Forest
(2020, 7600000, 73), -- Fall Guys
(2020, 7700000, 74), -- No Man’s Sky
(2020, 7800000, 75), -- Factorio
(2020, 7900000, 76), -- Terraria
(2020, 8000000, 77), -- Stardew Valley
(2020, 8100000, 78), -- Don’t Starve
(2020, 8200000, 79), -- F1 2021
(2020, 8300000, 80), -- The Sims 4
(2020, 8400000, 81), -- Animal Crossing: New Horizons
(2020, 8500000, 82), -- Fire Emblem: Three Houses
(2020, 8600000, 83), -- XCOM 2
(2020, 8700000, 84), -- Civilization VI
(2020, 8800000, 85), -- Total War: Three Kingdoms
(2020, 8900000, 86), -- Age of Empires II: Definitive Edition
(2020, 9000000, 87), -- Halo Infinite
(2020, 9100000, 88), -- Destiny 2
(2020, 9200000, 89), -- Borderlands 3
(2020, 9300000, 90), -- Far Cry 5
(2020, 9400000, 91), -- Rainbow Six Siege
(2020, 9500000, 92), -- Tetris Effect
(2020, 9600000, 93), -- Returnal
(2020, 9700000, 94), -- Xenoblade Chronicles 2
(2020, 9800000, 95), -- The Legend of Zelda: Link’s Awakening
(2020, 9900000, 96), -- Super Smash Bros. Ultimate
(2020, 10000000, 97), -- Splatoon 2
(2020, 10100000, 98), -- Mario Kart 8 Deluxe
(2020, 10200000, 99), -- Bayonetta 2
(2020, 10300000, 100); -- Pikmin 3 Deluxe
select * from vendas;

######################################################################################################################

-- Adicionando as views:
# View para o top 10 mais vendidos:
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

# View para o top 10 menos vendidos:
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

# View para o top 20 jogos mais novos:
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

######################################################################################################################

-- Criando o triggers:
# trigger usado para impedir a inserção de novos jogos acima de 100:
DELIMITER ;;

CREATE TRIGGER impedir_inserir_jogos
BEFORE INSERT ON jogos
FOR EACH ROW
BEGIN
    -- Verifica se já existem 100 ou mais jogos no banco
    DECLARE total_jogos INT;
    SELECT COUNT(*) INTO total_jogos FROM jogos;
    
    IF total_jogos >= 100 THEN
        -- Se já houver 100 ou mais jogos, lança um erro e impede a inserção
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Não é permitido adicionar novos jogos. Limite de 100 atingido.';
    END IF;
END;;

DELIMITER ;
show triggers;
-- drop trigger impedir_inserir_jogos;
######################################################################################################################

-- Criando os Procedures:
# Atualizar as vendas:
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
-- para utilizar: CALL atualizar_venda(id do jogo, valor para atualizar);
-- ex.: CALL atualizar_venda(2, 46055000);
DELIMITER ;

# Fazer a exclusão:
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
-- para usar a função: CALL excluir_jogo(id do jogo);
-- ex.: CALL excluir_jogo(2);
DELIMITER ;