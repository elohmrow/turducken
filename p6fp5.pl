#!/usr/bin/env perl

use strict;
use warnings;

use File::Slurp qw|read_file|;

use Inline::Perl6;

my $p6 = Inline::Perl6->new;

$p6->run('
class Person {
    has Stringy $.name;
}

say "Hello ", Person.new(name => "Bradley").name(), "!";
');
