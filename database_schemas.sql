CREATE TABLE track (
  track_id INT AUTO_INCREMENT PRIMARY KEY,
  album_id INT         NOT NULL,
  name     VARCHAR(32) NOT NULL,
  duration TIME,
  FOREIGN KEY (album_id) REFERENCES album (album_id)
);

CREATE TABLE album (
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  name     VARCHAR(32) NOT NULL
);

CREATE TABLE artist (
  artist_id INT AUTO_INCREMENT PRIMARY KEY,
  name      VARCHAR(32) NOT NULL
);

CREATE TABLE artist_track (
  track_id  INT,
  artist_id INT NOT NULL,
  FOREIGN KEY (track_id) REFERENCES track(track_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);