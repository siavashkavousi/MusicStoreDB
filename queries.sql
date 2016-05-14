USE music_store;

SELECT *
FROM track
  JOIN (track_genre
    JOIN genre USING (type_id)) USING (track_id);

# Query #1
SELECT
  album_id,
  sum(price)
FROM track
  NATURAL JOIN track_genre
  NATURAL JOIN genre
WHERE type = 'Pop'
GROUP BY album_id
HAVING sum(price)
ORDER BY sum(price)

