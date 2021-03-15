# Sebastian Aguilera Rodriguez

# Aufgabe 01
# Liste alle Songs, die nicht Jugendfrei sind
	
	SELECT 	*
	FROM 	song s
	WHERE 	s.explicit = 'true';


# Aufgabe 02
# Gebe und ordne eine Liste an nach folgendem Schema (EJ, dann KN):
# Albumname, Kuenstlername, Erscheinungsjahr

	SELECT 	al.title, ar.name, al.publishingyear 
	FROM	album al
			INNER JOIN artist ar ON al.artistid = ar.artistid
	GROUP BY 


# Aufgabe 03
#Liste alle Alben von Kuenstlern aus den USA auf.

	SELECT 
	FROM
	WHERE ;


# Aufgabe 04
# Liste alle Songs aus der Playlist Melancholie auf.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 05
# Liste alle Songs (Title, Length) vom Album 'Zenit RR'

	SELECT 
	FROM
	WHERE ;

# Aufgabe 06
# Gebe alle Artisten des Genre 'german hip hop' an

	SELECT 
	FROM
	WHERE ;

# Aufgabe 07
# Erstelle Liste 'Songtitel', 'Kuenstlername' mit allen Songs von 'Juice WRLD'

	SELECT 
	FROM
	WHERE ;

# Aufgabe 08
# Liste alle Songs vom Album '? (Deluxe)', kuerzer als 150 Sekunden

	SELECT 
	FROM
	WHERE ;

# Aufgabe 09
# Ermittle durchschnittliche Länge eines Songs (Runde ganzzahlig)

	SELECT 
	FROM
	WHERE ;

# Aufgabe 10
# Liste Songs, die mit 'S' beginnen und von deutschem Kuenstler gesungen.

	SELECT 
	FROM
	WHERE ;


# Aufgabe 11
# Liste zu jedem Kuenstler den Namen und Anzahl ihrer Songs auf.
# DIe Spalte mit der Songanzahl soll 'Songanzahl' heissen.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 12
# Wie Aufgabe 11, aber nur Kuenstler, die mindestens 4 Songs haben.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 13
# Eine Liste mit den Namen der Playlisten, deren Songanzahlen und Playlistlaenge
# in Sekunden an

	SELECT 
	FROM
	WHERE ;

# Aufgabe 14
# Wie Aufgabe 13, aber nur Playlists mit mindestens 10 Eintraegen

	SELECT 
	FROM
	WHERE ;

# Aufgabe 15
# Wie Aufgabe 14, aber nur mit jugendfreien Songs

	SELECT 
	FROM
	WHERE ;

# Aufgabe 16
# Liste Namen und VOE-Datum aller Alben auf, die von Interpreten des
# 'alternative metal' Genres und nach 2008 veroeffentlicht wurden.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 17
# Gebe Namen aller Künstler, die mehr als 2 Alben in unserer DB haben.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 18
# Liste Alben an, erschienen zwischen 2005-2012. Sortierung absteigend (ErschJ)

	SELECT 
	FROM
	WHERE ;

# Aufgabe 19
# Füge den jugenfreien Song 'Last Christmas' mit Laenge 267 hinzu.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 20
# Von welchen Genres sind keine Kuenstler in unserer Datenbank gespeichert?

	SELECT 
	FROM
	WHERE ;

# Aufgabe 21
# Gebe Anzahl der Songs von Kuenstlern, die nicht aus 'USA' kommen.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 22
Liste alle Alben toter Kuenstler mit mindestens 12 Songs.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 23
Wie lang ist der laengste Song.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 24
# Welches ist das neueste Album.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 25
# Liste alle Songs auf, bei denen mindestens 3 Kuenstler mitwirken. 

	SELECT 
	FROM
	WHERE ;

# Aufgabe 26
# Liste alle Subgenres auf, also Genres, die eine Supercategory haben.

	SELECT 
	FROM
	WHERE ;

# Aufgabe 27
# Gebe alle Songs von Rappern an.

	SELECT 
	FROM
	WHERE ;

# Aufgabe Zusatz
# Liste alle Songs in denen 'Sido' UND 'Apache 207' mitgewirkt haben.

	SELECT 
	FROM
	WHERE ;



