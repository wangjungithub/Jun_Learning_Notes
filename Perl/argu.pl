#!/bin/env perl
  
use strict;
use warnings;
  
use xxxx::yyyy;
 
die "$0 <input file> <output file>" if (@ARGV != 2);
my ($input, $output) = @ARGV;
 
my $sf = new xxxx::yyyy(file => $input) or die "can not open file $input\n";
 
$sf->write_out($ouput) or die "can not generate output\n";

