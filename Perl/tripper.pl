#!/usr/bin/perl
# Name: Dylan Tu
# Date: 11-25-16
# File: tripper.pl
# Desc: Calculates mileage using subroutines

use v5.16;
use strict;
use warnings;
use autodie;

print('Number of miles driven: ');
my $miles = <STDIN>;
print('Amount of gas used: ');
my $gas = <STDIN>;

sub mileage
{
	my $miles = $_[0];
	my $gas = $_[1];
	
	return $miles / $gas;
}

print 'Your mileage (mpg) is: ';
print mileage($miles,$gas);
