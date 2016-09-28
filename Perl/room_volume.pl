#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-28-16
# File: room_volume.pl
# Desc: Calculates the volume of a room

use v5.16;
use strict;
use warnings;
use autodie;

print "Enter the height: ";
chomp(my $h = <>);
print "Enter the width: ";
chomp(my $w = <>);
print "Enter the length: ";
chomp(my $l = <>);

my $feet = $h * $w * $l;
my $meters = $feet * 0.3048;
say "";
say "In feet: $feet ft³";
say "In meters: $meters m³";
