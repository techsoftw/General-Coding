#!/usr/local/bin/python3
# Name: Dylan Tu
# File: lab3.2.py
# Desc: Word counting using a dictionary

import urllib.request
import re

r = urllib.request.urlopen("http://hills.ccsf.edu/~dputnam/oliver.txt")
text = r.read().decode('utf-8')
words = re.split('\W+',text)

words = [i for i in words if i != '' ]

# words to ignore
stop_words = ['a','the','to','and','in','for','he','that','was','is','had','his','of','by']

counter = {}
for i in words:
	# Ignore the words in the stop_words list
	if i in stop_words:
		continue
	# If the word has already appeared in the list, add 1
	if i.lower() in counter:
		counter[i.lower()] += 1
	# If the word is appearing for the first time, create an entry
	else:
		counter[i.lower()] = 1

sorted_words = sorted(counter,key=counter.__getitem__,reverse=True)
for i, k in enumerate(sorted_words):
	print("%12s: %d" % (k,counter[k]))
	if i == 9:
		break
