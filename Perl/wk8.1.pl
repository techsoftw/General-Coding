#!/usr/bin/perl
# Name: Dylan Tu
# Date: 10-12-16
# File: wk8.1.pl
# Desc: File parsing with regular expressions

use v5.16;
use strict;
use warnings;
use autodie;

while(<>)
{
	next if /#/;
	
	if ($_ =~ /Street/)
	{
		print;
	}

	my @parts = split(":");
	if (($parts[2] =~ /^408/) || ($parts[2] =~ /^834/))
	{
		printf("%-15s %-15s %-12s\n",$parts[0],$parts[1],$parts[2]);
	}
	if ($parts[0] eq "Lori" && $parts[1] eq "Gortz")
	{
		printf("%-15s %-15s %-15s %s",$parts[0],$parts[1],$parts[-2],$parts[-1]);
	}
	if ($parts[0] eq "Ephram")
	{
		printf("%-15s %-15s\n",uc($parts[0]),uc($parts[1]));
	}
	if ($_ !~ /.*4.*/)
	{
		print;
	}
	if ($parts[0] eq "William")
	{
		printf("%-15s %-15s %-12s\n","Siegfried",$parts[1],$parts[2]);
	}
}
