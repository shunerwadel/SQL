/* Select list of all people that stared in "Toy Story" */

SELECT name FROM people JOIN stars ON people.id = stars.person_id WHERE movie_id = (SELECT id FROM movies WHERE title = 'Toy Story')