SELECT name, duration_song 
FROM song 
ORDER BY duration_song DESC 
LIMIT 1;

SELECT name 
FROM song 
WHERE duration_song >= 210;

SELECT name 
FROM compilation 
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name 
FROM artist 
WHERE name NOT LIKE '% %';

SELECT name 
FROM song 
WHERE name ILIKE '%мой%' OR name ILIKE '%my%';
