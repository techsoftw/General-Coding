#!/usr/bin/python
# NAME: Dylan Tu
# File: lab8.3.py
# Desc: Display all records in week16.db

import sqlite3
connection = sqlite3.connect('week16.db')
cursor = connection.cursor()
all = cursor.execute('SELECT * FROM products')
for row in all:
	print("{} {} {} {} {}".format(row[0],row[1],row[2],row[3],row[4]))
