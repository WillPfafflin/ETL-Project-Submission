SELECT l.title,l.movie_id,r.rotten_tomatoes,gt.genres
FROM lookup AS l
JOIN rating AS r on r.movie_id = l.movie_id
JOIN genre_lookup AS gl ON gl.movie_id = l.movie_id
JOIN genre_type as gt ON gt.genre_id = gl.genre_id
WHERE l.movie_id IN (SELECT s.movie_id
					FROM streaming_service AS s
					 WHERE netflix = true);
					 
SELECT l.title, r.rotten_tomatoes, r.imdb, o.overview
FROM lookup AS l
JOIN rating AS r ON l.movie_id = r.movie_id
JOIN overview AS o ON o.movie_id=r.movie_id
WHERE l.movie_id IN (SELECT dl.movie_id
					FROM director_lookup AS dl
					WHERE dl.director_id IN (
						SELECT dn.director_id
						FROM director_names as dn
						WHERE directors = 'Clint Eastwood'));