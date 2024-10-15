--How many artists published at least 10 MPEG tracks?
SELECT count(*) AS number_of_artists_published_at_least_10_MPEG_tracks FROM
(
    SELECT artists.ArtistId FROM 
    artists 
    LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
    LEFT join tracks on albums.AlbumId = tracks.AlbumId
    LEFT JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
    WHERE
    media_types.Name like '%MPEG%' 
    GROUP BY artists.ArtistId 
    HAVING count(*) >= 10
);