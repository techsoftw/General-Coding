#!/usr/bin/perl
# Name: Dylan Tu
# Date: 10-12-16
# File: wk8.3.pl
# Desc: File parsing with regular expressions

use v5.16;
use strict;
use warnings;
use autodie;

my %names;
while(<DATA>)
{
	next if /#/;
	
	my @line = split(":");
	my $key = int($line[-1]);
	
	# Use arrays for hash values in case of duplicate salaries
	if (defined($names{$key}))
	{
		push(@{$names{$key}},$_);
	}
	else
	{
		my @array = ($_);
		$names{$key} = [@array];
	}
}

foreach my $key (sort {$b <=> $a} keys %names)
{
	print @{$names{$key}};
}

__END__
Arthur:Putie:923-835-8745:23 Wimp Lane:Kensington:DL:38758:8/31/1969:126000
Test:Testing:923-835-8745:23 Wimp Lane:Kensington:DL:38758:8/31/1969:126000
Barbara:Kertz:385-573-8326:832 Ponce  Drive:Gary:IN:83756:12/1/1946:268500
Betty:Boop:245-836-8357:635 Cutesy Lane:Hollywood:CA:91464:6/23/1923:14500
Ephram:Hardy:293-259-5395:235 Carlton Lane:Joliet:IL:73858:8/12/1920:56700
Fred:Fardbarkle:674-843-1385:20 Parak Lane:DeLuth:MN:23850:4/12/23:780900
Igor:Chevsky:385-375-8395:3567 Populus Place:Caldwell:NJ:23875:6/18/68:23400
James:Ikeda:834-938-8376:23445 Aster Ave.:Allentown:NJ:83745:12/1/1938:45000
Jennifer:Cowan:548-834-2348:408 Laurel Ave.:Kingsville:TX:83745:10/1/35:58900
Jesse:Neal:408-233-8971:45 Rose Terrace:San Francisco:CA:92303:2/3/2001:500
Jon:DeLoach:408-253-3122:123 Park St.:San Jose:CA:04086:7/25/53:85100
Jose:Santiago:385-898-8357:38 Fife Way:Abilene:TX:39673:1/5/58:95600
Karen:Evich:284-758-2867:23 Edgecliff Place:Lincoln:NB:92743:11/3/35:58200
Lesley:Kirstin:408-456-1234:4 Harvard Square:Boston:MA:02133:4/22/2001:52600
Lori:Gortz:327-832-5728:3465 Mirlo Street:Peabody:MA:34756:10/2/65:35200
Norma:Corder:397-857-2735:74 Pine Street:Dearborn:MI:23874:3/28/45:245700
Paco:Gutierrez:835-365-1284:454 Easy Street:Decatur:IL:75732:2/28/53:123500
Popeye:Sailor:156-454-3322:945 Bluto Street:Anywhere:USA:29358:3/19/35:22350
Sir:Lancelot:837-835-8257:474 Camelot Boulevard:Bath:WY:28356:5/13/69:24500
Steve:Blenheim:238-923-7366:95 Latham Lane:Easton:PA:83755:11/12/1956:20301
Tommy:Savage:408-724-0140:1222 Oxbow Court:Sunnyvale:CA:94087:5/19/66:34200
Vinh:Tranh:438-910-7449:8235 Maple Street:Wilmington:VM:29085:9/23/63:68900
William:Kopf:846-836-2837:6937 Ware Road:Milton:PA:93756:9/21/46:43500
Yukio:Takeshida:387-827-1095:13 Uno Lane:Ashville:NC:23556:7/1/29:57000
Zippy:Pinhead:834-823-8319:2356 Bizarro Ave.:Farmount:IL:84357:1/1/67:89500
Andy:Warhol:212-321-7654:231 East 47th Street:New York City:NY:10017:8/6/1928:2700000
