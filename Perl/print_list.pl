#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 10-03-16
# File: print_list.pl
# Desc: Prints a list based on user input

use v5.16;
use strict;
use warnings;
use autodie;

my @names = qw/Fred Betty Barney Dino Wilma Pebbles Bam-bam/;
my @numbers;

say( "Enter a number from 1 to 7." );
say( "Hit Control-D to quit." );
while (defined($_ = <>) && /\S/)
{
	chomp;
	push @numbers, $_;
}
for my $i (@numbers)
{
	say $names[$i];
}
