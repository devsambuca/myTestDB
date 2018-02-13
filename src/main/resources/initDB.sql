/*Create table developers*/

CREATE TABLE developers (
  dev_id   INT          NOT NULL PRIMARY KEY,
  dev_name VARCHAR(100) NOT NULL
);

/*Create table skills*/

CREATE TABLE skills (
  sk_id   INT          NOT NULL PRIMARY KEY,
  sk_name VARCHAR(100) NOT NULL
);

/*Create table skill_developers with links*/

CREATE TABLE skills_developers (
  sk_dev_id INT NOT NULL PRIMARY KEY,
  dev_id    INT NOT NULL,
  sk_id     INT NOT NULL,
  FOREIGN KEY (dev_id) REFERENCES developers (dev_id),
  FOREIGN KEY (sk_id) REFERENCES skills (sk_id)
);

/*Create table projects_developers with links*/

CREATE TABLE projects_developers (
  proj_dev_id INT NOT NULL PRIMARY KEY,
  dev_id    INT NOT NULL,
  proj_id     INT NOT NULL,
  FOREIGN KEY (dev_id) REFERENCES developers (dev_id),
  FOREIGN KEY (proj_id) REFERENCES skills (proj_id)
);



/*Create table projects*/

CREATE TABLE projects (
  proj_id   INT          NOT NULL PRIMARY KEY,
  proj_name VARCHAR(100) NOT NULL
);

/*Create table companies*/

CREATE TABLE companies (
  company_id   INT          NOT NULL PRIMARY KEY,
  company_name VARCHAR(100) NOT NULL
);

/*Create table projects_companies with links*/

CREATE TABLE projects_companies (
  proj_company_id INT NOT NULL PRIMARY KEY,
  proj_id         INT NOT NULL,
  company_id      INT NOT NULL,
  FOREIGN KEY (proj_id) REFERENCES projects (proj_id),
  FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

/*Create table customers*/

CREATE TABLE customers (
  cust_id   INT          NOT NULL PRIMARY KEY,
  cust_name VARCHAR(100) NOT NULL,
  cust_address VARCHAR(100) NOT NULL
);

/*Create table projects_customers with links*/

CREATE TABLE projects_customers (
  proj_cust_id INT NOT NULL PRIMARY KEY,
  proj_id         INT NOT NULL,
  cust_id      INT NOT NULL,
  FOREIGN KEY (proj_id) REFERENCES projects (proj_id),
  FOREIGN KEY (cust_id) REFERENCES customers (cust_id)
);


