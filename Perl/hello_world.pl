#!/usr/bin/perl
# NAME: Dylan Tu
# FILE: hello_world.pl
# DESC: Basic Perl script with Modern Perl bells and whistles.
#       Set the permissions to 700.
#       Usage: perl hello_world.pl or simply: ./hello_world.pl
#       Put script in public_html/cgi-bin/cs113a to use as CGI script.
#       URL: http://hills.ccsf.edu/~YOURNAME/cs113a/hello_world.pl

# Pragmas are extra restrictions that are not turned on by default.
# In CS 113A we will always turn these pragmas: warnings, strict, and autodie.
# so that Perl will inform us of any errors.
use warnings;
use strict;
use autodie;

print "Hello, world!";

__END__

Everything after __END__ data. This data will be useful as we learn
more about Perl