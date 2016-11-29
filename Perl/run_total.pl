#!/usr/bin/perl
# Name: Dylan Tu
# Date: 11-25-16
# File: run_total.pl
# Desc: Sums up a list of numbers

use v5.16;
use strict;
use warnings;
use autodie;

sub total
{
	my $sum = 0;
	
	foreach my $n (@_)
	{
		$sum += $n;
	}
	
	return $sum;
}

my @odds = map {($_ % 2) == 1 ? $_ : ()} 1..99999;
my @evens = map { $_ + 1 } @odds;

my $odds_total = total ( @odds );
my $evens_total = total ( @evens );
my $total = total ( @odds,@evens );

print "The total of \@odds is $odds_total.\n";
print "The total of \@evens is $evens_total.\n";
print "The total of \@odds and \@evens is $total.\n";
