#!/usr/bin/python3
# Name: Dylan Tu
# Date: 10-24-16
# File: week10.py
# Desc: Creates directories and populates them with files

import os
import glob

lpRoot = "site"
print("")

def dfs_list_directory(lpRoot):
	lpStack = [lpRoot]
	
	while len(lpStack) > 0:
		lpwszDirectory = lpStack.pop()
		lpDirectories = []
		
		# The instruction says to print out the absolute path, but if I formatted it as a tree, so the output would
		# look absolutely horrendous. If you uncomment the second line, you'll get the super long directory listing
		lpwszCurrentDirectory = ''
		# lpwszCurrentDirectory = os.path.abspath(__file__) + os.path.sep
		iLevel = lpwszDirectory.count(os.path.sep) * 4
		print("%s%s" % (' ' * iLevel,lpwszCurrentDirectory+lpwszDirectory))
		
		for lpwszFileName in glob.glob("%s%c*" % (lpwszDirectory,os.path.sep)):
			if os.path.isdir(lpwszFileName) and lpwszFileName != '.' and lpwszFileName != '..':
				lpDirectories.append(lpwszFileName)
			elif os.path.isfile(lpwszFileName):
				print("%s%s" % (' ' * (iLevel+4),lpwszCurrentDirectory+lpwszFileName))
		
		# Process directories from left to right
		if len(lpDirectories) > 0:
			lpStack.extend(lpDirectories[::-1])


def recursive_list_directory(lpRoot):
	print("%s%s" % (' ' * (lpRoot.count(os.path.sep) * 4),lpRoot))
	for i in range(2):
		for lpwszFileName in glob.glob("%s%c*" % (lpRoot,os.path.sep)):
			if i == 0:
				if os.path.isfile(lpwszFileName):
					iLevel = lpwszFileName.count(os.path.sep) * 4
					print("%s%s" % (' ' * iLevel,lpwszFileName))
			if i == 1:
				if os.path.isdir(lpwszFileName) and lpwszFileName != '.' and lpwszFileName != '..':
					recursive_list_directory(lpwszFileName)


print("Directory tree using depth-first search.")
print("----------------------------------------")
dfs_list_directory(lpRoot)

print("\nDirectory tree using recursion.")
print("---------------------------------")
recursive_list_directory(lpRoot)
