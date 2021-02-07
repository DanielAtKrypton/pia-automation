use strict;

my $str = $ARGV[0];
my $regex = qr/(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}\K\s*-\s{5}\K\w*/p;

if ( $str =~ /$regex/ ) {
#   print "Whole match is ${^MATCH} and its start/end positions can be obtained via \$-[0] and \$+[0]\n";
  # print "Capture Group 1 is $1 and its start/end positions can be obtained via \$-[1] and \$+[1]\n";
  # print "Capture Group 2 is $2 ... and so on\n";
  print ${^MATCH}
}

# ${^POSTMATCH} and ${^PREMATCH} are also available with the use of '/p'
# Named capture groups can be called via $+{name}
