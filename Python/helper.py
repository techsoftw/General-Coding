#!/usr/bin/python3
# NAME: Dylan Tu
# FILE: helper.py
# DATE: 10-13-16
# DESC: A utility helper packaged in a module

import math


def area(r):
	return math.pi * r * r


def circ(r):
	return math.pi * 2 * r


def f2c(f):
	"""
	Converts Fahrenheit tempature to Celcius
	USAGE: print(f2c(f_temp))
	"""
	if f <= -459.67:
		return 0.0
	return (f - 32.0) * (5.0 / 9.0)


def c2f(c):
	"""
	Converts Celcius to Fahrenheit
	USAGE: print(c2f(c_temp))
	"""
	if c <= -273.15:
		return 0.0
	return c * (9.0 / 5.0) + 32.0


# Use _main() for testing the module
def _main():
	# CODE TO TEST AREA() AND CIRC()
	print("#" * 28, "\n", "Testing...1, 2, 3...testing!\n", "#" * 28, "\n", sep="")
	radius = 10
	print("A circle with a radius of {} has a circumference of {:.2f} \
units and an area of {:.2f} square units.".format(radius, circ(radius), area(radius)))
	
	# CODE TO TEST THE F2C() FUNCTION GOES HERE.
	print(f2c(-1000000))
	print(f2c(212))
	
	# CODE TO TEST THE C2F() FUNCTION GOES HERE.
	print(c2f(100))
	print(c2f(-1000))


if __name__ == "__main__":
	_main()
