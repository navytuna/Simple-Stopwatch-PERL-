    #!/usr/bin/perl -w
    #Prints elapsed time each time you hit enter.

    use warnings;
    use strict;


    #Define Vars
     my $t0 = 0;
     my $t1 = 0;

 sub Stopwatch {
    system("cls");   
    use Time::HiRes qw(gettimeofday tv_interval); #get better than 1 second resolution

    $t0 = [gettimeofday]; # starting time
    while(<STDIN>)
    {
   $t1 = [gettimeofday];
    print tv_interval($t0,$t1); # print elapsed time between enter key hits.
   $t0 = $t1;
    }
 }
 
 sub Disclaimer {
 system("cls");
 print "\n";
 print "Simple Stopwatch is a simple PERL Stopwatch\n";
 print "Copyright (C) 2015  Charles Hildebrandt\n";
 print "This program is free software: you can redistribute it and/or modify\n";
 print "it under the terms of the GNU General Public License as published by\n";
 print "the Free Software Foundation, either version 3 of the License, or\n";
 print "any later version.\n";
 print "\n";
 print "This program is distributed in the hope that it will be useful,\n";
 print "but WITHOUT ANY WARRANTY; without even the implied warranty of\n";
 print "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n";
 print "GNU General Public License for more details.\n";
 print "\n";
 print "You should have received a copy of the GNU General Public License\n";
 print "along with this program.  If not, see <http://www.gnu.org/licenses/>.\n";
 system("Pause > nul");
 &Main;
}

sub Help {
 system("cls");
 print "Commands:\n";
 print "1 = Stopwatch Function\n";
 print "2 = Disclaimer\n";
 print "3 = Help\n";
 print "4 = Exit\n";
 system("pause > nul");
 &Main;
}

sub Exit {
 system("Exit");
}


sub Main {
    system("cls");
    print "Simple Stopwatch v 1.0.0\n";
    my $Input = <>;
    chomp $Input;
    if ($Input == 1) {
     &Stopwatch;
    }elsif ($Input == 2) {
     &Disclaimer;
    }elsif ($Input == 3) {
     &Help;
    }elsif ($Input == 4) {
     &Exit;
    } else {
     print "That is an unrecongnized command. Try '3' for help\n";
     system("pause > nul");
   }
  }
   
   
print "Ctrl + C for windows or Cmd + C for Apple Machines to quit\n";
system("pause > nul");
&Main;
