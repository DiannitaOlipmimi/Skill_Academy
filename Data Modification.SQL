 #CRUD, terdapat 2 cara menggunakan query dan memasukan csv
#memasukan data
INSERT INTO products
(name,category,price,stock)
VALUES ('HP K','Handphone',1000000,7);

INSERT INTO products
(name,category,price,stock)
VALUES ('HP K','Handphone',1000000,0);

#update data stock
UPDATE products
SET stock = 4
WHERE product_id = 11;

#update data category
UPDATE products
SET category = 'Television'
WHERE category = 'TV';

SELECT*FROM products;

#mengganti NULL dengan 0
UPDATE products
SET stock = 0
WHERE stock is NULL;

#DELETE atau menghapus
#menghapus baris dengan stock 0
DELETE FROM products
WHERE stock = 0;

#menghapus catgeory berisi Computer
DELETE FROM products
WHERE category = 'Computer';

#menghapus categeory Computer dengan harga kurang dari 10000000
DELETE FROM products
WHERE category = 'Computer' AND price < 10000000;

SELECT*FROM products;

#menghapus tabel
DROP TABLE products;

