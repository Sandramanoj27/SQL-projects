CREATE TABLE products (product_name VARCHAR (20),price DECIMAL (10,2))
INSERT INTO products (product_name,price)

       VALUES('apple',2.5),
              ('banana',1.50),
              ('orange',3.00),
              ('mango',2.00);
              SELECT * FROM products 
        
DROP TABLE products 
CREATE TABLE orders(order_id INT ,product_id INT,quantity INT ,sales DECIMAL (10,2))
INSERT INTO orders (order_id,product_id,quantity,sales) VALUES (1,1,10,25.00),(2,1,5,12.50),(3,2,8,12.00),(4,3,12,36.00),(5,4,6,12.00);
SELECT * FROM orders 



ALTER TABLE products 
ADD pid INT;  

UPDATE products SET pid=1 WHERE product_name ='apple'
UPDATE products SET pid=2 WHERE product_name ='banana'
UPDATE products SET pid=3 WHERE product_name ='orange'
UPDATE products SET pid=1 WHERE product_name ='mango'

DROP TABLE products

SELECT * FROM orders 
SELECT products.product_name,sum(orders.sales)AS Total_revenue FROM products 
LEFT OUTER JOIN orders 
ON products.pid=orders.product_id GROUP BY product_name ORDER BY Total_revenue DESC 
