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
ORDER BY sum(price);

# Query #2
SELECT
  track_id,
  track.name,
  avg(star)
FROM (track
  NATURAL JOIN track_genre
  NATURAL JOIN genre) JOIN comment USING (track_id)
  JOIN customer USING (customer_id)
WHERE type = 'Rock'
GROUP BY track_id, track.name
HAVING avg(star)
ORDER BY avg(star) DESC;