#!/usr/bin/python3
# Name: Dylan Tu
# Date: 11-13-16
# File: shape.py
# Desc: Defines the Shape base class


class Shape:
	def __init__(self, x, y):
		self.x = x
		self.y = y
	
	def move(self, x, y):
		self.x += x
		self.y += y
	
	def location(self):
		return (self.x,self.y)
	
	def __str__(self):
		"""Return class name, x, and y"""
		return "{}, x:{}, y:{}".format(type(self).__name__, self.x, self.y)


def _main():
	"""Testing Shape class move(), location(), and __str__() methods"""
	print("--- START ---")
	i2 = 0
	c1 = Shape(0, 5)
	c2 = Shape(5, 5)
	for i in range(10):
		i2 += i
		c1.move(i, i)
		c2.move(i, i2)
		print('--')
		print('Shape 1: ',c1)
		print('Shape 2: ',c2)
	print(c1.location())
	print(c2.location())
	
	print("--- END ---")

# The Shape._main() function will be executed when this file is run as a standalone script.
if __name__ == '__main__':
	_main()
