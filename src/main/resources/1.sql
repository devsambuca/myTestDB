/*Добавление разаработчикам поле (salary - зарплата).*/

ALTER TABLE developers ADD COLUMN salary DECIMAL NOT NULL;

/*Добавление зарплаты каждому разработчику */

UPDATE developers SET salary = 50000 WHERE dev_id = 1;
UPDATE developers SET salary = 150000 WHERE dev_id = 2;
UPDATE developers SET salary = 70000 WHERE dev_id = 3;
UPDATE developers SET salary = 80000 WHERE dev_id = 4;
UPDATE developers SET salary = 125000 WHERE dev_id = 5;


