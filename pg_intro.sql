CREATE DATABASE pg_intro;
USE pg_intro;

CREATE TABLE customer (cust_id SMALLINT, first_name VARCHAR(30), last_name VARCHAR(30), CONSTRAINT pk_customer PRIMARY KEY (cust_id));
INSERT INTO customer (cust_id, first_name, last_name) VALUES (1, 'John', 'Doe');
INSERT INTO customer (cust_id, first_name) VALUES (2, 'John');
UPDATE customer SET first_name = 'Noer', last_name = 'Sun' WHERE cust_id = 2;

CREATE TABLE product (prod_cd VARCHAR(3), name VARCHAR(20), CONSTRAINT pk_product PRIMARY KEY (prod_cd));
INSERT INTO product (prod_cd, name) VALUES ('CHK', 'Checking');
INSERT INTO product (prod_cd, name) VALUES ('SAV', 'saving');
INSERT INTO product (prod_cd, name) VALUES ('MM', 'Money Market');
INSERT INTO product (prod_cd, name) VALUES ('LOC', 'Line of Credit');
UPDATE product SET name = 'Saving' WHERE prod_cd = 'SAV';
