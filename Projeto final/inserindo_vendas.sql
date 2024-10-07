
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


UPDATE vendas
SET quantidade = 3000000
WHERE id_jogo = 10;
