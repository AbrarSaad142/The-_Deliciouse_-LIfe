#!/usr/bin/env python3

import sys
import MySQLdb

def fetch_recipes():
        db = MySQLdb.connect(
            host="localhost",
            user=sys.argv[1],
            passwd=sys.argv[2],
            db=sys.argv[3]
        )
        curs = db.cursor()

        curs.execute("SELECT * FROM recipes_ingredients")
        
        recipe_ingredient = curs.fetchall()

        for recipe in recipe_ingredient:
            print(recipe)

        curs.close()
        db.close()
