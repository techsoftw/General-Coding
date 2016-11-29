#!/usr/bin/perl

#- SocketClient.pl
#- Copyright (c) 1999 by Dr. Herong Yang, http://www.herongyang.com/
#  Modified for CS 113a by P. Wood. 12/2011.

   $domain = 2; # Internet domain
   $type = 1; # Sequenced, reliable, two-way connection, byte streams
   $proto = 6; # Transmission Control Protocol (TCP)
   socket(SOCK,$domain,$type,$proto);
   $host = pack('C4', 127,0,0,1); # localhost = 127.0.0.1
   # client port we use:
   $port = 44099;
   $address = pack('S n a4 x8', $domain, $port, $host);
   bind(SOCK, $address);
   print STDOUT "Client host: ",join('.',unpack('C4', $host)),"\n";
   print STDOUT "Client port: $port\n";
   $sHost = pack('C4', 127,0,0,1); # localhost = 127.0.0.1
   # server port we connect to:
   $sPort = 54099;
   $sAddress = pack('S n a4 x8', $domain, $sPort, $sHost);
   connect(SOCK, $sAddress);
   print STDOUT "Server host: ",join('.',unpack('C4', $sHost)),"\n";
   print STDOUT "Server port: $sPort\n";
   select(SOCK); $| = 1; select(STDOUT);
   while ($m=<SOCK>) {
      print STDOUT $m;
      $m = <STDIN>;
      print SOCK $m;
   }
   close(SOCK);
   exit;
