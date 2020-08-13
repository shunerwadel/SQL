/* Select names of people who starred in a movie with Kevin Bacon */

SELECT DISTINCT name FROM people JOIN stars ON people.id = stars.person_id WHERE movie_id IN (SELECT movie_id FROM stars JOIN people ON stars.person_id = people.id WHERE name = 'Kevin Bacon') EXCEPT SELECT 'Kevin Bacon' FROM people