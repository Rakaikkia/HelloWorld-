#!/usr/bin/perl
use strict;
use warnings;
use autodie;

sub safe_print {
    print "Hello World!\n";
}

eval {
    safe_print();
    1;
} or do {
    my $err = $@;
    warn "Output error: $err";
    exit 1;
};

