#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-08-16
# File: foods.pl
# Desc: Array practice with interactive input

use v5.10;
use strict;
use warnings;
use autodie;

my $t;
my $name;
my @foods;

print 'Enter your name: ';
chomp($name = <STDIN>);
$name = ($name eq '') ? 'Friend' : $name;

print "Enter five food items: ";
chomp($t = <STDIN>);
@foods = split(/\s+/,$t);
if (scalar @foods < 5)
{
	print "Enter five food items: ";
	chomp($t = <STDIN>);
	@foods = split(/\s+/,$t);
	if (scalar @foods < 5)
	{
		@foods = qw{egg pea nut cow pig};
	}
}

say "Name: $name";
print "Foods: ";
print join(' ',@foods);

