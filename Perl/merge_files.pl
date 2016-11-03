#!/usr/bin/perl
# Name: Dylan Tu
# Date: 10-27-16
# File: merge_files.pl
# Desc: Merges two files line-wise

use v5.16;
use strict;
use warnings;
use autodie;

open(my $fIn1,'<:encoding(UTF-8)',$ARGV[0]) or die "Couldn't open $ARGV[0].";
open(my $fIn2,'<:encoding(UTF-8)',$ARGV[1]) or die "Couldn't open $ARGV[1].";
open(my $fOut,'>:encoding(UTF-8)',"merged.txt") or die "Couldn't open output file.";

my $row1;
my $row2;

while (!eof($fIn1) && !eof($fIn1))
{
	$row1 = <$fIn1>;
	$row2 = <$fIn2>;
	print $fOut $row1 if defined($row1);
	print $fOut $row2 if defined($row2);
}

while ($row1 = <$fIn1>)
{
	print $fOut $row1;
}
while ($row2 = <$fIn2>)
{
	print $fOut $row2;
}

close($fIn1);
close($fIn2);
close($fOut);
