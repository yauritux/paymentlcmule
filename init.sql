CREATE DATABASE IF NOT EXISTS lcm_poc_v1;
USE lcm_poc_v1;
CREATE TABLE merchant_service_configs(
id varchar(100) NOT NULL PRIMARY KEY,
merchant_id varchar(100) NOT NULL,
merchant_name varchar(100) NOT NULL,
service_id varchar(100) NOT NULL,
service_name varchar(100) NOT NULL,
service_endpoint varchar(1000) NOT NULL,
service_method enum('GET', 'POST', 'PUT', 'PATCH', 'DELETE') default 'GET',
product_type varchar(50) NOT NULL,
instrument_type varchar(5),
countries varchar(1000)
);

INSERT INTO merchant_service_configs values('8282c729-19c7-11ec-83c1-0242ac110003', '8282c796-19c7-11ec-83c1-0242ac110003', 'TableZ', '8282c7dc-19c7-11ec-83c1-0242ac110003', 'Get Customer Account', 'http://localhost:3000/payments/customers/{id}', 'GET', 'Payments', null, 'AE,IN,ID,AU,MY,US');
INSERT INTO merchant_service_configs values('ef201096-19db-11ec-83c1-0242ac110003', '8282c796-19c7-11ec-83c1-0242ac110003', 'TableZ', 'ef20125e-19db-11ec-83c1-0242ac110003', 'Lulu Pay', 'http://localhost:3000/payments/lulupay', 'POST', 'Payments', null, 'AE,IN,ID,AU,MY,US');
INSERT INTO merchant_service_configs values('f25b24fc-19dc-11ec-83c1-0242ac110003', '8282c796-19c7-11ec-83c1-0242ac110003', 'TableZ', 'f25b253e-19dc-11ec-83c1-0242ac110003', 'Invoice', 'http://localhost:3000/payments/invoices', 'POST', 'Payments', null, 'AE,IN,ID,AU,MY,US');
INSERT INTO merchant_service_configs values('382014c0-1f96-11ec-8aad-0242ac110002', '8282c796-19c7-11ec-83c1-0242ac110003', 'TableZ', '38201557-1f96-11ec-8aad-0242ac110002', 'iPay', 'http://localhost:3000/payments/ipay', 'POST', 'Payments', null, 'AE,IN,ID,AU,MY,US');
