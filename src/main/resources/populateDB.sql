# INSERT INTO developers (dev_id, dev_name) VALUES (1,'Kuznecov Ivan');
# INSERT INTO developers (dev_id, dev_name) VALUES (2,'Fominykh Vladimir');
# INSERT INTO developers (dev_id, dev_name) VALUES (3,'Glazirin Evgeniy');
# INSERT INTO developers (dev_id, dev_name) VALUES (4,'Nikiforov Sergey');
# INSERT INTO developers (dev_id, dev_name) VALUES (5,'Zhdanov Konstantin');
#
# INSERT INTO skills (sk_id, sk_name) VALUES (1,'Java');
# INSERT INTO skills (sk_id, sk_name) VALUES (2,'C++');
# INSERT INTO skills (sk_id, sk_name) VALUES (3,'PHP');
# INSERT INTO skills (sk_id, sk_name) VALUES (4,'JS');
# INSERT INTO skills (sk_id, sk_name) VALUES (5,'Excel');
#
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
# SELECT * FROM (developers JOIN skills_developers USING(dev_id)) JOIN skills USING (sk_id) WHERE developers.dev_id = 3;
SELECT * FROM (developers JOIN skills_developers USING(dev_id)) JOIN skills USING (sk_id) WHERE skills.sk_id = 4;
