CREATE TEMPORARY TABLE profit2
SELECT
  customers.id,
  customers.name AS customer_name,
  projects.id as prog_id,
  projects.name,
  projects.cost as profit
FROM customers
  LEFT JOIN projects_customers on (projects_customers.cust_id = customers.id )
  JOIN projects on projects_customers.proj_id = projects.id
ORDER BY projects.cost;



# SELECT
#   customers.id,
#   customers.name AS customer_name,
#   companies.name,
#   sum(projects.cost) as profit
# FROM companies
#   JOIN projects_companies
#   JOIN projects_customers
#   LEFT JOIN projects on (companies.id = projects_companies.company_id)
#   JOIN customers on projects_customers.cust_id = company_id
# ;







#
#
# SELECT developers.*,projects.* FROM developers,projects_developers,projects
# WHERE projects.id = projects_developers.proj_id AND developers.id = projects_developers.dev_id;

# CREATE TEMPORARY TABLE profit
#   SELECT
#     companies.name AS company_name,
#
#     sum(projects.cost) AS profit_sum
#   FROM companies
#     INNER JOIN projects_companies ON companies.id = projects_companies.company_id
#
#     INNER JOIN projects on projects.id = projects_companies.proj_id
#   GROUP BY company_name;