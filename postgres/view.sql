-- Crete VIEW
CREATE VIEW my_view 
AS 
SELECT first_name from employee;

SELECT first_name FROM my_view LIMIT 5;