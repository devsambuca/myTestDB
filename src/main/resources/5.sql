# # CREATE TEMPORARY TABLE customers_profit
# SELECT
#   customers.id as cust_id,
#   customers.name as cust_name,
#   projects.id as proj_id,
#   projects.name as proj_name,
#   projects.cost as profit
# FROM customers
#   CROSS JOIN  projects_customers on customers.id = projects_customers.cust_id
#   CROSS JOIN projects on projects_customers.proj_id = projects.id
# ORDER BY profit;
#
#
#
# SELECT
#   cust_name,
#   companies.name
# FROM customers_profit
# JOIN customers_company on customers_profit.cust_id = customers_company.cust_id
# JOIN companies on companies.id = customers_company.company_id;
#
#
# SELECT
#   companies.name as company_name,
#   projects.name as project_name,
#   min(projects.cost) as min_profit
# FROM companies
# JOIN projects_companies on companies.id = projects_companies.company_id
# JOIN projects on projects_companies.proj_id = projects.id
# GROUP BY companies.name;
#
# SELECT
#   companies.*,
#   projects.name,
#   projects.cost
# FROM companies
# JOIN projects_companies on companies.id = projects_companies.company_id
# JOIN projects on projects_companies.proj_id = projects.id;

CREATE TEMPORARY TABLE temp_table
SELECT
  cust_id,
  company_id,
  sum(cost) as profit
FROM(SELECT
        p.*,
        projects_customers.cust_id,
  projects_companies.company_id
      FROM projects p
        JOIN projects_customers on p.id = projects_customers.proj_id
        JOIN projects_companies on p.id = projects_companies.proj_id) as temp1
GROUP BY company_id, cust_id;

SELECT
  cust_id,
  company_id,
  profit
FROM temp_table
  INNER JOIN (SELECT company_id, min(profit)
              FROM temp_table
              GROUP BY company_id)
    AS temp1 using(company_id)

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


# TRUNCATE TABLE skills_developers;
# TRUNCATE TABLE projects_companies;
# TRUNCATE TABLE customers_company;
# TRUNCATE TABLE projects_developers;
# TRUNCATE TABLE projects_customers;