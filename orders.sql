--In the orders.sql file, write out the code for the following problems:

--1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(30),
  product_price NUMERIC,
  quantity INTEGER
);

--2. **Add 5 orders to the orders table.**Make orders for at least two different people.person_id should be different for different people.
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1 ,'MacBook Pro', 1799, 1),
(2 ,'iPhone', 899, 2),
(3 ,'Air Pods', 199, 3),
(4 ,'iPad Mini', 499, 2),
(5 ,'HDMI Cable', 29.99, 7);


--3. Select all the records from the orders table.
SELECT * FROM orders;

--4. Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

--5. Calculate the total order price.
SELECT SUM(product_price) FROM orders;

--6. Calculate the total order price by a single person_id.
SELECT SUM(product_price) AS total_price FROM orders
WHERE person_id=5;