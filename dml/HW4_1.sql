INSERT INTO genres VALUES
	(0, 'Pop'),
	(1, 'Rock'),
	(2, 'Metal'),
	(3, 'House'),
	(4, 'Trance'),
	(5, 'Disco');

INSERT INTO artists VALUES
	(0, 'Madonna'),
	(1, 'Rolling Stones'),
	(2, 'AC/DC'),
	(3, 'Abba'),
	(4, 'Armin Van Buuren'),
	(5, 'Pink Floyd'),
	(6, 'Metallica'),
	(7, 'David Guetta');

INSERT INTO albums VALUES
	(0, 'Rebel Heart', 2015),
	(1, 'Madame X', 2019),
	(2, 'Blue and Lonesome', 2016),
	(3, 'Flashpoint', 1991),
	(4, 'Rock or Bust', 2014),
	(5, 'Power Up', 2020),
	(6, 'The Visitors', 1981),
	(7, 'Voyage', 2021),
	(8, 'Embrace', 2015),
	(9, 'Balance', 2019),
	(10, 'The Division Bell', 1994),
	(11, 'The Endless River', 2014),
	(12, 'Death Magnetic', 2008),
	(13, 'Hardwired...To Self-Destruct', 2016),
	(14, 'Listen', 2014),
	(15, 'Seven', 2018);
	
INSERT INTO tracks VALUES
	(0, 'Inside Out', '4:23', 0),
	(1, 'Wash All Over Me', '4:00', 0), 
	(2, 'I Don’t Search I Find', '4:08', 1),
	(3, 'I Rise', '4:33', 1),
	(4, 'Just Like I Treat You', '3:24', 2),
	(5, 'Little Rain', '3:32', 2), 
	(6, 'Sympathy for the Devil', '5:35', 3),
	(7, 'Brown Sugar', '4:06', 3),
	(8, 'Sweet Candy', '3:09', 4),
	(9, 'Emission Control', '3:41', 4),
	(10, 'Realize', '3:37', 5),
	(11, 'Demon Fire', '3:30', 5),
	(12, 'The Visitors', '5:47', 6),
	(13, 'Slipping Through My Fingers', '3:53', 6),
	(14, 'Little Things', '3:08', 7),
	(15, 'Bumblebee', '3:57', 7),
	(16, 'Another You', '3:10', 8),
	(17, 'Make It Right', '5:41', 8),
	(18, 'Sunny Days', '3:30', 9),
	(19, 'Runaway', '3:57', 9),
	(20, 'Cluster One', '5:58', 10),
	(21, 'Poles Apart', '7:04', 10),
	(22, 'Skins', '2:32', 11),
	(23, 'On Noodle Street', '1:42', 11),
	(24, 'All Nightmare Long', '7:57', 12),
	(25, 'Cyanide', '6:37', 12),
	(26, 'Confusion', '6:41', 13),
	(27, 'ManUNkind', '6:55', 13),
	(28, 'Dangerous', '3:23', 14),
	(29, 'Bang My Head', '3:53', 14),
	(30, 'Flames', '3:15', 15),
	(31, 'Say My Name', '3:19', 15);

INSERT INTO collections VALUES
	(0, 'XX Century', 2000),
	(1, 'Rock it!', 2016),
	(2, 'Electronics', 2019),
	(3, 'Popular', 2021),
	(4, 'Heavy metal', 2020),
	(5, 'Disco anthems', 2021),
	(6, 'Vocal trance', 2019),
	(7, 'Best of the best', 2022);

INSERT INTO artists_genres VALUES
	(0,0), (0,5),
	(1,1),
	(2,1), (2,2),
	(3,0), (3,5),
	(4,3), (4,4),
	(5,1),
	(6,1), (6,2),
	(7,0), (7,3);

INSERT INTO artists_albums VALUES
	(0,0), (0,1),
	(1,2), (1,3),
	(2,4), (2,5),
	(3,6), (3,7),
	(4,8), (4,9),
	(5,10), (5,11),
	(6,12), (6,13),
	(7,14), (7,15);

INSERT INTO collections_tracks values
	(0,6), (0,7), (0,12), (0,13),
	(1,4), (1,5), (1,6), (1,7), (1,20), (1,21), (1,22), (1,23),
	(2,16), (2,17), (2,18), (2,19), (2,28), (2,29), (2,30), (2,31),
	(3,0), (3,1), (3,2), (3,3), (3,28), (3,29), (3,30), (3,31),
	(4,8), (4,9), (4,10), (4,11), (4,24),(4,25),(4,26),(4,27),
	(5,12), (5,13), (5,14), (5,15),
	(6,16), (6,17), (6,18), (6,19),
	(7,3), (7,7), (7,11), (7,14), (7,18), (7,22), (7,26), (7,30);

	