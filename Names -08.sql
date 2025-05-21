CREATE TABLE namess (namess VARCHAR(20))
INSERT INTO namess (namess)
VALUES('rAVI kUMAR'),('priya sharma'),('amit PATEL'),('NEHA gupta');
SELECT * FROM namess


UPDATE namess
SET namess = 'Ravi Kumar'
WHERE namess = 'rAVI kUMAR';

UPDATE namess
SET namess = 'Priya Sharma'
WHERE namess = 'priya sharma';

UPDATE namess
SET namess = 'Amit Patel'
WHERE namess = 'amit PATEL';

UPDATE namess
SET namess = 'Neha Gupta'
WHERE namess = 'NEHA gupta';