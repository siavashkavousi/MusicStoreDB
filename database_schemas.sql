CREATE TABLE album (
  album_id INT PRIMARY KEY,
  name     VARCHAR(32) NOT NULL
);

CREATE TABLE track (
  track_id INT PRIMARY KEY,
  album_id INT,
  name     VARCHAR(32) NOT NULL,
  price    INT         NOT NULL,
  duration TIME,
  FOREIGN KEY (album_id) REFERENCES album (album_id)
);

CREATE TABLE artist (
  artist_id INT PRIMARY KEY,
  name      VARCHAR(32) NOT NULL
);

CREATE TABLE track_artist (
  track_id  INT,
  artist_id INT NOT NULL,
  FOREIGN KEY (track_id) REFERENCES track (track_id),
  FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
  PRIMARY KEY (track_id, artist_id)
);

CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  name        VARCHAR(32) NOT NULL,
  age         INT
);

CREATE TABLE comment (
  comment_id  INT PRIMARY KEY,
  track_id    INT          NOT NULL,
  customer_id INT          NOT NULL,
  content     VARCHAR(255) NOT NULL,
  star        INT          NOT NULL,
  FOREIGN KEY (track_id) REFERENCES track (track_id),
  FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

CREATE TABLE genre (
  type_id INT PRIMARY KEY,
  type    VARCHAR(20) NOT NULL
);

CREATE TABLE track_genre (
  track_id INT NOT NULL,
  type_id  INT NOT NULL,
  FOREIGN KEY (track_id) REFERENCES track (track_id),
  FOREIGN KEY (type_id) REFERENCES genre (type_id),
  PRIMARY KEY (track_id, type_id)
);

CREATE TABLE music_store.order (
  order_id    INT PRIMARY KEY,
  customer_id INT NOT NULL
);

CREATE TABLE track_order (
  track_id INT NOT NULL,
  order_id INT,
  FOREIGN KEY (track_id) REFERENCES track (track_id),
  FOREIGN KEY (order_id) REFERENCES music_store.order (order_id),
  PRIMARY KEY (track_id, order_id)
);