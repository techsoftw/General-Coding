#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 08-28-16
# File: week3.pl
# Desc: Demonstrates the usage of scalar variables

# Pragmas
use v5.10;     # As of version 5.10 the say function was available.
use strict;
use warnings;
#use diagnostics;
use autodie;

# Some scalar variables
my $x       = 5;
my $y       = 5;
my $a       = 6 + 1/6;
my $sqrt    = 2 + 2**.5;
my $cubert  = 3 + 3**(1/3);
my $pi      = 3.14159265359;
my $golden  = (1 + sqrt(5))/2;
my $euler   = 2.718281828459045235360287471352;
my $exp     = exp(1);
my $avogad  = 6.022e+23;
my $reikin  = '$12,000';
my $curtime = localtime();
my $pythag  = sqrt( $x**2 + $y**2 );

print "----------- Using say() ----------";
say "
Stardate: $curtime
Dear Diary,

It's hard out there for a renter. Found a cool studio apartment on Guerrero
next to Tartine Bakery but the landlord wanted a \$28,000 non-refundable
good-faith deposit. It reminded me of the $reikin reikin (礼金) money we paid
when we rented the Tokyo pad! Deal breaker, yo! Going to look further out in
Vallejo tomorrow. Hate the thought of commuting! Why did I ever leave Missourri?!
";

print "----------- Using print() ----------";
print "
Stardate: $curtime
Dear Diary,

It's hard out there for a renter. Found a cool studio apartment on Guerrero
next to Tartine Bakery but the landlord wanted a \$28,000 non-refundable
good-faith deposit. It reminded me of the $reikin reikin (礼金) money we paid
when we rented the Tokyo pad! Deal breaker, yo! Going to look further out in
Vallejo tomorrow. Hate the thought of commuting! Why did I ever leave Missourri?!\n
";

print "----------- Using printf() ----------";
printf "
Stardate: %s
Dear Diary,

It's hard out there for a renter. Found a cool studio apartment on Guerrero
next to Tartine Bakery but the landlord wanted a \$28,000 non-refundable
good-faith deposit. It reminded me of the %s reikin (礼金) money we paid
when we rented the Tokyo pad! Deal breaker, yo! Going to look further out in
Vallejo tomorrow. Hate the thought of commuting! Why did I ever leave Missourri?!\n
", $curtime, $reikin;

# 4 decimal places
say '4 decimal places';
say sprintf('x = %.4f',$x);
say sprintf('y = %.4f',$y);
say sprintf('a = %.4f',$a);
say sprintf('sqrt = %.4f',$sqrt);
say sprintf('cubert = %.4f',$cubert);
say sprintf('pi = %.4f',$pi);
say sprintf('golden = %.4f',$golden);
say sprintf('euler = %.4f',$euler);
say sprintf('exp = %.4f',$exp);
say sprintf('avogad = %.4f',$avogad);
#say sprintf('reikin = %.4f',$reikin);
#say sprintf('curtime = %.4f',$curtime);
say sprintf('pythag = %.4f',$pythag);

# Hexadecimal
say "\nHexadecimal";
say sprintf('x = %#x',$x);
say sprintf('y = %#x',$y);
say sprintf('a = %#x',$a);
say sprintf('sqrt = %#x',$sqrt);
say sprintf('cubert = %#x',$cubert);
say sprintf('pi = %#x',$pi);
say sprintf('golden = %#x',$golden);
say sprintf('euler = %#x',$euler);
say sprintf('exp = %#x',$exp);
say sprintf('avogad = %#x',$avogad);
#say sprintf('reikin = %#x',$reikin);
#say sprintf('curtime = %#x',$curtime);
say sprintf('pythag = %#x',$pythag);

# Octal
say "\nOctal";
say sprintf('x = %#o',$x);
say sprintf('y = %#o',$y);
say sprintf('a = %#o',$a);
say sprintf('sqrt = %#o',$sqrt);
say sprintf('cubert = %#o',$cubert);
say sprintf('pi = %#o',$pi);
say sprintf('golden = %#o',$golden);
say sprintf('euler = %#o',$euler);
say sprintf('exp = %#o',$exp);
say sprintf('avogad = %#o',$avogad);
#say sprintf('reikin = %#o',$reikin);
#say sprintf('curtime = %#o',$curtime);
say sprintf('pythag = %#o',$pythag);

# Binary
say "\nBinary";
say sprintf('x = %#b',$x);
say sprintf('y = %#b',$y);
say sprintf('a = %#b',$a);
say sprintf('sqrt = %#b',$sqrt);
say sprintf('cubert = %#b',$cubert);
say sprintf('pi = %#b',$pi);
say sprintf('golden = %#b',$golden);
say sprintf('euler = %#b',$euler);
say sprintf('exp = %#b',$exp);
say sprintf('avogad = %#b',$avogad);
#say sprintf('reikin = %#b',$reikin);
#say sprintf('curtime = %#b',$curtime);
say sprintf('pythag = %#b',$pythag);
