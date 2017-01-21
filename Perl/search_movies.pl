#!/usr/local/bin/perl
# Converted to SQLite3 by D Putnam
# With respects to C Conner and P Wood
# File: search_movies.pl
# Demonstrates use DBI and DBD:SQLite to create a public interface to a database.

use warnings;
use strict;
use autodie;

# Configure DBI
use DBI;

my $driver   = "SQLite";     # drivers that interface to the real database software
my $database = "movies.db";  # database we'll be using.
my $both_flag = 0;           # a flag
my @errors = ();             # collect user errors in filling out the form.
my $test = 0;                # for getting user input;
my ($name,$title);
my $count = 0;

# in this example, we put all the arguments in the data source identifier (dsn),
#my $dsn = "dbi:$driver:dbname=$database;host=$hostname";
my $dsn = "dbi:$driver:dbname=$database";
my $dbh = DBI->connect($dsn) or die "Could not connect to database";

# Print the user prompt.
print "Enter a director's first or last name: ";
$name = <STDIN>;
chomp($name);

# Gather a movie title
print "Enter a title or partial title: ";
$title = <STDIN>;
chomp($title);
Create the SQL statement
$sql = "SELECT (directors.last_name || ', ' || directors.first_name) AS Director,
        title AS Title
        FROM directors, movies
        WHERE directors.id = movies.director_id";

if (length($term1) > 1) {
    chomp($term1);
    $sql .= " AND ((directors.last_name
      LIKE '%$term1%'
    OR directors.first_name
      LIKE '%$term1%'
    OR movies.title
      LIKE '%$term1%') ";

    if (length($term2) > 1) {
        chomp($term2);
        $sql .= " AND (directors.last_name
          LIKE '%$term2%'
        OR directors.first_name
          LIKE '%$term2%'
        OR movies.title
          LIKE '%$term2%') ";
    }

    $sql .= ")";
}

my $query = $dbh->prepare($sql);
if (defined($query)) {
    my @row; my $n;
    print "\n";

    # perform the query and populate data structures
    # within database with queried data
    $query->execute();

    #fetch each row of result data from the database into array name @row
    while (@row = $query->fetchrow_array()) {
        foreach (@row) { print "$_ \t"; }
        print "\n";
    }
} else {
    #there was a problem with SQL statement
    print "Query was not executed problem with SQL\n";
}

print "\n";

$dbh->disconnect();
__END__