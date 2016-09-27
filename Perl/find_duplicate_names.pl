#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-27-16
# File: elective.pl
# Desc: Counting duplicate names with hashes

use v5.16;
use strict;
use warnings;
use autodie;

# Open the file name passed as a command line argument
open my $file, '<', $ARGV[0] or die $!;     # Opens the first parameter

my %names;
while(<$file>)
{
	my $name = \($_ =~ /(\w+)/);
	
	if (exists($names{$$name}))
	{
		$names{$$name}++;
	}
	else
	{
		$names{$$name} = 1;
	}
}

while (my ($k,$v) = each(%names))
{
	printf("%10s: %d\n",$k,$v);
}
