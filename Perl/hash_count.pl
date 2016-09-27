#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-27-16
# File: hash_count.pl
# Desc: Practice with hashes

use v5.16;
use strict;
use warnings;
use autodie;

my %words;

say 'Enter some words, one per line: ';
while (defined($_ = <>) && /\S/)
{
	chomp;
	my $key = $_;
	if (exists($words{$key}))
	{
		$words{$_}++;
	}
	else
	{
		$words{$key} = 1;
	}
}

while (my ($k, $v) = each(%words))
{
	say "$k: $v";
}
