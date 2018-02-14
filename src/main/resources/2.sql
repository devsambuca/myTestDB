/*Нахождение самого дорогого проекта (исходя из ЗП разработчиков).*/

SELECT
  projects.name,
  sum(developers.salary) AS total
FROM projects
  JOIN projects_developers ON (projects.id = projects_developers.proj_id)
  JOIN developers ON (projects_developers.dev_id = developers.id)
GROUP BY projects.name
ORDER BY total DESC
LIMIT 1;







