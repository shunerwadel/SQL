/* Select all that have directed a movie with rating of at least 9.0 */

SELECT DISTINCT name FROM people JOIN directors ON people.id = directors.person_id WHERE movie_id IN (SELECT id FROM movies JOIN ratings ON movies.id = ratings.movie_id WHERE rating >= 9.0) ORDER BY name
