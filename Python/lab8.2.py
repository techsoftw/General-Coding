#!/usr/bin/python
# NAME: Dylan Tu
# FILE: lab8.2.py
# DESC: Connect to sqlite3 database, insert and prints data

import sqlite3
# sqlite3.connect creates a file named 'databasefile.db' on the system.
connection = sqlite3.connect('week16.db')
# The cursor is the control structure that traverses records in the database.
cursor = connection.cursor()
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('Hurricane Jelly Beans','jelly beans','abc123', '1.00'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('Typhoon Model Boat','plastic model boat', 'abc456', '12.00'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('Supermarine Spitfire', 'plastic model airplane', 'bcd123', '3.00'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('ENIAC', 'model of first computer', 'bcd456', '21.00'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('The Structure and Interpretation of Computer Programs','book','abc123', '36.00'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('Black Rice and Salmon','food', 'abc456', '15.00'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('ZTE Atom', 'smartphone', 'bcd123', '350.00'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('Coca-Cola Can', 'soft drink', 'bcd456', '0.75'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('SQL Server 2012', 'enterprise database subscription', 'bcd123', '10000.00'))
cursor.execute("INSERT INTO products values(null, ?, ?, ?, ?)", ('Plastic Forks', 'utensils', 'bcd456', '2.75'))

# Commit the changes
connection.commit()

