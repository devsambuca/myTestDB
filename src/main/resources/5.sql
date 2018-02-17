SELECT
  customers.*,
  companies.name,
  projects.cost
FROM customers
  INNER JOIN projects_customers ON (projects_customers.cust_id = customers.id)
  INNER JOIN projects ON (projects.id = projects_customers.proj_id)
  INNER JOIN customers_company ON (customers_company.cust_id = customers.id)
  INNER JOIN companies ON (companies.id = customers_company.company_id)
ORDER BY companies.name;

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