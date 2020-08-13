/* Select movie titles where Johnny Depp and Helena Bonham Carter starred */

SELECT title FROM movies JOIN stars ON movies.id = stars.movie_id JOIN people ON stars.person_id = people.id WHERE (person_id = (SELECT id FROM people WHERE name = 'Johnny Depp')) OR (person_id = (SELECT id FROM people WHERE name = 'Helena Bonham Carter')) GROUP BY title HAVING COUNT(*) > 1