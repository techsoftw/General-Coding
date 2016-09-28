#!/usr/local/bin/perl
# Name: Dylan Tu
# Date: 09-28-16
# File: random_verbiage.pl
# Desc: Prints a random sentence from an array of ten strings

use v5.16;
use strict;
use warnings;
use autodie;

my @sentences = ("The WiredTiger cache performs best when it holds as much of the working set as possible.",
				"MongoDB defaults to a WiredTiger cache size of approximately 60% of RAM.",
				"WiredTiger uses \"copy on write\" — when a document is updated WiredTiger will make a new copy of the document and determine the latest version to return to the reader.",
				"WiredTiger uses compression algorithms to reduce the amount of data stored on disk.",
				"Indexes can be compressed in memory as well as on disk.",
				"WiredTiger was designed with modern, multi-core architectures in mind, and provides scalability across multi-core systems.",
				"Programming techniques such as hazard pointers, lock free algorithms, and fast latching minimize contention between threads.",
				"WiredTiger allows users to specify a level of isolation for their reads.",
				"Read operations can return a view of data that has been accepted or committed to disk by a majority of the replica set.",
				"This provides a guarantee that applications only read data that will persist in the event of failure and won’t get rolled back when a new replica set member is promoted to primary.");

open my $rnd, "<", "/dev/random";
my $value;
read $rnd, $value, 4;
my $index = unpack("C",$value) % 10;
say $sentences[$index];
