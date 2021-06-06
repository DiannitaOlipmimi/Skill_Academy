-- membuat database
CREATE DATABASE skillacademy;

-- menggunakan database
USE skillacademy;

-- membuat tabel
CREATE TABLE products(
product_id INTEGER(100) NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
category VARCHAR(100) NOT NULL,
price VARCHAR(100) NOT NULL,
stock VARCHAR(100) NOT NULL);

-- memasukan data ke tabel
INSERT INTO products VALUES
(1,'HP A','Handphone',2000000,8),
(2,'Laptop B','Computer',7000000,3),
(3,'HP C','Handphone',5000000,0),
(4,'PC D','Computer',5000000,2),
(5,'HP E','Handphone',9000000,5),
(6,'Laptop F','Computer',16800000,3),
(7,'TV G','TV',4000000,5),
(8,'TV H','TV',1500000,13),
(9,'Laptop I','Computer',23000000,2),
(10,'HP J','Handphone',10000000,6);

-- menampilkan isi tabel
DESC products;