#!/usr/bin/env perl

use strict;
use warnings;

use Inline Java => 'DATA';

my $java = new Hello();
$java->printSomething("Hello Bradley!");

__DATA__
__Java__
public class Hello {
    public void printSomething(final String something) {
        System.out.println(something);
    }
}
