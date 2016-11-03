#!/usr/bin/python3
# Name: Dylan Tu
# Date: 11-02-16
# File: convert_to_fixed.py
# Desc: Creates a data file that uses fix-sized records to store data

template = "{:>10s}{:>15s}{:>15s}{:>25s}{:>20s}{:>4s}{:>15s}"

# Same as "using" keyword in C# - defined scope for resource
with open("wk11_data.txt") as hFile, open("fixed.data","w") as hOut:
	for line in hFile:
		if not line.lstrip().startswith("#"):
			parts = line.rstrip().split(":")
			date_parts = parts[-1].split("/")
			
			if len(date_parts[2]) < 4:
				date_parts[-1] = str(1900 + int(date_parts[-1]))
				parts[-1] = "/".join(date_parts)
			
			print(template.format(parts[1],parts[0],parts[2],parts[3],parts[4],parts[5],parts[6]))
			hOut.write(template.format(parts[1],parts[0],parts[2],parts[3],parts[4],parts[5],parts[6]))
