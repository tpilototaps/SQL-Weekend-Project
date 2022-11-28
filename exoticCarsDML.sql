INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone_number,
    residing_address
)
VALUES(
    'Avril',
    'Davies',
    'adavies@email.com',
    '888-888-8888',
    '123 Roswell St.'
);

INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone_number,
    residing_address
)
VALUES(
    'Tapiwa',
    'Piloto',
    'tpiloto@email.com',
    '999-999-9999',
    '123 Roswell St.'
);

INSERT INTO car_inventory(
  customer_id,
  make,
  model,
  year
  
)
VALUES(
    1,
    'Lamborghini',
    'Sesto Elemento',
    '2012'
);

INSERT INTO car_inventory(
  customer_id,
  make,
  model,
  year
  
)
VALUES(
    1,
    'Lamborghini',
    'Huracan Perfomante',
    '2015'
);

INSERT INTO service_car(
  make,
  model,
  year,
  vin_number,
  service_date
  
)
VALUES(
   'Lamborghini',
    'Veneno',
    '2013',
    '2343280985yjafu3473899723',
    '2022-11-23'
);

INSERT INTO service_car(
  make,
  model,
  year,
  vin_number,
  service_date
  
)
VALUES(
   'Lamborghini',
    'Murcialago',
    '2016',
    '5343480985yj8793458393023',
    '2022-11-23'
);

INSERT INTO mechanic(
  first_name,
  last_name
)
VALUES(
   'Samson',
   'Mberi'
);

INSERT INTO mechanic(
    first_name,
    last_name
)
VALUES(
   'Julias',
   'Gambe'
);

INSERT INTO salesperson(
    first_name,
    last_name
)
VALUES(
    'Tatenda',
    'Shereni'
);

INSERT INTO salesperson(
    first_name,
    last_name
)
VALUES(
    'David',
    'Rusape'
);

INSERT INTO invoice(
    issue_date,
    amount
)
VALUES(
    '2022-11-23',
    0
);

INSERT INTO invoice(
    issue_date,
    amount
)
VALUES(
    '2022-11-26',
    0
);

INSERT INTO service_ticket(
    issue_date
)
VALUES(
    '2022-11-23'
);

INSERT INTO service_ticket(
    issue_date
)
VALUES(
    '2022-11-26'
);
