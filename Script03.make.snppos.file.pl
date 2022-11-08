#!/usr/bin/perl -w
use strict;
use IO::File;
my $fh_in = IO::File->new("Bovine_50K_SNP_Map.txt",'r');
my $fh_out= IO::File->new(">snppos.txt");
while(<$fh_in>){
	chomp;
	my @eles = split /\s+/, $_;
	my ($name, $chr, $pos)=@eles[1,2,3];
	$fh_out->print("$name\t$chr\t$pos\n");
}
