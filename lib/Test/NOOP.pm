

unit module Test::NOOP;

use v6;

sub testme( $x is copy) is export { ++$x }

my $y = 0;

class zmq_msg_t is repr('CStruct') is export {
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
                     ,Pointer = nativecast( Pointer, 0)
                     ,Pointer = nativecast( Pointer, 0)
                      ) is native('zmq', v5)
                      returns int32 is export { * }

