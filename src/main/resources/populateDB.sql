# /*Добавление разработчиков*/
#
# INSERT INTO developers (id, name) VALUES (1, 'Kuznecov Ivan');
# INSERT INTO developers (id, name) VALUES (2, 'Fominykh Vladimir');
# INSERT INTO developers (id, name) VALUES (3, 'Glazirin Evgeniy');
# INSERT INTO developers (id, name) VALUES (4, 'Nikiforov Sergey');
# INSERT INTO developers (id, name) VALUES (5, 'Ivanov Konstantin');
# INSERT INTO developers (id, name) VALUES (6, 'Sidorov Kolya');
# INSERT INTO developers (id, name) VALUES (7, 'Zhdanov Konstantin');
# INSERT INTO developers (id, name) VALUES (8, 'Smirnov Andrey');
# INSERT INTO developers (id, name) VALUES (9, 'Krasnov Ilya');
#
# /*Добавление навыка разработчика*/
#
# INSERT INTO skills (id, name) VALUES (1, 'Java');
# INSERT INTO skills (id, name) VALUES (2, 'C++');
# INSERT INTO skills (id, name) VALUES (3, 'PHP');
# INSERT INTO skills (id, name) VALUES (4, 'JS');
# INSERT INTO skills (id, name) VALUES (5, 'Swift');
# INSERT INTO skills (id, name) VALUES (6, 'VBA');
# INSERT INTO skills (id, name) VALUES (7, 'Ruby');
# INSERT INTO skills (id, name) VALUES (8, 'SQL');
#
# /*Добавление проектов в таблицу projects*/
#
# INSERT INTO projects (id, name) VALUES (1, 'Database');
# INSERT INTO projects (id, name) VALUES (2, 'Websait');
# INSERT INTO projects (id, name) VALUES (3, 'Blog');
# INSERT INTO projects (id, name) VALUES (4, 'Software "Lotus"');
#
# /*Добавление компаний в таблицу companies*/
#
# INSERT INTO companies (id, name) VALUES (1, 'HP');
# INSERT INTO companies (id, name) VALUES (2, 'AK BARS BANK');
# INSERT INTO companies (id, name) VALUES (3, 'OAO "ZPP"');
# INSERT INTO companies (id, name) VALUES (4, 'TatNeft');
#
# /*Добавление данных о клиенте компании*/
#
# INSERT INTO customers (id, name, address) VALUES (1, 'Ilya Petrov', 'Moscow, Lomonosova 22-10');
# INSERT INTO customers (id, name, address)
# VALUES (2, 'Larisa Zvereva', 'Sankt-Peterburg, Lermontova 2-110');
# INSERT INTO customers (id, name, address) VALUES (3, 'Ekaterina Solovjeva', 'Samara, Ishpaya 52-5');
# INSERT INTO customers (id, name, address) VALUES (4, 'Galina Ganina', 'Yoshkar-Ola, Pushkina 16-3');
# INSERT INTO customers (id, name, address) VALUES (5, 'Aleksandr Korolen', 'Kazan, Dekabristov 1-89');
# INSERT INTO customers (id, name, address) VALUES (6, 'Maksim Petrov', 'Moscow, Zelenaya 24-11');
#
# /*Добавление данных в таблицу навыки разработчиков*/
#
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (1, 6);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (2, 1);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (2, 8);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (3, 3);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (3, 4);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (4, 4);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (5, 1);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (5, 4);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (6, 2);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (6, 6);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (6, 7);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (7, 4);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (8, 1);
# INSERT INTO skills_developers (dev_id, sk_id) VALUES (9, 5);
#
# /*Добавление данных в таблицу проекты разработчиков*/
#
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (1, 2);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (2, 5);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (3, 1);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (4, 1);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (3, 3);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (2, 4);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (1, 1);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (2, 2);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (3, 6);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (4, 7);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (3, 8);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (2, 9);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (4, 8);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (2, 9);
# INSERT INTO projects_developers (proj_id, dev_id) VALUES (2, 1);
#
# /*Добавление данных в таблицу проекты компаний*/
#
# INSERT INTO projects_companies (proj_id, company_id) VALUES (2, 1);
# INSERT INTO projects_companies (proj_id, company_id) VALUES (1, 3);
# INSERT INTO projects_companies (proj_id, company_id) VALUES (4, 4);
# INSERT INTO projects_companies (proj_id, company_id) VALUES (3, 1);
# INSERT INTO projects_companies (proj_id, company_id) VALUES (3, 3);
# INSERT INTO projects_companies (proj_id, company_id) VALUES (2, 3);
# INSERT INTO projects_companies (proj_id, company_id) VALUES (4, 2);
#
# /*Добавление данных в таблицу проекты клиентов*/
#
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (1, 1);
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (1, 2);
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (2, 3);
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (2, 6);
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (3, 5);
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (3, 4);
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (4, 2);
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (4, 1);
# INSERT INTO projects_customers (proj_id, cust_id) VALUES (1, 6);
#
# /*Добавление данных в таблицу клиенты компаний*/
#
INSERT INTO customers_company (cust_id, company_id) VALUES (1,4);
INSERT INTO customers_company (cust_id, company_id) VALUES (2,4);
INSERT INTO customers_company (cust_id, company_id) VALUES (3,3);
INSERT INTO customers_company (cust_id, company_id) VALUES (4,2);
INSERT INTO customers_company (cust_id, company_id) VALUES (5,1);
INSERT INTO customers_company (cust_id, company_id) VALUES (6,1);
INSERT INTO customers_company (cust_id, company_id) VALUES (1,3);
INSERT INTO customers_company (cust_id, company_id) VALUES (2,3);
INSERT INTO customers_company (cust_id, company_id) VALUES (3,2);
