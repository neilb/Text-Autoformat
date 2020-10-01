use utf8;
use strict;
use Test::More tests => 1;
use Text::Autoformat;

# Possibly I'm breaking this on EBCDIC… -- rjbs, 2020-10-01
my $NBSP = "\x{A0}";

my $str = <<"END";
•${NBSP}Analyze problem
•${NBSP}Design algorithm
• Code solution
• Test
• Ship
END

my $after = autoformat $str;

is($after, $str, 'we treat \N{BULLET} as a bullet and NBSP after it as space');
