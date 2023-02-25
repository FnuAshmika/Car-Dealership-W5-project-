--SALES PERSON TABLE
CREATE TABLE sales_person (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(15),
    hiring_date DATE
);

--CUSTOMER TABLE
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(15),
    billing_info VARCHAR(50) NOT NULL
);

--CAR TABLE
CREATE TABLE car_inventory (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    "year" INTEGER,
    price DECIMAL,
    serial_number VARCHAR(50),
    new_or_used VARCHAR(10),
    sold BOOLEAN
);

--SALE INVOICE 
CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    sale_date DATE,
    sale_amount DECIMAL,
    FOREIGN KEY (salesperson_id) REFERENCES sales_person (salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (car_id) REFERENCES car_inventory (car_id)
);

--MECHANIC INFO
CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    working_since DATE
);

--CAR PARTS INVENTORY
CREATE TABLE service_part_inventory (
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR(50),
    description TEXT,
    price DECIMAL,
    quantity INTEGER
);

--SERVICE TICKET
CREATE TABLE service_ticket (
    service_tkt_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    description TEXT,
    date_in DATE,
    date_out DATE,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (car_id) REFERENCES car_inventory (car_id)
);

--MECHANICS WORKING ON SERVICE TICKETS
CREATE TABLE car_mechanic (
    car_mechanic_id SERIAL PRIMARY KEY,
    service_tkt_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,
    FOREIGN KEY (service_tkt_id) REFERENCES service_ticket (service_tkt_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic (mechanic_id)
);

--INVOICE FOR SERVICE
CREATE TABLE service_invoice (
    service_invoice_id SERIAL PRIMARY KEY,
    service_tkt_id INTEGER NOT NULL,
    part_id INTEGER,
    invoice_date DATE,
    amount DECIMAL,
    FOREIGN KEY (service_tkt_id) REFERENCES service_ticket (service_tkt_id),
    FOREIGN KEY (part_id) REFERENCES service_part_inventory (part_id)
);

--SERVICE RECORD
CREATE TABLE service_record (
    record_id SERIAL PRIMARY KEY,
    service_tkt_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    description TEXT,
    service_invoice_id INTEGER,
    FOREIGN KEY (service_tkt_id) REFERENCES service_ticket (service_tkt_id),
    FOREIGN KEY (car_id) REFERENCES car_inventory (car_id),
    FOREIGN KEY (service_invoice_id) REFERENCES service_invoice (service_invoice_id)
);
