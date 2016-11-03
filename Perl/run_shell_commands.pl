#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 10-27-16
# File: run_shell_commands.pl
# Desc: Opens and prints all the files with a .txt extension

use v5.16;
use strict;
use warnings;
use autodie;

open(my $pipe,"grep 74155 /etc/group |") or die "Cannot pipe from /etc/group: $!";

my $line = <$pipe>;
my @parts = split(/:/,$line);
my @students = split(/,/,$parts[3]);

for my $name (@students)
{
	open(my $info,"finger $name |") or die "Cannot pipe from finger: $!";
	while (<$info>)
	{
		print($_);
	}
	say("");
}
