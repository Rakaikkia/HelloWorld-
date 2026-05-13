#!/usr/bin/perl
use strict;
use warnings;

sub say_hello {
    print "Hello World!\n";
}

eval {
    say_hello();
};
if ($@) {
    warn "Error: $@";
    exit 1;
}

