--TABLE PERSON #1--
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    height INTEGER,
    city TEXT NOT NULL,
    favorite_color TEXT NOT NULL);
    --#2
    INSERT INTO person(name, age, height, city, favorite_color) 
    values 
    ('Bob', 45, 200, 'Seatle', 'blue'),
    ('Ash', 13, 99, 'Pallet Town', 'red'),
    ('Misty', 14, 120, 'Cerulean City', 'turquoise'),
    ('Brock', 20, 145, 'Pewter City', 'brown'),
    ('Gary', 33, 159, 'Pallet Town', 'green');
    --#3
    SELECT * FROM person
    ORDER BY height DESC;
    --#4
    SELECT * FROM person
    ORDER BY age DESC;
    --#5
    SELECT * FROM person
    ORDER BY age ASC;
    --#6
    SELECT * FROM person
    WHERE age > 20;
    --#7
    SELECT * FROM person
    WHERE age = 18;
    --#8
    SELECT * FROM person
    WHERE age < 20 OR age > 30;
    --#9
    SELECT * FROM person
    WHERE age != 27;
    --#10
    SELECT * FROM person
    WHERE favorite_color != 'red';
    --#11
    SELECT * FROM person
    WHERE favorite_color != 'red' AND favorite_color != 'blue';
    --#12
    SELECT * FROM person
    WHERE favorite_color = 'orange' OR favorite_color = 'green';
    --#13
    SELECT * FROM person
    WHERE favorite_color IN ('orange', 'green', 'blue');
    --#14
    SELECT * FROM person
    WHERE favorite_color IN ('yellow', 'purple');

   
   --TABLE ORDERS #1
   CREATE TABLE orders(
       order_id SERIAL PRIMARY KEY,
       person_id INTEGER,
       product_name TEXT NOT NULL,
       product_price FLOAT,
       quantity INTEGER
   )
    --#2
    Insert INTO orders(person_id, product_name, product_price, quantity)
    VALUES
    (20, 'coffee', 5, 35),
    (5, 'chocolate', 21, 4)
    --#3
    SELECT * FROM orders;
    --#4
    SELECT sum(quantity) FROM orders;
    --#5
    SELECT sum(product_price * quantity) FROM orders;
    --#6
    SELECT SUM(product_price * quantity) FROM orders
    WHERE person_id = 20;

    
    --TABLE ARTIST #1
   INSERT INTO artist(name)
   VALUES 
   ('Charli XCX'),
   ('Kev Decor');
   --#2
   SELECT * FROM artist
   ORDER BY name DESC LIMIT 10;

    --#3
   SELECT * FROM artist
   ORDER BY name ASC  LIMIT 5;
    --#4
    SELECT * FROM artist
    WHERE name LIKE 'Black%';
    --#5
    SELECT * FROM artist
    WHERE name LIKE '%Black%';
   
    --TABLE EMPLOYEE #1
    SELECT first_name, last_name FROM employee
    WHERE city = 'Calgary';
    --#2
    SELECT MAX(birth_date) FROM employee
    --#3
    SELECT MIN(birth_date) FROM employee
    --#4
    --Step 1
    SELECT * FROM employee;
    --Step 2
    SELECT * FROM employee
    WHERE reports_to = 2;
    --#5
    SELECT COUNT(*) FROM employee
    WHERE city = 'Lethbridge';


    --TABLE INVOICE #1
    SELECT COUNT(*) FROM invoice
    WHERE billing_country = 'USA';
    --#2
    SELECT MAX(total) FROM invoice;
    --#3
    SELECT MIN(total) FROM invoice;
    --#4
    SELECT * FROM invoice
    WHERE total > 5;
    --#5
    SELECT COUNT(*) FROM invoice
    WHERE total < 5;
    --#6
    SELECT COUNT(*) FROM invoice
    WHERE billing_state IN ('CA', 'TX', 'AZ');
    --#7
    SELECT AVG(total) FROM invoice;
    --#8
    SELECT SUM(total) FROM invoice;

