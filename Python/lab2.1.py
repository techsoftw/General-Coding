#!/usr/local/bin/python3
# NAME: Dylan Tu
# FILE: lab2.1.py
# DATE: 09-06-16
# DESC: Performs text analysis for the oliver.txt file

import re

text = open('/users/dputnam/oliver.txt').read()
words = re.split("\W+",text.lower())
words = [i for i in words if i != '' ]
lst1 = words[:100]
lst2 = words[100:]

chunks = [lst1[i:i+6] for i in range(0,len(lst1),6)]
for chunk in chunks:
    for t in chunk:
        print("%15s" % str(t),end='')
    print('')
print('')

print('Unique words in list one')
s1 = set(lst1)
print(s1)
print('Total count: %d\n' % len(s1))

print('Unique words in list two')
s2 = set(lst2)
print(s2)
print('Total count: %d\n' % len(s2))

print('Unique words in both lists')
s = set(words)
print(s)
print('Total count: %d\n' % len(s))

sd = []
for s in lst1:
    if s not in lst2:
       sd.append(s)

for s in lst2:
    if s not in lst1:
        sd.append(s)

print('Symmetric difference of list one and list two')
print(sd)
print('Total Count: %d\n' % len(sd))

sd = []
for s in s1:
    if s not in lst2:
        sd.append(s)

sd.sort()
print('Unique words that are in list one but not in list two')
print(sd)
print('')

sd = []
for s in s2:
    if s not in lst1:
        sd.append(s)

sd.sort()
print('Unique words that are in list two but not in list one')
print(sd)
