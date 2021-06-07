use skillacademy;

#memanggil tabel dengan category Handphone
SELECT*FROM products
WHERE category = 'Handphone';

#memanggil tabel dengan harga lebih dari/sama dengan 5jt
SELECT*FROM products
WHERE price >= 5000000;

#UNION
#menyatukan tabel tanpa duplikat
SELECT*FROM products
WHERE category = 'Handphone'
UNION
SELECT*FROM products
WHERE price >= 5000000;

#menyatukan tabel dg duplikat
SELECT*FROM products
WHERE category = 'Handphone'
UNION ALL
SELECT*FROM products
WHERE price >= 5000000;

#mengurutkan
SELECT*FROM products
WHERE category = 'Handphone'
UNION ALL
SELECT*FROM products
WHERE price >= 5000000
ORDER BY product_id;

#membuat tabel baru
CREATE TABLE virtual_products(
product_id VARCHAR(100),
name VARCHAR(100),
category VARCHAR(100),
type VARCHAR(100));

#mengisi tabel
INSERT INTO virtual_products VALUES
(1,'pulsa','phone','Prepaid'),
(2,'paket data','phone','Prepaid'),
(3,'token listrik','electric','Prepaid'),
(4,'tagihan listrik','electric','Postpaid'),
(5,'tagihan telepon','phone','Postpaid');

#menggabungkan 2 produk pada tabel
SELECT
product_id,
name,
category
FROM products
UNION
SELECT
product_id,
name,
category
FROM virtual_products
;

#menambah product type
SELECT
product_id,
'products' AS product_type,
name,
category
FROM products
UNION
SELECT
product_id,
'virtual_products' AS product_type,
name,
category
FROM virtual_products
;

#menambah product type
SELECT
product_id,
'products' AS product_type,
name,
category
FROM products
UNION ALL
SELECT
product_id,
'virtual_products' AS product_type,
name,
category
FROM virtual_products
;

#JOIN
#membuat tabel baru
CREATE TABLE transaction(
transaction_id VARCHAR(100),
date DATE,
user_id VARCHAR(100),
product_type VARCHAR(100),
product_id VARCHAR(100),
quality VARCHAR(100),
amount VARCHAR(100));

#mengisi tabel
INSERT INTO transaction VALUES
(1,'2019-01-01',1,'products',5,2,18000000),
(2,'2019-01-02',2,'products',3,1,5000000),
(3,'2019-01-02',2,'products',8,1,1500000),
(4,'2019-01-02',3,'products',3,1,5000000),
(5,'2019-01-02',2,'virtual_products',1,1,100000),
(6,'2019-01-03',3,'products',4,1,5000000),
(7,'2019-01-03',4,'products',10,2,20000000),
(8,'2019-01-03',4,'virtual_products',4,1,85000),
(9,'2019-01-03',1,'products',3,1,5000000),
(10,'2019-01-03',5,'virtual_products',1,1,30000),
(11,'2019-01-04',1,'virtual_products',1,1,50000),
(12,'2019-01-04',1,'virtual_products',3,1,100000),
(13,'2019-01-04',6,'products',3,5,25000000),
(14,'2019-01-04',7,'virtual_products',2,1,50000),
(15,'2019-01-04',7,'virtual_products',5,1,80000);

#menggabungkan tabel
SELECT*FROM transaction t
JOIN products p ON t.product_id = p.product_id AND t.product_type = 'products'
;

#menggabungkan tabel
SELECT
t.*,
p.name AS product_name
FROM transaction t
JOIN products p ON t.product_id = p.product_id AND t.product_type = 'products'
;

#menambahkan LEFT JOIN
SELECT
t.*,
p.name AS product_name
FROM transaction t
LEFT JOIN products p ON t.product_id = p.product_id AND t.product_type = 'products'
;

#menambahkan RIGHT JOIN
SELECT
t.*,
p.name AS product_name
FROM transaction t
RIGHT JOIN products p ON t.product_id = p.product_id AND t.product_type = 'products'
;

#menghubungkan tabel transaksi dan products juga virtual product
SELECT
t.*,
ap.name AS product_name
FROM transaction t
JOIN
(
SELECT
product_id,
'products' AS product_type,
name
FROM products
UNION ALL
SELECT
product_id,
'virtual_products' AS product_type,
name
FROM virtual_products
) ap ON ap.product_id = t.product_id AND ap.product_type = t.product_type
;
