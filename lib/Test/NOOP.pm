

unit module Test::NOOP;

use v6;

sub testme( $x is copy) is export { ++$x }

my $y = 0;
