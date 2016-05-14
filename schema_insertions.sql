USE music_store;

INSERT INTO album (album_id, name) VALUES
  (1, 'Tolou'), (2, 'Once In A Red Moon'), (3, 'The Piano Guys'), (4, 'The Hunting Party'),
  (5, 'Shalgham');

INSERT INTO track (track_id, album_id, name, price, duration) VALUES
  (1, 1, 'Naajee', 3000, '430'), (2, 1, 'Molaghat', 4500, '530'),
  (3, 2, 'Gates of Dawn', 8000, '429'), (4, 3, 'A Thousand Years', 5000, '436'),
  (5, 3, 'Let It Go', 1200, '402'), (6, 3, 'Summer Jam', 6700, '354'),
  (7, 4, 'Guilty All the Same', 12000, '554'), (8, 4, 'Drawbar', 9200, '312'),
  (9, 4, 'A Line In The Sand', 9900, '638'), (10, NULL, 'Backfield', 4300, '407'),
  (11, 5, 'To Azizi', 500, '433');

INSERT INTO artist (artist_id, name) VALUES (1, 'Moein'), (2, 'The Piano Guys'),
  (3, 'Secret Garden'), (4, 'Linkin Park'), (5, 'Backfield'), (6, 'Aziz Veisi'),
  (7, 'Kazem'), (8, 'Johnson');

INSERT INTO track_artist (track_id, artist_id) VALUES (1, 1), (2, 1), (3, 3), (4, 2),
  (5, 2), (6, 2), (7, 4), (8, 4), (9, 4), (10, 5), (11, 6), (11, 7), (11, 8), (11, 5);

INSERT INTO customer (customer_id, name, age) VALUES (1, 'Siavash', 22),
  (2, 'Ali', 20), (3, 'Ghasemi', 21), (4, 'Goolakh', 33);

INSERT INTO genre (type_id, type) VALUES (1, 'Pop'), (2, 'Jazz'), (3, 'Instrumental'),
  (4, 'Rock'), (5, 'Hip Hop'), (6, 'Metal'), (7, 'Kordi');

INSERT INTO track_genre (track_id, type_id) VALUES (1, 1), (2, 1), (3, 3), (4, 3),
  (5, 1), (6, 3), (7, 4), (8, 4), (9, 4), (10, 6), (11, 7);

INSERT INTO comment (comment_id, track_id, customer_id, content, star) VALUES
  (1, 2, 1, 'Alie in ahang', 5), (2, 6, 2, 'Bass khoobi dare', 2),
  (3, 7, 1, 'Excellent', 5), (4, 8, 3, 'WTF', 1), (5, 8, 2, 'Good :)', 3),
  (6, 7, 3, 'Terrible', 1), (7, 9, 1, 'Love it', 9.5),
  (8, 9, 1, 'Fascinating', 10), (9, 9, 2, 'Wow', 9), (10, 9, 4, 'Lol', 9);

INSERT INTO `order` (order_id, customer_id) VALUES
  (1, 1), (2, 1), (3, 1), (4, 5), (5, 1), (6, 2);

INSERT INTO track_order (track_id, order_id) VALUES
  (1, 1), (1, 2), (8, 2), (2, 3), (5, 4), (8, 5), (9, 5), (10, 5), (8, 6);