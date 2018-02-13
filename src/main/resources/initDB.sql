# /*Create table developers*/
#
# CREATE TABLE developers (
#   id   INT          NOT NULL PRIMARY KEY,
#   name VARCHAR(100) NOT NULL
# );
#
# /*Create table skills*/
#
# CREATE TABLE skills (
#   id   INT          NOT NULL PRIMARY KEY,
#   name VARCHAR(100) NOT NULL
# );
#
# /*Create table projects*/
#
# CREATE TABLE projects (
#   id   INT          NOT NULL PRIMARY KEY,
#   name VARCHAR(100) NOT NULL
# );
#
# /*Create table companies*/
#
# CREATE TABLE companies (
#   id   INT          NOT NULL PRIMARY KEY,
#   name VARCHAR(100) NOT NULL
# );
#
# /*Create table customers*/
#
# CREATE TABLE customers (
#   id      INT          NOT NULL PRIMARY KEY,
#   name    VARCHAR(100) NOT NULL,
#   address VARCHAR(100) NOT NULL
# );
#
# /*Create table skill_developers with links*/
#
# CREATE TABLE skills_developers (
#   dev_id    INT NOT NULL,
#   sk_id     INT NOT NULL,
#   FOREIGN KEY (dev_id) REFERENCES developers (id),
#   FOREIGN KEY (sk_id) REFERENCES skills (id)
# );
#
# /*Create table projects_developers with links*/
#
CREATE TABLE projects_developers (
  proj_id     INT NOT NULL,
  dev_id      INT NOT NULL,
  FOREIGN KEY (proj_id) REFERENCES projects (id),
  FOREIGN KEY (dev_id) REFERENCES developers (id)
);
#
# /*Create table projects_companies with links*/
#
# CREATE TABLE projects_companies (
#   proj_id         INT NOT NULL,
#   company_id      INT NOT NULL,
#   FOREIGN KEY (proj_id) REFERENCES projects (id),
#   FOREIGN KEY (company_id) REFERENCES companies (id)
# );
#
# /*Create table projects_customers with links*/
#
# CREATE TABLE projects_customers (
#   proj_id      INT NOT NULL,
#   cust_id      INT NOT NULL,
#   FOREIGN KEY (proj_id) REFERENCES projects (id),
#   FOREIGN KEY (cust_id) REFERENCES customers (id)
# );
