use strict;

my $str = $ARGV[0];
my $regex = qr/(?<=--> sudo kill ).*(?= <--)/p;

if ( $str =~ /$regex/ ) {
  print ${^MATCH};
  # print "Capture Group 1 is $1 and its start/end positions can be obtained via \$-[1] and \$+[1]\n";
  # print "Capture Group 2 is $2 ... and so on\n";
}

# ${^POSTMATCH} and ${^PREMATCH} are also available with the use of '/p'
# Named capture groups can be called via $+{name}
