CREATE TABLE product(product_ID INT,product_name VARCHAR(30),Selling_price DECIMAL(10,2))
SELECT * FROM product
INSERT INTO product(product_ID,product_name,Selling_price) VALUES (1,'product A',100.00),(2,'product B',150.00),(1,'product A',120),(3,'product c',200 ),(2,'product B',180),(1,'product A',90),(3,'product c',120)
DROP TABLE Product
SELECT product_name,round( avg( selling_price),6)FROM product GROUP BY product_name
DROP TABLE product
CREATE TABLE product(product_ID INT,product_name VARCHAR(30),Selling_price DECIMAL(10,2))
INSERT INTO product(product_ID,product_name,Selling_price) VALUES (1,'product A',100.00),(2,'product B',150.00),(1,'product A',120),(3,'product c',200 ),(2,'product B',180),(1,'product A',90),(3,'product c',210)

