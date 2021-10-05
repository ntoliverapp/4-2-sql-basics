--In the person.sql file, write out the code for the following problems:

--1. Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person(
  person_id SERIAL PRIMARY KEY,
  person_name VARCHAR(20),
  person_age INTEGER,
  person_height INTEGER,
  person_city VARCHAR(20),
  person_favorite_color VARCHAR(20)
);

--2. Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person
(person_name, person_favorite_color, person_city, person_height, person_age)
VALUES
('Araceli','Red', 'Dallas', 152, 25),
('Manuel','Blue', 'Austin', 183, 28),
('Anna', 'Yellow', 'San Antonio', 168, 27),
('Diego','Black', 'Houston', 194, 30),
('Sol', 'Green', 'Houston', 162, 29);

SELECT * FROM person;

--3. Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY person_height DESC;

--4. Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY person_height ASC;

--5. Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY person_height DESC;

--6. Select all the people in the person table older than age 20.
SELECT * FROM person
WHERE person_age > 20;

--7. Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE person_age = 18;

--8. Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE person_age < 20 AND person_age > 30;

--9. Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE person_age <> 27;

--10. Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE person_favorite_color != 'Red';

--11. Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE person_favorite_color != 'Red' AND person_favorite_color != 'Blue';

--12. Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE person_favorite_color = 'Orange' OR person_favorite_color = 'Green';

--13. Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE person_favorite_color IN('Orange', 'Green', 'Blue');

--14. Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE person_favorite_color IN('Yellow', 'Purple');