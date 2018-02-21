# SELECT
#   developers.name,
#   projects.name,
#   projects.cost
# FROM
#   developers
#   INNER JOIN projects_developers ON developers.id = projects_developers.dev_id
#   JOIN projects ON projects.id = projects_developers.proj_id;


SELECT
  *,
  min(
  cost)
FROM projects
ORDER BY name


