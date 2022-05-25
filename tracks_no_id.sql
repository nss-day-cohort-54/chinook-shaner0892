-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT
    t.name track_name,
    a.title album_title,
    m.name media_type,
    g.name genre
FROM track t
JOIN mediatype m
    ON t.mediatypeid = m.mediatypeid
JOIN genre g
    ON t.genreid = g.genreid
JOIN album a
    ON t.albumid = a.albumid