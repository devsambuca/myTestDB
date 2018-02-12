# CREATE TABLE developers (
#   dev_id   INT          NOT NULL PRIMARY KEY,
#   dev_name VARCHAR(100) NOT NULL
# );
#
# CREATE TABLE skills (
#   sk_id   INT          NOT NULL PRIMARY KEY,
#   sk_name VARCHAR(100) NOT NULL
# );
#
# CREATE TABLE skills_developers (
#   sk_dev_id INT NOT NULL PRIMARY KEY,
#   dev_id    INT NOT NULL,
#   sk_id     INT NOT NULL,
#   FOREIGN KEY (dev_id) REFERENCES developers (dev_id),
#   FOREIGN KEY (sk_id) REFERENCES skills (sk_id)
# );

# DROP TABLE developers;
# DROP  TABLE skills;
# DROP  TABLE skills_developers;

/*Create table projects*/
CREATE TABLE projects (
  proj_id INT NOT NULL PRIMARY KEY ,
  proj_name VARCHAR(100) NOT NULL
);

/*Create table companies*/
CREATE TABLE companies (
  company_id INT NOT NULL PRIMARY KEY ,
  company_name VARCHAR(100) NOT NULL
);

/*Create table projects_companies*/
CREATE TABLE projects_companies (
  proj_company_id INT NOT NULL PRIMARY KEY,
  proj_id    INT NOT NULL,
  company_id     INT NOT NULL,
  FOREIGN KEY (proj_id) REFERENCES projects (proj_id),
  FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

