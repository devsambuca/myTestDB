/*Добавление разработчиков*/

# INSERT INTO developers (dev_id, dev_name) VALUES (1,'Kuznecov Ivan');
# INSERT INTO developers (dev_id, dev_name) VALUES (2,'Fominykh Vladimir');
# INSERT INTO developers (dev_id, dev_name) VALUES (3,'Glazirin Evgeniy');
# INSERT INTO developers (dev_id, dev_name) VALUES (4,'Nikiforov Sergey');
# INSERT INTO developers (dev_id, dev_name) VALUES (5,'Zhdanov Konstantin');

/*Добавление навыка разработчика*/

# INSERT INTO skills (sk_id, sk_name) VALUES (1,'Java');
# INSERT INTO skills (sk_id, sk_name) VALUES (2,'C++');
# INSERT INTO skills (sk_id, sk_name) VALUES (3,'PHP');
# INSERT INTO skills (sk_id, sk_name) VALUES (4,'JS');
# INSERT INTO skills (sk_id, sk_name) VALUES (5,'Excel');

/*Добавление данных в таблицу навыки и разработчики*/

# INSERT INTO skills_developers (sk_dev_id, dev_id, sk_id) VALUES(1,1,5);
# INSERT INTO skills_developers (sk_dev_id, dev_id, sk_id) VALUES(2,2,1);
# INSERT INTO skills_developers (sk_dev_id, dev_id, sk_id) VALUES(3,3,2);
# INSERT INTO skills_developers (sk_dev_id, dev_id, sk_id) VALUES(4,3,4);
# INSERT INTO skills_developers (sk_dev_id, dev_id, sk_id) VALUES(5,4,3);
# INSERT INTO skills_developers (sk_dev_id, dev_id, sk_id) VALUES(6,5,4);

# ALTER TABLE developers ADD CONSTRAINT un_dev_id_constraint UNIQUE (dev_id);
# ALTER TABLE skills ADD CONSTRAINT un_sk_id_constraint UNIQUE (sk_id);
# ALTER TABLE skills_developers ADD CONSTRAINT un_sk_dev_id_constraint UNIQUE (sk_dev_id);

# SELECT * FROM developers JOIN skills_developers USING(dev_id);
# SELECT * FROM (developers JOIN skills_developers USING(dev_id)) JOIN skills USING (sk_id) WHERE developers.dev_name = 'Glazirin Evgeniy';
# SELECT dev_name, sk_name FROM (developers JOIN skills_developers USING(dev_id)) JOIN skills USING (sk_id) WHERE developers.dev_id = 3;
# SELECT * FROM (developers JOIN skills_developers USING(dev_id)) JOIN skills USING (sk_id) WHERE skills.sk_id = 4;

/*Добавление проектов в таблицу projects*/

# INSERT INTO projects (proj_id, proj_name) VALUES (1, 'Database');
# INSERT INTO projects (proj_id, proj_name) VALUES (2, 'Websait');
# INSERT INTO projects (proj_id, proj_name) VALUES (3, 'Blog');
# INSERT INTO projects (proj_id, proj_name) VALUES (4, 'Software "Lotus"');

/*Добавление компаний в таблицу companies*/

# INSERT INTO companies(company_id, company_name) VALUES (1, 'HP');
# INSERT INTO companies(company_id, company_name) VALUES (2, 'AK BARS BANK');
# INSERT INTO companies(company_id, company_name) VALUES (3, 'FrutoNyanya');
# INSERT INTO companies(company_id, company_name) VALUES (4, 'OAO "ZPP"');
# INSERT INTO companies(company_id, company_name) VALUES (5, 'TatNeft');

/*Добавление данных в таблицу компании и проекты*/

# INSERT INTO projects_companies(proj_company_id, proj_id, company_id) VALUES (1,2,1);
# INSERT INTO projects_companies(proj_company_id, proj_id, company_id) VALUES (2,1,3);
# INSERT INTO projects_companies(proj_company_id, proj_id, company_id) VALUES (3,4,4);
# INSERT INTO projects_companies(proj_company_id, proj_id, company_id) VALUES (4,3,1);
# INSERT INTO projects_companies(proj_company_id, proj_id, company_id) VALUES (5,3,3);
# INSERT INTO projects_companies(proj_company_id, proj_id, company_id) VALUES (6,2,5);
# INSERT INTO projects_companies(proj_company_id, proj_id, company_id) VALUES (7,4,2);

# ALTER TABLE companies ADD CONSTRAINT un_company_id_constraint UNIQUE (company_id);
# ALTER TABLE projects ADD CONSTRAINT un_proj_id_constraint UNIQUE (proj_id);
# ALTER TABLE projects_companies ADD CONSTRAINT un_proj_company_id_constraint UNIQUE (proj_company_id);

SELECT * FROM companies JOIN projects_companies USING(company_id);


