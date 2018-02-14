SELECT developers.*,projects.* FROM developers,projects_developers,projects
WHERE projects.id = projects_developers.proj_id AND developers.id = projects_developers.dev_id;

SELECT projects.name, salary as AllSales FROM developers,projects_developers,projects
WHERE projects.id = projects_developers.proj_id AND developers.id = projects_developers.dev_id GROUP BY projects.name;






