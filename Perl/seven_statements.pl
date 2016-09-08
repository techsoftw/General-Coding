#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-08-16
# File: seven_statements.pl
# Desc: Practice with arrays

use v5.10;
use strict;
use warnings;
use autodie;

my @names = qw(Nick Susan Chet Dolly Bill);
my @new = ('Ellie', 'Beatrice', 'Charles');

splice(@names,1,2,@new);
say join(' ',@names);

splice(@names,$#names,1);
say join(' ',@names);

push(@names,('Lewis','Izzy'));
say join(' ',@names);

shift(@names);
say join(' ',@names);

@names = reverse(@names);
say join(' ',@names);

unshift(@names,'Zedlous');
say join(' ',@names);

say join(' ',sort(@names));
