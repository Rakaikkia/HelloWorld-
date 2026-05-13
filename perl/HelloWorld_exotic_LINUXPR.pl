#!/usr/bin/perl
use strict;
use warnings;
use Fcntl qw(:DEFAULT);

my $msg = "Hello World!\n";
my $bytes_written = syswrite(STDOUT, $msg, length($msg));
if ($bytes_written != length($msg)) {
    die "Failed to write entire message";
}

