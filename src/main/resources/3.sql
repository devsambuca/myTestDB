/*Вычислить общую ЗП всех Java разработчиков.*/

SELECT
  skills.name,
  sum(developers.salary) AS total
FROM skills
  JOIN skills_developers ON (skills.id = skills_developers.sk_id)
  JOIN developers ON (skills_developers.dev_id = developers.id)
WHERE skills.name = 'Java';