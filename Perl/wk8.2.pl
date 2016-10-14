#!/usr/bin/perl
# Name: Dylan Tu
# Date: 10-12-16
# File: wk8.2.pl
# Desc: File parsing with regular expressions

use v5.16;
use strict;
use warnings;
use autodie;

while(<>)
{
	next if /#/;
	
	my @parts = split(":");
	if (($parts[-2] =~ /[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{2}$/))
	{
		my @phone = split("/",$parts[-2]);
		$phone[2] = int($phone[2]) + 1900;
		$parts[-2] = join("/",@phone);
		
		my @new = join(":",@parts);
		print @new;
	}
	else
	{
		print;
	}
}
