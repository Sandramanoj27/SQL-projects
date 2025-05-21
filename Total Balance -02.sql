CREATE TABLE bankaccount(account_no INT,accountholder_name VARCHAR(20),transaction_date date,transaction_type VARCHAR (20),Transaction_amount DECIMAL (10,2))
SELECT * FROM bankaccount
INSERT INTO bankaccount(account_no,accountholder_name,transaction_date,transaction_type,transaction_amount) VALUES(1001,'Ravi sharma','2023-07-01','deposit',5000.00),(1001,'Ravi sharma','2023-07-05','withdrawal',1000.00),(1001,'Ravi sharma','2023-07-10','deposit',2000.00),(1002,'priya gupta','2023-07-02','deposit',3000.00),(1002,'priya gupta','2023-07-08','withdrawal',500.00),(1003,'Vikram Patel','2023-07-04','deposit',10000.00),(1003,'Vikram Patel','2023-07-09','withdrawal',2000.00)
DROP TABLE bankaccount
SELECT * FROM bankaccount
SELECT account_no,accountholder_name,(sum (CASE WHEN transaction_type='deposit' THEN transaction_amount ELSE 0 END)-sum (CASE WHEN transaction_type= 'withdrawal'THEN transaction_amount ELSE 0 END)) AS Total_balance  FROM bankaccount GROUP BY account_no,accountholder_name ORDER BY account_no

 