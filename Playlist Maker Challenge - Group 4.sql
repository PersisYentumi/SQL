-- Creating artists table --
CREATE TABLE artists (id INTEGER AUTO_INCREMENT PRIMARY KEY , name TEXT, country 
TEXT, genre TEXT);
INSERT INTO artists (name, country, genre)
VALUES ("Taylor Swift", "US", "Pop");
INSERT INTO artists (name, country, genre)
VALUES ("Led Zeppelin", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
VALUES ("ABBA", "Sweden", "Disco");
INSERT INTO artists (name, country, genre)
VALUES ("Queen", "UK", "Rock");
INSERT INTO artists (name, country, genre)
VALUES ("Celine Dion", "Canada", "Pop");
INSERT INTO artists (name, country, genre)
VALUES ("Meatloaf", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
VALUES ("Garth Brooks", "US", "Country");
INSERT INTO artists (name, country, genre)
VALUES ("Shania Twain", "Canada", "Country");
INSERT INTO artists (name, country, genre)
VALUES ("Rihanna", "US", "Pop");
INSERT INTO artists (name, country, genre)
VALUES ("Guns N' Roses", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
VALUES ("Gloria Estefan", "US", "Pop");
INSERT INTO artists (name, country, genre)
VALUES ("Bob Marley", "Jamaica", "Reggae");

drop table artists;

-- Creating songs table --
CREATE TABLE songs (id INTEGER AUTO_INCREMENT PRIMARY KEY, artist TEXT, title TEXT);
INSERT INTO songs (artist, title)
VALUES ("Taylor Swift", "Shake it off");
INSERT INTO songs (artist, title)
VALUES ("Rihanna", "Stay");
INSERT INTO songs (artist, title)
VALUES ("Celine Dion", "My heart will go on");
INSERT INTO songs (artist, title)
VALUES ("Celine Dion", "A new day has come");
INSERT INTO songs (artist, title)
VALUES ("Shania Twain", "Party for two");
INSERT INTO songs (artist, title)
VALUES ("Gloria Estefan", "Conga");
INSERT INTO songs (artist, title)
VALUES ("Led Zeppelin", "Stairway to heaven");
INSERT INTO songs (artist, title)
VALUES ("ABBA", "Mamma mia");
INSERT INTO songs (artist, title)
VALUES ("Queen", "Bicycle Race");
INSERT INTO songs (artist, title)
VALUES ("Queen", "Bohemian Rhapsody");
INSERT INTO songs (artist, title)
VALUES ("Guns N' Roses", "Don't cry");


-- Querying tables --
SELECT *
FROM songs;

SELECT *
FROM artists;

SELECT title
FROM songs
WHERE artist = "Queen";

SELECT name
FROM artists
WHERE genre = 'Pop';


SELECT title
FROM songs
WHERE artist IN (SELECT name
				FROM artists
				WHERE genre  = 'Pop');
                
-- NAMES --
/*
Persis Yentumi
Emmanuella Adu
Joseph Boateng
Ebenezer Kojo Frimpong
*/

