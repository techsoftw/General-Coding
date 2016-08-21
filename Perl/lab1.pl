#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 08-21-16
# File: lab1.pl
# Desc: Demonstrates the usage of some built-in Perl function

use warnings;
use strict;
use autodie;

my $unixtime = time;
my $localtime = localtime;
my $myname = 'Dylan Tu';

print "Name: $myname!!\n";
print "Date: $unixtime\n";
print "Date: $localtime";
