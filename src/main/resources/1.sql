/*Добавление разаработчикам поле (salary - зарплата).*/

ALTER TABLE developers ADD COLUMN salary DECIMAL NOT NULL;

/*Добавление зарплаты каждому разработчику */

UPDATE developers SET salary = 50000 WHERE id = 1;
UPDATE developers SET salary = 150000 WHERE id = 2;
UPDATE developers SET salary = 70000 WHERE id = 3;
UPDATE developers SET salary = 80000 WHERE id = 4;
UPDATE developers SET salary = 125000 WHERE id = 5;


