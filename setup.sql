-- DROP DATABASE IF EXISTS recipe_db;
CREATE DATABASE IF NOT EXISTS recipe_db;
CREATE USER IF NOT EXISTS 'recipe_dev'@'localhost' IDENTIFIED BY 'recipe_dev_pwd';
GRANT ALL PRIVILEGES ON recipe_db.* TO 'recipe_dev'@'localhost';
FLUSH PRIVILEGES;
use recipe_db;

CREATE TABLE IF NOT EXISTS recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    ingredients TEXT,
    instructions TEXT,
    image_url VARCHAR(255),
    rating FLOAT,
    time VARCHAR(50),
    portions VARCHAR(50),
    tags VARCHAR(255)
);
-- Create the ingredients table
CREATE TABLE IF NOT EXISTS ingredients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Create the recipe_ingredients table (junction table)
CREATE TABLE IF NOT EXISTS recipe_ingredients (
    recipe_id INT,
    ingredient_id INT,
    quantity VARCHAR(100),
    PRIMARY KEY (recipe_id, ingredient_id),
    FOREIGN KEY (recipe_id) REFERENCES recipes(id) ON DELETE CASCADE,
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(id) ON DELETE CASCADE
);

-- Create the categories table
CREATE TABLE IF NOT EXISTS categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO recipes VALUES
(1, 'Dragon tiger phoenix #1', '#1 Dragon and Phoenix is a traditional Chinese dish...', '#1- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(2, 'Dragon tiger phoenix #2', '#2 Dragon and Phoenix is a traditional Chinese dish...', '#2- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(3, 'Dragon tiger phoenix #3', '#3 Dragon and Phoenix is a traditional Chinese dish...', '#3- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(4, 'Dragon tiger phoenix #4', '#4 Dragon and Phoenix is a traditional Chinese dish...', '#4- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(5, 'Dragon tiger phoenix #5', '#5 Dragon and Phoenix is a traditional Chinese dish...', '#5- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(6, 'Dragon tiger phoenix #6', '#6 Dragon and Phoenix is a traditional Chinese dish...', '#6- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(7, 'Dragon tiger phoenix #7', '#7 Dragon and Phoenix is a traditional Chinese dish...', '#7- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(8, 'Dragon tiger phoenix #8', '#8 Dragon and Phoenix is a traditional Chinese dish...', '#8- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(9, 'Dragon tiger phoenix #9', '#9 Dragon and Phoenix is a traditional Chinese dish...', '#9- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(10, 'Dragon tiger phoenix #10', '#10 Dragon and Phoenix is a traditional Chinese dish...', '#10- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix');
