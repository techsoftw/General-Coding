#!/usr/bin/python3
# Name: Dylan Tu
# Date: 11-13-16
# File: shape.py
# Desc: Defines the Circle class

import math
from shape import Shape


class Circle(Shape):
	def __init__(self, x=0, y=0, radius=1):
		Shape.__init__(self, x, y)
		self.radius = radius
	
	def area(self):
		return self.radius ** 2 * math.pi
	
	@classmethod
	def distance(Circle, c1, c2):
		x = c1.location()
		y = c2.location()
		
		return math.sqrt(((x[0] - y[0]) ** 2) + ((x[1] - y[1]) ** 2))
	
	@classmethod
	def is_collision(Circle, c1, c2):
		if Circle.distance(c1,c2) > (c1.radius + c2.radius):
			return None
		else:
			return True
	
	def __str__(self):
		return Shape.__str__(self) + ", radius: {radius}, area: {area:.2f}".format(radius=self.radius, area = self.area())


def _main():
	# run functions here.
	"""Testing Circle class for area(), move(), location(), __str__()"""
	print("--- START ---")
	c1x = -10
	c1y = 0
	c2x = 10
	c2y = 0
	i1 = 0
	i2 = 0
	c1 = Circle(0, 0, 5)
	c2 = Circle(0, 0, 5)
	for i in range(10):
		print('--')
		print('Circle  1: ',c1)
		print('Circle  2: ',c2)
		print("Collision: ",Circle.is_collision(c1, c2))
		i1 += i
		i2 -= i
		c1.move(i, i1)
		c2.move(i, i2)
	print("c1 Final location: ", c1.location())
	print("c2 Final location: ", c2.location())
	print(c1)
	print(c2)
	print("--- END ---")

# Testing code: run this module as a standalone script
if __name__ == '__main__':
	_main()
