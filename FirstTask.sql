INSERT INTO genre (name) VALUES 
('Rock'), 
('Pop'), 
('Electronic');

INSERT INTO artist (name) VALUES 
('Queen'), 
('Adele'), 
('Daft Punk'), 
('Muse');

INSERT INTO artist_genre (artist_id, genre_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 1), 
(4, 3);

INSERT INTO album (name, release_date) VALUES 
('A Night at the Opera', '1975-11-21'), 
('25', '2015-11-20'), 
('Random Access Memories', '2013-05-17');

INSERT INTO artist_album (artist_id, album_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3);

INSERT INTO song (name, duration_song, album_id) VALUES 
('Bohemian Rhapsody', 354, 1), 
('Love of My Life', 230, 1), 
('Hello', 295, 2), 
('Send My Love', 223, 2), 
('Get Lucky', 369, 3), 
('Lose Yourself to Dance', 334, 3);

INSERT INTO compilation (name, release_year) VALUES 
('Greatest Hits Rock', 2020), 
('Best of Pop', 2019), 
('Electronic Classics', 2018), 
('Top Hits', 2020);

INSERT INTO song_compilation (song_id, compilation_id) VALUES 
(1, 1), 
(3, 2), 
(5, 3), 
(2, 1), 
(4, 2), 
(6, 4);
