/*Добавление поля (cost - стоимость) в таблицу Projects .*/

ALTER TABLE projects ADD COLUMN cost INT NOT NULL;

/*Стоимость каждого проекта*/

UPDATE projects SET cost = 200000 WHERE id = 1;
UPDATE projects SET cost = 150000 WHERE id = 2;
UPDATE projects SET cost = 60000 WHERE id = 3;
UPDATE projects SET cost = 500000 WHERE id = 4;

