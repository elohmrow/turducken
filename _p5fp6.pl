#!/usr/bin/env perl6

use Inline::Perl5;
my $p5 = Inline::Perl5.new;

#use MONKEY-SEE-NO-EVAL;

            ###$p5.call($=finish);
            ###$p5.run($=finish);
            ####EVAL $=finish, :lang<Perl5>
#^#EVAL $=data, :lang<Perl5>;
            ########EVAL $=pod.grep(*.name eq 'perl5').contents[0].contents, :lang<Perl5>
            #########EVAL $=pod[0].WHAT, :lang<Perl5>
            ##########EVAL $=code, :lang<Perl5>

            ####=finish
#^#=begin data
            ######=data
            #######=begin p5
            #########=begin perl5
            ##########=begin code
my $p5_code = q:to/P5CODE/;
#!/usr/bin/env perl

use strict;
use warnings;

use Inline Java => 'DATA';

my $java = new Hello();
$java->printSomething("Hello Bradley!");

__Java__
public class Hello {
    public void printSomething(final String something) {
        System.out.println(something);
    }
}
P5CODE
#^#=end data
EVAL $p5_code, :lang<Perl5>
            ##########=end code
            #######=end p5
            #########=end perl5
