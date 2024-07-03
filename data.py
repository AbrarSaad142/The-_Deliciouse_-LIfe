#!/usr/bin/env python3

from flask import Flask, jsonify
import sys
import MySQLdb

app = Flask(__name__)


db = MySQLdb.connect(
            host="localhost",
            user=sys.argv[1],
            passwd=sys.argv[2],
            db=sys.argv[3]
        )

@app.route("/")
def fetch_recipes():
    try:
            curs = db.cursor()
            curs.execute("SELECT * FROM recipes")
        
            recipes = curs.fetchall()

            recipe_list = []
            for recipe in recipes:
                recipe_dict = {
                    'id': recipe[0],
                    'name': recipe[1],
                    'description': recipe[2],
                    'instructions': recipe[3],
                }
                recipe_list.append(recipe_dict)

            curs.close()

            return jsonify({"recipes": recipe_list})

    except MySQLdb.Error as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(debug=True)
