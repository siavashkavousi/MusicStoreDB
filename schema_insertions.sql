USE music_store;

INSERT INTO album (album_id, name) VALUES
  (1, 'Tolou'), (2, 'Once In A Red Moon'), (3, 'The Piano Guys');

INSERT INTO track (track_id, album_id, name, price, duration) VALUES
  (1, 1, 'Naajee', 3000, '430'), (2, 1, 'Molaghat', 4500, '530'),
  (3, 2, 'Gates of Dawn', 8000, '429'), (4, 3, 'A Thousand Years', 5000, '436'),
  (5, 3, 'Let It Go', 1200, '402'), (6, 3, 'Summer Jam', 6700, '354');

INSERT INTO artist (artist_id, name) VALUES (1, 'Moein'), (2, 'The Piano Guys'),
  (3, 'Secret Garden');

INSERT INTO track_artist (track_id, artist_id) VALUES (1, 1), (2, 1), (3, 3), (4, 2), (5, 2), (6, 2);

INSERT INTO customer (customer_id, name, age) VALUES (1, 'Siavash', 22),
  (2, 'Ali', 20), (3, 'Ghasemi', 21), (4, 'Goolakh', 33);

INSERT INTO genre (type_id, type) VALUES (1, 'Pop'), (2, 'Jazz'), (3, 'Instrumental'),
  (4, 'Rock'), (5, 'Hip Hop');

INSERT INTO track_genre (track_id, type_id) VALUES (1, 1), (2, 1), (3, 3), (4, 3),
  (5, 1), (6, 3);

INSERT INTO comment (comment_id, track_id, customer_id, content, star) VALUES
  (1, 2, 1, 'Alie in ahang', 5), (2, 6, 2, 'Bass khoobi dare', 2);