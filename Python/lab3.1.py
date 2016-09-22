#!/usr/local/bin/python3
# Name: Dylan Tu
# File: lab3.1.py
# Desc: Creating a dictionary of characters


# Another way to get the lowercase letters is to import the string module
# and use the string.ascii_lowercase list, like this:
import string
lowercase_letters = list(string.ascii_lowercase)

d = {}
for a in lowercase_letters:
	d[a] = chr(ord(a) ^ 32)

print('The dictionary')
print(d)

print('\nThe sorted keys')
print(sorted(d.keys()))

print('\nThe sorted values')
print(sorted(d.values()),sep=' ')

print('\nThe dictionary reversed by value')
sd = sorted(d,key=d.__getitem__,reverse=True)
for k in sd:
	print("%c: %c" % (k,d[k]))
