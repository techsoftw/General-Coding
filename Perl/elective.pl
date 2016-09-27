#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-27-16
# File: elective.pl
# Desc: Practice with hashes

use v5.16;
use strict;
use warnings;
use autodie;

my %courses = ("CS111B" => "Java Programming",
				"CS160A" => "Intro to Unix",
				"CS113A" => "Intro to Perl",
				"CS232" => "Ruby of Rails Development");

say "These are the classes available: ";
while (my ($k, $v) = each(%courses))
{
	say "$k $v";
}

print "Choose a course number: ";
chomp(my $course = <>);
say "You have chosen: $courses{$course}";
