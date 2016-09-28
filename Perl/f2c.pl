#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-28-16
# File: f2c.pl
# Desc: Converts a temperature from Fahrenheit to Celsius

use v5.16;
use strict;
use warnings;
use autodie;

print "Enter the temperature in Fahrenheit: ";
chomp(my $t = <>);
printf("In Celsius: %.4f",(($t - 32.0) * (5.0/9.0)));
