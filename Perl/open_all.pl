#!/usr/bin/perl
# Name: Dylan Tu
# Date: 10-27-16
# File: merge_files.pl
# Desc: Opens and prints all the files with a .txt extension

use v5.16;
use strict;
use warnings;
use autodie;

for my $fileName (@ARGV)
{
	if ($fileName =~ /\.txt$/)
	{
		open(my $hFile,'<',$fileName) or die "Couldn't open $fileName.";
		say("---------- Contents of $fileName ----------");
		while (<$hFile>)
		{
			print $_;
		}
		say("");
	}
}
