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

# Query #3
SELECT DISTINCT name
FROM customer
  NATURAL JOIN comment
WHERE track_id = (SELECT track_id
                  FROM comment
                  WHERE star
                  GROUP BY track_id
                  HAVING avg(star) > 9);

# Query #4
SELECT
  artist.name,
  count(DISTINCT type)
FROM (artist
  JOIN track_artist USING (artist_id)
  JOIN track USING (track_id)) JOIN track_genre USING (track_id)
  JOIN genre USING (type_id)
GROUP BY artist_id, artist.name
HAVING count(DISTINCT type)
ORDER BY artist_id;

# Query #5 - should be replaced with not exist :(
SELECT artist.name
FROM artist
WHERE artist_id NOT IN
      (SELECT artist_id
       FROM artist
         JOIN track_artist USING (artist_id)
         JOIN track USING (track_id)
       WHERE album_id IS NULL);

# Query #6 - track table should be deleted 
SELECT artist.name
FROM artist
  JOIN track_artist USING (artist_id)
  JOIN
  ((SELECT track_id
    FROM (artist
      JOIN track_artist USING (artist_id)
      JOIN track USING (track_id))
    GROUP BY track_id
    HAVING count(artist_id) > 2) AS t) USING (track_id);

# Query #7
SELECT
  type,
  count(order_id)
FROM (`order`
  NATURAL JOIN track_order
  NATURAL JOIN track) NATURAL JOIN track_genre
  NATURAL JOIN genre
GROUP BY type
HAVING count(order_id);

# Query #8 (Optional)
