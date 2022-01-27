-- 1 количество исполнителей в каждом жанре
SELECT name, COUNT(ag.artist_id) FROM genres g
	JOIN artists_genres ag ON g.id = ag.genre_id
	GROUP BY name;

-- 2 количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(t.id) FROM tracks t 
	JOIN albums a ON t.album_id = a.id
	WHERE a.release_year BETWEEN 2019 AND 2020;

-- 3 средняя продолжительность треков по каждому альбому
SELECT a.name, AVG(t.duration) FROM albums a
	JOIN tracks t ON t.album_id = a.id
	GROUP BY a.name;

-- 4 все исполнители, которые не выпустили альбомы в 2020 году
SELECT ar.id, ar.name FROM artists ar
	JOIN artists_albums aa ON ar.id = aa.artist_id
	JOIN albums al ON aa.album_id = al.id  
	WHERE al.release_year!=2020
	GROUP BY ar.id, ar.name
	ORDER BY ar.id;

-- 5 названия сборников, в которых присутствует конкретный исполнитель
SELECT DISTINCT(c.name) FROM collections c
	JOIN collections_tracks ct ON c.id = ct.collection_id 
	JOIN tracks t ON ct.track_id = t.id 
	JOIN albums al ON t.id = al.id
	JOIN artists_albums aa ON al.id = aa.artist_id 
	JOIN artists a ON aa.artist_id = a.id  
	WHERE a.name = 'Abba';

-- 6 название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT DISTINCT(al.name) FROM albums al
	JOIN artists_albums aa ON al.id = aa.album_id 
	JOIN artists_genres ag ON aa.artist_id = ag.artist_id
	WHERE ag.artist_id IN	
		(SELECT artist_id FROM artists_genres
			GROUP BY artist_id
			HAVING COUNT(artist_id)>1
			ORDER BY artist_id);

-- 7 наименование треков, которые не входят в сборники
SELECT t.name FROM tracks t 
	WHERE t.id NOT IN
		(SELECT track_id FROM collections_tracks);

-- 8 исполнителя(-ей), написавшего самый короткий по продолжительности 
---- трек (теоретически таких треков может быть несколько)
SELECT DISTINCT a.name FROM artists a
	JOIN artists_albums aa ON a.id  = aa.artist_id 
	JOIN albums al ON aa.album_id = al.id 
	JOIN tracks t ON t.album_id = al.id
	WHERE t.duration = 
		(SELECT MIN(duration) FROM tracks);

-- 9 название альбомов, содержащих наименьшее количество треков
SELECT al.name FROM albums al
	JOIN tracks t ON t.album_id  = al.id
	GROUP BY al.name
	HAVING COUNT(*) = (
	SELECT MIN(cnt) FROM ( 
		SELECT album_id, COUNT(*) cnt FROM tracks
			GROUP BY album_id) ct);







	