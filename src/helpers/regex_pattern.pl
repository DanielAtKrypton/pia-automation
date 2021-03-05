use strict;

my $str = $ARGV[0];
my $str0 = 'Checking login credentials...OK! PIA_TOKEN=lgM6C6TDh0aAGG1oCipEzxVRMJGWwXm4e36aLUYK5pBDa3Sn6VJ9EV301nPHEIdHZQYpnLjH3cjbc5B+WWXLB3KAFVTQS2kWEsRw5YaaGC9fN9gfpobn6YEPvuI= This token will expire in 24 hours, on Sat 06 Mar 2021 12:48:10 AM GMT.';

my $regex = qr/(?<=PIA_TOKEN=).*/p;

if ( $str =~ /$regex/ ) {
# #   print "Whole match is ${^MATCH} and its start/end positions can be obtained via \$-[0] and \$+[0]\n";
#   # print "Capture Group 1 is $1 and its start/end positions can be obtained via \$-[1] and \$+[1]\n";
#   # print "Capture Group 2 is $2 ... and so on\n";
  print ${^MATCH}
}

# ${^POSTMATCH} and ${^PREMATCH} are also available with the use of '/p'
# Named capture groups can be called via $+{name}