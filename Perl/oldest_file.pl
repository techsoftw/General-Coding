#!/usr/bin/perl
# Name: Dylan Tu
# Date: 10-27-16
# File: merge_files.pl
# Desc: Determines the oldest file based on @ARGV

use v5.16;
use strict;
use warnings;
use autodie;

my $oldest = -1;
my $fileName;

for my $file (@ARGV)
{
	if (-e $file)
	{
		my $days = -M $file;
		
		if ($days > $oldest)
		{
			$oldest = $days;
			$fileName = $file;
		}
		
		printf("%s is %.10f days old.\n",$file,$days);
	}
}

printf("The oldest file is %s and is %.4f days old.\n",$fileName,$oldest);
