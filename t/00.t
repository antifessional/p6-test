#!/usr/bin/env perl6

use v6;
use lib 'lib';

use Test;
use NativeCall;


use Test::NOOP;

BEGIN %*ENV<PERL6_TEST_DIE_ON_FAIL> = 1;

# plan 1;

my $x = 10;
ok testme( $x ) == 11;

say 'testing bits:'; 



class zmq_msg_t is repr('CStruct') {
	has int64 $._;
	has int64 $._1;
	has int64 $._2;
	has int64 $._3;
	has int64 $._4;
	has int64 $._5;
	has int64 $._6;
	has int64 $._7;
}

sub zmq_msg_init_data(zmq_msg_t
                     ,Pointer
                     ,size_t
                     ,Pointer = Pointer
                     ,Pointer = Pointer
                      ) is native('zmq', v5)
                      returns int32 is export { * }

my buf8 $b .= new(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
my Pointer $p = nativecast(Pointer, $b);
my zmq_msg_t $m .= new ;


lives-ok {zmq_msg_init_data($m, $p , 10  )}, "native call ok ";

use-ok 'Test::NOOP.pm';

done-testing;
