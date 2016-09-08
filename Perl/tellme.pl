#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-08-16
# File: tellme.pl
# Desc: Practice with file I/O and pipes

use v5.10;
use strict;
use warnings;
use autodie;

while (<STDIN>)
{
	my $line = $_;
	my @chunks = split(/:/,$line);
	
	printf
	(
		"Name:  %s\n" .
		"Phone: %s\n" .
		"Addr : %s\n" .
		"Date : %s\n" .
		"Sal  : %s\n",
		$chunks[0],$chunks[1],$chunks[2],$chunks[3],$chunks[4]
	)
}
