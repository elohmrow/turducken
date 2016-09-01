#!/usr/bin/env perl6

use Inline::Perl5;
my $p5 = Inline::Perl5.new;

$p5.run(q|
package Person;
use Moose;
 
has 'name' => (is => 'rw');
 
1;
|);

$p5.use('Person');

EVAL q|
my $person = Person->new(name => 'Bradley');
print 'Hello ', $person->name, "!\n";
|, :lang<Perl5>;
