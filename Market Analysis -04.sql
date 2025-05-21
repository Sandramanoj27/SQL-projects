CREATE TABLE marketanalysis(customer_id INT,product_id VARCHAR(10),purchase_date date,quantity INT,revenue INT)
INSERT INTO marketanalysis(customer_id,product_id,purchase_date,quantity,revenue)
VALUES (1,'A','2023-01-01',5,100),
       (2,'B','2023-01-02',3,50),
       (3,'A','2023-01-03',2,30),
       (4,'C','2023-01-03',1,20),
       (1,'B','2023=01-04',4,80);
SELECT * FROM marketanalysis
SELECT sum(revenue) AS Total_revenue FROM marketanalysis

SELECT product_id,sum (quantity)AS Total_quantity ,sum (revenue)AS Total_revenue FROM marketanalysis GROUP BY product_id ORDER BY product_id ASC

SELECT customer_id,sum(revenue) AS Total_revenue FROM marketanalysis GROUP BY customer_id ORDER BY customer_id ASC       
   
       


