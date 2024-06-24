CREATE DATABASE IF NOT EXISTS recipe_db;
CREATE USER IF NOT EXISTS 'recipe_dev'@'localhost' IDENTIFIED BY 'recipe_dev_pwd';
GRANT ALL PRIVILEGES ON recipe_db.* TO 'recipe_dev'@'localhost';
