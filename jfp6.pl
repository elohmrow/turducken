#!/usr/bin/env perl6

use turducken::Pod_alu:from<java>;

my $alu = Pod_alu.new();

print($alu->add(9, 16) . "\n") ;        # prints 25
print($alu->subtract(9, 16) . "\n") ;   # prints -7
