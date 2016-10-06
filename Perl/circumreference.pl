#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 10-03-16
# File: circumreference.pl
# Desc: Calculates the circumreference of a circle

use v5.16;
use strict;
use warnings;
use autodie;

use constant PI => 4 * atan2(1,1);
print "Enter the radius: ";
chomp(my $radius = <>);
if ($radius > 0)
{
	printf("The circumreference is %.3f",$radius*2*PI);
}
else
{
	printf("The circumreference is %.3f",0);
}

