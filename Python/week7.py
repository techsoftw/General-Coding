#!/usr/local/bin/python3
# NAME: Dylan Tu
# FILE: week7.py
# DATE: 09-29-16
# DESC: Operator exercises

list_of_tuples = [(1,1),(1,2),('aaa','a'),('AAAA','aaaa'),(10 ** 2,2 ** 10)]

for t in list_of_tuples:
	print("------------")
	print("%s < %s = %s" % (t[0],t[1],(t[0] < t[1])))
	print("%s > %s = %s" % (t[0],t[1],(t[0] > t[1])))
	print("%s <= %s = %s" % (t[0],t[1],(t[0] <= t[1])))
	print("%s >= %s = %s" % (t[0],t[1],(t[0] >= t[1])))
	print("%s == %s = %s" % (t[0],t[1],(t[0] == t[1])))

print("\n%d" % (((((2**2)**2)**2)**2)**2))
print("%d %s" % (11111111111111111111 * (1 + 2),str(1+2)*20))
