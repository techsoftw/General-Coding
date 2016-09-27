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

say "REGISTRATION INFORMATION FOR SPRING QUARTER";
say "Today's date is ${\time()}\n";

say "Please enter the following information: ";
print "Your full name: ";
chomp(my $name = <>);
print "What is your CCSF Student Id (Wxxxxxxxx): ";
chomp(my $id = <>);
say "Your address: ";
print "Street: ";
chomp(my $street = <>);
print "City, State, Zip Code: ";
chomp(my $other = <>);


say "COURSES";
say "=======\n";
say "CRN      Name";
say "------------------------------";
while (my ($k, $v) = each(%courses))
{
	say "$k | $v";
}

print "\nWhat is the number of the course you wish to take? ";
chomp(my $temp = <>);
my $course = uc($temp);
say "The course you will be taking is: \"$courses{$course}\"\n";

say "Registration confirmation will be sent to your address at: ";
say "$street";
say "$other";
say "\n${\($name =~ /(\w+)/)}, thank you for enrolling."
