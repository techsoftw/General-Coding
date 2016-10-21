#!/usr/bin/perl
# Name: Dylan Tu
# Date: 10-12-16
# File: html_strip.pl
# Desc: An assignment in using regular expressions, and in opening and reading files dynamically

use v5.16;
use strict;
use warnings;
use autodie;

open my $handle, '<', $ARGV[0] or die $!;
my %entities = (
	lt     => '<',     # less-than
	gt     => '>',     # greater-than
	amp    => '&',     # ampersand
	quot   => '"',     # (vertical) double-quote
	apos   => "'",     # apostrophe
	num    => '#',     # number sign
	nbsp   => chr 160, # no-break space
	iexcl  => chr 161, # inverted exclamation  mark
	cent   => chr 162, # cent sign
	pound  => chr 163, # pound sterling
	curren => chr 164, # general currency sign
	'#65'  => 'A'      # ASCII 65 becomes capital A
);
my @lines;

say "========== The raw file ==========";
while (my $line = <$handle>)
{
	push(@lines,$line);
	print $line;
}

seek($handle,0,0);

say "\n";
say "========== The processed file ==========";
foreach my $line (@lines)
{
	while (my ($k,$v) = each(%entities))
	{
		my $re = qr#s/&${k};/$v/gi#;
		$line =~ s/&${k};/$v/gi;
	}
	
	if ($line =~ /<!--/)
	{
		$line =~ tr/[a-z]/[A-Z]/;
		$line =~ s/\w*<!--/------------------------------------------------------------\nCOMMENT: /;
	}
	if ($line =~ /-->/)
	{
		$line =~ tr/[a-z]/[A-Z]/;
		$line =~ s/-->/\n------------------------------------------------------------/;
	}
	
	print $line;
}

say "\n";
say "========== The file at its fnial state ==========";
foreach my $line (@lines)
{
	$line =~ s/<[!\/]?[a-zA-Z][^>]*>//g;
	print $line;
}

close $handle;
