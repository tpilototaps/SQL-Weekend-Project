CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phone_number VARCHAR(15),
    residing_address VARCHAR
);

CREATE TABLE service_car(
    service_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    make VARCHAR,
    model VARCHAR,
    year VARCHAR,
    vin_number VARCHAR,
    service_date TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE car_inventory(
    car_inventory SERIAL PRIMARY KEY,
    customer_id INTEGER,
    salesperson_id INTEGER,
    make VARCHAR,
    model VARCHAR,
    year VARCHAR
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR (50) NOT NULL
);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    invoice_id INTEGER,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    salesperson_id INTEGER,
    issue_date TIMESTAMP,
    amount INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    mechanic_id INTEGER,
    issue_date TIMESTAMP,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);

ALTER TABLE service_car
ADD COLUMN service_ticket_id INTEGER;

ALTER TABLE service_car
ADD FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id);

ALTER TABLE car_inventory
ADD FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id);

ALTER TABLE salesperson
ADD FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id);

