/* Select all that stared in a movie in 2004 ordered by birth year */

SELECT DISTINCT name FROM people JOIN stars ON people.id = stars.person_id WHERE movie_id IN (SELECT id FROM movies WHERE year = 2004) ORDER BY birth