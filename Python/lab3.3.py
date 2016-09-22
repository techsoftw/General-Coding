#!/usr/local/bin/python3
# Name: Dylan Tu
# File: lab3.2.py
# Desc: Word counting using a dictionary

import urllib.request
import re

r = urllib.request.urlopen("http://hills.ccsf.edu/~dputnam/relativity.txt")
text = r.read().decode('utf-8')
words = [word.lower() for word in re.split('\W+',text)]
temp = [line.strip() for line in open("/users/dputnam/public_html/stop_words.txt","r")]

# Convert the stop word list to a dictionary because the "in" operator
# is O(1) for dictionaries for the average case
stop_words = {}
for word in temp:
	stop_words[word] = 1

counter = {}
for word in words:
	# Ignore the words in the stop_words list
	if word in stop_words:
		continue
	# If the word has already appeared in the list, add 1
	if word.lower() in counter:
		counter[word.lower()] += 1
	# If the word is appearing for the first time, create an entry
	else:
		counter[word.lower()] = 1

sorted_words = sorted(counter,key=counter.__getitem__,reverse=True)
for i, k in enumerate(sorted_words):
	if i == 50:
		break
	if (i % 5) == 0:
		print('')
	print("%15s " % k,end="")
