#!/usr/bin/python


def factorial_imp(n, acc):
	if n < 2:
		return acc
	else:
		return factorial_imp(n-1,acc*n)


def factorial(n):
	return factorial_imp(n, 1)


# print factorial(500)

def factorial_rec(n):
	if n < 2:
		return 1
	else:
		return n * factorial_rec(n - 1)


print(factorial_rec(500))
