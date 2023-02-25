--Function to insert new customers
CREATE OR REPLACE FUNCTION insert_customer(first_name varchar, last_name varchar, 
										   email varchar, phone varchar, billing_info varchar)
RETURNS VOID 
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO customer (first_name, last_name, email, phone, billing_info)
    VALUES (first_name, last_name, email, phone, billing_info);
END;
$$ 

SELECT insert_customer('Dylan', 'Smith', 'dylan@email.com', '123-123-5555', '1010-1010-1010-1010');
SELECT * FROM customer 

--function to inser into car_inventory 
CREATE OR REPLACE FUNCTION insert_car(make varchar, model varchar, "year" INTEGER, price decimal, 
									  serial_number varchar, new_or_used varchar, sold boolean)
RETURNS VOID 
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO car_inventory  (make, model, "year", price, serial_number, new_or_used, sold)
    VALUES (make, model, "year", price, serial_number, new_or_used, sold);
END;
$$ 

SELECT insert_car('BMW', 'X5', 2022, 75000.00, '123456', 'new', false);
SELECT * FROM car_inventory ;

