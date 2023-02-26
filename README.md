Car Dealership Database
Database design for a car dealership, including tables for salespeople, customers, car inventory, invoices, car mechanic, service tickets, 
mechanics, service parts inventory, service records, and service invoices.
Table Descriptions
sales_person
This table stores information about the dealership's salespeople, including their ID, first name, last name, email address, phone number, 
and hiring date.
customer
This table stores information about the dealership's customers, including their ID, first name, last name, email address, phone number, and 
billing information.
car inventory
This table stores information about the dealership's inventory of cars, including the car's ID, make, model, year, new/used status, serial 
number, price and whether or not the car has been sold.
invoice
This table stores information about the invoices generated for each car sold, including the invoice's ID, salesperson ID, customer ID, car ID,
sale date, and sale amount.
service_ticket
This table stores information about each service ticket generated when a customer brings a car in for service. It includes the ticket's ID, 
customer ID, car ID, description of the service needed, and dates the car was checked in and checked out.
mechanic
This table stores information about each mechanic working at the dealership, including their ID, first name, last name, email address, phone number, 
and hiring date.
car mechanic
This table stores information about mechanic worked on a service ticket. It includes car mechanic ID, Service ticket ID and mechanic ID.
service_part_inventory
This table stores information about the inventory of service parts at the dealership, including the part's ID, name, description, price, and quantity.
service_record
This table stores information about each service record generated when a car is serviced. It includes the record's ID, service ticket ID, car ID, 
description of the service performed, and cost.
service_invoice
This table stores information about each service invoice generated for services performed on a car. It includes the invoice's ID, service ticket ID, 
part ID, invoice date, and amount charged.
ER Diagram
A visual representation of the relationships between these tables can be found in the ERD.png file in this repository.
Additional Information
This database design is based on the following business rules:
* A salesperson may sell many cars, but each car is sold by only one salesperson.
* A customer may buy many cars, but each car is purchased by only one customer.
* A salesperson writes a single invoice for each car he or she sells.
* A customer gets an invoice for each car he or she buys.
* A customer may come in just to have his or her car serviced; that is, a customer need not buy a car to be classified as a customer.
* When a customer takes one or more cars in for repair or service, one service ticket is written for each car.
* The car dealership maintains a service history for each of the cars serviced. The service records are referenced by the car’s serial number.
* A car brought in for service can be worked on by many mechanics, and each mechanic may work on many cars.
