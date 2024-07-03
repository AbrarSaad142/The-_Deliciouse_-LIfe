#!/usr/bin/env python3

from flask import Flask, jsonify
import sys
import MySQLdb

app = Flask(__name__)

@app.route("/")
def fetch_recipes():
        db = MySQLdb.connect(
            host="localhost",
            user=sys.argv[1],
            passwd=sys.argv[2],
            db=sys.argv[3]
        )
        curs = db.cursor()

        curs.execute("SELECT * FROM ingredients")
        
        ingredients = curs.fetchall()

        for ingredient in ingredients:
            print(ingredient)

        curs.close()
        db.close()

        return jsonify({"ingredients": ingredient})

if __name__ == "__main__":
    app.run(debug=True)
