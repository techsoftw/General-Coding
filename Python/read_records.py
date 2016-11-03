#!/usr/bin/python3
# Name: Dylan Tu
# Date: 11-02-16
# File: convert_to_fixed.py
# Desc: Prints the odd records stored in fixed.data, then prints the even records

import os
from shutil import copyfile

RECORD_SIZE = 104


def format_line(line):
	parts = line.rstrip().split(":")
	date_parts = parts[-1].split("/")
	
	if len(date_parts[2]) < 4:
		date_parts[-1] = str(1900 + int(date_parts[-1]))
		parts[-1] = "/".join(date_parts)

	template = "{:>10s}{:>15s}{:>15s}{:>25s}{:>20s}{:>4s}{:>15s}"
	return template.format(parts[1],parts[0],parts[2],parts[3],parts[4],parts[5],parts[6])


with open("fixed.data","r") as hFile:
	total_lines = 0
	
	print("----------------------------------------------------------------------------------------------------")
	print("Printing odd-numbered lines")
	print("----------------------------------------------------------------------------------------------------")
	
	i = 1
	while True:
		hFile.seek(i * RECORD_SIZE, os.SEEK_SET)
		line = hFile.read(RECORD_SIZE)
		if len(line) < RECORD_SIZE:
			break
		print(line)
		i += 2
		total_lines += 1
	
	print("")
	print("----------------------------------------------------------------------------------------------------")
	print("Printing even-numbered lines")
	print("----------------------------------------------------------------------------------------------------")
	hFile.seek(0,os.SEEK_SET)
	i = 0
	while True:
		hFile.seek(i * RECORD_SIZE, os.SEEK_SET)
		line = hFile.read(RECORD_SIZE)
		if len(line) < RECORD_SIZE:
			break
		print(line)
		i += 2
		total_lines += 1
	
	copyfile("fixed.data","fixed.data.copy")
	
	with open("fixed.data","a") as hFile2:
		hFile2.write(format_line("Arthur:Putie:923-835-8745:23 Wimp Lane:Kensington:DL:8/31/1969"))
		hFile2.write(format_line("Barbara:Kertz:385-573-8326:832 Ponce Drive:Gary:IN:12/1/1946"))
		total_lines += 2
	
	print("")
	print("----------------------------------------------------------------------------------------------------")
	print("Printing last 5 lines")
	print("----------------------------------------------------------------------------------------------------")
	# Python documentation states that the below line will not work because we're not in binary mode
	# hFile.seek(5*RECORD_SIZE,os.SEEK_END)
	# "In text files (those opened without a b in the mode string), only seeks relative to the beginning of the
	# file are allowed (the exception being seeking to the very file end with seek(0, 2))."
	
	# At this point in the program, we are pointing to the end of the file. Since we can't seek backwards, we need
	# to seek (total_lines - 5) * RECORD_SIZE from the beginning to read the last 5 lines.
	hFile.seek((total_lines-5)*RECORD_SIZE,os.SEEK_SET)
	for i in range(5):
		print(hFile.read(RECORD_SIZE))
	
	# Turns out that in my favorite language, C, fseek() also has this behavior. It's because fseek() is defined
	# by the C standard to work on binary files where you can seek in bytes. It makes perfect sense actually, since
	# the char type is implementation dependent. I learned something new today.
