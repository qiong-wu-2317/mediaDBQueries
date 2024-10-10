--What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals.
SELECT playlists.PlaylistId, playlists.Name, round(sum(tracks.Milliseconds) / 3600000.0, 2)  AS TotalLength from 
playlists
LEFT JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
LEFT JOIN tracks ON tracks.TrackId = playlist_track.TrackId
GROUP BY playlists.PlaylistId
HAVING
sum(tracks.Milliseconds) > 2 * 60 * 60 * 1000