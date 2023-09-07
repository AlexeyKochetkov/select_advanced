--Количество исполнителей в каждом жанре
SELECT
	g.name AS genre_name,
	count(gs.songwriter_id) AS cnt_songwriter
FROM genre_songwriter gs
INNER JOIN genre g ON gs.genre_id = g.id
GROUP BY g.name
;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT
	count(t.id) AS cnt_track
FROM track t
INNER JOIN album a ON t.album_id  = a.id 
WHERE a.year BETWEEN 2019 AND 2020
;

--Средняя продолжительность треков по каждому альбому
SELECT
	a.name AS album_name,
	avg(t.time) AS avg_time_track
FROM track t
INNER JOIN album a ON t.album_id = a.id
GROUP BY a.name
ORDER BY a.name
;

--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT s.name AS songwriter_name
FROM songwriter s
WHERE s.name NOT IN (
		SELECT s.name AS songwriter_name
		FROM songwriter s
		INNER JOIN songwriter_album sa ON s.id = sa.songwriter_id
		INNER JOIN album a ON sa.album_id = a.id
    	WHERE a.year = 2020)
;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT
	c.name AS collection_name
FROM songwriter s
INNER JOIN songwriter_album sa ON s.id = sa.songwriter_id 
INNER JOIN album a ON sa.album_id = a.id 
INNER JOIN track t ON a.id = t.id 
INNER JOIN collection_track ct ON t.id = ct.track_id 
INNER JOIN collection c ON ct.collection_id = c.id 
WHERE s.name = 'Исполнитель1'
GROUP BY c.name
ORDER BY c.name
;