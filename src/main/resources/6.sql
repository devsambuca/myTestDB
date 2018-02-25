/*Вычислить, среднюю ЗП программистов в проекте,
который приносит наименьшую прибыль.*/

SELECT avg(developar_salary)
FROM (
       SELECT
         developers.name   AS developer_name,
         developers.salary AS developar_salary,
         projects.name     AS project_name,
         projects.cost     AS profit
       FROM projects
         INNER JOIN projects_developers ON projects.id = projects_developers.proj_id
         JOIN developers ON developers.id = projects_developers.dev_id
       WHERE projects.cost = (SELECT min(projects.cost)
                              FROM projects)) AS alltable;









