
# ALTER TABLE developers ADD CONSTRAINT un_dev_id_constraint UNIQUE (id);
# ALTER TABLE projects ADD CONSTRAINT un_sk_id_constraint UNIQUE (id);

# ALTER TABLE skills_developers ADD CONSTRAINT un_sk_dev_id_constraint UNIQUE (sk_dev_id);
#
# SELECT * FROM developers JOIN skills_developers USING(dev_id);
# SELECT * FROM (developers JOIN skills_developers USING(dev_id)) JOIN skills USING (sk_id) WHERE developers.dev_name = 'Glazirin Evgeniy';
# SELECT dev_name, sk_name FROM (developers JOIN skills_developers USING(dev_id)) JOIN skills USING (sk_id) WHERE developers.dev_id = 3;
# SELECT * FROM (developers JOIN skills_developers USING(dev_id)) JOIN skills USING (sk_id) WHERE skills.sk_id = 4;
#
# ALTER TABLE companies ADD CONSTRAINT un_company_id_constraint UNIQUE (company_id);
# ALTER TABLE projects ADD CONSTRAINT un_proj_id_constraint UNIQUE (proj_id);
# ALTER TABLE projects_companies ADD CONSTRAINT un_proj_company_id_constraint UNIQUE (proj_company_id);
#
# SELECT * FROM companies JOIN projects_companies USING(company_id);
