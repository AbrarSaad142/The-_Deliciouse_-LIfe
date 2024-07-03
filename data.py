from flask import Flask, render_template, request, redirect, url_for
from flask_mysqldb import MySQL

app = Flask(_name_)

# MySQL configurations
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'yourpassword'
app.config['MYSQL_DB'] = 'recipe_db'

mysql = MySQL(app)

@app.route('/')
def index():
    return render_template('Recipes.html')

@app.route('/recipe/<int:recipe_id>')
def recipe_details(recipe_id):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM recipes WHERE id = %s", (recipe_id,))
    recipe = cur.fetchone()
    cur.close()
    return render_template('recipes_details.html', recipe=recipe)

if _name_ == '_main_':
    app.run(debug=True)
