DELETE FROM collection_track;
DELETE FROM track;
DELETE FROM performer_album;
DELETE FROM performer_genre;
DELETE FROM performer;
DELETE FROM genre;
DELETE FROM album;
DELETE FROM collection;

INSERT INTO performer
	VALUES
		(1, 'SoD'), 
		(2, 'Hollywood undead'),
		(3, 'Twenty one pilots'),
		(4, 'Lyapis trubetskoy'),
		(5, 'Imagine dragons'),
		(6, 'KiSH'),
		(7, 'Thirty Seconds to Mars'),
		(8, 'Queen'),
		(9, 'Slipknot'),
		(10, 'Rammstein');

INSERT INTO genre
	VALUES	
		(1, 'Russian Rock'),
		(2, 'American Rock'),
		(3, 'German Rock'),
		(4, 'Britain Rock'),
		(5, 'Canade Rock');
		
INSERT INTO performer_genre
	VALUES
		(1, 1, 1),
		(2, 2, 2),
		(3, 3, 2),
		(4, 4, 1),
		(5, 5, 5),
		(6, 6, 5),
		(7, 7, 4),
		(8, 8, 4),
		(9, 9, 3),
		(10, 10, 3);
	
INSERT INTO album 
	VALUES
		(1, 'Hypnotize', 2005),
		(2, 'Swan songs', 2008),
		(3, 'Blurryface', 2015),
		(4, 'Капитал', 2007),
		(5, 'Evolve', 2018),
		(6, 'Жаль нет ружья', 2002),
		(7, 'This is war', 2009),
		(8, 'Jazz', 1973),
		(9, 'All Hope is Gone', 2008),
		(10, 'Mutter', 2001);
		
INSERT INTO performer_album 
	VALUES
		(1, 1, 1),
		(2, 2, 2),
		(3, 3, 3),
		(4, 4, 4),
		(5, 5, 5),
		(6, 6, 6),
		(7, 7, 7),
		(8, 8, 8),
		(9, 9, 9),
		(10, 10, 10);
		
INSERT INTO track
	VALUES
		(1, 'Attack', 186, 1),
		(2, 'Dreaming', 240, 1),
		(3, 'No 5', 190, 2),
		(4, 'The Diary', 176, 2),
		(5, 'Stressed Out', 187, 3),
		(6, 'The judge', 397, 3),
		(7, 'My Золотая Антилопа', 218, 4),
		(8, 'Гойко Митич', 185, 4),
		(9, 'Believer', 204, 5),
		(10, 'Thunder', 187, 5),
		(11, 'Мой Мертвый анархист', 178, 6),
		(12, 'Утопленник', 259, 6),
		(13, 'Escape', 202, 7),
		(14, '100 Suns', 244, 7),
		(15, 'Mustapha', 257, 8),
		(16, 'Jealousy', 174, 8),
		(17, 'Sulfur', 278, 9),
		(18, 'Gematria', 362, 9),
		(19, 'Sonne', 273, 10),
		(20, 'Links', 217, 10);
		
INSERT INTO collection
	VALUES
		(1, 'SoD_collection',2005), 
		(2, 'Hollywood undead_collection', 2008),
		(3, 'Twenty one pilots_collection', 2021),
		(4, 'Lyapis trubetskoy_collection', 2007),
		(5, 'Imagine dragons_collection', 2020),
		(6, 'KiSH_collection', 2011),
		(7, 'Thirty Seconds to Mars_collection', 2015),
		(8, 'Queen_collection', 1980),
		(9, 'Slipknot_collection', 2017),
		(10, 'Rammstein_collection', 2008);
		
INSERT INTO collection_track
	VALUES
		(1, 1, 1),
		(2, 2, 1),
		(3, 3, 2),
		(4, 4, 2),
		(5, 5, 3),
		(6, 6, 3),
		(7, 7, 4),
		(8, 8, 4),
		(9, 9, 5),
		(10, 10, 5),
		(11, 11, 6),
		(12, 12, 6),
		(13, 13, 7),
		(14, 14, 7),
		(15, 15, 8),
		(16, 16, 8),
		(17, 17, 9),
		(18, 18, 9),
		(19, 19, 10),
		(20, 20, 10);