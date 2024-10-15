--What are the names of the artists who made an album containing the substring "symphony" in the album title?
SELECT artists.Name AS artists FROM 
artists  LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
WHERE albums.Title like '%symphony%';