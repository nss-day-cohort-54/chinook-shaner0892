-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT 
    p.name,
COUNT(*)
FROM playlisttrack pt
JOIN playlist p 
    ON pt.playlistid = p.playlistid
GROUP BY pt.playlistid