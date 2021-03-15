drop schema ggg cascade;


create schema ggg;


set schema 'ggg';



CREATE TABLE Genre (
	Genreid			SERIAL PRIMARY KEY,
	Name			VARCHAR(40),
	SuperGenreID	INT	references Genre(Genreid)
);

CREATE TABLE Artist (
	Artistid		 SERIAL PRIMARY KEY,
	Name			VARCHAR(40),
	Age				SMALLINT CHECK (Age > 0),
	Nationality		VARCHAR(20)	,	
	Genreid			INT	references Genre(Genreid) ,
	Alive			BOOLEAN NOT NULL
);

CREATE TABLE Album (
	Albumid			SERIAL PRIMARY KEY,
	Title			VARCHAR(40),
	Artistid		INT references Artist(ArtistId),
	PublishingYear	INT
);

CREATE TABLE Song (
	Songid			SERIAL PRIMARY KEY,
	Title			VARCHAR(40) NOT NULL,
	Albumid			INT references Album(Albumid),
	Length			INT NOT NULL CHECK(Length > 0),
	Explicit		BOOLEAN NOT NULL
);

CREATE TABLE Song_Artist (
	Songid			INT  references Song(Songid),
	Artistid		INT  references Artist(Artistid),

	primary key 	 (Songid, Artistid)
);

CREATE TABLE Playlist (
	Playlistid		SERIAL PRIMARY KEY,
	Name			VARCHAR(40)
);

CREATE TABLE Playlist_Song (
	Playlistid		INT references Playlist(Playlistid),
	Songid			INT references Song(Songid),

	primary key (Playlistid, Songid)
	
);


/* Beispiel-Daten in DB einfügen  */
INSERT INTO Genre 	( Name, SuperGenreID )
VALUES				('rock', null),
					( 'alternative metal', (SELECT genreid FROM Genre WHERE Name = 'rock') ),
					('hip hop', null ),
					('german hip hop', (SELECT genreid FROM Genre WHERE Name = 'hip hop'));

INSERT INTO Artist	(  Name, Age, Nationality, Genreid, Alive )
VALUES 				( 'System of A Down', null, 'USA', (SELECT genreid FROM Genre WHERE Name = 'alternative metal'), true ),
					( 'Slipknot', null, 'USA', (SELECT genreid FROM Genre WHERE Name = 'alternative metal'), true ),
					( 'Peter Fox', 49, 'Germany', (SELECT genreid FROM Genre WHERE Name = 'german hip hop'), true );

INSERT INTO Album 	(Title, Artistid, PublishingYear)
VALUES				('Steal This Album!', (SELECT Artistid FROM Artist WHERE Name = 'System of A Down'), 2002),

					('Slipknot (10th Anniversary Edition)', (SELECT Artistid FROM Artist WHERE Name = 'Slipknot'), 2009),

					('Stadtaffe', (SELECT Artistid FROM Artist WHERE Name = 'Peter Fox'), 2008);

INSERT INTO Song( Title, Albumid, Length, Explicit )
VALUES 			('Innervision', (SELECT Albumid FROM Album WHERE Title = 'Steal This Album!'), 153, false),
				('Bubbles', (SELECT Albumid FROM Album WHERE Title = 'Steal This Album!'), 116, false),
				('A.D.D. (American Dream Denial)', (SELECT Albumid FROM Album WHERE Title = 'Steal This Album!'), 197, true),

				('Tattered & Torn', (SELECT Albumid FROM Album WHERE Title = 'Slipknot (10th Anniversary Edition)'), 173, true),
				('No life', (SELECT Albumid FROM Album WHERE Title = 'Slipknot (10th Anniversary Edition)'), 167, true),

				('Alles neu', (SELECT Albumid FROM Album WHERE Title = 'Stadtaffe'), 260, false),
				('Der letzte Tag', (SELECT Albumid FROM Album WHERE Title = 'Stadtaffe'), 222, false);

INSERT INTO Playlist	(Playlistid,Name) 
VALUES 					(default,'Mix # 1'),
						(default,'MyMetal'),
						(default,'Best of Rock'),

						(default,'Deutschrap'),
						(default,'Best of Rap'),
						(default,'Mix # 3');

INSERT INTO Song_Artist	(Songid, Artistid) 
VALUES 					((SELECT Songid FROM Song WHERE Title = 'Innervision'),
						 (SELECT Artistid FROM Artist WHERE Name = 'System of A Down')),

						((SELECT Songid FROM Song WHERE Title = 'Bubbles'),
						 (SELECT Artistid FROM Artist WHERE Name = 'System of A Down')),

						((SELECT Songid FROM Song WHERE Title = 'A.D.D. (American Dream Denial)'),
						 (SELECT Artistid FROM Artist WHERE Name = 'System of A Down')),


						((SELECT Songid FROM Song WHERE Title = 'Tattered & Torn'),
						 (SELECT Artistid FROM Artist WHERE Name = 'Slipknot')),
	
						((SELECT Songid FROM Song WHERE Title = 'No life'),
						 (SELECT Artistid FROM Artist WHERE Name = 'Slipknot')),

						((SELECT Songid FROM Song WHERE Title = 'Alles neu'),
						 (SELECT Artistid FROM Artist WHERE Name = 'Peter Fox')),

						((SELECT Songid FROM Song WHERE Title = 'Der letzte Tag'),
						 (SELECT Artistid FROM Artist WHERE Name = 'Peter Fox'));

INSERT INTO Playlist_Song(Playlistid, Songid) 
VALUES 					((SELECT Playlistid FROM Playlist WHERE Name = 'Mix # 1'),
						(SELECT Songid FROM Song WHERE Title = 'Tattered & Torn')),


						((SELECT Playlistid FROM Playlist WHERE Name = 'MyMetal'),
						(SELECT Songid FROM Song WHERE Title = 'Tattered & Torn')),

						((SELECT Playlistid FROM Playlist WHERE Name = 'Best of Rock'),
						(SELECT Songid FROM Song WHERE Title = 'No life')),

						((SELECT Playlistid FROM Playlist WHERE Name = 'Deutschrap'),
						(SELECT Songid FROM Song WHERE Title = 'Alles neu')),

						((SELECT Playlistid FROM Playlist WHERE Name = 'Best of Rap'),
						(SELECT Songid FROM Song WHERE Title = 'Alles neu')),

						((SELECT Playlistid FROM Playlist WHERE Name = 'mix # 3'),
						(SELECT Songid FROM Song WHERE Title = 'Der letzte Tag'));















