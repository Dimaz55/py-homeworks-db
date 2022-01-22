SELECT name, release_year FROM albums
	WHERE release_year=2018;

SELECT name, duration FROM tracks
	ORDER BY duration DESC
	LIMIT 1;
	
SELECT name FROM tracks
	WHERE duration >= '0:3:15';

SELECT name FROM collections
	WHERE release_year BETWEEN 2018 AND 2020;

SELECT name FROM artists
	WHERE name NOT LIKE '% %'; -- '%_ _%' тоже не работает
	
SELECT name FROM tracks
	WHERE name ILIKE '%my%';