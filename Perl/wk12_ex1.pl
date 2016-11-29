#!/usr/bin/perl
# NAME: Dylan Tu
# DATE: 11-25-16
# FILE: wk12_ex1.pl
# DESC: Prints reference types and their values

use v5.16;
use strict;
use warnings;
use autodie;

sub print_all_types
{
	foreach my $x (@_)
	{
		my $type = ref($x);
		
		if ($type eq "SCALAR")
		{
			print "SCALAR:\n";
			print $$x;
			print "\n\n";
		}
		elsif ($type eq "ARRAY")
		{
			print "ARRAY:\n";
			foreach my $n (@$x)
			{
				printf("%d ",$n);
			}
			print "\n\n";
		}
		elsif ($type eq "HASH")
		{
			print "HASH:\n";
			foreach my $k (keys(%$x))
			{
				printf("%s is the key for %s\n",$k,$x->{$k})
			}
			print "\n\n";
		}
	}
}

my $color     = 'red';
my $scalaref  = \$color;
my @nums      = (1..20);
my $arrayref  = \@nums;
my %hash = (a => 'A', b => 'B', c => 'C', d => 'D');
my $hashref = \%hash;

print_all_types $scalaref,$arrayref,$hashref;
