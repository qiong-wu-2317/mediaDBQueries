--What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?
SELECT DISTINCT artists.Name FROM 
artists 
LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
LEFT join tracks on albums.AlbumId = tracks.AlbumId
LEFT JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
LEFT JOIN playlist_track ON tracks.TrackId = playlist_track.TrackId
LEFT JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId
WHERE
media_types.Name like '%MPEG%'
AND
playlists.Name IN ('Brazilian Music', 'Grunge')
;