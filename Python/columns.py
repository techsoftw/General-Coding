#!/usr/local/bin/python3
# NAME: Dylan Tu
# FILE: columns.py
# DATE: 08-28-16
# DESC: Week 3 exercises involving control structures

# Import a module containing special string data
import string

# A LIST OF LETTERS
letters = list(string.ascii_letters)

# A LIST OF INTEGERS
# nums is a range object, not a list
nums = range(1, 101)

# To convert a range to a list, you would use the list() function
# nums = list(range(1, 101))


# LIST OF COMPLEX NUMBERS
complex_nums = [(i * 3j) for i in range(1, 101)]

# What's in those lists???
# print("THE LETTERS LIST")
# print(letters)
# print("-" * 30)
# print("THE NUMBERS RANGE")
# print(nums)
# print("\nTHE NUMBERS PRINTED AS A LIST")
# print("The list() built-in returns a list when passed a range object.")
# print(list(nums))
# print("-" * 30)
# print("THE LIST OF COMPLEX NUMBERS")
# print(complex_nums)

# print([i * i for i in complex_nums])
# print([c * 5 for c in letters])
size = len(nums)
print(0, end=', ')
for i in range(1,size-1):
    print(nums[i]*nums[i-1], ', ', sep='', end='')
print(nums[size-2] * nums[size-1])

print('')
for i in range(0,101):
    print(i, end=' ')

print('\n')
for i in range(0,101,3):
    print(i, end=' ')

print('\n')
chunks = [nums[i:i+10] for i in range(0, len(nums), 10)]
for chunk in chunks:
    for n in chunk:
        print(str(n).rjust(5), end='')
    print('')
