--How many artists published at least 10 MPEG tracks?
SELECT count(*) FROM
(
    SELECT ArtistId from 
    (
        SELECT artists.ArtistId, tracks.name, tracks.MediaTypeId  FROM 
        artists 
        LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
        LEFT join tracks on albums.AlbumId = tracks.AlbumId
        LEFT JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
        WHERE
        media_types.Name like '%MPEG%' 
    ) 
    GROUP BY ArtistId 
    HAVING count(*) >= 10
);