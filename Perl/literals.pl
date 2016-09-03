#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 08-28-16
# File: literals.pl
# Desc: Demonstrates the usage of scalar variables

# Pragmas
use v5.10;
use strict;
use warnings;
use autodie;

my $number = 125;

printf "
Today is Fri Sep 4 11:02:49 PDT 2009.
The name of this PERL SCRIPT is ./literals.pl.
Hello. The number we will examine is %.6f.
The NUMBER in decimal is %d.
On the next line, the number 125 takes up 20 spaces and is right
justified using sprintf or printf.
	
	%20d


125 in hex is %#x.
125 in octal is %#o
125 in binary is %#B.
125 in scientific notation is %e
125 unformatted is %f
125 formatted is %.2f
My boss just said, \"Can't you loan me \$%.2f for my lunch?\"
I flatly said, \"No way!\".

Good-bye
",$number,$number,$number,$number,$number,$number,$number,$number,$number,$number/10.0;

say '';
say 'Heredoc Quote';
print <<'TEXT';
"I think I said, 'I like Perl, especially when I use HERE document quoting!'"

Now that I've used a HERE document, I'm a little closer to my goal of learning Perl.
			
And, that number again is 125.
TEXT
