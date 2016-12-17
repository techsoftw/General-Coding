#!/usr/bin/perl
# NAME: Dylan Tu
# DATE: 11-29-16
# FILE: page_scraper.pl
# DESC: Lists information in <img> tags

use v5.16;
use strict;
use warnings;
use autodie;
use WWW::Mechanize;

my $tempfile ='tmp_image.jpg';
my $mech = WWW::Mechanize->new(agent => 'wunderbot 01', cookie_jar => undef);
$mech->get('http://hills.ccsf.edu/~dputnam/images/lulu/all_images.html');
my @images = $mech->images();

foreach my $image (@images)
{
	print "Base: " , $image->base(), "\n";
	print "URL : ", $image->url(), "\n";
	print "Tag: " . $image->tag(), "\n";
	print "Name: " . ($image->name()? $image->name() : "N/A") . "\n";
	print "Height: " . ($image->height() ? $image->height() : "N/A") . "\n";
	print "Width: " . ($image->width() ? $image->width() : "N/A") . "\n";
	print "Alt: " . ($image->alt() ? $image->alt() : "N/A") . "\n";
	print "\n";
}
