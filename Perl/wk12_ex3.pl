#!/usr/bin/perl
# NAME: Dylan Tu
# DATE: 11-25-16
# FILE: wk12_ex3.pl
# DESC:

use v5.16;
use strict;
use warnings;
use autodie;

my $datebook_refs = [
	{1001 => {
			first_name => 'Arthur',
			last_name  => 'Putie',
			address    => '23 Wimp Lane',
			city       => 'Kensington',
			state      => 'DL',
			zip_code   => '38758',
			birthdate  => '8/31/1969',
			salary     => '126000'}},
	{1002 => {
			first_name => 'Barbara',
			last_name  => 'Kertz',
			telephone  => '385-573-8326',
			address    => '832 Ponce  Drive',
			city       => 'Gary',
			state      => 'IN',
			zip_code   => '83756',
			birthdate  => '12/1/1946',
			salary     => '268500'}},
	{1003 => {
			first_name => 'Betty',
			last_name  => 'Boop',
			telephone  => '245-836-8357',
			address    => '635 Cutesy Lane',
			city       => 'Hollywood',
			state      => 'CA',
			zip_code   => '91464',
			birthdate  => '6/23/1923',
			salary     => '14500'}},
	{1004 => {
			first_name => 'Ephram',
			last_name  => 'Hardy',
			telephone  => '293-259-5395',
			address    => '235 Carlton Lane',
			city       => 'Joliet',
			state      => 'IL',
			zip_code   => '73858',
			birthdate  => '8/12/1920',
			salary     => '56700'}},
	{1005 => {
			first_name => 'Fred',
			last_name  => 'Fardbarkle',
			telephone  => '674-843-1385',
			address    => '20 Parak Lane',
			city       => 'DeLuth',
			state      => 'MN',
			zip_code   => '23850',
			birthdate  => '4/12/23',
			salary     => '780900'}},
	{1006 => {
			first_name => 'Igor',
			last_name  => 'Chevsky',
			telephone  => '385-375-8395',
			address    => '3567 Populus Place',
			city       => 'Caldwell',
			state      => 'NJ',
			zip_code   => '23875',
			birthdate  => '6/18/68',
			salary     => '23400'}},
	{1007 => {
			first_name => 'James',
			last_name  => 'Ikeda',
			telephone  => '834-938-8376',
			address    => '23445 Aster Ave.',
			city       => 'Allentown',
			state      => 'NJ',
			zip_code   => '83745',
			birthdate  => '12/1/1938',
			salary     => '45000'}},
	{1008 => {
			first_name => 'Jennifer',
			last_name  => 'Cowan',
			telephone  => '548-834-2348',
			address    => '408 Laurel Ave.',
			city       => 'Kingsville',
			state      => 'TX',
			zip_code   => '83745',
			birthdate  => '10/1/35',
			salary     => '58900'}},
	{1009 => {
			first_name => 'Jesse',
			last_name  => 'Neal',
			telephone  => '408-233-8971',
			address    => '45 Rose Terrace',
			city       => 'San Francisco',
			state      => 'CA',
			zip_code   => '92303',
			birthdate  => '2/3/2001',
			salary     => '500'}},
	{1010 => {
			first_name => 'Jon',
			last_name  => 'DeLoach',
			telephone  => '408-253-3122',
			address    => '123 Park St.',
			city       => 'San Jose',
			stapte     => 'CA',
			zip_code   => '04086',
			birthdate  => '7/25/53',
			salary     => '85100'}},
	{1011 => {
			first_name => 'Jose',
			last_name  => 'Santiago',
			telephone  => '385-898-8357',
			address    => '38 Fife Way',
			city       => 'Abilene',
			state      => 'TX',
			zip_code   => '39673',
			birthdate  => '1/5/58',
			salary     => '95600'}},
	{1012 => {
			first_name => 'Karen',
			last_name  => 'Evich',
			telephone  => '284-758-2867',
			address    => '23 Edgecliff Place',
			city       => 'Lincoln',
			state      => 'NB',
			zip_code   => '92743',
			birthdate  => '11/3/35',
			salary     => '58200'}},
	{1013 => {
			first_name => 'Lesley',
			last_name  => 'Kirstin',
			telephone  => '408-456-1234',
			address    => '4 Harvard Square',
			city       => 'Boston',
			state      => 'MA',
			zip_code   => '02133',
			birthdate  => '4/22/2001',
			salary     => '52600'}},
	{1014 => {
			first_name => 'Lori',
			last_name  => 'Gortz',
			telephone  => '327-832-5728',
			address    => '3465 Mirlo Street',
			city       => 'Peabody',
			state      => 'MA',
			zip_code   => '34756',
			birthdate  => '10/2/65',
			salary     => '35200'}},
	{1015 => {
			first_name => 'Norma',
			last_name  => 'Corder',
			telephone  => '397-857-2735',
			address    => '74 Pine Street',
			city       => 'Dearborn',
			state      => 'MI',
			zip_code   => '23874',
			birthdate  => '3/28/45',
			salary     => '245700'}},
	{1016 => {
			first_name => 'Paco',
			last_name  => 'Gutierrez',
			telephone  => '835-365-1284',
			address    => '454 Easy Street',
			city       => 'Decatur',
			state      => 'IL',
			zip_code   => '75732',
			birthdate  => '2/28/53',
			salary     => '123500'}},
	{1017 => {
			first_name => 'Popeye',
			last_name  => 'Sailor',
			telephone  => '156-454-3322',
			address    => '945 Bluto Street',
			city       => 'Anywhere',
			state      => 'USA',
			zip_code   => '29358',
			birthdate  => '3/19/35',
			salary     => '22350'}},
	{1018 => {
			first_name => 'Sir',
			last_name  => 'Lancelot',
			telephone  => '837-835-8257',
			address    => '474 Camelot Boulevard',
			city       => 'Bath',
			state      => 'WY',
			zip_code   => '28356',
			birthdate  => '5/13/69',
			salary     => '24500'}},
	{1019 => {
			first_name => 'Steve',
			last_name  => 'Blenheim',
			telephone  => '238-923-7366',
			address    => '95 Latham Lane',
			city       => 'Easton',
			state      => 'PA',
			zip_code   => '83755',
			birthdate  => '11/12/1956',
			salary     => '20301'}},
	{1020 => {
			first_name => 'Tommy',
			last_name  => 'Savage',
			telephone  => '408-724-0140',
			address    => '1222 Oxbow Court',
			city       => 'Sunnyvale',
			state      => 'CA',
			zip_code   => '94087',
			birthdate  => '5/19/66',
			salary     => '34200'}},
	{1021 => {
			first_name => 'Vinh',
			last_name  => 'Tranh',
			telephone  => '438-910-7449',
			address    => '8235 Maple Street',
			city       => 'Wilmington',
			state      => 'VM',
			zip_code   => '29085',
			birthdate  => '9/23/63',
			salary     => '68900'}},
	{1022 => {
			first_name => 'William',
			last_name  => 'Kopf',
			telephone  => '846-836-2837',
			address    => '6937 Ware Road',
			city       => 'Milton',
			state      => 'PA',
			zip_code   => '93756',
			birthdate  => '9/21/46',
			salary     => '43500'}},
	{1023 => {
			first_name => 'Yukio',
			last_name  => 'Takeshida',
			telephone  => '387-827-1095',
			address    => '13 Uno Lane',
			city       => 'Ashville',
			state      => 'NC',
			zip_code   => '23556',
			birthdate  => '7/1/29',
			salary     => '57000'}},
	{1024 => {
			first_name => 'Zippy',
			last_name  => 'Pinhead',
			telephone  => '834-823-8319',
			address    => '2356 Bizarro Ave.',
			city       => 'Farmount',
			state      => 'IL',
			zip_code   => '84357',
			birthdate  => '1/1/67',
			salary     => '89500'}},
	{1025 => {
			first_name => 'Andy',
			last_name  => 'Warhol',
			telephone  => '212-321-7654',
			address    => '231 East 47th Street',
			city       => 'New York City',
			state      => 'NY',
			zip_code   => '10017',
			birthdate  => '8/6/1928',
			salary     => '2700000'}
	}
];

foreach (@$datebook_refs)
{
	foreach my $k (keys(%$_))
	{
		printf( "--------------------------------------------------\n" );
		printf( "%s\n",$k);
		printf( "--------------------------------------------------\n" );
		
		my $h = $_->{$k};
		foreach my $key (keys(%$h))
		{
			printf("%18s: %s\n",$key,$h->{$key});
		}
	}
}

