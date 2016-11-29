#!/usr/bin/perl

#- ReverseEchoer2.pl
#- Copyright (c) 1999 by Dr. Herong Yang, http://www.herongyang.com/
#  Modified for CS 113A by P. Wood. 12/2011.

   use Socket;   # use the Socket module
   $proto = getprotobyname('tcp');
   socket(SOCK,PF_INET,SOCK_STREAM,$proto);
   $host = INADDR_ANY;
   # server port we use:
   $port = 54099;
   $address = pack_sockaddr_in($port, $host);
   bind(SOCK, $address);
   $queueSize = 5; # Queue up to 5 connections
   listen(SOCK, $queueSize);

   $hostName = inet_ntoa($host);
   print STDOUT "Server host: $hostName\n";
   print STDOUT "Server port: $port\n";

   $cAddress = accept(NEWSOCK,SOCK);
   ($cPort, $cHost) = unpack_sockaddr_in($cAddress);
   $cHostName = inet_ntoa($cHost);
   print STDOUT "Client host: $cHostName\n";
   print STDOUT "Client port: $cPort\n";

   select(NEWSOCK); $| = 1; select(STDOUT);
   print NEWSOCK "Welcome to Reverse Echo Server. Type in a line, see it reversed. End with ^C\n";
   while ($m=<NEWSOCK>) {
      $m =~ s/\n|\r//g;
      last if ($m eq ".");
      $m = reverse($m);
      print NEWSOCK "$m\r\n";
   }
   close(NEWSOCK);
   exit;
