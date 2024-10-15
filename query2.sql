--What are the names of each album and the artist who created it?
SELECT albums.Title AS album, artists.Name AS artists FROM 
albums  LEFT JOIN artists ON albums.ArtistId = artists.ArtistId;