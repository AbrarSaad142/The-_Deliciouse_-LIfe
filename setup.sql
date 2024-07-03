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
(1, 'Egg Manchurian', 'Egg Manchurian is a delicious Indo-Chinese dish that combines boiled eggs with a spicy, tangy, and savory Manchurian sauce. Here’s a detailed recipe for you to make Egg Manchurian at home. ', 'Ingredients

For Egg Coating:

    4 boiled eggs, cut into halves or quarters
    3 tablespoons cornstarch
    2 tablespoons all-purpose flour
    1 teaspoon ginger-garlic paste
    Salt to taste
    1/2 teaspoon black pepper powder
    Water as needed
    Oil for frying

For Manchurian Sauce:

    2 tablespoons oil
    1 tablespoon finely chopped garlic
    1 tablespoon finely chopped ginger
    1-2 green chilies, chopped
    1 small onion, finely chopped
    1 small capsicum (bell pepper), finely chopped
    2 tablespoons soy sauce
    1 tablespoon tomato ketchup
    1 tablespoon chili sauce (adjust to taste)
    1 tablespoon vinegar
    1 tablespoon cornstarch mixed in 1/4 cup water
    1/2 teaspoon black pepper powder
    1/2 teaspoon sugar
    Salt to taste
    2-3 tablespoons finely chopped spring onions (for garnish)
    Water as needed', '1. Instructions

    Prepare Egg Coating:
        In a mixing bowl, combine cornstarch, all-purpose flour, ginger-garlic paste, salt, and black pepper powder.
        Add water little by little to form a smooth, thick batter.
        Dip each boiled egg piece into the batter, ensuring it's well-coated.

    Fry the Eggs:
        Heat oil in a pan over medium heat.
        Once the oil is hot, gently place the coated egg pieces in the oil and fry until they are golden brown and crispy.
        Remove the fried egg pieces and place them on a paper towel to drain excess oil.

    Prepare Manchurian Sauce:
        Heat 2 tablespoons of oil in a wok or a large pan over medium heat.
        Add chopped garlic, ginger, and green chilies. Sauté for 1-2 minutes until fragrant.
        Add the chopped onions and cook until they become translucent.
        Add the chopped capsicum and sauté for another 2-3 minutes.
        Stir in soy sauce, tomato ketchup, chili sauce, and vinegar. Mix well.
        Add salt, black pepper powder, and sugar. Mix everything together.

    Thicken the Sauce:
        Add the cornstarch slurry (cornstarch mixed in water) to the pan and stir continuously to avoid lumps.
        Add a little water if the sauce becomes too thick. Adjust consistency as per your preference.
        Cook the sauce for another 2-3 minutes until it thickens and becomes glossy.

    Combine Eggs with Sauce:
        Add the fried egg pieces to the sauce. Gently mix them to coat well with the sauce.
        Cook for another 1-2 minutes to allow the flavors to blend.

    Garnish and Serve:
        Garnish with finely chopped spring onions.
        Serve hot with fried rice, noodles, or enjoy it as a standalone dish.', 'img/recipe/recpie_1.png', 5.0, '30 Mins', '4-6 servings'),
(2, 'Dragon tiger phoenix #2', '#2 Dragon and Phoenix is a traditional Chinese dish...', '#2- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(3, 'Dragon tiger phoenix #3', '#3 Dragon and Phoenix is a traditional Chinese dish...', '#3- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(4, 'Dragon tiger phoenix #4', '#4 Dragon and Phoenix is a traditional Chinese dish...', '#4- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(5, 'Dragon tiger phoenix #5', '#5 Dragon and Phoenix is a traditional Chinese dish...', '#5- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(6, 'Dragon tiger phoenix #6', '#6 Dragon and Phoenix is a traditional Chinese dish...', '#6- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(7, 'Dragon tiger phoenix #7', '#7 Dragon and Phoenix is a traditional Chinese dish...', '#7- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(8, 'Dragon tiger phoenix #8', '#8 Dragon and Phoenix is a traditional Chinese dish...', '#8- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(9, 'Dragon tiger phoenix #9', '#9 Dragon and Phoenix is a traditional Chinese dish...', '#9- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix'),
(10, 'Dragon tiger phoenix #10', '#10 Dragon and Phoenix is a traditional Chinese dish...', '#10- 1 pound boneless chicken breast, 1/2 pound large shrimp...', '1. In a small bowl, whisk together the cornstarch, soy sauce, hoisin sauce, and rice vinegar...', 'img/recipe/recipe_details.png', 5.0, '30 Mins', '4-6 servings', 'Dinner, Main, Chicken, Dragon, Phoenix');
