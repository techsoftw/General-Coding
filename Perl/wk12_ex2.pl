#!/usr/bin/perl
# NAME: Dylan Tu
# DATE: 11-25-16
# FILE: wk12_ex2.pl
# DESC: Prints an array of array references

use v5.16;
use strict;
use warnings;
use autodie;

my $nums_ref = [1..26];
my $nums_reversed_ref = [ reverse(@$nums_ref) ];
my $lowers_ref = ['a'..'z'];
my $lowers_reversed_ref = [ reverse(@$lowers_ref) ];
my $uppers_ref = ['A'..'Z'];
my $uppers_reversed_ref = [ reverse(@$uppers_ref) ];
my $big_array_ref = [$uppers_ref, $uppers_reversed_ref, $lowers_ref, $lowers_reversed_ref, $nums_ref, $nums_reversed_ref];

foreach (@$big_array_ref)
{
	my $i = 0;
	foreach my $e (@$_)
	{
		printf("%3s",$e);
		if ($i == 25)
		{
			print "\n";
			$i = 0;
		}
		else
		{
			$i++;
		}
	}
}
