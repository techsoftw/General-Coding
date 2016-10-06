#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 10-03-16
# File: guessing.pl
# Desc: Binary search game with the user

use v5.16;
use strict;
use warnings;
use autodie;

my $n = int(1 + rand(100));
my $guess = 0;

printf("The number is %d\n",$n);

while ($guess != $n)
{
	printf("Enter a number: " );
	chomp($guess = <>);
	if ($guess < $n)
	{
		say("Too low" );
	}
	elsif ($guess > $n)
	{
		say("Too high");
	}
	else
	{
		say("You've guessed it!");
	}
}
