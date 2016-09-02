#!/usr/bin/env perl6

use java::util::zip::CRC32:from<Java>;

my $crc = CRC32.new();

for 'Hello Bradley!'.encode('utf-8').list { # Appended `.list` 
    $crc.'method/update/(I)V'($_); 
}
say $crc.getValue();
