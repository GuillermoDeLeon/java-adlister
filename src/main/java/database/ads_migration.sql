USE adlister_db;
DROP TABLE IF EXISTS ads;
CREATE TABLE ads (
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
       user_id INT UNSIGNED DEFAULT NULL,
       title VARCHAR(125) NOT NULL,
       description VARCHAR(255) NOT NULL,
       PRIMARY KEY (id),
       FOREIGN KEY (user_id) REFERENCES users (id)
);

# referenced codeup curriculum MySQL > Joins for example of how to use foreign key
# https://java.codeup.com/mysql/relationships/joins/
# this is not a join, but the joins section had an example of table using foreign key