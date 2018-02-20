/*Найти клиента (customer), который приносит меньше всего прибыли
компании (company) для каждой из компаний*/

CREATE TEMPORARY TABLE profit_t
  SELECT
    customer_id,
    companies_id,
    sum(cost) AS profit
  FROM
    (SELECT
       projects_customers.cust_id    AS customer_id,
       projects_companies.company_id AS companies_id,
       projects.cost                 AS cost
     FROM projects
       INNER JOIN projects_customers ON projects.id = projects_customers.proj_id
       INNER JOIN projects_companies ON projects.id = projects_companies.proj_id) AS temporarytable
  GROUP BY companies_id, customer_id;


CREATE TEMPORARY TABLE min_profit
  SELECT
    companies_id,
    min(profit) AS minimun
  FROM profit_t
  GROUP BY companies_id;

SELECT
  profit_t.customer_id,
  customers.name AS customer_name,
  profit_t.companies_id,
  companies.name AS company_name,
  profit_t.profit
FROM profit_t
  INNER JOIN min_profit ON profit_t.profit = min_profit.minimun
                           AND profit_t.companies_id = min_profit.companies_id
  INNER JOIN customers ON profit_t.customer_id = customers.id
  INNER JOIN companies ON profit_t.companies_id = companies.id;

# DROP TEMPORARY TABLE profit_t;
# DROP TEMPORARY TABLE min_profit;