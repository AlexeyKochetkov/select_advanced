CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS songwriter (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_songwriter (
	genre_id INTEGER REFERENCES genre(id),
	songwriter_id INTEGER REFERENCES songwriter(id),
	CONSTRAINT pk PRIMARY KEY (
		genre_id,
		songwriter_id
	)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	YEAR INTEGER CHECK(
		YEAR>1900
	)
);

CREATE TABLE IF NOT EXISTS songwriter_album (
	songwriter_id INTEGER REFERENCES songwriter(id),
	album_id INTEGER REFERENCES album(id),
	CONSTRAINT sa PRIMARY KEY (
		songwriter_id,
		album_id
	)
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES album(id),
	name VARCHAR(60) NOT NULL,
	time INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	YEAR INTEGER CHECK(
		YEAR>1900
	)
);

CREATE TABLE IF NOT EXISTS collection_track (
	collection_id INTEGER NOT NULL REFERENCES collection(id),
	track_id INTEGER NOT NULL REFERENCES track(id)
);
