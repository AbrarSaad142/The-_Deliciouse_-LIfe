CREATE DATABASE IF NOT EXISTS recipe_db;
CREATE USER IF NOT EXISTS 'recipe_dev'@'localhost' IDENTIFIED BY 'recipe_dev_pwd';
GRANT ALL PRIVILEGES ON recipe_db.* TO 'recipe_dev'@'localhost';

CREATE TABLE RecipeIngredients (
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
INSERT INTO recipes (title, description, ingredients, instructions, image_url, rating, time, portions, tags) VALUES
('Dragon tiger phoenix', 'Dragon and Phoenix is a traditional Chinese dish...', '1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recepie/recepie_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix');