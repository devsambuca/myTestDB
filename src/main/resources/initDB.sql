# CREATE TABLE developers (
#   dev_id     INT          NOT NULL PRIMARY KEY,
#   dev_name   VARCHAR(100) NOT NULL
# );
#
# CREATE TABLE skills (
#   sk_id   INT          NOT NULL PRIMARY KEY,
#   sk_name VARCHAR(100) NOT NULL
# );
#
# CREATE TABLE skills_developers (
#   sk_dev_id INT NOT NULL PRIMARY KEY ,
#   dev_id INT NOT NULL,
#   sk_id    INT NOT NULL,
#   FOREIGN KEY (dev_id) REFERENCES developers (dev_id),
#   FOREIGN KEY (sk_id) REFERENCES skills (sk_id)
# );
#
# DROP TABLE developers;
# DROP  TABLE skills;
# DROP  TABLE skills_developers;

