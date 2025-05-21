CREATE  TABLE emails(id INT,namess VARCHAR (20),email VARCHAR (50),phone NUMERIC)
INSERT INTO emails(id,namess,email,phone)
VALUES (1,'rahul','rahul@example.com',9839473902),(2,'rohit','rohit@example.com',9883782971),(3,'suresh','rahul@example.com',7654321098),(4,'manish','manish@example.com',8927394619),(5,'amit','amit@example.com',9399303840),(6,'rahul','rahul@example.com',9737466147);
 SELECT * FROM emails
 
 SELECT DISTINCT ON (email)* FROM emails ORDER BY email
 
