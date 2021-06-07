#Data Summarization and Aggregation by using SQL

#ORDER BY

#mengurutdan data berdasarkan stock (kecil-besar)
SELECT*FROM products
ORDER BY stock ASC;

#mengurutdan data berdasarkan stock (besar-kecil)
SELECT*FROM products
ORDER BY stock DESC;

#melihat 5 top 
SELECT*FROM products
ORDER BY stock DESC
LIMIT 5;

#COUNT

#menghitung baris/data
SELECT
COUNT(*)
FROM products;

#menghitung baris/data pada category
SELECT
COUNT(category)
FROM products;

#menghitung banyaknya kategori pada field
SELECT
COUNT(DISTINCT category)
FROM products;

#kategori pada field category
SELECT
DISTINCT category
FROM products;

#menghitung min, max, sum, avg
SELECT
MIN(Stock),
MAX(Stock),
SUM(Stock),
AVG(Stock)
FROM products;

#menggunakan alias
SELECT
MIN(Stock) AS min_stock,
MAX(Stock) AS max_stock,
SUM(Stock) AS total_stock,
AVG(Stock) AS average_stock
FROM products;

#GROUP BY

#mengelompokan dan menghitung berdasarkan kategori
SELECT
category,
COUNT(*) AS n_products
FROM products
GROUP BY category;

#menambahkan total dan rata-rata
SELECT
category,
COUNT(*) AS n_products,
SUM(stock) AS total_stock,
AVG(price) AS avg_price
FROM products
GROUP BY category;

#CASE
#kondisional dan mengelompokan
SELECT
*,
CASE
WHEN price > 10000000 THEN 'very expensive'
WHEN price > 5000000 THEN 'expensive'
ELSE 'cheap'
END AS price_type
FROM products;

#mengetahui jumlah dan total juga kategori harga
SELECT
CASE
WHEN price > 10000000 THEN 'very expensive'
WHEN price > 5000000 THEN 'expensive'
ELSE 'cheap'
END AS price_type,
COUNT(*) AS n_products,
SUM(stock) AS total_stock
FROM products
GROUP BY price_type;

#menambah grup by category
SELECT
category,
CASE
WHEN price > 10000000 THEN 'very expensive'
WHEN price > 5000000 THEN 'expensive'
ELSE 'cheap'
END AS price_type,
COUNT(*) AS n_products,
SUM(stock) AS total_stock
FROM products
GROUP BY category,price_type;