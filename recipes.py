#!/usr/bin/env python3

from flask import Flask, request, jsonify

app = Flask(__name__)

recipes = {
    "1": {
        "title": "Egg Manchurian",
        "description": "A delicious egg appetizer.",
        "ingredients": ["Eggs", "Manchurian sauce", "Green onions", "Ginger", "Garlic"],
        "instructions": "1. Boil the eggs. 2. Prepare the sauce. 3. Mix and cook. 4. Serve hot."
        },

    "2": {
        "title": "Pure Vegetable Bowl",
        "description": "A refreshing and healthy vegetable bowl.",
        "ingredients": [
            "2 cups mixed greens",
            "1 cup cherry tomatoes, halved",
            "1 cucumber, diced",
            "1 bell pepper, sliced",
            "1/2 cup shredded carrots",
            "1/4 cup red onion, thinly sliced",
            "1/4 cup balsamic vinaigrette"
        ],
        "instructions": "1. Toss all vegetables in a large bowl. 2. Drizzle with balsamic vinaigrette. 3. Mix well and serve chilled"
        },

    "3": {
        "title": "Egg Masala Ramen",
        "description": "A flavorful ramen dish with spices and boiled eggs.",
        "ingredients": [
            "2 packs ramen noodles",
            "2 eggs",
            "1 onion, sliced",
            "2 cloves garlic, minced",
            "1 tsp ginger, grated",
            "1 tbsp vegetable oil",
            "1 cup mixed vegetables (bell peppers, carrots, peas)",
            "2 cups chicken broth",
            "2 tbsp soy sauce",
            "1 tsp curry powder",
            "Salt and pepper to taste"
        ],
        "instructions": "1. Boil eggs and noodles separately. 2. In a pan, sauté onions, garlic, and ginger. 3. Add mixed vegetables and cook until tender. 4. Pour in chicken broth, soy sauce, curry powder, salt, and pepper. 5. Add noodles and simmer. 6. Serve hot with sliced boiled eggs."
        },

    }
@app.route('/getRecipeDetails')
def get_recipe_details():
    recipe_id = request.args.get('id')
    recipe = recipes.get(recipe_id)
    if recipe:
        return jsonify(recipe)
    else:
        return jsonify({'error': 'Recipe not found'}), 404

if __name__ == '__main__':
    app.run(debug=True)
