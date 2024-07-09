#!/usr/bin/env python3
from flask import Flask, render_template
import MySQLdb
import sys

app = Flask(__name__)

# Database connection setup
db = MySQLdb.connect(
    host="localhost",
    user=sys.argv[1],
    passwd=sys.argv[2],
    db=sys.argv[3]
)
@app.route('/')
def recipes():
    cur = db.cursor()
    cur.execute("SELECT * FROM recipes")
    recipes = cur.fetchall()
    cur.close()
    return render_template('Recipes.html', recipes=recipes)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/recipes_details')
def recipes_details():
    return render_template('recipes_details.html', recipe=recipe)

if __name__ == '__main__':
    app.run(debug=True)
