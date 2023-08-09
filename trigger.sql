-- Active: 1691236233630@@127.0.0.1@5432@students
-- PostgreSQL Triggers are database callback functions, which are automatically performed/invoked when a specified database event occurs.

-- The following are important points about PostgreSQL triggers −
--# PostgreSQL trigger can be specified to fire

--# Before the operation is attempted on a row (before constraints are checked and the INSERT, UPDATE or DELETE is attempted)

--# After the operation has completed (after constraints are checked and the INSERT, UPDATE, or DELETE has completed)

--# Instead of the operation (in the case of inserts, updates or deletes on a view)

-- #Create product table
 CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    final_price NUMERIC(10,2) 
   
);

-- #insert data into product table
INSERT INTO product VALUES (8,'pc', 10, 20000);

-- see product table
SELECT * FROM product;


-- #Create trigger
CREATE TRIGGER add_tax_trigger
AFTER
INSERT ON product 
FOR EACH ROW
EXECUTE FUNCTION update_product_price();

-- create function
CREATE OR REPLACE FUNCTION update_product_price() RETURNS TRIGGER
LANGUAGE PLPGSQL
AS $$
    BEGIN
        NEW.final_price := NEW.price * 0.05;
        RETURN NEW;  
    END;
$$;

DROP Table product;


