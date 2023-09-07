INSERT INTO genre(name)
VALUES('Жанр1'),
	  ('Жанр2'),
	  ('Жанр3')
;

INSERT INTO songwriter(name)
VALUES('Исполнитель1'),
	  ('Исполнитель2'),
	  ('Исполнитель3'),
	  ('Исполнитель 4')
;

INSERT INTO album (name, year)
VALUES('Альбом1', 2019),
	  ('Альбом2', 2020),
	  ('Альбом3', 2021),
	  ('Альбом4', 2020)
;

INSERT INTO track (album_id, name, time)
VALUES(1, 'my track', 4),
	  (2, 'мой трек', 3),
	  (3, 'Трек3', 5),
	  (3, 'Трек4', 6),
	  (4, 'Трек5', 5),
	  (4, 'Трек6', 3)
;

INSERT INTO genre_songwriter
VALUES(1, 2),
	  (1, 3),
	  (2, 1),
	  (3, 4)
;

INSERT INTO songwriter_album 
VALUES(1, 4),
	  (2, 1),
	  (3, 2),
	  (4, 3)
;

INSERT INTO collection  (name, year)
VALUES('Сборник1', 2018),
	  ('Сборник2', 2019),
	  ('Сборник3', 2021),
	  ('Сборник4', 2020)
;

INSERT INTO collection_track  
VALUES(1, 6),
	  (1, 5),
	  (1, 3),
	  (2, 1),
	  (2, 2),
	  (2, 4),
	  (3, 4),
	  (3, 5),
	  (3, 1),
	  (4, 1),
	  (4, 4),
	  (4, 6)
;