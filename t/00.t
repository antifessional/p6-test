#!/usr/bin/env perl6

use v6;
use lib 'lib';

use Test;


use Test::NOOP;

BEGIN %*ENV<PERL6_TEST_DIE_ON_FAIL> = 1;

# plan 1;

my $x = 10;
ok testme( $x ) == 11;

say 'testing bits:'; 

my buf8 $b .= new(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
my $p = get-ptr($b);
my zmq_msg_t $m .= new ;

lives-ok {zmq_msg_init_data($m, $p , 10  )}, "native call ok ";

# use-ok 'Test::NOOP.pm';

done-testing;
