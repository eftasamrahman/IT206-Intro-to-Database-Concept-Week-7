-- Intro to Database Concepts: Week 7 Assignment
-- Database Dialect: MS Access SQL

-- Query 1: Join both tables and display name, description, and amount
SELECT person.name, transaction_data.description, transaction_data.amount
FROM person 
INNER JOIN transaction_data ON person.person_id = transaction_data.person_id;

-- Query 2: Find all transactions specifically for 'Alice Smith'
SELECT transaction_data.description, transaction_data.amount
FROM person 
INNER JOIN transaction_data ON person.person_id = transaction_data.person_id
WHERE person.name = 'Alice Smith';

-- Query 3: Show the name, city, and amount for anyone who lives in 'Maryland'
SELECT person.name, person.city, transaction_data.amount
FROM person 
INNER JOIN transaction_data ON person.person_id = transaction_data.person_id
WHERE person.city = 'Maryland';

-- Query 4: Show name and description only where amount is greater than $60
SELECT person.name, transaction_data.description
FROM person 
INNER JOIN transaction_data ON person.person_id = transaction_data.person_id
WHERE transaction_data.amount > 60;

-- Query 5: Customer older than 30 AND transaction amount less than $100
SELECT person.name, person.age, transaction_data.description
FROM person 
INNER JOIN transaction_data ON person.person_id = transaction_data.person_id
WHERE person.age > 30 AND transaction_data.amount < 100;

-- Query 6: Show name, description, and amount sorted highest to lowest
SELECT person.name, transaction_data.description, transaction_data.amount
FROM person 
INNER JOIN transaction_data ON person.person_id = transaction_data.person_id
ORDER BY transaction_data.amount DESC;

-- Query 7: Find transactions that occurred after January 1, 2024
SELECT person.name, transaction_data.description, transaction_data.transaction_date
FROM person 
INNER JOIN transaction_data ON person.person_id = transaction_data.person_id
WHERE transaction_data.transaction_date > #2024-01-01#;
