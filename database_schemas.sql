CREATE TABLE album (
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  name     VARCHAR(32) NOT NULL
);

CREATE TABLE track (
  track_id INT AUTO_INCREMENT PRIMARY KEY,
  album_id INT         NOT NULL,
  name     VARCHAR(32) NOT NULL,
  duration TIME,
  FOREIGN KEY (album_id) REFERENCES album (album_id)
);

CREATE TABLE artist (
  artist_id INT AUTO_INCREMENT PRIMARY KEY,
  name      VARCHAR(32) NOT NULL
);

CREATE TABLE track_artist (
  track_id  INT,
  artist_id INT NOT NULL,
  FOREIGN KEY (track_id) REFERENCES track (track_id),
  FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
);

CREATE TABLE customer (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(32) NOT NULL,
  age         INT
);

CREATE TABLE comment (
  comment_id  INT AUTO_INCREMENT PRIMARY KEY,
  track_id    INT          NOT NULL,
  customer_id INT          NOT NULL,
  content     VARCHAR(255) NOT NULL,
  FOREIGN KEY (track_id) REFERENCES track (track_id),
  FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

CREATE TABLE genre (
  type VARCHAR(20) PRIMARY KEY
);

CREATE TABLE track_genre (
  track_id INT         NOT NULL,
  type     VARCHAR(20) NOT NULL,
  FOREIGN KEY (track_id) REFERENCES track (track_id),
  FOREIGN KEY (type) REFERENCES genre (type)
);

CREATE TABLE music_store.order (
  order_id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE track_order (
  track_id INT NOT NULL,
  order_id INT,
  FOREIGN KEY (track_id) REFERENCES track (track_id),
  FOREIGN KEY (order_id) REFERENCES `order` (order_id)
);