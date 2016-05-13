INSERT INTO album (name) VALUES ('Tolou'), ('Once In A Red Moon'), ('The Piano Guys');

INSERT INTO track (album_id, name, duration) VALUES (1, 'Naajee', '430'),
  (1, 'Molaghat', '530'), (2, 'Gates of Dawn', '429'), (3, 'A Thousand Years', '436'),
  (3, 'Let It Go', '402'), (3, 'Summer Jam', '354');

INSERT INTO artist (name) VALUES ('Moein'), ('The Piano Guys'), ('Secret Garden');

INSERT INTO track_artist (track_id, artist_id) VALUES (1, 1), (2, 1), (3, 3), (4, 2), (5, 2), (6, 2);

INSERT INTO customer (name, age) VALUES ('Siavash', 22), ('Ali', 20), ('Ghasemi', 21), ('Goolakh', 33);

INSERT INTO genre (type) VALUES ('Pop'), ('Jazz'), ('Instrumental'), ('Rock'), ('Hip Hop');

INSERT INTO comment (track_id, customer_id, content) VALUES (2, 1, 'Alie in ahang'), (6, 2, 'Bass khoobi dare');