#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-28-16
# File: random_verbiage.pl
# Desc: Prints a random sentence from an array of ten strings

use v5.16;
use strict;
use warnings;
use autodie;

print "Enter the loan amount: ";
chomp(my $loan = <>);
print "Enter the annual interest rate: ";
chomp(my $interest = <>);

$interest /= 12.0;
my $amount = ($loan * $interest) / (1.0 - (1.0 / ((1.0 + $interest) ** 360.0)));
say "Your monthly payments cost: $amount";
