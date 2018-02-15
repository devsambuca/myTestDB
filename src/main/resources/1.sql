/*Добавление разаработчикам поле (salary - зарплата).*/

ALTER TABLE developers ADD COLUMN salary DECIMAL NOT NULL;

/*Добавление зарплаты каждому разработчику */

UPDATE developers SET salary = 50000 WHERE id = 1;
UPDATE developers SET salary = 150000 WHERE id = 2;
UPDATE developers SET salary = 70000 WHERE id = 3;
UPDATE developers SET salary = 80000 WHERE id = 4;
UPDATE developers SET salary = 100000 WHERE id = 5;
UPDATE developers SET salary = 125000 WHERE id = 6;
UPDATE developers SET salary = 85000 WHERE id = 7;
UPDATE developers SET salary = 135000 WHERE id = 8;
UPDATE developers SET salary = 115000 WHERE id = 9;



