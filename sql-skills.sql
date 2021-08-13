-- ARTIST TABLE 1
INSERT INTO artist (name)
VALUES ('Pure Reason Revolution'),
('FamilyJules'),
('RichaadEB');

-- ARTIST TABLE 2
SELECT * FROM artist ORDER BY name ASC LIMIT 5;


-- EMPLOYEE TABLE 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

-- EMPLOYEE TABLE 2
SELECT * FROM employee WHERE reports_to = 2;

-- EMPLOYEE TABLE 3
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- INVOICE TABLE 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';


-- INVOICE TABLE 2
SELECT MAX(total) FROM invoice;

-- INVOICE TABLE 3
SELECT MIN(total) FROM invoice;

-- INVOICE TABLE 4
SELECT * FROM invoice
WHERE total > 5;

-- INVOICE TABLE 5
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- INVOICE TABLE 6
SELECT SUM(total) FROM invoice;


-- JOIN QUERIES 1
SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

-- JOIN QUERIES 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total 
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

-- JOIN QUERIES 3
SELECT c.first_name customer_first,
c.last_name customer_last,
e.first_name rep_first,
e.last_name rep_last
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- JOIN QUERIES 4
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;