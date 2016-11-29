#!/usr/bin/perl
# NAME: Dylan Tu
# FILE: above_average.pl
# DESC: Show that the above_average subroutine works

use v5.16;
use strict;
use warnings;
use autodie;
use List::Util;

my (@abv_avg,@nums);

sub total
{
	my $sum = 0;
	
	foreach my $n (@_)
	{
		$sum += $n;
	}
	
	return $sum;
}
sub average
{
	return total(@_) / (scalar @_);
}

sub above_average
{
	my @above = ();
	my $avg = average(@_);
	
	foreach my $n (@_)
	{
		if ($n > $avg)
		{
			push(@above,$n);
		}
	}
	
	return @above;
}

@nums = (1 .. 15);
@abv_avg = above_average(@nums);

print "The sum of the array of numbers is ",total(@nums),".\n";
printf "There are %d numbers in the array.\n",scalar @nums;
print "The average value is ",average(@nums),".\n";
print "The numbers above average are: ","@abv_avg.";