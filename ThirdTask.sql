SELECT g.name AS genre_name, COUNT(ag.artist_id) AS artist_count
FROM genre g
LEFT JOIN artist_genre ag ON g.id = ag.genre_id
GROUP BY g.name;

SELECT COUNT(s.id) AS track_count
FROM song s
JOIN album a ON s.album_id = a.id
WHERE a.release_date BETWEEN '2019-01-01' AND '2020-12-31';

SELECT a.name AS album_name, AVG(s.duration_song) AS avg_duration
FROM album a
JOIN song s ON a.id = s.album_id
GROUP BY a.name;

SELECT ar.name AS artist_name
FROM artist ar
WHERE ar.id NOT IN (
    SELECT aa.artist_id 
    FROM artist_album aa
    JOIN album al ON aa.album_id = al.id
    WHERE al.release_date BETWEEN '2020-01-01' AND '2020-12-31'
);

SELECT DISTINCT c.name AS compilation_name
FROM compilation c
JOIN song_compilation sc ON c.id = sc.compilation_id
JOIN song s ON sc.song_id = s.id
JOIN album a ON s.album_id = a.id
JOIN artist_album aa ON a.id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.id
WHERE ar.name = 'Queen';
