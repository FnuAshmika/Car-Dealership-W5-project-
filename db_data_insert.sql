-- Insert records into sales_person table
INSERT INTO sales_person (first_name, last_name, email, phone, hiring_date)
VALUES
    ('Harry', 'Potter', 'harry@email.com', '555-555-1234', '01-01-2021'),
    ('Ginny', 'Weasley', 'ginny@email.com', '555-555-5678', '02-15-2021'),
    ('Ron', 'Weasley', 'rwealey@email.com', '555-555-9876', '06-30-2022'),
    ('Hermione', 'Granger', 'hermione@email.com', '555-555-4321', '09-01-2021');
SELECT * FROM sales_person ;

-- Insert records into customer table
INSERT INTO customer (first_name, last_name, email, phone, billing_info)
VALUES
    ('Lord', 'Voldemort', 'voldy@email.com', '444-444-1111', '1234-1234-1234-1234'),
    ('Draco', 'Malfoy', 'malfoy@email.com', '444-444-2222', '1212-1212-1212-1212'),
    ('Viktor', 'Krum', 'viktor@email.com', '444-444-3333', '4141-4141-4141-4141'),
    ('Argus', 'Filch', 'argus@email.com', '444-444-4444', '9595-9595-9595-9595');
SELECT * FROM customer;
   
-- Insert records into car_inventory table
INSERT INTO car_inventory (make, model, "year", price, serial_number, new_or_used, sold)
VALUES
    ('Toyota', 'Camry', 2020, 25000, '123456789', 'new', TRUE),
    ('Honda', 'Accord', 2019, 22000, '987654321', 'used', TRUE),
    ('Ford', 'Mustang', 2021, 35000, '456789123', 'new', FALSE),
    ('Chevrolet', 'Camaro', 2018, 30000, '321654987', 'used', TRUE);
SELECT * FROM car_inventory ;

-- Insert records into invoice table
INSERT INTO invoice (salesperson_id, customer_id, car_id, sale_date, sale_amount)
VALUES
    (1, 1, 1, '01-15-2022', 25000),
    (2, 2, 2, '12-26-2022', 20000),
    (3, 3, 4, '01-01-2023', 35000);
SELECT * FROM invoice ; 

-- Insert records into mechanic table
INSERT INTO mechanic (first_name, last_name, phone, email, working_since)
VALUES
    ('Rubeus', 'Hagrid', '555-555-5555', 'hagrid@email.com', '01-01-2021'),
    ('Sirius', 'Black', '555-555-6666', 'black@email.com', '02-15-2021'),
    ('Lily', 'Potter', '555-555-7777', 'lily@email.com', '07-04-2022'),
    ('Luna', 'Lovegood', '555-555-8888', 'luna@email.com', '01-01-2023');
SELECT * FROM mechanic ;  

--Insert records into service_ticket table
INSERT INTO service_ticket (customer_id, car_id, description, date_in, date_out)
VALUES (1, 1, 'Oil change and tire rotation', '06-01-2022', '06-01-2022'),
		(2, 1, 'Brake pad replacement', '12-12-2022', '12-13-2022'),
		(3, 4, 'Transmission flush', '02-14-2023', '02-16-2023'),
		(2, 2, 'Air conditioning repair', '02-22-2023', '02-25-2023');
SELECT * FROM service_ticket;

--Insert records into car_mechanic table
INSERT INTO car_mechanic (service_tkt_id, mechanic_id)
VALUES (1, 1),
		(2, 2),
		(3, 3),
		(4, 4);
SELECT * FROM car_mechanic ;	

--Insert records into service_part_inventory 
INSERT INTO service_part_inventory (part_name, description, price, quantity)
VALUES ('Oil filter', 'A filter designed to remove contaminants from engine oil', 20.99, 100),
       ('Tire', 'A ring-shaped covering that fits around a wheel', 100.00, 50),
       ('Brake pad', 'A flat component that presses against a rotating disc to slow or stop a vehicle', 50.00, 75),
       ('Transmission fluid', 'A specialized fluid that lubricates and cools the moving parts in a transmission', 15.99, 200),
       ('Air conditioning compressor', 'A mechanical pump that compresses refrigerant and circulates it through the air conditioning system', 200.00, 20);
SELECT * FROM service_part_inventory ;

--Insert records into service_invoice table
INSERT INTO service_invoice (service_tkt_id, part_id, invoice_date, amount)
VALUES (1, NULL, '06-01-2022', 100.00),
		(2, 3, '12-13-2022', 250.00),
		(3, 4, '02-16-2023', 350.00),
		(4, 5, '02-25-2023', 200.00);
SELECT * FROM service_invoice ;

--Insert records into service_record table
INSERT INTO service_record (service_tkt_id, car_id, description, service_invoice_id)
VALUES (1, 1, 'Performed oil change and tire rotation', 1),
		(2, 1, 'Replaced brake pads', 2),
		(3, 4, 'Flushed transmission', 3),
		(4, 2, 'Repaired air conditioning',4);
SELECT * FROM service_record ;

