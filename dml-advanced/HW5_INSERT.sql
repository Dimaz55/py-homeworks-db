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
	(7, 'David Guetta'),
	(8, 'HW5 Artist');

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
	(15, 'Seven', 2018),
	(16, 'HW5 album1', 2020),
	(17, 'HW5 album2', 2020);
	
INSERT INTO tracks (id, "name", duration, album_id) VALUES
(0, 'Inside Out', '00:04:23'::interval, 0),
(1, 'Wash All Over Me', '00:04:00'::interval, 0),
(2, 'I Don’t Search I Find', '00:04:08'::interval, 1),
(3, 'I Rise', '00:04:33'::interval, 1),
(4, 'Just Like I Treat You', '00:03:24'::interval, 2),
(5, 'Little Rain', '00:03:32'::interval, 2),
(6, 'Sympathy for the Devil', '00:05:35'::interval, 3),
(7, 'Brown Sugar', '00:04:06'::interval, 3),
(8, 'Sweet Candy', '00:03:09'::interval, 4),
(9, 'Emission Control', '00:03:41'::interval, 4),
(10, 'Realize', '00:03:37'::interval, 5),
(11, 'Demon Fire', '00:03:30'::interval, 5),
(12, 'The Visitors', '00:05:47'::interval, 6),
(13, 'Slipping Through My Fingers', '00:03:53'::interval, 6),
(14, 'Little Things', '00:03:08'::interval, 7),
(15, 'Bumblebee', '00:03:57'::interval, 7),
(16, 'Another You', '00:03:10'::interval, 8),
(17, 'Make It Right', '00:05:41'::interval, 8),
(18, 'Sunny Days', '00:03:30'::interval, 9),
(19, 'Runaway', '00:03:57'::interval, 9),
(20, 'Cluster One', '00:05:58'::interval, 10),
(21, 'Poles Apart', '00:07:04'::interval, 10),
(22, 'Skins', '00:02:32'::interval, 11),
(23, 'On Noodle Street', '00:01:42'::interval, 11),
(24, 'All Nightmare Long', '00:07:57'::interval, 12),
(25, 'Cyanide', '00:06:37'::interval, 12),
(26, 'Confusion', '00:06:41'::interval, 13),
(27, 'ManUNkind', '00:06:55'::interval, 13),
(28, 'Dangerous', '00:03:23'::interval, 14),
(29, 'Bang My Head', '00:03:53'::interval, 14),
(30, 'Flames', '00:03:15'::interval, 15),
(31, 'Say My Name', '00:03:19'::interval, 15),
(33, 'Generic track1', '00:04:00'::interval, 0),
(34, 'Generic track2', '00:03:00'::interval, 1),
(35, 'Generic track3', '00:06:00'::interval, 2),
(36, 'Generic track4', '00:07:00'::interval, 4),
(37, 'Generic track5', '00:04:00'::interval, 5),
(38, 'Generic track6', '00:09:00'::interval, 6),
(39, 'Generic track7', '00:08:00'::interval, 7),
(40, 'Generic track8', '00:06:00'::interval, 8),
(41, 'Generic track9', '00:08:00'::interval, 9),
(42, 'Generic track10', '00:04:00'::interval, 10),
(43, 'Generic track11', '00:04:00'::interval, 11),
(44, 'Generic track12', '00:03:00'::interval, 12),
(45, 'Generic track13', '00:07:00'::interval, 13),
(46, 'Generic track14', '00:09:00'::interval, 14),
(47, 'Generic track15', '00:05:00'::interval, 15);


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
	(7,14), (7,15),
	(8,16), (8,17);

INSERT INTO collections_tracks values
	(0,6), (0,7), (0,12), (0,13),
	(1,4), (1,5), (1,6), (1,7), (1,20), (1,21), (1,22), (1,23),
	(2,16), (2,17), (2,18), (2,19), (2,28), (2,29), (2,30), (2,31),
	(3,0), (3,1), (3,2), (3,3), (3,28), (3,29), (3,30), (3,31),
	(4,8), (4,9), (4,10), (4,11), (4,24),(4,25),(4,26),(4,27),
	(5,12), (5,13), (5,14), (5,15),
	(6,16), (6,17), (6,18), (6,19),
	(7,3), (7,7), (7,11), (7,14), (7,18), (7,22), (7,26), (7,30);

	